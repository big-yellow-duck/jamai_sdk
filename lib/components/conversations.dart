import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/conversations.dart';

/// Conversation-related API operations
class Conversations {
  String apiUrl;
  String apiKey;
  String? userId;
  String? projectId;
  Conversations({
    required this.apiUrl,
    required this.apiKey,
    this.userId,
    this.projectId,
  });

  /// Creates a new conversation and sends the first message. Title will be generated automatically if not provided.
  ///
  /// [request] - The conversation creation request containing agent_id, title (optional), and data
  ///
  /// Returns a [Map<String, dynamic>] containing the conversation response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> create({
    required ConversationCreateRequest request,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/conversations');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode(request.toJson()),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to create conversation: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Fetches a single conversation (table) metadata.
  ///
  /// [conversationId] - The ID of the conversation to fetch (required)
  ///
  /// Returns a [Map<String, dynamic>] containing the conversation metadata
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> get({required String conversationId}) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/conversations',
    ).replace(queryParameters: {'conversation_id': conversationId});

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to get conversation: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Deletes a conversation permanently.
  ///
  /// [conversationId] - The ID of the conversation to delete (required)
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> delete({required String conversationId}) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/conversations',
    ).replace(queryParameters: {'conversation_id': conversationId});

    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to delete conversation: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all conversations.
  ///
  /// Optional parameters:
  /// - [offset]: The starting index for pagination (default: 0).
  /// - [limit]: The maximum number of conversations to return (default: 1000).
  /// - [orderBy]: The field to sort by (e.g., 'id', 'name', 'created_at', 'updated_at').
  /// - [orderAscending]: Whether to sort in ascending order (default: true).
  /// - [searchQuery]: A search string to filter conversations.
  /// - [searchColumns]: List of fields to apply the search query to.
  /// - [after]: Opaque cursor token for pagination; if provided, [offset] is ignored.
  ///
  /// Returns a [Map<String, dynamic>] containing the list of conversations and pagination info.
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> list({
    int? offset,
    int? limit,
    OrderBy? orderBy,
    bool? orderAscending,
    ShortString? searchQuery,
    List<String>? searchColumns,
    String? after,
  }) async {
    final Map<String, dynamic> queryParams = {};

    if (offset != null) queryParams['offset'] = offset;
    if (limit != null) queryParams['limit'] = limit;
    if (orderBy != null) queryParams['order_by'] = orderBy.toString();
    if (orderAscending != null) {
      queryParams['order_ascending'] = orderAscending;
    }
    if (searchQuery != null) {
      queryParams['search_query'] = searchQuery.toString();
    }
    if (after != null) queryParams['after'] = after;

    // Add each search column as a separate query parameter
    if (searchColumns != null) {
      queryParams['search_columns'] = searchColumns;
    }

    final url = Uri.parse(
      '$apiUrl/api/v2/conversations/list',
    ).replace(queryParameters: queryParams);

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to list conversations: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all available agents.
  ///
  /// Optional parameters:
  /// - [offset]: The starting index for pagination (default: 0).
  /// - [limit]: The maximum number of agents to return (default: 1000).
  /// - [orderBy]: The field to sort by (e.g., 'id', 'name', 'created_at', 'updated_at').
  /// - [orderAscending]: Whether to sort in ascending order (default: true).
  /// - [searchQuery]: A search string to filter agents.
  /// - [searchColumns]: List of fields to apply the search query to.
  /// - [after]: Opaque cursor token for pagination; if provided, [offset] is ignored.
  ///
  /// Returns a [Map<String, dynamic>] containing the list of agents and pagination info.
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> listAgents({
    int? offset,
    int? limit,
    OrderBy? orderBy,
    bool? orderAscending,
    ShortString? searchQuery,
    List<String>? searchColumns,
    String? after,
  }) async {
    final Map<String, dynamic> queryParams = {};

    if (offset != null) queryParams['offset'] = offset.toString();
    if (limit != null) queryParams['limit'] = limit.toString();
    if (orderBy != null) queryParams['order_by'] = orderBy.toString();
    if (orderAscending != null) {
      queryParams['order_ascending'] = orderAscending;
    }
    if (searchQuery != null) {
      queryParams['search_query'] = searchQuery.toString();
    }
    if (after != null) queryParams['after'] = after;

    // Add each search column as a separate query parameter
    if (searchColumns != null) {
      queryParams['search_columns'] = searchColumns;
    }

    final url = Uri.parse(
      '$apiUrl/api/v2/conversations/agents/list',
    ).replace(queryParameters: queryParams);

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to list agents: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Fetches a single agent (table) metadata.
  ///
  /// [agentId] - The ID of the agent to fetch (required)
  ///
  /// Returns a [Map<String, dynamic>] containing the agent metadata
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> getAgent({required String agentId}) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/conversations/agents',
    ).replace(queryParameters: {'agent_id': agentId});

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to get agent: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Generates a title for a conversation based on the first user message and assistant response. If the conversation already has a title, it will be overwritten.
  ///
  /// [conversationId] - The ID of the conversation (required)
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> generateTitle({
    required String conversationId,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/conversations/title');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode({'conversation_id': conversationId}),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to generate title: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Renames conversation title.
  ///
  /// [conversationId] - The ID of the conversation (required)
  /// [title] - The new title (required)
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> renameTitle({
    required String conversationId,
    required String title,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/conversations/title');

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode({'conversation_id': conversationId, 'title': title}),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to rename title: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Sends a message to a conversation and streams the response.
  ///
  /// [request] - The message add request containing conversation_id and data
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> sendMessage({
    required MessageAddRequest request,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/conversations/messages');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode(request.toJson()),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to send message: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Updates a specific message in a conversation.
  ///
  /// [request] - The message update request containing conversation_id, row_id, and data
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> updateMessage({
    required MessageUpdateRequest request,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/conversations/messages');

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode(request.toJson()),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to update message: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists messages in a conversation.
  ///
  /// [conversationId] - The ID of the conversation (required)
  /// Optional parameters:
  /// - [offset]: The starting index for pagination (default: 0).
  /// - [limit]: The maximum number of messages to return (default: 100).
  /// - [orderBy]: The field to sort by (e.g., 'id', 'created_at').
  /// - [orderAscending]: Whether to sort in ascending order (default: true).
  ///
  /// Returns a [Map<String, dynamic>] containing the list of messages and pagination info.
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> listMessages({
    required String conversationId,
    int? offset,
    int? limit,
    OrderBy? orderBy,
    bool? orderAscending,
  }) async {
    final Map<String, dynamic> queryParams = {
      'conversation_id': conversationId,
    };

    if (offset != null) queryParams['offset'] = offset;
    if (limit != null) queryParams['limit'] = limit;
    if (orderBy != null) queryParams['order_by'] = orderBy.toString();
    if (orderAscending != null) {
      queryParams['order_ascending'] = orderAscending;
    }

    final url = Uri.parse(
      '$apiUrl/api/v2/conversations/messages/list',
    ).replace(queryParameters: queryParams);

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to list messages: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Regenerates a specific message in a conversation and streams back the response.
  ///
  /// [request] - The message regen request containing conversation_id and row_id
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> regenMessage({
    required MessagesRegenRequest request,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/conversations/messages/regen');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode(request.toJson()),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to regen message: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Get all threads from a conversation or an agent.
  ///
  /// [conversationId] - The ID of the conversation (optional)
  /// [agentId] - The ID of the agent (optional)
  ///
  /// Returns a [Map<String, dynamic>] containing the threads
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> getThreads({
    String? conversationId,
    String? agentId,
  }) async {
    final Map<String, dynamic> queryParams = {};

    if (conversationId != null) queryParams['conversation_id'] = conversationId;
    if (agentId != null) queryParams['agent_id'] = agentId;

    final url = Uri.parse(
      '$apiUrl/api/v2/conversations/threads',
    ).replace(queryParameters: queryParams);

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to get threads: ${response.statusCode} - ${response.body}',
      );
    }
  }
}
