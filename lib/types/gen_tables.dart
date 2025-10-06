import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/lm.dart';

/// CSV delimiter options
enum CSVDelimiter {
  comma(','),
  tab('\t');

  final String value;
  const CSVDelimiter(this.value);

  @override
  String toString() => value;
}

/// Table type enumeration
enum TableType {
  action('action'),
  knowledge('knowledge'),
  chat('chat');

  final String apiString;
  const TableType(this.apiString);

  @override
  String toString() => apiString;
}

enum ColumnSchemaDtype {
  int('int'),
  float('float'),
  bool('bool'),
  str('str'),
  file('file'),
  image('image'),
  audio('audio'),
  document('document');

  final String value;
  const ColumnSchemaDtype(this.value);

  @override
  String toString() => value;
}

/// Regeneration strategy enumeration
enum RegenStrategy {
  runAll('run_all'),
  runBefore('run_before'),
  runSelected('run_selected'),
  runAfter('run_after');

  final String value;
  const RegenStrategy(this.value);

  @override
  String toString() => value;
}

/// Vector search metric enumeration
enum VectorMetric {
  cosine('cosine'),
  euclidean('euclidean'),
  dotProduct('dot_product');

  final String value;
  const VectorMetric(this.value);

  @override
  String toString() => value;
}

/// Cell references response
class CellReferencesResponse extends References {
  final String outputColumnName;
  final String rowId;

  const CellReferencesResponse({
    super.object = ObjectType.genTableReferences,
    super.chunks = const [],
    required super.searchQuery,
    super.finishReason,
    required this.outputColumnName,
    required this.rowId,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'output_column_name': outputColumnName,
      'row_id': rowId,
    };
  }
}

/// Cell completion response
class CellCompletionResponse extends ChatCompletionChunkResponse {
  final String outputColumnName;
  final String rowId;

  const CellCompletionResponse({
    required this.outputColumnName,
    required this.rowId,
    required super.object,
    required super.id,
    required super.created,
    required super.model,
    required super.choices,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'output_column_name': outputColumnName,
      'row_id': rowId,
    };
  }
}

/// Row completion response
class RowCompletionResponse {
  final String object;
  final Map<String, ChatCompletionResponse> columns;
  final String rowId;

  const RowCompletionResponse({
    required this.object,
    required this.columns,
    required this.rowId,
  });

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'columns': columns.map((key, value) => MapEntry(key, value.toJson())),
      'row_id': rowId,
    };
  }
}

/// Multi-row completion response
class MultiRowCompletionResponse {
  final String object;
  final List<RowCompletionResponse> rows;

  const MultiRowCompletionResponse({required this.object, required this.rows});

  Map<String, dynamic> toJson() {
    return {'object': object, 'rows': rows.map((row) => row.toJson()).toList()};
  }
}

/// LLM generation configuration
class LLMGenConfig extends ChatRequestBase {
  final String object;
  final String systemPrompt;
  final String prompt;
  final bool multiTurn;

  const LLMGenConfig({
    this.object = 'gen_config.llm',
    this.systemPrompt = '',
    this.prompt = '',
    this.multiTurn = false,
    super.model = '',
    super.ragParams,
    super.tools,
    super.toolChoice,
    super.temperature = 0.2,
    super.topP = 0.6,
    super.stream = true,
    super.maxTokens = 2048,
    super.stop,
    super.presencePenalty = 0.0,
    super.frequencyPenalty = 0.0,
    super.logitBias = const {},
    super.thinkingBudget = 1,
    super.reasoningEffort,
    super.reasoningBudget,
    super.reasoningSummary = ReasoningSummary.auto,
  });

