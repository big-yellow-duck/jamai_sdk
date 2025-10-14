import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jamai_sdk/types/gen_tables.dart' hide TableType;
import 'package:jamai_sdk/types/common.dart';

class GenerativeTable {
  final String apiUrl;
  final String apiKey;
  final String projectId;
  GenerativeTable({
    required this.apiUrl,
    required this.apiKey,
    required this.projectId,
  });

  /// Creates a new action table.
  ///
  /// [request] - The action table schema creation request
  ///
  /// Returns a [Map<String, dynamic>] containing the table metadata
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> createActionTable(
    ActionTableSchemaCreate request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/action');

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
        'Failed to create action table: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Creates a new knowledge table.
  ///
  /// [request] - The knowledge table schema creation request
  ///
  /// Returns a [Map<String, dynamic>] containing the table metadata
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> createKnowledgeTable(
    KnowledgeTableSchemaCreate request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/knowledge');

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
  Future<Map<String, dynamic>> createChatTable(
    ChatTableSchemaCreate request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/chat');

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
  Future<Map<String, dynamic>> listTables({
    TableType? tableType,
    int? offset,
    int? limit,
    OrderBy? orderBy,
    bool? orderAscending,
    ShortString? searchQuery,
    List<String>? searchColumns,
    String? after,
  }) async {
    final Map<String, dynamic> queryParams = {};

    if (tableType != null) queryParams['table_type'] = tableType.toString();
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
      '$apiUrl/api/v2/gen_tables/list',
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
  Future<Map<String, dynamic>> getTable({required String tableId}) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/gen_tables',
    ).replace(queryParameters: {'table_id': tableId});

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
  Future<Map<String, dynamic>> deleteTable({required String tableId}) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/gen_tables',
    ).replace(queryParameters: {'table_id': tableId});

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
        'Failed to delete table: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Adds multiple rows to a table.
  ///
  /// [tableType] - The type of the table ('action', 'knowledge', 'chat')
  /// [request] - The multi-row add request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> addRows(
    String tableType,
    MultiRowAddRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/$tableType/rows');

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
        'Failed to add rows: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Updates a single row in a table.
  ///
  /// [request] - The row update request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> updateRow(RowUpdateRequest request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/rows');

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
  Future<Map<String, dynamic>> updateRows(MultiRowUpdateRequest request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/rows');

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
  Future<Map<String, dynamic>> deleteRows(MultiRowDeleteRequest request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/rows');

    final response = await http.delete(
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
        'Failed to delete rows: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Regenerates a single row in a table.
  ///
  /// [request] - The row regeneration request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> regenRow(RowRegen request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/regen');

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
        'Failed to regen row: ${response.statusCode} - ${response.body}',
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
  Future<Map<String, dynamic>> regenRows(MultiRowRegenRequest request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/regen');

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
        'Failed to regen rows: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Searches a table using vector search.
  ///
  /// [request] - The search request
  ///
  /// Returns a [Map<String, dynamic>] containing the search results
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> search(SearchRequest request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/search');

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
  Future<Map<String, dynamic>> importData(
    TableDataImportRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/import/data');

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
        'Failed to import data: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Imports a table from a file.
  ///
  /// [request] - The table import request
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> importTable(TableImportRequest request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/import/table');

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
  Future<Map<String, dynamic>> updateGenConfig(
    GenConfigUpdateRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/gen_config');

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
  Future<Map<String, dynamic>> renameColumn(ColumnRenameRequest request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/columns/rename');

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
  Future<Map<String, dynamic>> reorderColumns(
    ColumnReorderRequest request,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/columns/reorder');

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
  Future<Map<String, dynamic>> dropColumns(ColumnDropRequest request) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/columns');

    final response = await http.delete(
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
        'Failed to drop columns: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Embeds a file into a knowledge table.
  ///
  /// [filePath] - The path to the file to embed
  /// [tableId] - The ID of the knowledge table
  ///
  /// Returns a [Map<String, dynamic>] containing the response
  ///
  /// Throws an [Exception] if the request fails.
  Future<Map<String, dynamic>> embedFile(
    String filePath,
    String tableId,
  ) async {
    final url = Uri.parse('$apiUrl/api/v2/gen_tables/embed');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode({'file_path': filePath, 'table_id': tableId}),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to embed file: ${response.statusCode} - ${response.body}',
      );
    }
  }
}
