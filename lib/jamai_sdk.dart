import 'package:jamai_sdk/components/project.dart';
import 'package:jamai_sdk/components/templates.dart';
import 'package:jamai_sdk/components/generative_table.dart';
export 'client.dart';

/// Main SDK class that provides access to all Jamai API functionality
class JamaiSDK {
  String apiUrl;
  String apiKey;

  JamaiSDK({this.apiUrl = 'https://api.jamaibase.com/api/v2', required this.apiKey});

  /// Access to project-related API operations (scoped with the SDK's credentials)
  Project get project => Project(apiUrl: apiUrl, apiKey: apiKey);

  /// Access to template-related API operations
  Templates get templates => Templates(apiUrl: apiUrl, apiKey: apiKey);

  /// Access to generative table-related API operations
  GenerativeTable get generativeTable => GenerativeTable(apiUrl: apiUrl, apiKey: apiKey);

  /// Convenience method to get all projects accessible to the authenticated user
  /// Note: This method requires an organizationId parameter
  Future<Map<String, dynamic>> getProjects({required String organizationId}) {
    return project.listProjectsByOrganization(organizationId: organizationId);
  }
}
