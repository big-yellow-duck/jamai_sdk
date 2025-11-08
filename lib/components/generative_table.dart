import 'package:jamai_sdk/types/lm.dart';
import 'package:path/path.dart' as p;
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:jamai_sdk/types/gen_tables.dart';
import 'package:jamai_sdk/types/common.dart';

class GenerativeTable {
  final String apiUrl;
  final String apiKey;
  final String? projectId;
  final String? userId;
  GenerativeTable({
    required this.apiUrl,
    required this.apiKey,
    this.projectId,
    this.userId,
  });

  /// Creates a new action table.
  ///
  /// [request] - The action table schema creation request
  ///
  /// Returns a [Map<String, dynamic>] containing the table metadata
  ///
  /// Throws an [Exception] if the request fails.
  Future<TableMetaResponse> createActionTable(TableSchemaCreate request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/action');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return TableMetaResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to create action table: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Creates a new knowledge table.
  ///
  /// [request] - The knowledge table schema creation request
  /// provide an empty list for the columns to create default empty knowledge table
  ///
  /// Returns a [Map<String, dynamic>] containing the table metadata
  ///
  /// Throws an [Exception] if the request fails.
  Future<TableMetaResponse> createKnowledgeTable(
    KnowledgeTableSchemaCreate request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/knowledge');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return TableMetaResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to create knowledge table: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Creates a new chat table.
  ///
  /// [request] - The chat table schema creation request
  ///
  /// Returns a [Map<String, dynamic>] containing the table metadata
  ///
  /// Throws an [Exception] if the request fails.
  Future<TableMetaResponse> createChatTable(TableSchemaCreate request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/chat');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return TableMetaResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to create chat table: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all tables.
  ///
  /// Optional parameters:
  /// - [tableType]: The type of tables to list (e.g., 'action', 'knowledge', 'chat').
  /// - [offset]: The starting index for pagination (default: 0).
  /// - [limit]: The maximum number of tables to return (default: 1000).
  /// - [orderBy]: The field to sort by (e.g., 'id', 'name', 'created_at', 'updated_at').
  /// - [orderAscending]: Whether to sort in ascending order (default: true).
  /// - [searchQuery]: A search string to filter tables.
  /// - [searchColumns]: List of fields to apply the search query to.
  /// - [after]: Opaque cursor token for pagination; if provided, [offset] is ignored.
  ///
  /// Returns a [Map<String, dynamic>] containing the list of tables and pagination info.
  ///
  /// Throws an [Exception] if the request fails.
  Future<Page<TableMetaResponse>> listTables({
    required TableType tableType,
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
      '$apiUrl/api/v2/gen_tables/$tableType/list',
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
      return Page.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to list tables: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Fetches a single table metadata.
  ///
  /// [tableId] - The ID of the table to fetch (required)
  ///
  /// Returns a [Map<String, dynamic>] containing the table metadata
  ///
  /// Throws an [Exception] if the request fails.
  Future<TableMetaResponse> getTable({
    required TableType tableType,
    required String tableId,
  }) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/gen_tables/$tableType',
    ).replace(queryParameters: {'table_id': tableId});

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
      return TableMetaResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to get table: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Deletes a table permanently.
  ///
  /// [tableId] - The ID of the table to delete (required)
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<OkResponse> deleteTable({
    required TableType tableType,
    required String tableId,
  }) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/gen_tables/$tableType',
    ).replace(queryParameters: {'table_id': tableId});

    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
    );

    if (response.statusCode == 200) {
      return OkResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to delete table: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Adds multiple rows to a table.
  ///
  /// [tableType] - The type of the table ('action', 'knowledge', 'chat')
  /// [request] - The multi-row add request
  ///
  /// Returns an [AddTableRowsResponse] which can be one of:
  /// - [MultiRowCompletionResponse] - for non-streaming responses
  /// - [CellCompletionResponse] - for streaming cell completion events
  /// - [CellReferencesResponse] - for streaming cell references events
  ///
  /// Throws an [Exception] if the request fails.
  Stream<AddTableRowsResponse> addRows(
    TableType tableType,
    MultiRowAddRequest request,
  ) async* {
    final client = http.Client(); // 1. Create the client
    try {
      final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/rows/add');
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      };

      // 2. Prepare the Request object
      final httpRequest = http.Request('POST', url)
        ..headers.addAll(headers)
        ..body = request.toJson();

      if (request.stream) {
        headers['Accept'] = 'text/event-stream';
        headers['Cache-Control'] = 'no-cache';

        // 3. Send the request and get the StreamedResponse
        final streamedResponse = await client.send(httpRequest);

        if (streamedResponse.statusCode != 200) {
          // Read body for error message (not ideal, but required for client.send error handling)
          final errorBody = await streamedResponse.stream.bytesToString();
          throw Exception(
            'Failed to add rows: ${streamedResponse.statusCode} - $errorBody',
          );
        }

        // 4. Process the stream as data arrives
        // This uses a robust SSE-style parser to handle chunks and line breaks
        await for (final sseEvent in _parseSseStream(streamedResponse.stream)) {
          if (sseEvent == '[DONE]') break;
          if (sseEvent.isEmpty) continue;

          try {
            final responseData = json.decode(sseEvent) as Map<String, dynamic>;
            final ObjectType objectType = ObjectType.fromValue(
              responseData['object'],
            );

            switch (objectType) {
              case ObjectType.completionChunk:
                yield CellCompletionResponse.fromMap(responseData);
                break;
              case ObjectType.genTableReferences:
                yield CellReferencesResponse.fromMap(responseData);
                break;
              default:
                print('Stream object type is not matched: $objectType');
            }
          } catch (e) {
            // Skip invalid JSON lines
            print('Error decoding JSON chunk: $e');
          }
        }
      } else {
        // 5. Handle non-streaming (single response)
        final response = await http.Response.fromStream(
          await client.send(httpRequest),
        );

        if (response.statusCode != 200) {
          throw Exception(
            'Failed to add rows: ${response.statusCode} - ${response.body}',
          );
        }

        final responseData = json.decode(response.body) as Map<String, dynamic>;
        final objectType = responseData['object'] as String?;

        switch (objectType) {
          // ... (Your original non-streaming switch cases) ...
          case 'gen_table.completion.rows':
            yield MultiRowCompletionResponse.fromMap(responseData);
            break;
          default:
            throw Exception('Unknown response type: $objectType');
        }
      }
    } finally {
      client.close(); // 6. IMPORTANT: Always close the client!
    }
  }

  // 7. Simple SSE Line Parser
  // This handles decoding bytes and buffering partial lines for 'data: ...'
  Stream<String> _parseSseStream(http.ByteStream byteStream) async* {
    var buffer = '';
    await for (final chunk in byteStream.transform(utf8.decoder)) {
      buffer += chunk;
      var lineEnd = buffer.indexOf('\n');
      while (lineEnd >= 0) {
        final line = buffer.substring(0, lineEnd).trim();
        buffer = buffer.substring(lineEnd + 1);
        lineEnd = buffer.indexOf('\n');

        if (line.startsWith('data: ')) {
          yield line.substring(6).trim(); // Yield the data payload
        }
      }
    }
  }

  /// Updates a single row in a table.
  ///
  /// [request] - The row update request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<OkResponse> updateRow(
    TableType tableType,
    RowUpdateRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/rows');

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return OkResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to update row: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Updates multiple rows in a table.
  ///
  /// [request] - The multi-row update request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<OkResponse> updateRows(
    TableType tableType,
    MultiRowUpdateRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/rows');

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return OkResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to update rows: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Deletes multiple rows from a table.
  ///
  /// [request] - The multi-row delete request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<OkResponse> deleteRows(
    TableType tableType,
    MultiRowDeleteRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/rows/delete');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return OkResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to delete rows: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Regenerates multiple rows in a table.
  ///
  /// [request] - The multi-row regeneration request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Stream<AddTableRowsResponse> regenRows(
    TableType tableType,
    MultiRowRegenRequest request,
  ) async* {
    final client = http.Client(); // 1. Create the client
    try {
      final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/rows/regen');

      final headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      };

      // 2. Prepare the Request object
      final httpRequest = http.Request('POST', url)
        ..headers.addAll(headers)
        ..body = request.toJson();

      if (request.stream) {
        headers['Accept'] = 'text/event-stream';
        headers['Cache-Control'] = 'no-cache';

        // 3. Send the request and get the StreamedResponse
        final streamedResponse = await client.send(httpRequest);

        if (streamedResponse.statusCode != 200) {
          // Read body for error message (not ideal, but required for client.send error handling)
          final errorBody = await streamedResponse.stream.bytesToString();
          throw Exception(
            'Failed to add rows: ${streamedResponse.statusCode} - $errorBody',
          );
        }

        // 4. Process the stream as data arrives
        // This uses a robust SSE-style parser to handle chunks and line breaks
        await for (final sseEvent in _parseSseStream(streamedResponse.stream)) {
          if (sseEvent == '[DONE]') break;
          if (sseEvent.isEmpty) continue;

          try {
            final responseData = json.decode(sseEvent) as Map<String, dynamic>;
            final ObjectType objectType = ObjectType.fromValue(
              responseData['object'],
            );

            switch (objectType) {
              case ObjectType.completionChunk:
                yield CellCompletionResponse.fromMap(responseData);
                break;
              case ObjectType.genTableReferences:
                yield CellReferencesResponse.fromMap(responseData);
                break;
              default:
                print('Stream object type is not matched: $objectType');
            }
          } catch (e) {
            // Skip invalid JSON lines
            print('Error decoding JSON chunk: $e');
          }
        }
      } else {
        // 5. Handle non-streaming (single response)
        final response = await http.Response.fromStream(
          await client.send(httpRequest),
        );

        if (response.statusCode != 200) {
          throw Exception(
            'Failed to add rows: ${response.statusCode} - ${response.body}',
          );
        }

        final responseData = json.decode(response.body) as Map<String, dynamic>;
        final objectType = responseData['object'] as String?;

        switch (objectType) {
          // ... (Your original non-streaming switch cases) ...
          case 'gen_table.completion.rows':
            yield MultiRowCompletionResponse.fromMap(responseData);
            break;
          default:
            throw Exception('Unknown response type: $objectType');
        }
      }
    } finally {
      client.close(); // 6. IMPORTANT: Always close the client!
    }
  }

