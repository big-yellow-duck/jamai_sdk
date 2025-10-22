import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/lm.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'gen_tables.mapper.dart';

/// CSV delimiter options
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum CSVDelimiter {
  comma(','),
  tab('\t');

  final String value;
  const CSVDelimiter(this.value);

  @override
  String toString() => value;
}

/// Table type enumeration
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum TableType {
  action('action'),
  knowledge('knowledge'),
  chat('chat');

  final String apiString;
  const TableType(this.apiString);

  @override
  String toString() => apiString;
}

@MappableEnum(caseStyle: CaseStyle.snakeCase)
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
@MappableEnum(caseStyle: CaseStyle.snakeCase)
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
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum VectorMetric {
  cosine('cosine'),
  euclidean('euclidean'),
  dotProduct('dot_product');

  final String value;
  const VectorMetric(this.value);

  @override
  String toString() => value;
}

@MappableEnum()
enum GenConfigTypes {
  @MappableValue('gen_config.llm')
  llm,
  @MappableValue('gen_config.python')
  python,
  @MappableValue('gen_config.chat')
  chat,
  @MappableValue('gen_config.embed')
  embed,
  @MappableValue('gen_config.code')
  code;

  String get value => switch (this) {
    GenConfigTypes.llm => 'gen_config.llm',
    GenConfigTypes.python => 'gen_config.python',
    GenConfigTypes.chat => 'gen_config.chat',
    GenConfigTypes.embed => 'gen_config.embed',
    GenConfigTypes.code => 'gen_config.code',
  };

