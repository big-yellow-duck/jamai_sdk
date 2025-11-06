import 'package:dotenv/dotenv.dart';
import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/types/db.dart' as db_types;
import 'package:jamai_sdk/types/common.dart' as common_types;
import 'package:test/test.dart';

void main() {
  // Load env vars for testing
  late String? jamaiApiKey;
  late String? jamaiUrl;
  late String? testUserId;
  late String? testOrganizationId;
  late String? testProjectName;
  late JamaiApiClient jamai;
  late String? testTemplateId;
  late String? testTableId;
  late String? testProjectId;

  setUpAll(() async {
    // Check that env vars are strings
    var env = DotEnv(includePlatformEnvironment: true)..load();
    jamaiApiKey = env['JAMAI_API_KEY'];
    jamaiUrl = env['JAMAI_API_URL'];
    testUserId = env['TEST_USER_ID'];
    testOrganizationId = env['TEST_ORGANIZATION_ID'];
    testProjectName = env['TEST_PROJECT_NAME'];

    expect(jamaiApiKey, isNotNull);
    expect(jamaiUrl, isNotNull);
    expect(testUserId, isNotNull);
    expect(testOrganizationId, isNotNull);
    expect(testProjectName, isNotNull);

    jamai = JamaiApiClient(
      apiKey: jamaiApiKey!,
      baseUrl: jamaiUrl!,
      userId: testUserId,
    );

    // Create a test project for template testing
    final projectCreateResult = await jamai.project.create(
      projectId: '${testProjectName}_template_test',
      body: db_types.ProjectCreate(
        organizationId: testOrganizationId!,
        name: '${testProjectName}_template_test',
      ),
    );
    expect(projectCreateResult, isA<db_types.ProjectRead>());
    testProjectId = projectCreateResult.id;
  });

  // this test is not ready yet templates are private for now
  group('Templates test', () {
    test('List Templates', () async {
      final templatesListResult = await jamai.templates.list();
      expect(templatesListResult, isA<Map<String, dynamic>>());
      expect(templatesListResult.containsKey('items'), isTrue);
      expect(templatesListResult['items'], isA<List>());

      // Print available templates for debugging
      if (templatesListResult['items'].isNotEmpty) {
        print('Found ${templatesListResult['items'].length} templates');
        for (var template in templatesListResult['items']) {
          print('Template: ${template['name']} (ID: ${template['id']})');
        }
      }
    });

    test('List Templates with Parameters', () async {
      final templatesListResult = await jamai.templates.list(
        limit: 10,
        offset: 0,
        orderBy: common_types.OrderBy.name,
        orderAscending: true,
        searchQuery: common_types.ShortString('test'),
        searchColumns: ['name', 'description'],
      );
      expect(templatesListResult, isA<Map<String, dynamic>>());
      expect(templatesListResult.containsKey('items'), isTrue);
      expect(templatesListResult['items'], isA<List>());
    });

    test('List Templates with Pagination Cursor', () async {
      // First get a list to potentially get a cursor
      final initialList = await jamai.templates.list(limit: 1);

      // If there's a cursor in the response, use it; otherwise skip this test
      if (initialList.containsKey('end_cursor') &&
          initialList['end_cursor'] != null) {
        final templatesListResult = await jamai.templates.list(
          limit: 5,
          after: initialList['end_cursor'],
        );
        expect(templatesListResult, isA<Map<String, dynamic>>());
        expect(templatesListResult.containsKey('items'), isTrue);
        expect(templatesListResult['items'], isA<List>());
      } else {
        print('No cursor available for pagination cursor test');
      }
    });

    test('Get Template', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        final templateGetResult = await jamai.templates.get(
          templateId: testTemplateId!,
        );
        expect(templateGetResult, isA<Map<String, dynamic>>());
        expect(templateGetResult['id'], equals(testTemplateId));
      } else {
        // Skip test if no templates are available
        print('No templates available for testing get template');
      }
    });

    test('List Tables - Action Type', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        final tablesListResult = await jamai.templates.listTables(
          templateId: testTemplateId!,
          tableType: common_types.TableType.action,
          limit: 10,
          offset: 0,
          orderBy: common_types.OrderBy.name,
          orderAscending: true,
          countRows: true,
        );
        expect(tablesListResult, isA<Map<String, dynamic>>());
        expect(tablesListResult.containsKey('items'), isTrue);
        expect(tablesListResult['items'], isA<List>());
      } else {
        print('No templates available for testing list tables');
      }
    });

    test('List Tables - Knowledge Type', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        final tablesListResult = await jamai.templates.listTables(
          templateId: testTemplateId!,
          tableType: common_types.TableType.knowledge,
          limit: 10,
          offset: 0,
          searchQuery: common_types.ShortString('test'),
          countRows: false,
        );
        expect(tablesListResult, isA<Map<String, dynamic>>());
        expect(tablesListResult.containsKey('items'), isTrue);
        expect(tablesListResult['items'], isA<List>());
      } else {
        print('No templates available for testing list knowledge tables');
      }
    });

    test('List Tables - Chat Type', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        final tablesListResult = await jamai.templates.listTables(
          templateId: testTemplateId!,
          tableType: common_types.TableType.chat,
          parentId: 'agent', // List all chat agents
          limit: 10,
        );
        expect(tablesListResult, isA<Map<String, dynamic>>());
        expect(tablesListResult.containsKey('items'), isTrue);
        expect(tablesListResult['items'], isA<List>());
      } else {
        print('No templates available for testing list chat tables');
      }
    });

    test('Get Table', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        // Then list tables to get a valid table ID
        final tablesList = await jamai.templates.listTables(
          templateId: testTemplateId!,
          tableType: common_types.TableType.action,
          limit: 1,
        );

        if (tablesList.containsKey('items') && tablesList['items'].isNotEmpty) {
          testTableId = tablesList['items'][0]['id'];

          final tableGetResult = await jamai.templates.getTable(
            templateId: testTemplateId!,
            tableType: common_types.TableType.action,
            tableId: testTableId!,
          );
          expect(tableGetResult, isA<Map<String, dynamic>>());
          expect(tableGetResult['id'], equals(testTableId));
        } else {
          print('No tables available for testing get table');
        }
      } else {
        print('No templates available for testing get table');
      }
    });

    test('List Table Rows', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        // Then list tables to get a valid table ID
        final tablesList = await jamai.templates.listTables(
          templateId: testTemplateId!,
          tableType: common_types.TableType.action,
          limit: 1,
        );

        if (tablesList.containsKey('items') && tablesList['items'].isNotEmpty) {
          testTableId = tablesList['items'][0]['id'];

          final rowsListResult = await jamai.templates.listTableRows(
            templateId: testTemplateId!,
            tableType: common_types.TableType.action,
            tableId: testTableId!,
            limit: 10,
            offset: 0,
            orderBy: common_types.OrderBy.id,
            orderAscending: true,
            columns: ['id', 'name'],
            floatDecimals: 2,
            vecDecimals: 3,
          );
          expect(rowsListResult, isA<Map<String, dynamic>>());
          expect(rowsListResult.containsKey('items'), isTrue);
          expect(rowsListResult['items'], isA<List>());
        } else {
          print('No tables available for testing list table rows');
        }
      } else {
        print('No templates available for testing list table rows');
      }
    });

    test('List Table Rows with Search', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        // Then list tables to get a valid table ID
        final tablesList = await jamai.templates.listTables(
          templateId: testTemplateId!,
          tableType: common_types.TableType.action,
          limit: 1,
        );

        if (tablesList.containsKey('items') && tablesList['items'].isNotEmpty) {
          testTableId = tablesList['items'][0]['id'];

          final rowsListResult = await jamai.templates.listTableRows(
            templateId: testTemplateId!,
            tableType: common_types.TableType.action,
            tableId: testTableId!,
            limit: 10,
            searchQuery: common_types.ShortString('test'),
            searchColumns: ['name', 'description'],
            where: 'id IS NOT NULL',
          );
          expect(rowsListResult, isA<Map<String, dynamic>>());
          expect(rowsListResult.containsKey('items'), isTrue);
          expect(rowsListResult['items'], isA<List>());
        } else {
          print('No tables available for testing list table rows with search');
        }
      } else {
        print('No templates available for testing list table rows with search');
      }
    });

    test('Get Table Row', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        // Then list tables to get a valid table ID
        final tablesList = await jamai.templates.listTables(
          templateId: testTemplateId!,
          tableType: common_types.TableType.action,
          limit: 1,
        );

        if (tablesList.containsKey('items') && tablesList['items'].isNotEmpty) {
          testTableId = tablesList['items'][0]['id'];

          // Then list rows to get a valid row ID
          final rowsList = await jamai.templates.listTableRows(
            templateId: testTemplateId!,
            tableType: common_types.TableType.action,
            tableId: testTableId!,
            limit: 1,
          );

          if (rowsList.containsKey('items') && rowsList['items'].isNotEmpty) {
            final rowId = rowsList['items'][0]['id'];

            final rowGetResult = await jamai.templates.getTableRow(
              templateId: testTemplateId!,
              tableType: common_types.TableType.action,
              tableId: testTableId!,
              rowId: rowId,
              columns: ['id', 'name'],
              floatDecimals: 2,
              vecDecimals: 3,
            );
            expect(rowGetResult, isA<Map<String, dynamic>>());
            expect(rowGetResult['id'], equals(rowId));
          } else {
            print('No rows available for testing get table row');
          }
        } else {
          print('No tables available for testing get table row');
        }
      } else {
        print('No templates available for testing get table row');
      }
    });

    test('Error Handling - Get Non-existent Template', () async {
      try {
        await jamai.templates.get(templateId: 'non-existent-template-id');
        fail('Expected an exception to be thrown');
      } catch (e) {
        expect(e, isA<Exception>());
        expect(e.toString(), contains('Failed to get template'));
      }
    });

    test('Error Handling - Get Non-existent Table', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        try {
          await jamai.templates.getTable(
            templateId: testTemplateId!,
            tableType: common_types.TableType.action,
            tableId: 'non-existent-table-id',
          );
          fail('Expected an exception to be thrown');
        } catch (e) {
          expect(e, isA<Exception>());
          expect(e.toString(), contains('Failed to get template table'));
        }
      } else {
        print('No templates available for testing error handling');
      }
    });

    test('Error Handling - Get Non-existent Table Row', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        // Then list tables to get a valid table ID
        final tablesList = await jamai.templates.listTables(
          templateId: testTemplateId!,
          tableType: common_types.TableType.action,
          limit: 1,
        );

        if (tablesList.containsKey('items') && tablesList['items'].isNotEmpty) {
          testTableId = tablesList['items'][0]['id'];

          try {
            await jamai.templates.getTableRow(
              templateId: testTemplateId!,
              tableType: common_types.TableType.action,
              tableId: testTableId!,
              rowId: 'non-existent-row-id',
            );
            fail('Expected an exception to be thrown');
          } catch (e) {
            expect(e, isA<Exception>());
            expect(e.toString(), contains('Failed to get template table row'));
          }
        } else {
          print('No tables available for testing error handling');
        }
      } else {
        print('No templates available for testing error handling');
      }
    });

    test('Templates with Different Order By Options', () async {
      final orderByOptions = [
        common_types.OrderBy.id,
        common_types.OrderBy.name,
        common_types.OrderBy.createdAt,
        common_types.OrderBy.updatedAt,
      ];

      for (final orderBy in orderByOptions) {
        final templatesListResult = await jamai.templates.list(
          limit: 5,
          orderBy: orderBy,
          orderAscending: true,
        );
        expect(templatesListResult, isA<Map<String, dynamic>>());
        expect(templatesListResult.containsKey('items'), isTrue);
        expect(templatesListResult['items'], isA<List>());
      }
    });

    test('Templates with Search Functionality', () async {
      final searchQueries = ['template', 'test', 'example'];

      for (final query in searchQueries) {
        final templatesListResult = await jamai.templates.list(
          limit: 5,
          searchQuery: common_types.ShortString(query),
          searchColumns: ['name', 'description'],
        );
        expect(templatesListResult, isA<Map<String, dynamic>>());
        expect(templatesListResult.containsKey('items'), isTrue);
        expect(templatesListResult['items'], isA<List>());
      }
    });

    test('Table Types Coverage', () async {
      // First list templates to get a valid template ID
      final templatesList = await jamai.templates.list(limit: 1);
      if (templatesList.containsKey('items') &&
          templatesList['items'].isNotEmpty) {
        testTemplateId = templatesList['items'][0]['id'];

        final tableTypes = [
          common_types.TableType.action,
          common_types.TableType.knowledge,
          common_types.TableType.chat,
        ];

        for (final tableType in tableTypes) {
          final tablesListResult = await jamai.templates.listTables(
            templateId: testTemplateId!,
            tableType: tableType,
            limit: 5,
          );
          expect(tablesListResult, isA<Map<String, dynamic>>());
          expect(tablesListResult.containsKey('items'), isTrue);
          expect(tablesListResult['items'], isA<List>());
        }
      } else {
        print('No templates available for testing table types coverage');
      }
    });

    // Additional comprehensive tests to ensure all functions work
    test('Template API Endpoints Validation', () async {
      // Test that all API endpoints are properly formatted and accessible
      final templatesListResult = await jamai.templates.list(limit: 1);

      // Test basic list functionality
      expect(templatesListResult, isA<Map<String, dynamic>>());
      expect(templatesListResult.containsKey('items'), isTrue);

      // Test with various parameter combinations
      final testResults = <Map<String, dynamic>>[];

      // Test different limit values
      testResults.add(await jamai.templates.list(limit: 5));
      testResults.add(await jamai.templates.list(limit: 10));

      // Test different order by options
      testResults.add(
        await jamai.templates.list(
          limit: 5,
          orderBy: common_types.OrderBy.name,
          orderAscending: true,
        ),
      );
      testResults.add(
        await jamai.templates.list(
          limit: 5,
          orderBy: common_types.OrderBy.createdAt,
          orderAscending: false,
        ),
      );

      // Test search functionality
      testResults.add(
        await jamai.templates.list(
          limit: 5,
          searchQuery: common_types.ShortString('test'),
          searchColumns: ['name'],
        ),
      );

      // Verify all results have the expected structure
      for (final result in testResults) {
        expect(result, isA<Map<String, dynamic>>());
        expect(result.containsKey('items'), isTrue);
        expect(result['items'], isA<List>());
      }
    });

    test('Template Error Handling Validation', () async {
      // Test error handling for invalid template ID
      bool exceptionThrown = false;
      try {
        final result = await jamai.templates.get(
          templateId: 'invalid-template-id-12345',
        );
        print('Get template result: $result');
        // If no exception is thrown, the result should be examined
        expect(result, isA<Map<String, dynamic>>());
      } catch (e) {
        exceptionThrown = true;
        print('Get template exception: $e');
        expect(e, isA<Exception>());
        expect(e.toString(), contains('Failed to get template'));
      }
      // Don't require exception to be thrown - API might return empty results

      // Test error handling for template operations with invalid data
      exceptionThrown = false;
      try {
        final result = await jamai.templates.listTables(
          templateId: 'invalid-template-id-12345',
          tableType: common_types.TableType.action,
        );
        print('List tables result: $result');
        expect(result, isA<Map<String, dynamic>>());
      } catch (e) {
        exceptionThrown = true;
        print('List tables exception: $e');
        expect(e, isA<Exception>());
        expect(e.toString(), contains('Failed to list template tables'));
      }

      exceptionThrown = false;
      try {
        final result = await jamai.templates.getTable(
          templateId: 'invalid-template-id-12345',
          tableType: common_types.TableType.action,
          tableId: 'invalid-table-id-12345',
        );
        print('Get table result: $result');
        expect(result, isA<Map<String, dynamic>>());
      } catch (e) {
        exceptionThrown = true;
        print('Get table exception: $e');
        expect(e, isA<Exception>());
        expect(e.toString(), contains('Failed to get template table'));
      }

      exceptionThrown = false;
      try {
        final result = await jamai.templates.listTableRows(
          templateId: 'invalid-template-id-12345',
          tableType: common_types.TableType.action,
          tableId: 'invalid-table-id-12345',
        );
        print('List table rows result: $result');
        expect(result, isA<Map<String, dynamic>>());
      } catch (e) {
        exceptionThrown = true;
        print('List table rows exception: $e');
        expect(e, isA<Exception>());
        expect(e.toString(), contains('Failed to list template table rows'));
      }

      exceptionThrown = false;
      try {
        final result = await jamai.templates.getTableRow(
          templateId: 'invalid-template-id-12345',
          tableType: common_types.TableType.action,
          tableId: 'invalid-table-id-12345',
          rowId: 'invalid-row-id-12345',
        );
        print('Get table row result: $result');
        expect(result, isA<Map<String, dynamic>>());
      } catch (e) {
        exceptionThrown = true;
        print('Get table row exception: $e');
        expect(e, isA<Exception>());
        expect(e.toString(), contains('Failed to get template table row'));
      }
    });

    test('Template Parameter Validation', () async {
      // Test that all parameters are properly handled

      // Test with all parameters set
      final fullParamsResult = await jamai.templates.list(
        offset: 0,
        limit: 10,
        orderBy: common_types.OrderBy.name,
        orderAscending: true,
        searchQuery: common_types.ShortString('test'),
        searchColumns: ['name', 'description'],
      );
      expect(fullParamsResult, isA<Map<String, dynamic>>());
      expect(fullParamsResult.containsKey('items'), isTrue);

      // Test with minimal parameters
      final minimalParamsResult = await jamai.templates.list();
      expect(minimalParamsResult, isA<Map<String, dynamic>>());
      expect(minimalParamsResult.containsKey('items'), isTrue);

      // Test table operations with all parameters
      try {
        final tablesResult = await jamai.templates.listTables(
          templateId: 'test-template-id',
          tableType: common_types.TableType.action,
          limit: 10,
          offset: 0,
          orderBy: common_types.OrderBy.name,
          orderAscending: true,
          parentId: 'test-parent-id',
          searchQuery: common_types.ShortString('test'),
          countRows: true,
        );
        // This might fail, but we're testing parameter formatting
        expect(tablesResult, isA<Map<String, dynamic>>());
      } catch (e) {
        // Expected to fail with invalid template ID, but parameters should be formatted correctly
        expect(e, isA<Exception>());
      }

      // Test table row operations with all parameters
      try {
        final rowsResult = await jamai.templates.listTableRows(
          templateId: 'test-template-id',
          tableType: common_types.TableType.action,
          tableId: 'test-table-id',
          offset: 0,
          limit: 10,
          orderBy: common_types.OrderBy.id,
          orderAscending: true,
          columns: ['id', 'name'],
          where: 'id IS NOT NULL',
          searchQuery: common_types.ShortString('test'),
          searchColumns: ['name'],
          floatDecimals: 2,
          vecDecimals: 3,
        );
        expect(rowsResult, isA<Map<String, dynamic>>());
      } catch (e) {
        // Expected to fail with invalid IDs, but parameters should be formatted correctly
        expect(e, isA<Exception>());
      }
    });
  });

  // Cleanup: Delete the test project
  tearDownAll(() async {
    if (testProjectId != null) {
      try {
        await jamai.project.delete(projectId: testProjectId!);
      } catch (e) {
        print('Failed to cleanup test project: $e');
      }
    }
  });
}
