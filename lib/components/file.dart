import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jamai_sdk/types/file.dart';

class File {
  final String apiUrl;
  final String apiKey;

  File({required this.apiUrl, required this.apiKey});

  /// Proxies a file by path.
  ///
  /// [path] - The file path or URI to proxy.
  ///
  /// Returns the raw HTTP response containing the file content.
  ///
  /// Throws an [Exception] if the request fails.
  Future<http.Response> proxyFile(String path) async {
    final url = Uri.parse('$apiUrl/api/v2/files/${Uri.encodeComponent(path)}');

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
        'Failed to proxy file: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Uploads a file to the server.
  ///
  /// [fileBytes] - The file content as bytes.
  /// [filename] - The name of the file.
  /// [userId] - Optional user ID.
  /// [projectId] - Optional project ID.
  ///
  /// Returns a [FileUploadResponse] containing the upload result.
  ///
  /// Throws an [Exception] if the request fails.
  Future<FileUploadResponse> uploadFile(
    List<int> fileBytes,
    String filename, {
    String? userId,
    String? projectId,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/files/upload');

    final request = http.MultipartRequest('POST', url)
      ..headers['Authorization'] = 'Bearer $apiKey'
      ..files.add(http.MultipartFile.fromBytes('file', fileBytes, filename: filename));

    if (userId != null) request.headers['X-USER-ID'] = userId;
    if (projectId != null) request.headers['X-PROJECT-ID'] = projectId;

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      return FileUploadResponse.fromMap(jsonResponse);
    } else {
      throw Exception(
        'Failed to upload file: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets raw file URLs for the given URIs.
  ///
  /// [request] - The request containing the list of URIs.
  ///
  /// Returns a [GetURLResponse] containing the URLs.
  ///
  /// Throws an [Exception] if the request fails.
  Future<GetURLResponse> getRawFileUrls(GetURLRequest request) async {
    final url = Uri.parse('$apiUrl/api/v2/files/url/raw');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode(request.toJson()),
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      return GetURLResponse.fromMap(jsonResponse);
    } else {
      throw Exception(
        'Failed to get raw file URLs: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets thumbnail URLs for the given URIs.
  ///
  /// [request] - The request containing the list of URIs.
  ///
  /// Returns a [GetURLResponse] containing the URLs.
  ///
  /// Throws an [Exception] if the request fails.
  Future<GetURLResponse> getThumbnailUrls(GetURLRequest request) async {
    final url = Uri.parse('$apiUrl/api/v2/files/url/thumb');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode(request.toJson()),
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      return GetURLResponse.fromMap(jsonResponse);
    } else {
      throw Exception(
        'Failed to get thumbnail URLs: ${response.statusCode} - ${response.body}',
      );
    }
  }
}