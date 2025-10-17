import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/lm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen_tables.freezed.dart';
part 'gen_tables.g.dart';

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

enum GenConfigTypes {
  llm('gen_config.llm'),
  python('gen_config.python'),
  chat('gen_config.chat'),
  embed('gen_config.embed');

  final String value;
  const GenConfigTypes(this.value);

  @override
  String toString() => value;
}

// / Cell references response
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

// @freezed
// abstract class CellReferencesResponse extends References
//     with _$CellReferencesResponse {
//   const CellReferencesResponse._({
//     super.object = ObjectType.chatReferences,
//     super.chunks = const [],
//     required super.searchQuery,
//     super.finishReason,
//     required this.outputColumnName,
//     required this.rowId,
//   });

//   factory CellReferencesResponse({
//     @Default(ObjectType.chatReferences) ObjectType object,
//     @Default([]) List<Chunk> chunks,
//     required String searchQuery,
//     FinishReason? finishReason,
//     required String outputColumnName,
//     required String rowId,
//   }) = _CellReferencesResponse;

//   @override
//   final String outputColumnName;

//   @override
//   final String rowId;

//   @override
//   Map<String, dynamic> toJson() {
//     return {
//       ...super.toJson(),
//       'output_column_name': outputColumnName,
//       'row_id': rowId,
//     };
//   }

//   factory CellReferencesResponse.fromJson(Map<String, dynamic> json) {
//     return CellReferencesResponse(
//       object: ObjectType.values.firstWhere(
//         (e) => e.value == json['object'],
//         orElse: () => ObjectType.chatReferences,
//       ),
//       chunks:
//           (json['chunks'] as List<dynamic>?)
//               ?.map((c) => Chunk.fromJson(c as Map<String, dynamic>))
//               .toList() ??
//           [],
//       searchQuery: json['search_query'] ?? '',
//       finishReason: json['finish_reason'] != null
//           ? FinishReason.values.firstWhere(
//               (e) => e.value == json['finish_reason'],
//               orElse: () => FinishReason.stop,
//             )
//           : null,
//       outputColumnName: json['output_column_name'] ?? '',
//       rowId: json['row_id'] ?? '',
//     );
//   }
// }

@freezed
abstract class Balls extends Person with _$Balls{
  Balls._({
    required super.firstName,
    required super.lastName,
    required super.age
  }): super();

  factory Balls({
    required String wee
  }) = _Balls;
  
}

// @freezed
// abstract class CellReferencesResponse extends References with _$CellReferencesResponse{
//   CellReferencesResponse._({
//     super.obect
//   }): super._();
// }

