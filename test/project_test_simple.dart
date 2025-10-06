import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jamai_sdk/components/project.dart' as project_component;
import 'package:jamai_sdk/types/db.dart' as db_types;
import 'package:test/test.dart';

void main() {
  group('Project API Tests', () {
    late project_component.Project project;
    
    // Test configuration - replace with actual values for integration tests
    const String apiUrl = 'https://cloud.jamaibase.com';
    const String apiKey = ''; // Replace with actual API key for testing
    const String testOrganizationId = ''; // Replace with actual organization ID
    const String testProjectId = ''; // Replace with actual project ID
    const String testUserId = ''; // Replace with actual user ID
    
    setUpAll(() {
      project = project_component.Project(apiUrl: apiUrl, apiKey: apiKey);
      
      if (apiKey.isEmpty) {
        print('Warning: API key not provided. Integration tests will be skipped.');
      }
    });

    group('Project CRUD Operations', () {
      test('Create Project', () async {
        if (apiKey.isEmpty || testOrganizationId.isEmpty) {
          print('Skipping test: API key or organization ID not provided');
          return;
        }
        
        final projectId = 'test-project-${DateTime.now().millisecondsSinceEpoch}';
        final projectCreate = db_types.ProjectCreate(
          organizationId: testOrganizationId,
          name: 'Test Project',
          meta: {'description': 'A test project created via SDK'},
        );
        
        try {
          final result = await project.create(
            projectId: projectId,
            body: projectCreate,
          );
          
          expect(result, isA<db_types.ProjectRead>());
          expect(result.id, equals(projectId));
          expect(result.name, equals('Test Project'));
          expect(result.organizationId, equals(testOrganizationId));
          expect(result.meta['description'], equals('A test project created via SDK'));
          expect(result.createdAt, isA<DateTime>());
          expect(result.updatedAt, isA<DateTime>());
        } catch (e) {
          print('Create project error: $e');
          rethrow;
        }
      });

      test('Get Project', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        try {
          final result = await project.get(projectId: testProjectId);
          
          expect(result, isA<db_types.ProjectRead>());
          expect(result.id, equals(testProjectId));
          expect(result.name, isA<String>());
          expect(result.organizationId, isA<String>());
          expect(result.createdAt, isA<DateTime>());
          expect(result.updatedAt, isA<DateTime>());
        } catch (e) {
          print('Get project error: $e');
          rethrow;
        }
      });

      test('Update Project', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        final projectUpdate = db_types.ProjectUpdate(
          name: 'Updated Test Project',
          meta: {'updated': true, 'description': 'Updated via SDK'},
        );
        
        try {
          final result = await project.update(
            projectId: testProjectId,
            body: projectUpdate,
          );
          
          expect(result, isA<db_types.ProjectRead>());
          expect(result.id, equals(testProjectId));
          expect(result.name, equals('Updated Test Project'));
          expect(result.meta['updated'], equals(true));
          expect(result.meta['description'], equals('Updated via SDK'));
        } catch (e) {
          print('Update project error: $e');
          rethrow;
        }
      });

      test('Delete Project', () async {
        if (apiKey.isEmpty || testOrganizationId.isEmpty) {
          print('Skipping test: API key or organization ID not provided');
          return;
        }
        
        // First create a project to delete
        final projectId = 'test-delete-${DateTime.now().millisecondsSinceEpoch}';
        final projectCreate = db_types.ProjectCreate(
          organizationId: testOrganizationId,
          name: 'Project to Delete',
        );
        
        try {
          // Create the project
          await project.create(projectId: projectId, body: projectCreate);
          
          // Delete the project
          final result = await project.delete(projectId: projectId);
          
          expect(result, isA<Map<String, dynamic>>());
          expect(result.containsKey('ok'), isTrue);
          expect(result['ok'], isTrue);
        } catch (e) {
          print('Delete project error: $e');
          rethrow;
        }
      });
    });

    group('Project Organization Operations', () {
      test('List Projects by Organization', () async {
        if (apiKey.isEmpty || testOrganizationId.isEmpty) {
          print('Skipping test: API key or organization ID not provided');
          return;
        }
        
        try {
          final result = await project.listProjectsByOrganization(
            organizationId: testOrganizationId,
            limit: 10,
            offset: 0,
          );
          
          expect(result, isA<Map<String, dynamic>>());
          expect(result.containsKey('data'), isTrue);
          expect(result['data'], isA<List>());
        } catch (e) {
          print('List projects by organization error: $e');
          rethrow;
        }
      });
    });

    group('Project Member Operations', () {
      test('Join Project', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        try {
          final result = await project.joinProject(projectId: testProjectId);
          
          expect(result, isA<Map<String, dynamic>>());
        } catch (e) {
          print('Join project error: $e');
          rethrow;
        }
      });

      test('Get Project Member', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty || testUserId.isEmpty) {
          print('Skipping test: API key, project ID, or user ID not provided');
          return;
        }
        
        try {
          final result = await project.getProjectMember(
            projectId: testProjectId,
            userId: testUserId,
          );
          
          expect(result, isA<Map<String, dynamic>>());
        } catch (e) {
          print('Get project member error: $e');
          rethrow;
        }
      });

      test('List Project Members', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        try {
          final result = await project.listProjectMembers(
            projectId: testProjectId,
            limit: 10,
            offset: 0,
          );
          
          expect(result, isA<Map<String, dynamic>>());
          expect(result.containsKey('data'), isTrue);
          expect(result['data'], isA<List>());
        } catch (e) {
          print('List project members error: $e');
          rethrow;
        }
      });

      test('Update Project Member Role', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty || testUserId.isEmpty) {
          print('Skipping test: API key, project ID, or user ID not provided');
          return;
        }
        
        try {
          final result = await project.updateProjectMemberRole(
            projectId: testProjectId,
            userId: testUserId,
            role: 'MEMBER',
          );
          
          expect(result, isA<Map<String, dynamic>>());
        } catch (e) {
          print('Update project member role error: $e');
          rethrow;
        }
      });

      test('Leave Project', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        try {
          final result = await project.leaveProject(projectId: testProjectId);
          
          expect(result, isA<Map<String, dynamic>>());
        } catch (e) {
          print('Leave project error: $e');
          rethrow;
        }
      });
    });

    group('Project Import/Export Operations', () {
      test('Export Project', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        try {
          final result = await project.export(
            projectId: testProjectId,
            format: 'json',
          );
          
          expect(result, isA<Map<String, dynamic>>());
        } catch (e) {
          print('Export project error: $e');
          rethrow;
        }
      });

      test('Import Project Data', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        final importData = {
          'test': 'data',
          'timestamp': DateTime.now().toIso8601String(),
        };
        
        try {
          final result = await project.import(
            projectId: testProjectId,
            importData: importData,
            format: 'json',
          );
          
          expect(result, isA<Map<String, dynamic>>());
        } catch (e) {
          print('Import project data error: $e');
          rethrow;
        }
      });

      test('Import Project Migration', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        final migrationData = {
          'version': '1.0',
          'data': {'test': 'migration'},
        };
        
        try {
          final result = await project.importProjectMigration(
            projectId: testProjectId,
            migrationData: migrationData,
            format: 'json',
          );
          
          expect(result, isA<Map<String, dynamic>>());
        } catch (e) {
          print('Import project migration error: $e');
          rethrow;
        }
      });
    });

    group('Project Template Operations', () {
      test('Import Template', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        try {
          final result = await project.importTemplate(
            projectId: testProjectId,
            templateId: 'test-template',
            templateData: {'custom': 'data'},
          );
          
          expect(result, isA<Map<String, dynamic>>());
        } catch (e) {
          print('Import template error: $e');
          rethrow;
        }
      });
    });

    group('Project Invitation Operations', () {
      test('Create Invitation', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        try {
          final result = await project.createInvitation(
            projectId: testProjectId,
            email: 'test@example.com',
            role: 'MEMBER',
          );
          
          expect(result, isA<Map<String, dynamic>>());
        } catch (e) {
          print('Create invitation error: $e');
          rethrow;
        }
      });

      test('List Invitations', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        try {
          final result = await project.listInvitations(
            projectId: testProjectId,
            limit: 10,
            offset: 0,
          );
          
          expect(result, isA<Map<String, dynamic>>());
          expect(result.containsKey('data'), isTrue);
          expect(result['data'], isA<List>());
        } catch (e) {
          print('List invitations error: $e');
          rethrow;
        }
      });

      test('Delete Invitation', () async {
        if (apiKey.isEmpty || testProjectId.isEmpty) {
          print('Skipping test: API key or project ID not provided');
          return;
        }
        
        // First create an invitation to delete
        try {
          final createResult = await project.createInvitation(
            projectId: testProjectId,
            email: 'delete-test@example.com',
            role: 'MEMBER',
          );
          
          final invitationId = createResult['id'] as String?;
          if (invitationId != null) {
            final result = await project.deleteInvitation(
              projectId: testProjectId,
              invitationId: invitationId,
            );
            
            expect(result, isA<Map<String, dynamic>>());
          }
        } catch (e) {
          print('Delete invitation error: $e');
          rethrow;
        }
      });
    });

    group('Error Handling', () {
      test('Handles Invalid Project ID', () async {
        if (apiKey.isEmpty) {
          print('Skipping test: API key not provided');
          return;
        }
        
        try {
          await project.get(projectId: 'invalid-project-id');
          fail('Should have thrown an exception');
        } catch (e) {
          expect(e, isA<Exception>());
          expect(e.toString(), contains('Failed to get project'));
        }
      });

      test('Handles Unauthorized Access', () async {
        final unauthorizedProject = project_component.Project(
          apiUrl: apiUrl, 
          apiKey: 'invalid-key'
        );
        
        try {
          await unauthorizedProject.get(projectId: testProjectId);
          fail('Should have thrown an exception');
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });
  });
}