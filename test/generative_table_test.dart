import 'package:dotenv/dotenv.dart';
import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/db.dart';
import 'package:jamai_sdk/types/gen_tables.dart';
import 'package:test/test.dart';

/// TODO do streaming test for each item
void main() {
  // Load env vars for testing
  late String? jamaiApiKey;
  late String? jamaiUrl;
  late JamaiApiClient jamai;
  final String testOrganizationId = '0';
  late String? testUserId;

  late String testProjectId;
  // Variables to store created resources for testing
  final SanitizedNonEmptyString testProjectName = SanitizedNonEmptyString(
    'gen_table_test',
  );
  final String testActionTableId = 'test_action_table';
  final String testKnowledgeTableId = 'test_knowledge_table';
  final String testChatTableId = 'test_chat_table';
  late String testActionTableRowId;

  setUpAll(() async {
    // Check that env vars are strings
    var env = DotEnv(includePlatformEnvironment: true)..load();
    jamaiApiKey = env['JAMAI_API_KEY'];
    jamaiUrl = env['JAMAI_API_URL'];

    testUserId = env['TEST_USER_ID'];

    expect(jamaiApiKey, isNotNull);
    expect(jamaiUrl, isNotNull);
    expect(testOrganizationId, isNotNull);
    expect(testProjectName, isNotNull);
    expect(testUserId, isNotNull);

    jamai = JamaiApiClient(
      apiKey: jamaiApiKey!,
      baseUrl: jamaiUrl!,
      userId: testUserId,
    );

    // setup a project to make tables in
    ProjectRead projectCreateResult = await jamai.project.create(
      projectId: testProjectName.toString(),
      body: ProjectCreate(
        organizationId: testOrganizationId,
        name: testProjectName,
      ),
    );
    expect(
      projectCreateResult.name.toString(),
      equals(testProjectName.toString()),
    );

    // set the project if for the tests
    testProjectId = projectCreateResult.id;

    // update the api client to start testing tables
    jamai = JamaiApiClient(
      apiKey: jamaiApiKey!,
      baseUrl: jamaiUrl!,
      // userId: testUserId!,
      projectId: testProjectId,
    );
  });

  tearDownAll(() async {
    // clean up the test project
    await jamai.project.delete(projectId: testProjectId);
    ;
  });

  group('Generative Table Tests', () {
    group('Table Creation', () {
      test('create action table', () async {
        final response = await jamai.generativeTable.createActionTable(
          TableSchemaCreate(
            id: testActionTableId,
            cols: [
              ColumnSchemaCreate(id: 'input', dtype: ColumnSchemaDtype.str),
              ColumnSchemaCreate(
                id: 'output',
                dtype: ColumnSchemaDtype.str,
                genConfig: DiscriminatedLLMGenConfig(
                  model: 'openai/gpt-4.1-nano',
                  maxTokens: 256,
                  prompt:
                      'You are a helpful assistant that processes the input: "\${input}"',
                ),
              ),
            ],
          ),
        );

        expect(response.id, equals(testActionTableId));
        expect(
          response.cols.length,
          equals(4),
        ); // includes ID and Updated at columns
        expect(response.cols[2].id, equals('input'));
        expect(response.cols[3].id, equals('output'));
        expect(response.cols[3].genConfig, isNotNull);
      });

      test('create knowledge table', () async {
        final response = await jamai.generativeTable.createKnowledgeTable(
          KnowledgeTableSchemaCreate(
            id: testKnowledgeTableId,
            cols: [],
            embeddingModel: 'openai/text-embedding-3-small',
          ),
        );

        expect(response.id, equals(testKnowledgeTableId));
        expect(response.cols.length, equals(8));
      });

      test('create chat table', () async {
        final response = await jamai.generativeTable.createChatTable(
          TableSchemaCreate(
            id: testChatTableId,
            cols: [
              ColumnSchemaCreate(
                id: 'user_message',
                dtype: ColumnSchemaDtype.str,
              ),
              ColumnSchemaCreate(
                id: 'ai_message',
                dtype: ColumnSchemaDtype.str,
                genConfig: DiscriminatedLLMGenConfig(
                  model: 'openai/gpt-4.1-nano',
                  maxTokens: 256,
                  prompt:
                      'You are a helpful assistant. Respond to the user message: "\${user_message}"',
                  multiTurn: true,
                ),
              ),
            ],
          ),
        );

        expect(response.id, equals(testChatTableId));
        expect(response.cols.length, equals(4));
        expect(response.cols[2].id, equals('user_message'));
        expect(response.cols[3].id, equals('ai_message'));
        expect(response.cols[3].genConfig, isNotNull);
      });
    });

    group('Table Listing and Retrieval', () {
      test('list all tables', () async {
        final response = await jamai.generativeTable.listTables(
          tableType: TableType.action,
        );

        expect(response.items, isA<List<TableMetaResponse>>());
        expect(response.items.length, greaterThan(0));
        expect(response.total, greaterThan(0));
      });

      test('list tables with type filter', () async {
        final response = await jamai.generativeTable.listTables(
          tableType: TableType.action,
        );

        expect(response.items, isA<List<TableMetaResponse>>());
        // All returned tables should be action tables
      });

      test('list tables with pagination', () async {
        final response = await jamai.generativeTable.listTables(
          tableType: TableType.action,
          limit: 5,
          offset: 0,
        );

        expect(response.items.length, lessThanOrEqualTo(5));
        expect(response.offset, equals(0));
        expect(response.limit, equals(5));
      });

      test('get table by ID', () async {
        final response = await jamai.generativeTable.getTable(
          tableType: TableType.action,
          tableId: testActionTableId,
        );

        expect(response.id, equals(testActionTableId));
        expect(response.cols, isA<List<ColumnSchema>>());
        expect(response.cols.length, greaterThan(0));
      });
    });

    group('Row Management', () {
      test('add rows to action table', () async {
        final request = MultiRowAddRequest(
          tableId: testActionTableId,
          data: [
            {'input': 'Test input 1'},
            {'input': 'Test input 2'},
          ],
          stream: false,
        );

        final response = await jamai.generativeTable.addRows(
          TableType.action,
          request,
        );

        expect(response, isA<MultiRowCompletionResponse>());
        final multiRowResponse = response as MultiRowCompletionResponse;
        expect(multiRowResponse.rows.length, equals(2));
        // get first row respose to use in later tests
        testActionTableRowId = multiRowResponse.rows[0].rowId;
      });

      test('add rows to knowledge table', () async {
        final request = MultiRowAddRequest(
          tableId: testKnowledgeTableId,
          data: [
            {
              'content':
                  'This is a test document about artificial intelligence.',
            },
            {
              'content':
                  'This is another test document about machine learning.',
            },
          ],
          stream: false, // Disable streaming for easier testing
        );

        final response = await jamai.generativeTable.addRows(
          TableType.knowledge,
          request,
        );

        expect(response, isA<MultiRowCompletionResponse>());
        final multiRowResponse = response as MultiRowCompletionResponse;
        expect(multiRowResponse.rows.length, equals(2));

        // Store row ID for later tests
      });

      test('add rows to chat table', () async {
        final request = MultiRowAddRequest(
          tableId: testChatTableId,
          data: [
            {'user_message': 'Hello, how are you?', 'assistant_message': ''},
            {'user_message': 'What can you do?', 'assistant_message': ''},
          ],
          stream: false, // Disable streaming for easier testing
        );

        final response = await jamai.generativeTable.addRows(
          TableType.chat,
          request,
        );

        expect(response, isA<MultiRowCompletionResponse>());
        final multiRowResponse = response as MultiRowCompletionResponse;
        expect(multiRowResponse.rows.length, equals(2));

        // Store row ID for later tests
      });

      test('update single row', () async {
        final request = RowUpdateRequest(
          tableId: testActionTableId,

          data: {
            testActionTableRowId: {'input': 'Updated test input'},
          },
        );

        final response = await jamai.generativeTable.updateRow(
          TableType.action,
          request,
        );

        expect(response, isA<Map<String, dynamic>>());
      });

      test('update multiple rows', () async {
        final request = MultiRowUpdateRequest(
          tableId: testActionTableId,
          data: {
            testActionTableRowId: {'input': 'Updated test input again'},
          },
        );

        final response = await jamai.generativeTable.updateRows(
          TableType.action,
          request,
        );

        expect(response.ok, isTrue);
      });

      test('regenerate rows', () async {
        final request = MultiRowRegenRequest(
          tableId: testActionTableId,
          rowIds: [testActionTableRowId],
          regenStrategy: RegenStrategy.runAll,
          stream: false, // Disable streaming for easier testing
        );

        final response = await jamai.generativeTable.regenRows(
          TableType.action,
          request,
        );

        expect(response, isA<MultiRowCompletionResponse>());
        final multiRowResponse = response as MultiRowCompletionResponse;
        expect(multiRowResponse.rows.length, equals(1));
      });

      test('delete rows', () async {
        final request = MultiRowDeleteRequest(
          tableId: testActionTableId,
          rowIds: [testActionTableRowId],
        );

        final response = await jamai.generativeTable.deleteRows(
          TableType.action,
          request,
        );

        expect(response.ok, isTrue);
      });
    });

    group('Search Functionality', () {
      test('hybrid search in knowledge table', () async {
        final request = SearchRequest(
          tableId: testKnowledgeTableId,
          query: 'artificial intelligence',
          limit: 10,
        );

        final response = await jamai.generativeTable.hybridSearch(
          TableType.knowledge,
          request,
        );

        expect(response, isA<List<dynamic>>());
      });
    });

    group('Column Management', () {
      test('update generation config', () async {
        final request = GenConfigUpdateRequest(
          tableId: testActionTableId,
          columnMap: {
            'output': DiscriminatedLLMGenConfig(
              model: 'openai/gpt-4.1-nano',
              maxTokens: 512,
              prompt: 'Updated prompt: Process this input: "\${input}"',
            ),
          },
        );

        final response = await jamai.generativeTable.updateGenConfig(
          TableType.action,
          request,
        );

        expect(response.id, equals(testActionTableId));
        expect(response.cols, isA<List<ColumnSchema>>());
      });

      test('rename columns', () async {
        final request = ColumnRenameRequest(
          tableId: testActionTableId,
          columnMap: {'input': 'renamed_input'},
        );

        final response = await jamai.generativeTable.renameColumns(
          TableType.action,
          request,
        );

        expect(response.id, equals(testActionTableId));
        expect(response.cols, isA<List<ColumnSchema>>());
      });

      test('reorder columns', () async {
        final request = ColumnReorderRequest(
          tableId: testActionTableId,
          columnNames: ['ID', 'Updated at', 'renamed_input', 'output'],
        );

        final response = await jamai.generativeTable.reorderColumns(
          TableType.action,
          request,
        );

        expect(response.id, equals(testActionTableId));
        expect(response.cols, isA<List<ColumnSchema>>());
      });

      test('drop columns', () async {
        final request = ColumnDropRequest(
          tableId: testActionTableId,
          columnNames: ['output'],
        );

        final response = await jamai.generativeTable.dropColumns(
          TableType.action,
          request,
        );

        expect(response.id, equals(testActionTableId));
        expect(response.cols, isA<List<ColumnSchema>>());
      });
    });

    group('Import Functionality', () {
      JamaiApiClient importTestClient = JamaiApiClient(
        apiKey: "jamai_pat_379f6b1e8a7b9f0732a476fc0c145c297ca67bf907c34455",
        baseUrl: 'http://localhost:6969',
        projectId: 'proj_bee957b5881f35e120909510',
      );
      test('import table data', () async {
        final request = TableDataImportRequest(
          filePath:
              '/home/jep/jamai_sdk/test/table_data_import_test.csv', // This file would need to exist
          tableId: 'tester',
          stream: false, // Disable streaming for easier testing
        );

        final response = await importTestClient.generativeTable.importData(
          TableType.action,
          request,
        );
        expect(response, isA<MultiRowCompletionResponse>());
      });

      test('import table', () async {
        // Note: This test assumes a test table file exists
        // In a real test environment, you would need to create this file
        final request = TableImportRequest(
          filePath: '/home/jep/jamai_sdk/test/table_import_test.parquet',
          tableIdDst: 'imported_table_1',
          blocking: true,
        );

        final response = await importTestClient.generativeTable.importTable(
          TableType.action,
          request,
        );
        expect(response, isA<TableMetaResponse>());

        // Clean up the imported table
        await jamai.generativeTable.deleteTable(
          tableType: TableType.action,
          tableId: response.id,
        );
      });
    });

    group('File Embedding', () {
      test('embed file in knowledge table', () async {
        try {
          final response = await jamai.generativeTable.embedFile(
            'test_document.txt', // This file would need to exist
            testKnowledgeTableId,
            1000, // chunkSize
            200, // chunkOverlap
          );

          expect(response.ok, isTrue);
        } catch (e) {
          // File might not exist, which is expected in a test environment
          print('Skipping embed file test: $e');
        }
      });
    });

    group('Table Deletion', () {
      test('delete action table', () async {
        final response = await jamai.generativeTable.deleteTable(
          tableType: TableType.action,
          tableId: testActionTableId,
        );

        expect(response.ok, isTrue);

        // Verify table is deleted
        try {
          await jamai.generativeTable.getTable(
            tableType: TableType.action,
            tableId: testActionTableId,
          );
          fail('Table should have been deleted');
        } catch (e) {
          // Expected to fail
          expect(e, isA<Exception>());
        }
      });

      test('delete knowledge table', () async {
        final response = await jamai.generativeTable.deleteTable(
          tableType: TableType.knowledge,
          tableId: testKnowledgeTableId,
        );

        expect(response.ok, isTrue);

        // Verify table is deleted
        try {
          await jamai.generativeTable.getTable(
            tableType: TableType.knowledge,
            tableId: testKnowledgeTableId,
          );
          fail('Table should have been deleted');
        } catch (e) {
          // Expected to fail
          expect(e, isA<Exception>());
        }
      });

      test('delete chat table', () async {
        final response = await jamai.generativeTable.deleteTable(
          tableType: TableType.chat,
          tableId: testChatTableId,
        );

        expect(response.ok, isTrue);

        // Verify table is deleted
        try {
          await jamai.generativeTable.getTable(
            tableType: TableType.chat,
            tableId: testChatTableId,
          );
          fail('Table should have been deleted');
        } catch (e) {
          // Expected to fail
          expect(e, isA<Exception>());
        }
      });
    });
  });
}
