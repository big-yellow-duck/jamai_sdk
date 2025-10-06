import 'package:flutter/cupertino.dart';
import 'package:jamai_sdk/components/generative_table.dart';
import 'package:jamai_sdk/components/project.dart';
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
}