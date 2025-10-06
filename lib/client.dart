import 'package:jamai_sdk/components/file.dart';
import 'package:jamai_sdk/components/generative_table.dart';
import 'package:jamai_sdk/components/mcp.dart';
import 'package:jamai_sdk/components/project.dart';
import 'package:jamai_sdk/components/serving.dart';
import 'package:jamai_sdk/components/tasks.dart';
import 'package:jamai_sdk/components/templates.dart';
/// Lightweight API client used across utility modules
class JamaiApiClient {
  String baseUrl;
  String apiKey;

  JamaiApiClient({this.baseUrl = 'https://api.jamaibase.com/api/v2', required this.apiKey});

  /// Update API key at runtime
  void setApiKey(String key) {
    apiKey = key;
  }

  /// Provides scoped project operations configured with this client's credentials
  Project get project => Project(apiUrl: baseUrl, apiKey: apiKey);

  /// Provides scoped template operations configured with this client's credentials
  Templates get templates => Templates(apiUrl: baseUrl, apiKey: apiKey);

  GenerativeTable get generativeTable => GenerativeTable(apiUrl: baseUrl, apiKey: apiKey);

  Serving get serving => Serving(apiUrl: baseUrl, apiKey: apiKey);

  /// Provides scoped file operations configured with this client's credentials
  File get file => File(apiUrl: baseUrl, apiKey: apiKey);

  /// Provides scoped task operations configured with this client's credentials
  Tasks get tasks => Tasks(apiUrl: baseUrl, apiKey: apiKey);

  /// Provides scoped MCP operations configured with this client's credentials
  MCP get mcp => MCP(apiUrl: baseUrl, apiKey: apiKey);
}