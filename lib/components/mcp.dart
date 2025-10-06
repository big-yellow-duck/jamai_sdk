import 'dart:convert';
import 'package:http/http.dart' as http;

class MCP {
  final String apiUrl;
  final String apiKey;

  MCP({required this.apiUrl, required this.apiKey});

  /// Sends a POST request to the MCP streamable HTTP endpoint.
  ///
  /// [request] - The request payload as a map.
  /// [userId] - Optional user ID.
  ///
  /// Returns a [Map<String, dynamic>] containing the response.
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> streamHttpPost(
    Map<String, dynamic> request, {
    String? userId,
  }) async {
    final url = Uri.parse('$apiUrl/api/v1/mcp/http');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

    if (userId != null) headers['X-USER-ID'] = userId;

    final response = await http.post(
      url,
      headers: headers,
      body: json.encode(request),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to POST to MCP HTTP endpoint: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Sends a GET request to the MCP streamable HTTP endpoint.
  ///
  /// [userId] - Optional user ID.
  ///
  /// Returns a [Map<String, dynamic>] containing the response.
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> streamHttpGet({String? userId}) async {
    final url = Uri.parse('$apiUrl/api/v1/mcp/http');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

    if (userId != null) headers['X-USER-ID'] = userId;

    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to GET from MCP HTTP endpoint: ${response.statusCode} - ${response.body}',
      );
    }
  }
}