  /// Creates a copy with updated fields
  @override
  LLMGenConfig copyWith({
    String? object,
    String? systemPrompt,
    String? prompt,
    bool? multiTurn,
    String? model,
    RAGParams? ragParams,
    List<dynamic>? tools,
    dynamic toolChoice,
    double? temperature,
    double? topP,
    bool? stream,
    int? maxTokens,
    List<String>? stop,
    double? presencePenalty,
    double? frequencyPenalty,
    Map<String, dynamic>? logitBias,
    int? thinkingBudget,
    ReasoningEffort? reasoningEffort,
    int? reasoningBudget,
    ReasoningSummary? reasoningSummary,
  }) {
    return LLMGenConfig(
      object: object ?? this.object,
      systemPrompt: systemPrompt ?? this.systemPrompt,
      prompt: prompt ?? this.prompt,
      multiTurn: multiTurn ?? this.multiTurn,
      model: model ?? this.model,
      ragParams: ragParams ?? this.ragParams,
      tools: tools ?? this.tools,
      toolChoice: toolChoice ?? this.toolChoice,
      temperature: temperature ?? this.temperature,
      topP: topP ?? this.topP,
      stream: stream ?? this.stream,
      maxTokens: maxTokens ?? this.maxTokens,
      stop: stop ?? this.stop,
      presencePenalty: presencePenalty ?? this.presencePenalty,
      frequencyPenalty: frequencyPenalty ?? this.frequencyPenalty,
      logitBias: logitBias ?? this.logitBias,
      thinkingBudget: thinkingBudget ?? this.thinkingBudget,
      reasoningEffort: reasoningEffort ?? this.reasoningEffort,
      reasoningBudget: reasoningBudget ?? this.reasoningBudget,
      reasoningSummary: reasoningSummary ?? this.reasoningSummary,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'system_prompt': systemPrompt,
      'prompt': prompt,
      'multi_turn': multiTurn,
      'model': model,
      'rag_params': ragParams?.toJson(),
      'tools': tools?.map((t) => t.toJson()).toList(),
      'tool_choice': toolChoice,
      'temperature': temperature,
      'top_p': topP,
      'stream': stream,
      'max_tokens': maxTokens,
      'stop': stop,
      'presence_penalty': presencePenalty,
      'frequency_penalty': frequencyPenalty,
      'logit_bias': logitBias,
      'thinking_budget': thinkingBudget,
      'reasoning_effort': reasoningEffort?.value,
      'reasoning_budget': reasoningBudget,
      'reasoning_summary': reasoningSummary.value,
    };
  }
}

/// Embedding generation configuration
class EmbedGenConfig {
  final String object;
  final String embeddingModel;
  final String sourceColumn;

  const EmbedGenConfig({
    this.object = 'gen_config.embed',
    required this.embeddingModel,
    required this.sourceColumn,
  });

  /// Creates a copy with updated fields
  EmbedGenConfig copyWith({
    String? object,
    String? embeddingModel,
    String? sourceColumn,
  }) {
    return EmbedGenConfig(
      object: object ?? this.object,
      embeddingModel: embeddingModel ?? this.embeddingModel,
      sourceColumn: sourceColumn ?? this.sourceColumn,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'embedding_model': embeddingModel,
      'source_column': sourceColumn,
    };
  }
}

/// Code generation configuration
class CodeGenConfig {
  final String object;
  final String sourceColumn;

  const CodeGenConfig({
    this.object = 'gen_config.code',
    required this.sourceColumn,
  });

  /// Creates a copy with updated fields
  CodeGenConfig copyWith({String? object, String? sourceColumn}) {
    return CodeGenConfig(
      object: object ?? this.object,
      sourceColumn: sourceColumn ?? this.sourceColumn,
    );
  }

  Map<String, dynamic> toJson() {
    return {'object': object, 'source_column': sourceColumn};
  }
}

/// Python generation configuration
class PythonGenConfig {
  final String object;
  final String pythonCode;

  const PythonGenConfig({
    this.object = 'gen_config.python',
    required this.pythonCode,
  });

  /// Creates a copy with updated fields
  PythonGenConfig copyWith({String? object, String? pythonCode}) {
    return PythonGenConfig(
      object: object ?? this.object,
      pythonCode: pythonCode ?? this.pythonCode,
    );
  }

  Map<String, dynamic> toJson() {
    return {'object': object, 'python_code': pythonCode};
  }
}

/// Generation configuration union type
typedef GenConfig = dynamic; // LLMGenConfig | EmbedGenConfig | PythonGenConfig

/// Column schema
class ColumnSchema {
  final String id;
  final ColumnSchemaDtype dtype;
  final int vlen;
  final bool index;
  final dynamic genConfig;

  const ColumnSchema({
    required this.id,
    this.dtype = ColumnSchemaDtype.str,
    this.vlen = 0,
    this.index = true,
    this.genConfig,
  });

  factory ColumnSchema.fromJson(Map<String, dynamic> json) {
    return ColumnSchema(
      id: json['id'] as String? ?? '',
      dtype: ColumnSchemaDtype.values.firstWhere(
        (e) => e.value == json['dtype'],
        orElse: () => ColumnSchemaDtype.str,
      ),
      vlen: json['vlen'] as int? ?? 0,
      index: json['index'] as bool? ?? true,
      genConfig: json['gen_config'],
    );
  }

