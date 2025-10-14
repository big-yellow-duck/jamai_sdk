import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/types/gen_tables.dart';
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart';
import 'package:jamai_sdk/types/db.dart';

void main() {
  // Load env vars for testing
  late String? jamaiApiKey;
  late String? jamaiUrl;
  late JamaiApiClient jamai;
  late String? testOrganizationId;
  late String? testProjectName;
  late String? testUserId;

  // Variables to store created resources for testing
  late String? testConversationId;
  late String? testAgentId;

  setUpAll(() async {
    // Check that env vars are strings
    var env = DotEnv(includePlatformEnvironment: true)..load();
    jamaiApiKey = env['JAMAI_API_KEY'];
    jamaiUrl = env['JAMAI_API_URL'];
    testOrganizationId = env['TEST_ORGANIZATION_ID'];
    testProjectName = env['TEST_PROJECT_NAME'];
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

    // setup a project to make conversations in

    ProjectRead startProject = await jamai.project.create(
      projectId: testProjectName!,
      body: ProjectCreate(
        organizationId: testOrganizationId!,
        name: testProjectName!,
      ),
    );

    testProjectName = startProject.id;

    // update the api client to start testing conversations
    jamai = JamaiApiClient(
      apiKey: jamaiApiKey!,
      baseUrl: jamaiUrl!,
      userId: testUserId!,
      projectId: testProjectName!,
    );
  });

  group('Gen tables V2 tests', () {
    final String testTableId = 'test_table_id';
    test('create action table', () async {
      jamai.generativeTable.createActionTable(
        ActionTableSchemaCreate(
          id: testTableId,
          cols: [ColumnSchemaCreate(id: 'input', dtype: ColumnSchemaDtype.str), ColumnSchemaCreate(id: 'output', dtype: ColumnSchemaDtype.str, genConfig: GenConfig())],
        ),
      );
    });
  });
}
