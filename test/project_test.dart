import 'package:dotenv/dotenv.dart';
import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/types/db.dart' as db_types;
import 'package:jamai_sdk/types/common.dart';
import 'package:test/test.dart';

void main() {
  // Load env vars for testing

  late String? jamaiApiKey;
  late String? jamaiUrl;
  late JamaiApiClient jamai;
  late String? testOrganizationId;
  late SanitizedNonEmptyString? testProjectName;
  late String? testUserId;

  // create newproject to use for later tests
  late db_types.ProjectRead newProject;
  setUpAll(() async {
    // Check that env vars are strings
    var env = DotEnv(includePlatformEnvironment: true)..load();
    jamaiApiKey = env['JAMAI_API_KEY'];
    jamaiUrl = env['JAMAI_API_URL'];
    testOrganizationId = env['TEST_ORGANIZATION_ID'];
    String? loadedTestProjectName = env['TEST_PROJECT_NAME'];
    if(loadedTestProjectName == null) {
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
    final projectCreateResult = await jamai.project.create(
      projectId: testProjectName.toString(),
      body: db_types.ProjectCreate(
        organizationId: testOrganizationId!,
        name: testProjectName!,
      ),
    );
    expect(projectCreateResult, isA<db_types.ProjectRead>());
    newProject = projectCreateResult;
  });

  group('Projects test ', () {
    test('Get Project', () async {
      final projectGetResult = await jamai.project.get(
        projectId: newProject.id,
      );
      expect(projectGetResult, isA<db_types.ProjectRead>());
      expect(projectGetResult.id, newProject.id);
    });

    test('Update Project', () async {
      final projectUpdateResult = await jamai.project.update(
        projectId: newProject.id,
        body: db_types.ProjectUpdate(name: SanitizedNonEmptyString('${testProjectName}_updated')),
      );
      expect(projectUpdateResult, isA<db_types.ProjectRead>());
      expect(projectUpdateResult.name, '${testProjectName}_updated');
    });

    test('List Projects by Organization', () async {
      final projectsListResult = await jamai.project.listProjectsByOrganization(
        organizationId: testOrganizationId!,
      );
      expect(projectsListResult.items, isA<List>());
      expect(projectsListResult.total, greaterThanOrEqualTo(1));
      expect(projectsListResult.items, isA<List<db_types.ProjectRead>>());
      expect(projectsListResult.total, greaterThanOrEqualTo(1));
    });

    /// leave the project then join so it does not break
    test('Leave Project', () async {
      // Note: This test might fail if the user is the owner/creator
      // In a real scenario, you'd need a different user to test this properly
      final leaveResult = await jamai.project.leaveProject(
        userId: testUserId!,
        projectId: newProject.id,
      );
      expect(leaveResult, isA<Map<String, dynamic>>());
    });
    test('Join project', () async {
      final joinResult = await jamai.project.joinProject(
        userId: testUserId!,
        projectId: newProject.id,
        role: db_types.Role.admin,
      );
      expect(joinResult, isA<Map<String, dynamic>>());
    });

    test('Get Project Member', () async {
      final memberResult = await jamai.project.getProjectMember(
        projectId: newProject.id,
        userId: testUserId!,
      );
      expect(memberResult, isA<Map<String, dynamic>>());
    });

    test('List Project Members', () async {
      final membersResult = await jamai.project.listProjectMembers(
        projectId: newProject.id,
        limit: 10,
        offset: 0,
      );
      expect(membersResult, isA<Map<String, dynamic>>());
      expect(membersResult['items'], isA<List>());
    });

    test('Update Project Member Role', () async {
      final updateResult = await jamai.project.updateProjectMemberRole(
        projectId: newProject.id,
        userId: testUserId!,
        role: db_types.Role.admin,
      );
      expect(updateResult, isA<Map<String, dynamic>>());
    });

    test('Create Project Invitation', () async {
      final invitationResult = await jamai.project.createInvitation(
        projectId: newProject.id,
        userEmail: 'test@example.com',
        role: db_types.Role.member,
      );
      print(invitationResult);
      expect(invitationResult, isA<db_types.VerificationCodeRead>());
    });

    test('List Project Invitations', () async {
      final invitationsResult = await jamai.project.listInvitations(
        projectId: newProject.id,
        limit: 10,
        offset: 0,
      );
      expect(invitationsResult, isA<Map<String, dynamic>>());
      expect(invitationsResult['items'], isA<List>());
    });

    test('Delete Project Invitation', () async {
      // First create an invitation to delete
      final createResult = await jamai.project.createInvitation(
        projectId: newProject.id,
        userEmail: 'delete_test@example.com',
        role: db_types.Role.member,
      );

      final invitationId = createResult.id;
      final deleteResult = await jamai.project.deleteInvitation(
        projectId: newProject.id,
        invitationId: invitationId,
      );
      expect(deleteResult, isA<Map<String, dynamic>>());
    });

    
    // Project management test need to run after tables are created
    // complete the gen tables tests first
    test('Export Project', () async {
      final exportResult = await jamai.project.export(
        projectId: newProject.id,
        format: 'json',
      );
      expect(exportResult, isA<Map<String, dynamic>>());
    });

    test('Import Project Data', () async {
      final importData = {
        'test_data': 'sample_import_data',
        'project_id': newProject.id,
      };
      final importResult = await jamai.project.import(
        projectId: newProject.id,
        importData: importData,
        format: 'json',
      );
      expect(importResult, isA<Map<String, dynamic>>());
    });

    test('Import Project Migration', () async {
      final migrationData = {
        'migration_type': 'test_migration',
        'data': {'key': 'value'},
      };
      final migrationResult = await jamai.project.importProjectMigration(
        projectId: newProject.id,
        migrationData: migrationData,
        format: 'json',
      );
      expect(migrationResult, isA<Map<String, dynamic>>());
    });

    test('Import Template', () async {
      final templateData = {'template_config': 'test_config'};
      final templateResult = await jamai.project.importTemplate(
        projectId: newProject.id,
        templateId: 'test_template',
        templateData: templateData,
      );
      expect(templateResult, isA<Map<String, dynamic>>());
    });

    // Cleanup: Delete the member test project
    test('Cleanup Member Test Project', () async {
      final deleteResult = await jamai.project.delete(projectId: newProject.id);
      expect(deleteResult, isA<OkResponse>());
      expect(deleteResult.ok, isTrue);
    });
  });

  /// run the delete test the last
  test('Delete Project', () async {
    final deleteResult = await jamai.project.delete(projectId: newProject.id);
    expect(deleteResult, isA<OkResponse>());
    expect(deleteResult.ok, isTrue);
  });
}