  /// Creates a copy with updated fields
  ColumnSchema copyWith({
    String? id,
    ColumnSchemaDtype? dtype,
    int? vlen,
    bool? index,
    dynamic genConfig,
  }) {
    return ColumnSchema(
      id: id ?? this.id,
      dtype: dtype ?? this.dtype,
      vlen: vlen ?? this.vlen,
      index: index ?? this.index,
      genConfig: genConfig ?? this.genConfig,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'dtype': dtype,
      'vlen': vlen,
      'index': index,
      'gen_config': genConfig?.toJson(),
    };
  }
}

/// Column schema for creation
class ColumnSchemaCreate extends ColumnSchema {
  const ColumnSchemaCreate({
    required super.id,
    super.dtype = ColumnSchemaDtype.str,
    super.vlen = 0,
    super.index = true,
    super.genConfig,
  });

  @override
  ColumnSchemaCreate copyWith({
    String? id,
    ColumnSchemaDtype? dtype,
    int? vlen,
    bool? index,
    dynamic genConfig,
  }) {
    return ColumnSchemaCreate(
      id: id ?? this.id,
      dtype: dtype ?? this.dtype,
      vlen: vlen ?? this.vlen,
      index: index ?? this.index,
      genConfig: genConfig ?? this.genConfig,
    );
  }
}

/// Table base class
class TableBase {
  final String id;

  const TableBase({required this.id});
}

/// Table schema for creation
class TableSchemaCreate extends TableBase {
  final List<ColumnSchemaCreate> cols;

  const TableSchemaCreate({required super.id, required this.cols});

  /// Creates a copy with updated fields
  TableSchemaCreate copyWith({String? id, List<ColumnSchemaCreate>? cols}) {
    return TableSchemaCreate(id: id ?? this.id, cols: cols ?? this.cols);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'cols': cols.map((col) => col.toJson()).toList()};
  }
}

/// Action table schema for creation
/// pending deprecate
class ActionTableSchemaCreate extends TableSchemaCreate {
  const ActionTableSchemaCreate({required super.id, required super.cols});

  @override
  ActionTableSchemaCreate copyWith({
    String? id,
    List<ColumnSchemaCreate>? cols,
  }) {
    return ActionTableSchemaCreate(id: id ?? this.id, cols: cols ?? this.cols);
  }
}

/// Add action column schema
/// pending deprecate
class AddActionColumnSchema extends ActionTableSchemaCreate {
  const AddActionColumnSchema({required super.id, required super.cols});

  @override
  AddActionColumnSchema copyWith({String? id, List<ColumnSchemaCreate>? cols}) {
    return AddActionColumnSchema(id: id ?? this.id, cols: cols ?? this.cols);
  }
}

/// Knowledge table schema for creation
class KnowledgeTableSchemaCreate extends TableSchemaCreate {
  final String embeddingModel;

  const KnowledgeTableSchemaCreate({
    required super.id,
    required super.cols,
    required this.embeddingModel,
  });

  @override
  KnowledgeTableSchemaCreate copyWith({
    String? id,
    List<ColumnSchemaCreate>? cols,
    String? embeddingModel,
  }) {
    return KnowledgeTableSchemaCreate(
      id: id ?? this.id,
      cols: cols ?? this.cols,
      embeddingModel: embeddingModel ?? this.embeddingModel,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'embedding_model': embeddingModel};
  }
}

/// Add knowledge column schema
/// pending deprecate
class AddKnowledgeColumnSchema extends TableSchemaCreate {
  const AddKnowledgeColumnSchema({required super.id, required super.cols});

  @override
  AddKnowledgeColumnSchema copyWith({
    String? id,
    List<ColumnSchemaCreate>? cols,
  }) {
    return AddKnowledgeColumnSchema(id: id ?? this.id, cols: cols ?? this.cols);
  }
}

/// Chat table schema for creation
/// pending deprecate
class ChatTableSchemaCreate extends TableSchemaCreate {
  const ChatTableSchemaCreate({required super.id, required super.cols});

  @override
  ChatTableSchemaCreate copyWith({String? id, List<ColumnSchemaCreate>? cols}) {
    return ChatTableSchemaCreate(id: id ?? this.id, cols: cols ?? this.cols);
  }
}