  @override
  String toString() => value;
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CellCompletionResponse extends ChatCompletionChunkResponse
    with CellCompletionResponseMappable {
  final String outputColumnName;
  final String rowId;

  const CellCompletionResponse({
    required super.id,
    super.object = ObjectType.completionChunk,
    required super.created,
    required super.model,
    required super.choices,
    super.usage,
    super.references,
    super.serviceTier,
    super.systemFingerprint,
    required this.outputColumnName,
    required this.rowId,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CellReferencesResponse extends References
    with CellReferencesResponseMappable {
  final String outputColumnName;
  final String rowId;

  CellReferencesResponse({
    super.object = ObjectType.genTableReferences,
    super.chunks = const [],
    required super.searchQuery,
    super.finishReason,
    required this.outputColumnName,
    required this.rowId,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class RowCompletionResponse with RowCompletionResponseMappable {
  final String object;
  final Map<String, ChatCompletionChunkResponse> columns;
  final String rowId;

  const RowCompletionResponse({
    required this.object,
    required this.columns,
    required this.rowId,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MultiRowCompletionResponse with MultiRowCompletionResponseMappable {
  final String object;
  final List<RowCompletionResponse> rows;

  const MultiRowCompletionResponse({required this.object, required this.rows});
}

/// LLM generation configuration
@MappableClass(
  caseStyle: CaseStyle.snakeCase,
  generateMethods:
      GenerateMethods.decode |
      GenerateMethods.encode |
      GenerateMethods.equals |
      GenerateMethods.stringify,
)
class LLMGenConfig extends ChatRequestBase
    with LLMGenConfigMappable
    implements GenConfig {
  final GenConfigTypes object;
  final String systemPrompt;
  final String prompt;
  final bool multiTurn;

  LLMGenConfig({
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
    // Subclass fields
    this.object = GenConfigTypes.llm,
    this.systemPrompt = '',
    this.prompt = '',
    this.multiTurn = false,
  });
}

/// Embedding generation configuration
@MappableClass(caseStyle: CaseStyle.snakeCase)
class EmbedGenConfig extends GenConfig with EmbedGenConfigMappable {
  final GenConfigTypes object;
  final String embeddingModel;
  final String sourceColumn;

  const EmbedGenConfig({
    this.object = GenConfigTypes.embed,
    required this.embeddingModel,
    required this.sourceColumn,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CodeGenConfig extends GenConfig with CodeGenConfigMappable {
  final GenConfigTypes object;
  final String sourceColumn;

  const CodeGenConfig({
    this.object = GenConfigTypes.code,
    required this.sourceColumn,
  });
}

/// Python generation configuration
@MappableClass(caseStyle: CaseStyle.snakeCase)
class PythonGenConfig extends GenConfig with PythonGenConfigMappable {
  final GenConfigTypes object;
  final String pythonCode;

  const PythonGenConfig({
    this.object = GenConfigTypes.python,
    required this.pythonCode,
  });
}

sealed class GenConfig {
  const GenConfig();
  factory GenConfig.fromDynamic(dynamic value) {
    if (value is LLMGenConfig) {
      return value;
    }
    if (value is EmbedGenConfig) {
      return value;
    }
    if (value is PythonGenConfig) {
      return value;
    }
    if (value is CodeGenConfig) {
      return value;
    }
    throw ArgumentError(
      'Value be be type of LLMGenConfig | EmbedGenConfig | PythonGenConfig | CodeGenConfig',
    );
  }
}

@MappableClass(
  caseStyle: CaseStyle.snakeCase,
  discriminatorKey: 'object',
  generateMethods:
      GenerateMethods.decode |
      GenerateMethods.encode |
      GenerateMethods.equals |
      GenerateMethods.stringify,
)
sealed class DiscriminatedGenConfig with DiscriminatedGenConfigMappable {}

// discriminated gen configs
@MappableClass(
  caseStyle: CaseStyle.snakeCase,
  discriminatorValue: GenConfigTypes.llm,
  generateMethods:
      GenerateMethods.decode |
      GenerateMethods.encode |
      GenerateMethods.equals |
      GenerateMethods.stringify,
)
class DiscriminatedLLMGenConfig extends LLMGenConfig
    with DiscriminatedLLMGenConfigMappable
    implements DiscriminatedGenConfig {
  DiscriminatedLLMGenConfig({
    // Base class fields
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
    // Subclass fields
    super.object = GenConfigTypes.llm,
    super.systemPrompt = '',
    super.prompt = '',
    super.multiTurn = false,
  });
}

@MappableClass(
  caseStyle: CaseStyle.snakeCase,
  discriminatorValue: GenConfigTypes.chat,
  generateMethods:
      GenerateMethods.decode |
      GenerateMethods.encode |
      GenerateMethods.equals |
      GenerateMethods.stringify,
)
class DiscriminatedChatGenConfig extends LLMGenConfig
    with DiscriminatedChatGenConfigMappable
    implements DiscriminatedGenConfig {
  DiscriminatedChatGenConfig({
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
    // Subclass fields
    super.object = GenConfigTypes.llm,
    super.systemPrompt = '',
    super.prompt = '',
    super.multiTurn = false,
  });
}

@MappableClass(
  caseStyle: CaseStyle.snakeCase,
  discriminatorValue: GenConfigTypes.python,
)
class DiscriminatedPythonGenConfig extends PythonGenConfig
    with DiscriminatedPythonGenConfigMappable
    implements DiscriminatedGenConfig {
  DiscriminatedPythonGenConfig({
    super.object = GenConfigTypes.python,
    required super.pythonCode,
  });
}

@MappableClass(
  caseStyle: CaseStyle.snakeCase,
  discriminatorValue: GenConfigTypes.embed,
)
class DiscriminatedEmbedGenConfig extends EmbedGenConfig
    with DiscriminatedEmbedGenConfigMappable
    implements DiscriminatedGenConfig {
  DiscriminatedEmbedGenConfig({
    super.object = GenConfigTypes.embed,
    required super.embeddingModel,
    required super.sourceColumn,
  });
}

@MappableClass(
  caseStyle: CaseStyle.snakeCase,
  discriminatorValue: GenConfigTypes.code,
)
class DiscriminatedCodeGenConfig extends CodeGenConfig
    with DiscriminatedCodeGenConfigMappable
    implements DiscriminatedGenConfig {
  DiscriminatedCodeGenConfig({
    super.object = GenConfigTypes.code,
    required super.sourceColumn,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
abstract class ColumnSchema with ColumnSchemaMappable {
  final String id;
  final ColumnSchemaDtype dtype;
  final int vlen;
  final bool index;
  final DiscriminatedGenConfig? genConfig;

  const ColumnSchema({
    required this.id,
    this.dtype = ColumnSchemaDtype.str,
    this.vlen = 0,
    this.index = true,
    this.genConfig,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ColumnSchemaCreate extends ColumnSchema with ColumnSchemaCreateMappable {
  factory ColumnSchemaCreate({
    required String id,
    ColumnSchemaDtype dtype = ColumnSchemaDtype.str,
    int vlen = 0,
    bool index = true,
    DiscriminatedGenConfig? genConfig,
  }) {
    final sanitizedString = SanitizedNotEmptyString(id).value;

    return ColumnSchemaCreate._(
      id: sanitizedString,
      dtype: dtype,
      vlen: vlen,
      index: index,
      genConfig: genConfig,
    );
  }
  const ColumnSchemaCreate._({
    required super.id,
    super.dtype = ColumnSchemaDtype.str,
    super.vlen = 0,
    super.index = true,
    super.genConfig,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
abstract class TableSchemaCreate with TableSchemaCreateMappable {
  final String id;
  final List<ColumnSchemaCreate> cols;

  const TableSchemaCreate({required this.id, required this.cols});
}

/// Knowledge table schema for creation
@MappableClass(caseStyle: CaseStyle.snakeCase)
class KnowledgeTableSchemaCreate extends TableSchemaCreate
    with KnowledgeTableSchemaCreateMappable {
  final String embeddingModel;

  const KnowledgeTableSchemaCreate({
    required super.id,
    required super.cols,
    required this.embeddingModel,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TableMeta with TableMetaMappable {
  final String id;
  final Map<String, dynamic>? meta;
  final List<ColumnSchema> cols;
  final String? parentId;
  final String title;
  final String? createdBy;
  final DatetimeUTC updatedAt;
  final int numRows;
  final String version;

  const TableMeta({
    required this.id,
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
}

/// Table metadata response
@MappableClass(caseStyle: CaseStyle.snakeCase)
class TableMetaResponse extends TableMeta with TableMetaResponseMappable {
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
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class GenConfigUpdateRequest with GenConfigUpdateRequestMappable {
  final String tableId;
  final Map<String, DiscriminatedGenConfig?> columnMap;

  factory GenConfigUpdateRequest({
    required String tableId,
    required Map<String, DiscriminatedGenConfig?> columnMap,
  }) {
    if (columnMap.keys.any(
      (n) => n.toLowerCase() == 'id' || n.toLowerCase() == 'updated at',
    )) {
      throw ArgumentError(
        "column_map cannot contain keys: 'ID' or 'Updated at'.",
      );
    }
    return GenConfigUpdateRequest._(tableId: tableId, columnMap: columnMap);
  }
  const GenConfigUpdateRequest._({
    required this.tableId,
    required this.columnMap,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ColumnRenameRequest with ColumnRenameRequestMappable {
  final String tableId;
  final Map<String, String> columnMap;

  // Private constructor for internal use after validation
  const ColumnRenameRequest._({required this.tableId, required this.columnMap});

  // Factory constructor for validation and creation
  factory ColumnRenameRequest({
    required String tableId,
    required Map<String, String> columnMap,
  }) {
    // Perform validation here
    if (columnMap.keys.any(
      (n) =>
          n.toLowerCase() == 'id' ||
          n.toLowerCase() ==
              'updated_at', // Note: using 'updated_at' to match snake_case
    )) {
      throw ArgumentError(
        "`column_map` cannot contain keys: 'ID' or 'Updated at'.",
      );
    }

    // If validation passes, return a new instance using the private constructor
    return ColumnRenameRequest._(tableId: tableId, columnMap: columnMap);
  }
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ColumnReorderRequest with ColumnReorderRequestMappable {
  final String tableId;
  final List<String> columnNames;

  factory ColumnReorderRequest({
    required String tableId,
    required List<String> columnNames,
  }) {
    // Check unique column names
    final lowerNames = columnNames.map((n) => n.toLowerCase()).toSet();
    if (lowerNames.length != columnNames.length) {
      throw ArgumentError('Column names must be unique (case-insensitive).');
    }

    // Check state columns
    final invalidCols = columnNames.where((n) => n.endsWith('_')).toList();
    if (invalidCols.isNotEmpty) {
      throw ArgumentError('State columns cannot be reordered: $invalidCols');
    }

    // Adjust column order by inserting 'ID' and 'Updated at' if missing
    List<String> adjustedNames = List<String>.from(columnNames);
    if (adjustedNames.isNotEmpty && adjustedNames[0].toLowerCase() != 'id') {
      adjustedNames.insert(0, 'ID');
    }
    if (adjustedNames.length > 1 &&
        adjustedNames[1].toLowerCase() != 'updated at') {
      adjustedNames.insert(1, 'Updated at');
    }

    return ColumnReorderRequest._(tableId: tableId, columnNames: adjustedNames);
  }

  const ColumnReorderRequest._({
    required this.tableId,
    required this.columnNames,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ColumnDropRequest with ColumnDropRequestMappable {
  final String tableId;
  final List<String> columnNames;

  factory ColumnDropRequest({
    required String tableId,
    required List<String> columnNames,
  }) {
    if (columnNames.any(
      (n) => n.toLowerCase() == 'id' || n.toLowerCase() == 'updated at',
    )) {
      throw ArgumentError(
        "`column_names` cannot contain keys: 'ID' or 'Updated at'.",
      );
    }

    return ColumnDropRequest._(tableId: tableId, columnNames: columnNames);
  }

  const ColumnDropRequest._({required this.tableId, required this.columnNames});
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MultiRowAddRequest with MultiRowAddRequestMappable {
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
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class RowUpdateRequest with RowUpdateRequestMappable {
  final String tableId;
  final String rowId;
  final Map<String, dynamic> data;

  const RowUpdateRequest({
    required this.tableId,
    required this.rowId,
    required this.data,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MultiRowUpdateRequest with MultiRowUpdateRequestMappable {
  final String tableId;
  final Map<String, Map<String, dynamic>> data;

  const MultiRowUpdateRequest({required this.tableId, required this.data});
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MultiRowUpdateRequestWithLimit extends MultiRowUpdateRequest
    with MultiRowUpdateRequestWithLimitMappable {
  const MultiRowUpdateRequestWithLimit({
    required super.tableId,
    required super.data,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class RowRegen with RowRegenMappable {
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
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MultiRowRegenRequest with MultiRowRegenRequestMappable {
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
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MultiRowDeleteRequest with MultiRowDeleteRequestMappable {
  final String tableId;
  final List<String>? rowIds;
  final String where;

  const MultiRowDeleteRequest({
    required this.tableId,
    this.rowIds,
    this.where = '',
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SearchRequest with SearchRequestMappable {
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
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TableDataImportRequest with TableDataImportRequestMappable {
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
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TableImportRequest with TableImportRequestMappable {
  final String filePath;
  final String? tableIdDst;
  final bool blocking;

  const TableImportRequest({
    required this.filePath,
    this.tableIdDst,
    this.blocking = true,
  });
}
