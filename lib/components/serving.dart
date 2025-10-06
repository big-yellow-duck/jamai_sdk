import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jamai_sdk/types/model.dart';
import 'package:jamai_sdk/types/lm.dart';
import 'package:jamai_sdk/types/common.dart';

class Serving {
  final String apiUrl;
  final String apiKey;

  Serving({required this.apiUrl, required this.apiKey});

  /// Lists the info of models available.
  ///
  /// Optional parameters:
  /// - [orderBy]: Sort by this attribute. Defaults to "id".
  /// - [orderAscending]: Whether to sort in ascending order. Defaults to true.
  /// - [capabilities]: Filter the model info by model's capabilities. Defaults to None (no filter).
  /// - [model]: ID of the requested model.
  ///
  /// Returns a [ModelInfoListResponse] containing the list of model information.
  ///
  /// Throws an [Exception] if the request fails.
  Future<ModelInfoListResponse> listModels({
    OrderBy? orderBy,
    bool? orderAscending,
    List<String>? capabilities,
    String? model,
  }) async {
    final Map<String, dynamic> queryParams = {};

    if (orderBy != null) queryParams['order_by'] = orderBy.toString();
    if (orderAscending != null) queryParams['order_ascending'] = orderAscending;
    if (capabilities != null) queryParams['capabilities'] = capabilities;
    if (model != null) queryParams['model'] = model;

    final url = Uri.parse(
      '$apiUrl/api/v1/models',
    ).replace(queryParameters: queryParams);

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      return ModelInfoListResponse.fromJson(jsonResponse);
    } else {
      throw Exception(
        'Failed to list models: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists the ID of models available.
  ///
  /// Returns a [List<String>] containing the list of model IDs.
  ///
  /// Throws an [Exception] if the request fails.
  Future<List<String>> listModelIds() async {
    final url = Uri.parse('$apiUrl/api/v1/models/ids');

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return List<String>.from(json.decode(response.body) as List);
    } else {
      throw Exception(
        'Failed to list model IDs: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Creates a chat completion.
  ///
  /// [request] - The chat completion request
  ///
  /// Returns a [ChatCompletionResponse] containing the chat completion result.
  ///
  /// Throws an [Exception] if the request fails.
  Future<ChatCompletionResponse> chatCompletion(ChatRequest request) async {
    final url = Uri.parse('$apiUrl/api/v1/chat_completions');

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
      return ChatCompletionResponse.fromJson(jsonResponse);
    } else {
      throw Exception(
        'Failed to create chat completion: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Embeds texts as vectors.
  ///
  /// [request] - The embedding request
  ///
  /// Returns an [EmbeddingResponse] containing the embedding results.
  ///
  /// Throws an [Exception] if the request fails.
  Future<EmbeddingResponse> generateEmbeddings(EmbeddingRequest request) async {
    final url = Uri.parse('$apiUrl/api/v1/embeddings');

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
      return EmbeddingResponse.fromJson(jsonResponse);
    } else {
      throw Exception(
        'Failed to generate embeddings: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Ranks each text input to the query text.
  ///
  /// [request] - The reranking request
  ///
  /// Returns a [RerankingResponse] containing the reranking results.
  ///
  /// Throws an [Exception] if the request fails.
  Future<RerankingResponse> generateRankings(RerankingRequest request) async {
    final url = Uri.parse('$apiUrl/api/v1/rerank');

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
      return RerankingResponse.fromJson(jsonResponse);
    } else {
      throw Exception(
        'Failed to generate rankings: ${response.statusCode} - ${response.body}',
      );
    }
  }
}
