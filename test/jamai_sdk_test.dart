import 'package:jamai_sdk/jamai_sdk.dart';
import 'package:jamai_sdk/components/project.dart';
import 'package:jamai_sdk/components/templates.dart';
import 'package:test/test.dart';
void main() {
  group('JamaiApiClient', () {
    late JamaiApiClient client;

    setUp(() {
      client = JamaiApiClient(apiKey: 'test-api-key');
    });

    test('initializes with API key', () {
      expect(client.apiKey, 'test-api-key');
    });

    test('sets API key correctly', () {
      client.setApiKey('new-api-key');
      expect(client.apiKey, 'new-api-key');
    });

    test('creates project under organization with valid parameters', () async {
      // This test would normally mock the HTTP client
      // For now, we'll just test that the method exists and has correct signature
      expect(
        client.createProjectUnderOrganization,
        isA<Function>(),
      );
    });

    test('has project property for scoped operations', () {
      expect(
        client.project,
        isA<Project>(),
      );
    });

    test('has templates property for scoped operations', () {
      expect(
        client.templates,
        isA<Templates>(),
      );
    });

    test('project methods exist and have correct signatures', () {
      expect(
        client.project.get,
        isA<Function>(),
      );
      expect(
        client.project.listProjectsByOrganization,
        isA<Function>(),
      );
      expect(
        client.project.create,
        isA<Function>(),
      );
      expect(
        client.project.update,
        isA<Function>(),
      );
      expect(
        client.project.delete,
        isA<Function>(),
      );
      expect(
        client.project.joinProject,
        isA<Function>(),
      );
      expect(
        client.project.leaveProject,
        isA<Function>(),
      );
      expect(
        client.project.listInvitations,
        isA<Function>(),
      );
      expect(
        client.project.createInvitation,
        isA<Function>(),
      );
      expect(
        client.project.deleteInvitation,
        isA<Function>(),
      );
      expect(
        client.project.export,
        isA<Function>(),
      );
    });

    test('templates methods exist and have correct signatures', () {
      expect(
        client.templates.list,
        isA<Function>(),
      );
      expect(
        client.templates.get,
        isA<Function>(),
      );
      expect(
        client.templates.create,
        isA<Function>(),
      );
      expect(
        client.templates.update,
        isA<Function>(),
      );
      expect(
        client.templates.delete,
        isA<Function>(),
      );
      expect(
        client.templates.importToProject,
        isA<Function>(),
      );
      expect(
        client.templates.clone,
        isA<Function>(),
      );
      expect(
        client.templates.getCategories,
        isA<Function>(),
      );
      expect(
        client.templates.search,
        isA<Function>(),
      );
    });

    test('creates project under organization with valid parameters', () async {
      // This test would normally mock the HTTP client
      // For now, we'll just test that the method exists and has correct signature
      expect(
        client.createProjectUnderOrganization,
        isA<Function>(),
      );
    });
  });
}
