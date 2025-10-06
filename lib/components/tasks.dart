import 'dart:convert';
import 'package:http/http.dart' as http;

class Tasks {
  final String apiUrl;
  final String apiKey;

  Tasks({required this.apiUrl, required this.apiKey});

  /// Gets progress data for the given key.
  ///
  /// [key] - The progress key.
  /// [userId] - Optional user ID.
  ///
  /// Returns a [Map<String, dynamic>] containing the progress data.
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> getProgress(String key, {String? userId}) async {
    final Map<String, dynamic> queryParams = {'key': key};

    final url = Uri.parse('$apiUrl/api/v2/progress').replace(queryParameters: queryParams);

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
        'Failed to get progress: ${response.statusCode} - ${response.body}',
      );
    }
  }
}