/// Add chat column schema
/// pending deprecate
class AddChatColumnSchema extends TableSchemaCreate {
  const AddChatColumnSchema({required super.id, required super.cols});

  @override
  AddChatColumnSchema copyWith({String? id, List<ColumnSchemaCreate>? cols}) {
    return AddChatColumnSchema(id: id ?? this.id, cols: cols ?? this.cols);
  }
}

/// Table metadata
class TableMeta extends TableBase {
  final Map<String, dynamic>? meta;
  final List<ColumnSchema> cols;
  final String? parentId;
  final String title;
  final String? createdBy;
  final DatetimeUTC updatedAt;
  final int numRows;
  final String version;

  const TableMeta({
    required super.id,
    this.meta,
    required this.cols,
    this.parentId,
    this.title = '',
    this.createdBy,
    required this.updatedAt,
    this.numRows = -1,
    required this.version,
  });

  Map<String, ColumnSchema> get colMap => {for (var c in cols) c.id: c};

  Map<String, dynamic> get cfgMap => {for (var c in cols) c.id: c.genConfig};

  /// Creates a copy with updated fields
  TableMeta copyWith({
    String? id,
    Map<String, dynamic>? meta,
    List<ColumnSchema>? cols,
    String? parentId,
    String? title,
    String? createdBy,
    DatetimeUTC? updatedAt,
    int? numRows,
    String? version,
  }) {
    return TableMeta(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      cols: cols ?? this.cols,
      parentId: parentId ?? this.parentId,
      title: title ?? this.title,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      numRows: numRows ?? this.numRows,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'meta': meta,
      'cols': cols.map((col) => col.toJson()).toList(),
      'parent_id': parentId,
      'title': title,
      'created_by': createdBy,
      'updated_at': updatedAt.toIso8601String(),
      'num_rows': numRows,
      'version': version,
    };
  }
}

/// Table metadata response
class TableMetaResponse extends TableMeta {
  final String? indexedAtFts;
  final String? indexedAtVec;
  final String? indexedAtSca;

  TableMetaResponse({
    required super.id,
    super.meta,
    required List<ColumnSchema> cols,
    super.parentId,
    super.title,
    super.createdBy,
    required super.updatedAt,
    super.numRows,
    required super.version,
    this.indexedAtFts,
    this.indexedAtVec,
    this.indexedAtSca,
  }) : super(cols: cols.where((c) => !c.id.endsWith('_')).toList());

  factory TableMetaResponse.fromJson(Map<String, dynamic> json) {
    return TableMetaResponse(
      id: json['id'] as String? ?? '',
      meta: json['meta'] as Map<String, dynamic>?,
      cols: (json['cols'] as List<dynamic>?)
          ?.map((c) => ColumnSchema.fromJson(c as Map<String, dynamic>))
          .toList() ?? [],
      parentId: json['parent_id'] as String?,
      title: json['title'] as String? ?? '',
      createdBy: json['created_by'] as String?,
      updatedAt: DatetimeUTC.parse(json['updated_at'] as String? ?? ''),
      numRows: json['num_rows'] as int? ?? -1,
      version: json['version'] as String? ?? '',
      indexedAtFts: json['indexed_at_fts'] as String?,
      indexedAtVec: json['indexed_at_vec'] as String?,
      indexedAtSca: json['indexed_at_sca'] as String?,
    );
  }

  @override
  TableMetaResponse copyWith({
    String? id,
    Map<String, dynamic>? meta,
    List<ColumnSchema>? cols,
    String? parentId,
    String? title,
    String? createdBy,
    DatetimeUTC? updatedAt,
    int? numRows,
    String? version,
    String? indexedAtFts,
    String? indexedAtVec,
    String? indexedAtSca,
  }) {
    return TableMetaResponse(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      cols: cols ?? this.cols,
      parentId: parentId ?? this.parentId,
      title: title ?? this.title,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      numRows: numRows ?? this.numRows,
      version: version ?? this.version,
      indexedAtFts: indexedAtFts ?? this.indexedAtFts,
      indexedAtVec: indexedAtVec ?? this.indexedAtVec,
      indexedAtSca: indexedAtSca ?? this.indexedAtSca,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'indexed_at_fts': indexedAtFts,
      'indexed_at_vec': indexedAtVec,
      'indexed_at_sca': indexedAtSca,
    };
  }
}

