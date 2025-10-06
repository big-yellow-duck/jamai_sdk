import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jamai_sdk/types/common.dart';

/// Template-related API operations
class Templates {
  String apiUrl;
  String apiKey;
  Templates({required this.apiUrl, required this.apiKey});

  /// Retrieves a paginated(optional) list of available templates from the API.
  ///
  /// Optional parameters:
  /// - [offset]: The starting index for pagination (default: 0).
  /// - [limit]: The maximum number of templates to return (default: 1000).
  /// - [orderBy]: The field to sort by (e.g., 'name', 'created_at', 'updated_at').
  /// - [orderAscending]: Whether to sort in ascending order (default: true).
  /// - [searchQuery]: A search string to filter templates.
  /// - [searchColumns]: List of fields to apply the search query to.
  /// - [after]: Opaque cursor token for pagination; if provided, [offset] is ignored.
  ///
  /// Returns a [Map<String, dynamic>] containing the list of templates and pagination info.
  ///
  /// Throws an [Exception] if the request fails.

  Future<Map<String, dynamic>> list({
    int? offset,
    int? limit,
    OrderBy? orderBy,
    bool? orderAscending,
    ShortString? searchQuery,
    List<String>? searchColumns,
    bool? after,
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
      '$apiUrl/templates/list',
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
        'Failed to list templates: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets a specific template
  ///
  /// [templateId] - The ID of the template to retrieve (required)
  /// Returns a Map containing the template details
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> get({required String templateId}) async {
    final url = Uri.parse(
      '$apiUrl/templates',
    ).replace(queryParameters: {'template_id': templateId});

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
        'Failed to get template: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all tables in a template
  ///
  /// [templateId] - Template id (required)
  /// [tableType] - The type of table to list (required)
  /// [offset] - Optional offset for pagination
  /// [limit] - Optional limit for the number of tables to return
  /// [orderBy] - Optional Sort
  /// [orderAscending] -Optional Sort order
  /// [parentId] - Parent ID of tables to return. Defaults to None (return all tables). Additionally for Chat Table, you can list: (1) all chat agents by passing in "agent"; or (2) all chats by passing in "chat".
  /// [searchQuery] - Optional Search query length <= 255
  /// [countRows] - count the rows of the table. Defaults to false
  ///
  /// Returns a Map containing the list of tables
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> listTables({
    required String templateId,
    required TableType tableType,
    int? limit,
    int? offset,
    OrderBy? orderBy,
    bool? orderAscending,
    String? parentId,
    ShortString? searchQuery,
    bool? countRows,
  }) async {
    Map<String, dynamic> queryParameters = {};
    queryParameters['template_id'] = templateId;
    if (offset != null) {
      queryParameters['offset'] = offset;
    }
    if (limit != null) {
      queryParameters['limit'] = limit;
    }
    if (orderBy != null) {
      queryParameters['order_by'] = orderBy.toString();
    }
    if (orderAscending != null) {
      queryParameters['order_ascending'] = orderAscending;
    }
    if (parentId != null) {
      queryParameters['parent_id'] = parentId;
    }
    if (searchQuery != null) {
      queryParameters['search_query'] = searchQuery;
    }
    if (countRows != null) {
      queryParameters['count_rows'] = countRows;
    }
    final url = Uri.parse(
      '$apiUrl/templates/gen_tables/$tableType/list',
    ).replace(queryParameters: queryParameters);

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
        'Failed to list template tables: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets a specific table from a template
  ///
  /// [templateId] - The ID of the template (required)
  /// [tableType] - The type of table to retrieve (required)
  /// [tableId] - the tableid in the template to fetch
  ///
  /// Returns a Map containing the table details
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> getTable({
    required String templateId,
    required TableType tableType,
    required String tableId,
  }) async {
    Map<String, dynamic> queryParameters = {};

    queryParameters['template_id'] = templateId;
    queryParameters['table_id'] = tableId;

    final url = Uri.parse(
      '$apiUrl/templates/gen_tables/$tableType',
    ).replace(queryParameters: queryParameters);

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
        'Failed to get template table: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all rows in a template table
  ///
  /// [templateId] - The ID of the template (required)
  /// [tableType] - The type of table (required)
  /// [tableId] - The ID of the table (required)
  /// [offset] - Optional offset for pagination (defaults to 0)
  /// [limit] - Optional limit for the number of rows to return (defaults to 100)
  /// [orderBy] - Optional field to sort by (defaults to "ID")
  /// [orderAscending] - Optional sort order (defaults to true)
  /// [columns] - Optional list of column names to include in the response
  /// [where] - Optional SQL where clause for filtering
  /// [searchQuery] - Optional search query to filter rows
  /// [searchColumns] - Optional list of column names to search for searchQuery
  /// [floatDecimals] - Optional number of decimals for float values (defaults to 0)
  /// [vecDecimals] - Optional number of decimals for vectors (defaults to 0)
  ///
  /// Returns a Map containing the list of rows and pagination info
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> listTableRows({
    required String templateId,
    required TableType tableType,
    required String tableId,
    int? offset,
    int? limit,
    OrderBy? orderBy,
    bool? orderAscending,
    List<String>? columns,
    String? where,
    ShortString? searchQuery,
    List<String>? searchColumns,
    int? floatDecimals,
    int? vecDecimals,
  }) async {
    final Map<String, dynamic> queryParams = {
      'template_id': templateId,
      'table_id': tableId,
    };

    if (offset != null) queryParams['offset'] = offset;
    if (limit != null) queryParams['limit'] = limit;
    if (orderBy != null) queryParams['order_by'] = orderBy.toString();
    if (orderAscending != null) {
      queryParams['order_ascending'] = orderAscending;
    }
    if (columns != null) queryParams['columns'] = columns;
    if (where != null) queryParams['where'] = where;
    if (searchQuery != null) {
      queryParams['search_query'] = searchQuery.toString();
    }
    if (searchColumns != null) queryParams['search_columns'] = searchColumns;
    if (floatDecimals != null) queryParams['float_decimals'] = floatDecimals;
    if (vecDecimals != null) queryParams['vec_decimals'] = vecDecimals;

    final url = Uri.parse(
      '$apiUrl/templates/gen_tables/$tableType/rows/list',
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
        'Failed to list template table rows: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets a specific row from a template table
  ///
  /// [templateId] - The ID of the template (required)
  /// [tableType] - The type of table (required)
  /// [tableId] - The ID of the table (required)
  /// [rowId] - The ID of the row to retrieve (required)
  /// [columns] - Optional list of column names to include in the response
  /// [floatDecimals] - Optional number of decimals for float values (defaults to 0)
  /// [vecDecimals] - Optional number of decimals for vectors (defaults to 0)
  ///
  /// Returns a Map containing the row details
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> getTableRow({
    required String templateId,
    required TableType tableType,
    required String tableId,
    required String rowId,
    List<String>? columns,
    int? floatDecimals,
    int? vecDecimals,
  }) async {
    final Map<String, dynamic> queryParams = {
      'template_id': templateId,
      'table_id': tableId,
      'row_id': rowId,
    };

    if (columns != null) queryParams['columns'] = columns;
    if (floatDecimals != null) queryParams['float_decimals'] = floatDecimals;
    if (vecDecimals != null) queryParams['vec_decimals'] = vecDecimals;

    final url = Uri.parse(
      '$apiUrl/templates/gen_tables/$tableType/rows',
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
        'Failed to get template table row: ${response.statusCode} - ${response.body}',
      );
    }
  }
}
