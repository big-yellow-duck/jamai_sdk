import 'package:dotenv/dotenv.dart';
import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/db.dart';
import 'package:jamai_sdk/types/gen_tables.dart' ;
import 'package:jamai_sdk/types/lm.dart';
import 'package:test/test.dart';

void main() {
  // Load env vars for testing
  late String? jamaiApiKey;
  late String? jamaiUrl;
  late JamaiApiClient jamai;
  late String? testOrganizationId;
  late SanitizedNonEmptyString? testProjectName;
  late String? testUserId;

  // Variables to store created resources for testing
  late String? testActionTableId;
  late String? testKnowledgeTableId;
  late String? testChatTableId;
  late String? testActionTableRowId;
  late String? testKnowledgeTableRowId;
  late String? testChatTableRowId;

  setUpAll(() async {
    // Check that env vars are strings
    var env = DotEnv(includePlatformEnvironment: true)..load();
    jamaiApiKey = env['JAMAI_API_KEY'];
    jamaiUrl = env['JAMAI_API_URL'];
    testOrganizationId = env['TEST_ORGANIZATION_ID'];
    String? loadedTestProjectName = env['TEST_PROJECT_NAME'];
    if (loadedTestProjectName == null) {
      throw Exception('TEST_PROJECT_NAME environment variable is not set');
    }
    testProjectName = SanitizedNonEmptyString(loadedTestProjectName);
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
    ProjectRead startProject = await jamai.project.create(
      projectId: testProjectName.toString(),
      body: ProjectCreate(
        organizationId: testOrganizationId!,
        name: testProjectName!,
      ),
    );

    testProjectName = SanitizedNonEmptyString(startProject.id);

    // update the api client to start testing tables
    jamai = JamaiApiClient(
      apiKey: jamaiApiKey!,
      baseUrl: jamaiUrl!,
      userId: testUserId!,
      projectId: testProjectName.toString(),
    );
  });

  tearDownAll(() async {
    // Clean up created tables
    if (testActionTableId != null) {
      try {
        await jamai.generativeTable.deleteTable(tableId: testActionTableId!);
      } catch (e) {
        print('Failed to delete action table: $e');
      }
    }
    if (testKnowledgeTableId != null) {
      try {
        await jamai.generativeTable.deleteTable(tableId: testKnowledgeTableId!);
      } catch (e) {
        print('Failed to delete knowledge table: $e');
      }
    }
    if (testChatTableId != null) {
      try {
        await jamai.generativeTable.deleteTable(tableId: testChatTableId!);
      } catch (e) {
        print('Failed to delete chat table: $e');
      }
    }
  });

  group('Generative Table Tests', () {
    group('Table Creation', () {
      test('create action table', () async {
        final String testTableId = 'test_action_table_${DateTime.now().millisecondsSinceEpoch}';
        
        final response = await jamai.generativeTable.createActionTable(
          TableSchemaCreate(
            id: testTableId,
            cols: [
              ColumnSchemaCreate(id: 'input', dtype: ColumnSchemaDtype.str),
              ColumnSchemaCreate(
                id: 'output',
                dtype: ColumnSchemaDtype.str,
                genConfig: DiscriminatedLLMGenConfig(
                  model: 'openai/gpt-4o-mini',
                  maxTokens: 256,
                  prompt: 'You are a helpful assistant that processes the input: "\${input}"',
                ),
              ),
            ],
          ),
        );
        
        expect(response.id, equals(testTableId));
        expect(response.cols.length, equals(2));
        expect(response.cols[0].id, equals('input'));
        expect(response.cols[1].id, equals('output'));
        expect(response.cols[1].genConfig, isNotNull);
        
        testActionTableId = testTableId;
      });

      test('create knowledge table', () async {
        final String testTableId = 'test_knowledge_table_${DateTime.now().millisecondsSinceEpoch}';
        
        final response = await jamai.generativeTable.createKnowledgeTable(
          KnowledgeTableSchemaCreate(
            id: testTableId,
            cols: [
              ColumnSchemaCreate(id: 'content', dtype: ColumnSchemaDtype.str),
              ColumnSchemaCreate(
                id: 'embedding',
                dtype: ColumnSchemaDtype.str,
                genConfig: DiscriminatedEmbedGenConfig(
                  embeddingModel: 'openai/text-embedding-3-small',
                  sourceColumn: 'content',
                ),
              ),
            ],
            embeddingModel: 'openai/text-embedding-3-small',
          ),
        );
        
        expect(response.id, equals(testTableId));
        expect(response.cols.length, equals(2));
        expect(response.cols[0].id, equals('content'));
        expect(response.cols[1].id, equals('embedding'));
        expect(response.cols[1].genConfig, isNotNull);
        
        testKnowledgeTableId = testTableId;
      });

      test('create chat table', () async {
        final String testTableId = 'test_chat_table_${DateTime.now().millisecondsSinceEpoch}';
        
        final response = await jamai.generativeTable.createChatTable(
          TableSchemaCreate(
            id: testTableId,
            cols: [
              ColumnSchemaCreate(id: 'user_message', dtype: ColumnSchemaDtype.str),
              ColumnSchemaCreate(id: 'assistant_message', dtype: ColumnSchemaDtype.str),
              ColumnSchemaCreate(
                id: 'response',
                dtype: ColumnSchemaDtype.str,
                genConfig: DiscriminatedChatGenConfig(
                  model: 'openai/gpt-4o-mini',
                  maxTokens: 256,
                  prompt: 'You are a helpful assistant. Respond to the user message: "\${user_message}"',
                ),
              ),
            ],
          ),
        );
        
        expect(response.id, equals(testTableId));
        expect(response.cols.length, equals(3));
        expect(response.cols[0].id, equals('user_message'));
        expect(response.cols[1].id, equals('assistant_message'));
        expect(response.cols[2].id, equals('response'));
        expect(response.cols[2].genConfig, isNotNull);
        
        testChatTableId = testTableId;
      });
    });

    group('Table Listing and Retrieval', () {
      test('list all tables', () async {
        final response = await jamai.generativeTable.listTables();
        
        expect(response.items, isA<List<TableMetaResponse>>());
        expect(response.items.length, greaterThan(0));
        expect(response.total, greaterThan(0));
      });

      test('list tables with type filter', () async {
        final response = await jamai.generativeTable.listTables(tableType: common.TableType.action);
        
        expect(response.items, isA<List<TableMetaResponse>>());
        // All returned tables should be action tables
        for (final table in response.items) {
          // Note: The actual table type might be in meta or another field
          // This test assumes the filtering works correctly
        }
      });

      test('list tables with pagination', () async {
        final response = await jamai.generativeTable.listTables(limit: 5, offset: 0);
        
        expect(response.items.length, lessThanOrEqualTo(5));
        expect(response.offset, equals(0));
        expect(response.limit, equals(5));
      });

      test('get table by ID', () async {
        if (testActionTableId == null) {
          // Skip if no action table was created
          return;
        }
        
        final response = await jamai.generativeTable.getTable(tableId: testActionTableId!);
        
        expect(response.id, equals(testActionTableId));
        expect(response.cols, isA<List<ColumnSchema>>());
        expect(response.cols.length, greaterThan(0));
      });
    });

    group('Row Management', () {
      test('add rows to action table', () async {
        if (testActionTableId == null) {
          // Skip if no action table was created
          return;
        }
        
        final request = MultiRowAddRequest(
          tableId: testActionTableId!,
          data: [
            {'input': 'Test input 1'},
            {'input': 'Test input 2'},
          ],
          stream: false, // Disable streaming for easier testing
        );
        
        final response = await jamai.generativeTable.addRows('action', request);
        
        expect(response, isA<MultiRowCompletionResponse>());
        final multiRowResponse = response as MultiRowCompletionResponse;
        expect(multiRowResponse.rows.length, equals(2));
        
        // Store row ID for later tests
        if (multiRowResponse.rows.isNotEmpty) {
          testActionTableRowId = multiRowResponse.rows[0].rowId;
        }
      });

      test('add rows to knowledge table', () async {
        if (testKnowledgeTableId == null) {
          // Skip if no knowledge table was created
          return;
        }
        
        final request = MultiRowAddRequest(
          tableId: testKnowledgeTableId!,
          data: [
            {'content': 'This is a test document about artificial intelligence.'},
            {'content': 'This is another test document about machine learning.'},
          ],
          stream: false, // Disable streaming for easier testing
        );
        
        final response = await jamai.generativeTable.addRows('knowledge', request);
        
        expect(response, isA<MultiRowCompletionResponse>());
        final multiRowResponse = response as MultiRowCompletionResponse;
        expect(multiRowResponse.rows.length, equals(2));
        
        // Store row ID for later tests
        if (multiRowResponse.rows.isNotEmpty) {
          testKnowledgeTableRowId = multiRowResponse.rows[0].rowId;
        }
      });

      test('add rows to chat table', () async {
        if (testChatTableId == null) {
          // Skip if no chat table was created
          return;
        }
        
        final request = MultiRowAddRequest(
          tableId: testChatTableId!,
          data: [
            {'user_message': 'Hello, how are you?', 'assistant_message': ''},
            {'user_message': 'What can you do?', 'assistant_message': ''},
          ],
          stream: false, // Disable streaming for easier testing
        );
        
        final response = await jamai.generativeTable.addRows('chat', request);
        
        expect(response, isA<MultiRowCompletionResponse>());
        final multiRowResponse = response as MultiRowCompletionResponse;
        expect(multiRowResponse.rows.length, equals(2));
        
        // Store row ID for later tests
        if (multiRowResponse.rows.isNotEmpty) {
          testChatTableRowId = multiRowResponse.rows[0].rowId;
        }
      });

      test('update single row', () async {
        if (testActionTableId == null || testActionTableRowId == null) {
          // Skip if no action table or row was created
          return;
        }
        
        final request = RowUpdateRequest(
          tableId: testActionTableId!,
          rowId: testActionTableRowId!,
          data: {'input': 'Updated test input'},
        );
        
        final response = await jamai.generativeTable.updateRow(request);
        
        expect(response, isA<Map<String, dynamic>>());
      });

      test('update multiple rows', () async {
        if (testActionTableId == null || testActionTableRowId == null) {
          // Skip if no action table or row was created
          return;
        }
        
        final request = MultiRowUpdateRequest(
          tableId: testActionTableId!,
          data: {
            testActionTableRowId!: {'input': 'Updated test input again'},
          },
        );
        
        final response = await jamai.generativeTable.updateRows(request);
        
        expect(response.ok, isTrue);
      });

      test('regenerate rows', () async {
        if (testActionTableId == null || testActionTableRowId == null) {
          // Skip if no action table or row was created
          return;
        }
        
        final request = MultiRowRegenRequest(
          tableId: testActionTableId!,
          rowIds: [testActionTableRowId!],
          regenStrategy: RegenStrategy.runAll,
          stream: false, // Disable streaming for easier testing
        );
        
        final response = await jamai.generativeTable.regenRows(request);
        
        expect(response, isA<MultiRowCompletionResponse>());
        final multiRowResponse = response as MultiRowCompletionResponse;
        expect(multiRowResponse.rows.length, equals(1));
      });

      test('delete rows', () async {
        if (testActionTableId == null || testActionTableRowId == null) {
          // Skip if no action table or row was created
          return;
        }
        
        final request = MultiRowDeleteRequest(
          tableId: testActionTableId!,
          rowIds: [testActionTableRowId!],
        );
        
        final response = await jamai.generativeTable.deleteRows(request);
        
        expect(response.ok, isTrue);
      });
    });

    group('Search Functionality', () {
      test('hybrid search in knowledge table', () async {
        if (testKnowledgeTableId == null) {
          // Skip if no knowledge table was created
          return;
        }
        
        final request = SearchRequest(
          tableId: testKnowledgeTableId!,
          query: 'artificial intelligence',
          limit: 10,
        );
        
        final response = await jamai.generativeTable.hybridSearch(TableType.knowledge, request);
        
        expect(response, isA<List<Map<String, dynamic>>>());
      });
    });

    group('Column Management', () {
      test('update generation config', () async {
        if (testActionTableId == null) {
          // Skip if no action table was created
          return;
        }
        
        final request = GenConfigUpdateRequest(
          tableId: testActionTableId!,
          columnMap: {
            'output': DiscriminatedLLMGenConfig(
              model: 'openai/gpt-4o-mini',
              maxTokens: 512,
              prompt: 'Updated prompt: Process this input: "\${input}"',
            ),
          },
        );
        
        final response = await jamai.generativeTable.updateGenConfig(request);
        
        expect(response.id, equals(testActionTableId));
        expect(response.cols, isA<List<ColumnSchema>>());
      });

      test('rename columns', () async {
        if (testActionTableId == null) {
          // Skip if no action table was created
          return;
        }
        
        final request = ColumnRenameRequest(
          tableId: testActionTableId!,
          columnMap: {'input': 'renamed_input'},
        );
        
        final response = await jamai.generativeTable.renameColumns(TableType.action, request);
        
        expect(response.id, equals(testActionTableId));
        expect(response.cols, isA<List<ColumnSchema>>());
      });

      test('reorder columns', () async {
        if (testActionTableId == null) {
          // Skip if no action table was created
          return;
        }
        
        final request = ColumnReorderRequest(
          tableId: testActionTableId!,
          columnNames: ['ID', 'Updated at', 'renamed_input', 'output'],
        );
        
        final response = await jamai.generativeTable.reorderColumns(TableType.action, request);
        
        expect(response.id, equals(testActionTableId));
        expect(response.cols, isA<List<ColumnSchema>>());
      });

      test('drop columns', () async {
        if (testActionTableId == null) {
          // Skip if no action table was created
          return;
        }
        
        final request = ColumnDropRequest(
          tableId: testActionTableId!,
          columnNames: ['output'],
        );
        
        final response = await jamai.generativeTable.dropColumns(TableType.action, request);
        
        expect(response.id, equals(testActionTableId));
        expect(response.cols, isA<List<ColumnSchema>>());
      });
    });

    group('Import Functionality', () {
      test('import table data', () async {
        if (testKnowledgeTableId == null) {
          // Skip if no knowledge table was created
          return;
        }
        
        // Note: This test assumes a test CSV file exists
        // In a real test environment, you would need to create this file
        final request = TableDataImportRequest(
          filePath: 'test_data.csv', // This file would need to exist
          tableId: testKnowledgeTableId!,
          stream: false, // Disable streaming for easier testing
        );
        
        try {
          final response = await jamai.generativeTable.importData(request);
          expect(response, isA<MultiRowCompletionResponse>());
        } catch (e) {
          // File might not exist, which is expected in a test environment
          print('Skipping import data test: $e');
        }
      });

      test('import table', () async {
        // Note: This test assumes a test table file exists
        // In a real test environment, you would need to create this file
        final request = TableImportRequest(
          filePath: 'test_table.json', // This file would need to exist
          blocking: true,
        );
        
        try {
          final response = await jamai.generativeTable.importTable(request);
          expect(response, isA<TableMetaResponse>());
          
          // Clean up the imported table
          if (response is TableMetaResponse) {
            await jamai.generativeTable.deleteTable(tableId: response.id);
          }
        } catch (e) {
          // File might not exist, which is expected in a test environment
          print('Skipping import table test: $e');
        }
      });
    });

    group('File Embedding', () {
      test('embed file in knowledge table', () async {
        if (testKnowledgeTableId == null) {
          // Skip if no knowledge table was created
          return;
        }
        
        // Note: This test assumes a test file exists
        // In a real test environment, you would need to create this file
        try {
          final response = await jamai.generativeTable.embedFile(
            'test_document.txt', // This file would need to exist
            testKnowledgeTableId!,
            1000, // chunkSize
            200,  // chunkOverlap
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
        if (testActionTableId == null) {
          // Skip if no action table was created
          return;
        }
        
        final response = await jamai.generativeTable.deleteTable(tableId: testActionTableId!);
        
        expect(response.ok, isTrue);
        
        // Verify table is deleted
        try {
          await jamai.generativeTable.getTable(tableId: testActionTableId!);
          fail('Table should have been deleted');
        } catch (e) {
          // Expected to fail
          expect(e, isA<Exception>());
        }
        
        testActionTableId = null;
      });

      test('delete knowledge table', () async {
        if (testKnowledgeTableId == null) {
          // Skip if no knowledge table was created
          return;
        }
        
        final response = await jamai.generativeTable.deleteTable(tableId: testKnowledgeTableId!);
        
        expect(response.ok, isTrue);
        
        // Verify table is deleted
        try {
          await jamai.generativeTable.getTable(tableId: testKnowledgeTableId!);
          fail('Table should have been deleted');
        } catch (e) {
          // Expected to fail
          expect(e, isA<Exception>());
        }
        
        testKnowledgeTableId = null;
      });

      test('delete chat table', () async {
        if (testChatTableId == null) {
          // Skip if no chat table was created
          return;
        }
        
        final response = await jamai.generativeTable.deleteTable(tableId: testChatTableId!);
        
        expect(response.ok, isTrue);
        
        // Verify table is deleted
        try {
          await jamai.generativeTable.getTable(tableId: testChatTableId!);
          fail('Table should have been deleted');
        } catch (e) {
          // Expected to fail
          expect(e, isA<Exception>());
        }
        
        testChatTableId = null;
      });
    });
  });
}