/// Generation config update request
class GenConfigUpdateRequest {
  final String tableId;
  final Map<String, dynamic> columnMap;

  const GenConfigUpdateRequest({
    required this.tableId,
    required this.columnMap,
  });

  void checkColumnMap() {
    if (columnMap.keys.any(
      (n) => n.toLowerCase() == 'id' || n.toLowerCase() == 'updated at',
    )) {
      throw ArgumentError(
        "column_map cannot contain keys: 'ID' or 'Updated at'.",
      );
    }
  }

  /// Creates a copy with updated fields
  GenConfigUpdateRequest copyWith({
    String? tableId,
    Map<String, dynamic>? columnMap,
  }) {
    return GenConfigUpdateRequest(
      tableId: tableId ?? this.tableId,
      columnMap: columnMap ?? this.columnMap,
    );
  }

  Map<String, dynamic> toJson() {
    return {'table_id': tableId, 'column_map': columnMap};
  }
}

/// Column rename request
class ColumnRenameRequest {
  final String tableId;
  final Map<String, String> columnMap;

  const ColumnRenameRequest({required this.tableId, required this.columnMap});

  void checkColumnMap() {
    if (columnMap.keys.any(
      (n) => n.toLowerCase() == 'id' || n.toLowerCase() == 'updated at',
    )) {
      throw ArgumentError(
        "`column_map` cannot contain keys: 'ID' or 'Updated at'.",
      );
    }
  }

  /// Creates a copy with updated fields
  ColumnRenameRequest copyWith({
    String? tableId,
    Map<String, String>? columnMap,
  }) {
    return ColumnRenameRequest(
      tableId: tableId ?? this.tableId,
      columnMap: columnMap ?? this.columnMap,
    );
  }

  Map<String, dynamic> toJson() {
    return {'table_id': tableId, 'column_map': columnMap};
  }
}

/// Column reorder request
class ColumnReorderRequest {
  final String tableId;
  final List<String> columnNames;

  const ColumnReorderRequest({
    required this.tableId,
    required this.columnNames,
  });

  void checkColumnOrder() {
    final names = List<String>.from(columnNames);
    if (names.isNotEmpty && names[0].toLowerCase() != 'id') {
      names.insert(0, 'ID');
    }
    if (names.length > 1 && names[1].toLowerCase() != 'updated at') {
      names.insert(1, 'Updated at');
    }
    // Update the list
    // In Python it's modifying self, but in Dart, perhaps return new
  }

  void checkUniqueColumnNames() {
    final lowerNames = columnNames.map((n) => n.toLowerCase()).toSet();
    if (lowerNames.length != columnNames.length) {
      throw ArgumentError('Column names must be unique (case-insensitive).');
    }
  }

  void checkStateColumn() {
    final invalidCols = columnNames.where((n) => n.endsWith('_')).toList();
    if (invalidCols.isNotEmpty) {
      throw ArgumentError('State columns cannot be reordered: $invalidCols');
    }
  }

  /// Creates a copy with updated fields
  ColumnReorderRequest copyWith({String? tableId, List<String>? columnNames}) {
    return ColumnReorderRequest(
      tableId: tableId ?? this.tableId,
      columnNames: columnNames ?? this.columnNames,
    );
  }

  Map<String, dynamic> toJson() {
    return {'table_id': tableId, 'column_names': columnNames};
  }
}

/// Column drop request
class ColumnDropRequest {
  final String tableId;
  final List<String> columnNames;

  const ColumnDropRequest({required this.tableId, required this.columnNames});

  void checkColumnNames() {
    if (columnNames.any(
      (n) => n.toLowerCase() == 'id' || n.toLowerCase() == 'updated at',
    )) {
      throw ArgumentError(
        "`column_names` cannot contain keys: 'ID' or 'Updated at'.",
      );
    }
  }

  /// Creates a copy with updated fields
  ColumnDropRequest copyWith({String? tableId, List<String>? columnNames}) {
    return ColumnDropRequest(
      tableId: tableId ?? this.tableId,
      columnNames: columnNames ?? this.columnNames,
    );
  }

  Map<String, dynamic> toJson() {
    return {'table_id': tableId, 'column_names': columnNames};
  }
}

/// Multi-row add request
class MultiRowAddRequest {
  final String tableId;
  final List<Map<String, dynamic>> data;
  final bool stream;
  final bool concurrent;