/// Row completion response
class RowCompletionResponse {
  final String object;
  final Map<String, ChatCompletionChunkResponse> columns;
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
// @freezed
// abstract class LLMGenConfig extends ChatRequestBase with _$LLMGenConfig {
//  LLMGenConfig._({
//    // Base class fields
//    String model = '',
//    RAGParams? ragParams,
//    List<Tool>? tools,
//    ToolChoiceOption? toolChoice,
//    double temperature = 0.2,
//    double topP = 0.6,
//    bool stream = true,
//    int maxTokens = 2048,
//    List<String>? stop,
//    double presencePenalty = 0.0,
//    double frequencyPenalty = 0.0,
//    Map<String, dynamic> logitBias = const {},
//    int thinkingBudget = 1,
//    ReasoningEffort? reasoningEffort,
//    int? reasoningBudget,
//    ReasoningSummary reasoningSummary = ReasoningSummary.auto,
//    // Subclass fields
//    GenConfigTypes object = GenConfigTypes.llm,
//    String systemPrompt = '',
//    String prompt = '',
//    bool multiTurn = false,
//  }) : super._({
//    model: model,
//    ragParams: ragParams,
//    tools: tools,
//    toolChoice: toolChoice,
//    temperature: temperature,
//    topP: topP,
//    stream: stream,
//    maxTokens: maxTokens,
//    stop: stop,
//    presencePenalty: presencePenalty,
//    frequencyPenalty: frequencyPenalty,
//    logitBias: logitBias,
//    thinkingBudget: thinkingBudget,
//    reasoningEffort: reasoningEffort,
//    reasoningBudget: reasoningBudget,
//    reasoningSummary: reasoningSummary,
//  });

//  factory LLMGenConfig({
//    @Default(GenConfigTypes.llm) GenConfigTypes object,
//    @Default('') String systemPrompt,
//    @Default('') String prompt,
//    @Default(false) bool multiTurn,
//    // Base class fields
//    @Default('') String model,
//    RAGParams? ragParams,
//    List<Tool>? tools,
//    ToolChoiceOption? toolChoice,
//    @Default(0.2) double temperature,
//    @Default(0.6) double topP,
//    @Default(true) bool stream,
//    @Default(2048) int maxTokens,
//    List<String>? stop,
//    @Default(0.0) double presencePenalty,
//    @Default(0.0) double frequencyPenalty,
//    @Default({}) Map<String, dynamic> logitBias,
//    @Default(1) int thinkingBudget,
//    ReasoningEffort? reasoningEffort,
//    int? reasoningBudget,
//    @Default(ReasoningSummary.auto) ReasoningSummary reasoningSummary,
//  }) = _LLMGenConfig;

// @override
// Map<String, dynamic> toJson() {
//   return {
//     'object': object.value,
//     'system_prompt': systemPrompt,
//     'prompt': prompt,
//     'multi_turn': multiTurn,
//     'model': model,
//     'rag_params': ragParams?.toJson(),
//     'tools': tools?.map((t) => t.toJson()).toList(),
//     'tool_choice': toolChoice,
//     'temperature': temperature,
//     'top_p': topP,
//     'stream': stream,
//     'max_tokens': maxTokens,
//     'stop': stop,
//     'presence_penalty': presencePenalty,
//     'frequency_penalty': frequencyPenalty,
//     'logit_bias': logitBias,
//     'thinking_budget': thinkingBudget,
//     'reasoning_effort': reasoningEffort?.value,
//     'reasoning_budget': reasoningBudget,
//     'reasoning_summary': reasoningSummary.value,
//   };
// }
// }

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

// @freezed
// abstract class GenConfig with _$Genconfig{

// }

/// Column schema
@freezed
abstract class ColumnSchema with _$ColumnSchema {
  ColumnSchema._({
    required this.id,
    this.dtype = ColumnSchemaDtype.str,
    this.vlen = 0,
    this.index = true,
    this.genConfig,
  });
  factory ColumnSchema({
    required String id,
    @Default(ColumnSchemaDtype.str) ColumnSchemaDtype dtype,
    @Default(0) int vlen,
    @Default(true) bool index,
    dynamic genConfig,
  }) = _ColumnSchema;

  @override
  final String id;

  @override
  final ColumnSchemaDtype dtype;

  @override
  final int vlen;

  @override
  final bool index;

  @override
  final dynamic genConfig;

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
/// need to update to use sanitized non empty string
// @freezed
// abstract class ColumnSchemaCreate extends ColumnSchema
//     with _$ColumnSchemaCreate {
//   ColumnSchemaCreate._({
//     required this.id,
//     ColumnSchemaDtype dtype = ColumnSchemaDtype.str,
//     int vlen = 0,
//     bool index = true,
//     dynamic genConfig,
//   }) : super._(
//          id: id,
//          dtype: dtype,
//          vlen: vlen,
//          index: index,
//          genConfig: genConfig,
//        );

//   @override
//   final SanitizedNotEmptyString id;
// }

/// Table schema for creation
// @freezed
// abstract class TableSchemaCreate with _$TableSchemaCreate {
//   factory TableSchemaCreate({
//     required String id,
//     required List<ColumnSchemaCreate> cols,
//   }) = _TableSchemaCreate;

//   factory TableSchemaCreate.fromJson(Map<String, dynamic> json) =>
//       _$TableSchemaCreateFromJson(json);
// }

// /// Knowledge table schema for creation
// class KnowledgeTableSchemaCreate extends TableSchemaCreate {
//   final String embeddingModel;

//   const KnowledgeTableSchemaCreate({
//     required super.id,
//     required super.cols,
//     required this.embeddingModel,
//   });

//   @override
//   KnowledgeTableSchemaCreate copyWith({
//     String? id,
//     List<ColumnSchemaCreate>? cols,
//     String? embeddingModel,
//   }) {
//     return KnowledgeTableSchemaCreate(
//       id: id ?? this.id,
//       cols: cols ?? this.cols,
//       embeddingModel: embeddingModel ?? this.embeddingModel,
//     );
//   }

//   @override
//   Map<String, dynamic> toJson() {
//     return {...super.toJson(), 'embedding_model': embeddingModel};
//   }
// }

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
      cols:
          (json['cols'] as List<dynamic>?)
              ?.map((c) => ColumnSchema.fromJson(c as Map<String, dynamic>))
              .toList() ??
          [],
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