  /// Searches a table using hybrid search (vector + full-text search).
  ///
  /// [tableType] - The type of table to search ('action', 'knowledge', 'chat')
  /// [request] - The search request containing table_id, query, and search parameters
  ///
  /// Returns a [List<Map<String, dynamic>>] containing the search results
  /// the results may vary. so print it out to see the structure.
  /// Throws an [Exception] if the request fails.
  Future<List<dynamic>> hybridSearch(
    TableType tableType,
    SearchRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/hybrid_search');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as List<dynamic>;
    } else {
      throw Exception(
        'Failed to search: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Imports data into a table from a file.
  ///
  /// [request] - The table data import request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Stream<AddTableRowsResponse> importData(
    TableType tableType,
    TableDataImportRequest request,
  ) async* {
    final client = http.Client();
    try {
      final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/import_data');

      // Base headers (no Content-Type here, MultipartRequest sets it)
      final headers = {
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      };

      // Read file bytes from local path
      final fileBytes = File(request.filePath).readAsBytesSync();
      final filename = p.basename(request.filePath);

      // Create multipart request
      final multipartRequest = http.MultipartRequest('POST', url)
        ..headers.addAll(headers)
        ..files.add(
          http.MultipartFile.fromBytes('file', fileBytes, filename: filename),
        )
        ..fields['table_id'] = request.tableId
        ..fields['delimiter'] = request.delimiter.value;

      if (request.stream) {
        // Configure for streaming SSE
        multipartRequest.headers['Accept'] = 'text/event-stream';
        multipartRequest.headers['Cache-Control'] = 'no-cache';

        final streamedResponse = await client.send(multipartRequest);

        if (streamedResponse.statusCode != 200) {
          final errorBody = await streamedResponse.stream.bytesToString();
          throw Exception(
            'Failed to import data: ${streamedResponse.statusCode} - $errorBody',
          );
        }

        // Parse SSE-style stream
        await for (final sseEvent in _parseSseStream(streamedResponse.stream)) {
          // Normalize: handle possible "data: ...", blank lines, and [DONE]
          final normalized = sseEvent.startsWith('data: ')
              ? sseEvent.substring(6).trim()
              : sseEvent.trim();

          if (normalized.isEmpty) continue;
          if (normalized == '[DONE]') break;

          try {
            final responseData =
                json.decode(normalized) as Map<String, dynamic>;
            final ObjectType objectType = ObjectType.fromValue(
              responseData['object'],
            );

            switch (objectType) {
              case ObjectType.completionChunk:
                yield CellCompletionResponse.fromMap(responseData);
                break;
              case ObjectType.genTableReferences:
                yield CellReferencesResponse.fromMap(responseData);
                break;
              default:
                // Unknown chunk type, ignore but log for debugging
                print('Stream object type is not matched: $objectType');
            }
          } catch (e) {
            // Skip invalid JSON lines
            print('Error decoding JSON chunk: $e');
          }
        }
      } else {
        // Non-streaming: send multipart and parse single JSON response
        final streamedResponse = await client.send(multipartRequest);
        final response = await http.Response.fromStream(streamedResponse);

        if (response.statusCode != 200) {
          throw Exception(
            'Failed to import data: ${response.statusCode} - ${response.body}',
          );
        }
        print(response.body);
        final responseData = json.decode(response.body) as Map<String, dynamic>;
        final objectType = responseData['object'] as String?;

        switch (objectType) {
          case 'gen_table.completion.rows':
            yield MultiRowCompletionResponse.fromMap(responseData);
            break;
          default:
            throw Exception('Unknown response type: $objectType');
        }
      }
    } finally {
      client.close();
    }
  }

  /// Imports a table from a file.
  ///
  /// [request] - The table import request
  /// [fileBytes] - Optional file bytes to upload (if using fromCSVBytes)
  /// [filename] - Optional filename for the file upload
  ///
  /// Returns a TableMetaResponse containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<TableMetaResponse> importTable(
    TableType tableType,
    TableImportRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/import');

    final headers = {
      'Authorization': 'Bearer $apiKey',
      if (userId != null) 'X-USER-ID': userId!,
      if (projectId != null) 'X-PROJECT-ID': projectId!,
    };

    http.Response response;

    List<int> fileBytes = File(request.filePath).readAsBytesSync();
    String filename = p.basename(request.filePath);
    // Check if we need to do a file upload (multipart form)
    // Create multipart request for file upload
    final multipartRequest = http.MultipartRequest('POST', url)
      ..headers.addAll(headers)
      ..files.add(
        http.MultipartFile.fromBytes('file', fileBytes, filename: filename),
      )
      ..fields['table_id_dst'] = request.tableIdDst ?? ''
      ..fields['blocking'] = request.blocking.toString();

    final streamedResponse = await multipartRequest.send();
    response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode == 200) {
      return TableMetaResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to import table: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Updates the generation configuration for columns in a table.
  ///
  /// [request] - The generation config update request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<TableMetaResponse> updateGenConfig(
    TableType tableType,
    GenConfigUpdateRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/gen_config');

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return TableMetaResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to update gen config: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Renames columns in a table.
  ///
  /// [request] - The column rename request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<TableMetaResponse> renameColumns(
    TableType tableType,
    ColumnRenameRequest request,
  ) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/gen_tables/$tableType/columns/rename',
    );

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return TableMetaResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to rename column: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Reorders columns in a table.
  ///
  /// [request] - The column reorder request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<TableMetaResponse> reorderColumns(
    TableType tableType,

    ColumnReorderRequest request,
  ) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/gen_tables/$tableType/columns/reorder',
    );

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return TableMetaResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to reorder columns: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Drops columns from a table.
  ///
  /// [request] - The column drop request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<TableMetaResponse> dropColumns(
    TableType tableType,
    ColumnDropRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/columns/drop');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return TableMetaResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to drop columns: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Embeds a file into a knowledge table.
  ///
  /// [filePath] - The path to the file to embed
  /// [tableId] - The ID of the knowledge table
  /// [chunkSize] - The size of chunks to split the file into
  /// [chunkOverlap] - The overlap between chunks
  ///
  /// Returns an [OkResponse] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<OkResponse> embedFile(
    String filePath,
    String tableId,
    int chunkSize,
    int chunkOverlap,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/knowledge/embed_file');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
        if (projectId != null) 'X-PROJECT-ID': projectId!,
      },
      body: json.encode({
        'file_path': filePath,
        'table_id': tableId,
        'chunk_size': chunkSize,
        'chunk_overlap': chunkOverlap,
      }),
    );

    if (response.statusCode == 200) {
      return OkResponse.fromJson(response.body);
    } else {
      throw Exception(
        'Failed to embed file: ${response.statusCode} - ${response.body}',
      );
    }
  }
}