  const MultiRowAddRequest({
    required this.tableId,
    required this.data,
    this.stream = true,
    this.concurrent = true,
  });

  @override
  String toString() {
    final dataRepr = data
        .map(
          (d) => d.map(
            (k, v) => MapEntry(
              k,
              v is List ? {'type': 'List', 'length': v.length} : v,
            ),
          ),
        )
        .toList();
    return 'MultiRowAddRequest(table_id=$tableId stream=$stream concurrent=$concurrent data=$dataRepr)';
  }

  /// Creates a copy with updated fields
  MultiRowAddRequest copyWith({
    String? tableId,
    List<Map<String, dynamic>>? data,
    bool? stream,
    bool? concurrent,
  }) {
    return MultiRowAddRequest(
      tableId: tableId ?? this.tableId,
      data: data ?? this.data,
      stream: stream ?? this.stream,
      concurrent: concurrent ?? this.concurrent,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'table_id': tableId,
      'data': data,
      'stream': stream,
      'concurrent': concurrent,
    };
  }
}

/// Row update request
class RowUpdateRequest {
  final String tableId;
  final String rowId;
  final Map<String, dynamic> data;

  const RowUpdateRequest({
    required this.tableId,
    required this.rowId,
    required this.data,
  });

  /// Creates a copy with updated fields
  RowUpdateRequest copyWith({
    String? tableId,
    String? rowId,
    Map<String, dynamic>? data,
  }) {
    return RowUpdateRequest(
      tableId: tableId ?? this.tableId,
      rowId: rowId ?? this.rowId,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toJson() {
    return {'table_id': tableId, 'row_id': rowId, 'data': data};
  }
}

/// Multi-row update request
class MultiRowUpdateRequest {
  final String tableId;
  final Map<String, Map<String, dynamic>> data;

  const MultiRowUpdateRequest({required this.tableId, required this.data});

  /// Creates a copy with updated fields
  MultiRowUpdateRequest copyWith({
    String? tableId,
    Map<String, Map<String, dynamic>>? data,
  }) {
    return MultiRowUpdateRequest(
      tableId: tableId ?? this.tableId,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toJson() {
    return {'table_id': tableId, 'data': data};
  }
}

/// Multi-row update request with limit
class MultiRowUpdateRequestWithLimit extends MultiRowUpdateRequest {
  const MultiRowUpdateRequestWithLimit({
    required super.tableId,
    required super.data,
  });

  @override
  MultiRowUpdateRequestWithLimit copyWith({
    String? tableId,
    Map<String, Map<String, dynamic>>? data,
  }) {
    return MultiRowUpdateRequestWithLimit(
      tableId: tableId ?? this.tableId,
      data: data ?? this.data,
    );
  }
}

/// Row regeneration request
class RowRegen {
  final String tableId;
  final String rowId;
  final RegenStrategy regenStrategy;
  final String? outputColumnId;
  final bool stream;
  final bool concurrent;

  const RowRegen({
    required this.tableId,
    required this.rowId,
    this.regenStrategy = RegenStrategy.runAll,
    this.outputColumnId,
    this.stream = true,
    this.concurrent = true,
  });

  /// Creates a copy with updated fields
  RowRegen copyWith({
    String? tableId,
    String? rowId,
    RegenStrategy? regenStrategy,
    String? outputColumnId,
    bool? stream,
    bool? concurrent,
  }) {
    return RowRegen(
      tableId: tableId ?? this.tableId,
      rowId: rowId ?? this.rowId,
      regenStrategy: regenStrategy ?? this.regenStrategy,
      outputColumnId: outputColumnId ?? this.outputColumnId,
      stream: stream ?? this.stream,
      concurrent: concurrent ?? this.concurrent,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'table_id': tableId,
      'row_id': rowId,
      'regen_strategy': regenStrategy,
      'output_column_id': outputColumnId,
      'stream': stream,
      'concurrent': concurrent,
    };
  }
}

/// Multi-row regeneration request
class MultiRowRegenRequest {
  final String tableId;
  final List<String> rowIds;
  final RegenStrategy regenStrategy;
  final String? outputColumnId;
  final bool stream;
  final bool concurrent;

  const MultiRowRegenRequest({
    required this.tableId,
    required this.rowIds,
    this.regenStrategy = RegenStrategy.runAll,
    this.outputColumnId,
    this.stream = true,
    this.concurrent = true,
  });

  /// Creates a copy with updated fields
  MultiRowRegenRequest copyWith({
    String? tableId,
    List<String>? rowIds,
    RegenStrategy? regenStrategy,
    String? outputColumnId,
    bool? stream,
    bool? concurrent,
  }) {
    return MultiRowRegenRequest(
      tableId: tableId ?? this.tableId,
      rowIds: rowIds ?? this.rowIds,
      regenStrategy: regenStrategy ?? this.regenStrategy,
      outputColumnId: outputColumnId ?? this.outputColumnId,
      stream: stream ?? this.stream,
      concurrent: concurrent ?? this.concurrent,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'table_id': tableId,
      'row_ids': rowIds,
      'regen_strategy': regenStrategy,
      'output_column_id': outputColumnId,
      'stream': stream,
      'concurrent': concurrent,
    };
  }
}

/// Multi-row delete request
class MultiRowDeleteRequest {
  final String tableId;
  final List<String>? rowIds;
  final String where;

  const MultiRowDeleteRequest({
    required this.tableId,
    this.rowIds,
    this.where = '',
  });

  /// Creates a copy with updated fields
  MultiRowDeleteRequest copyWith({
    String? tableId,
    List<String>? rowIds,
    String? where,
  }) {
    return MultiRowDeleteRequest(
      tableId: tableId ?? this.tableId,
      rowIds: rowIds ?? this.rowIds,
      where: where ?? this.where,
    );
  }

  Map<String, dynamic> toJson() {
    return {'table_id': tableId, 'row_ids': rowIds, 'where': where};
  }
}

/// Search request
class SearchRequest {
  final String tableId;
  final String query;
  final int limit;
  final VectorMetric metric;
  final int floatDecimals;
  final int vecDecimals;
  final String? rerankingModel;

  const SearchRequest({
    required this.tableId,
    required this.query,
    this.limit = 100,
    this.metric = VectorMetric.cosine,
    this.floatDecimals = 0,
    this.vecDecimals = 0,
    this.rerankingModel,
  });

  /// Creates a copy with updated fields
  SearchRequest copyWith({
    String? tableId,
    String? query,
    int? limit,
    VectorMetric? metric,
    int? floatDecimals,
    int? vecDecimals,
    String? rerankingModel,
  }) {
    return SearchRequest(
      tableId: tableId ?? this.tableId,
      query: query ?? this.query,
      limit: limit ?? this.limit,
      metric: metric ?? this.metric,
      floatDecimals: floatDecimals ?? this.floatDecimals,
      vecDecimals: vecDecimals ?? this.vecDecimals,
      rerankingModel: rerankingModel ?? this.rerankingModel,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'table_id': tableId,
      'query': query,
      'limit': limit,
      'metric': metric,
      'float_decimals': floatDecimals,
      'vec_decimals': vecDecimals,
      'reranking_model': rerankingModel,
    };
  }
}

/// Table data import request
class TableDataImportRequest {
  final String filePath;
  final String tableId;
  final bool stream;
  final CSVDelimiter delimiter;

  const TableDataImportRequest({
    required this.filePath,
    required this.tableId,
    this.stream = true,
    this.delimiter = CSVDelimiter.comma,
  });

  /// Creates a copy with updated fields
  TableDataImportRequest copyWith({
    String? filePath,
    String? tableId,
    bool? stream,
    CSVDelimiter? delimiter,
  }) {
    return TableDataImportRequest(
      filePath: filePath ?? this.filePath,
      tableId: tableId ?? this.tableId,
      stream: stream ?? this.stream,
      delimiter: delimiter ?? this.delimiter,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'file_path': filePath,
      'table_id': tableId,
      'stream': stream,
      'delimiter': delimiter,
    };
  }
}

/// Table import request
class TableImportRequest {
  final String filePath;
  final String? tableIdDst;
  final bool blocking;

  const TableImportRequest({
    required this.filePath,
    this.tableIdDst,
    this.blocking = true,
  });

  /// Creates a copy with updated fields
  TableImportRequest copyWith({
    String? filePath,
    String? tableIdDst,
    bool? blocking,
  }) {
    return TableImportRequest(
      filePath: filePath ?? this.filePath,
      tableIdDst: tableIdDst ?? this.tableIdDst,
      blocking: blocking ?? this.blocking,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'file_path': filePath,
      'table_id_dst': tableIdDst,
      'blocking': blocking,
    };
  }
}
