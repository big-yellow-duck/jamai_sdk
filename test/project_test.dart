import 'package:dotenv/dotenv.dart';
import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/types/db.dart' as db_types;
import 'package:test/test.dart';

void main() {
  // Load env vars for testing

  late String? jamaiApiKey;
  late String? jamaiUrl;
  late JamaiApiClient jamai;
  late String? testOrganizationId;
  late String? testProjectId;
  late String? testUserId;

  setUpAll(() {
    // Check that env vars are strings
    var env = DotEnv(includePlatformEnvironment: true)..load();
    jamaiApiKey = env['JAMAI_API_KEY'];
    jamaiUrl = env['JAMAI_API_URL'];
    testOrganizationId = env['TEST_ORGANIZATION_ID'];
    testProjectId = env['TEST_PROJECT_ID'];
    testUserId = env['TEST_USER_ID'];

    expect(jamaiApiKey, isNotNull);
    expect(jamaiUrl, isNotNull);
    expect(testOrganizationId, isNotNull);
    expect(testProjectId, isNotNull);
    expect(testUserId, isNotNull);

    jamai = JamaiApiClient(apiKey: jamaiApiKey!, baseUrl: jamaiUrl!);
  });

  test('Create Project', () async {
    final projectCreateResult = await jamai.project.create(
      projectId: testProjectId!,
      body: db_types.ProjectCreate(
        organizationId: testOrganizationId!,
        name: testProjectId!,
      ),
    );
    expect(projectCreateResult, isA<db_types.ProjectRead>);
  });
}
