// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'gen_tables.dart';

class CSVDelimiterMapper extends EnumMapper<CSVDelimiter> {
  CSVDelimiterMapper._();

  static CSVDelimiterMapper? _instance;
  static CSVDelimiterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CSVDelimiterMapper._());
    }
    return _instance!;
  }

  static CSVDelimiter fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CSVDelimiter decode(dynamic value) {
    switch (value) {
      case r'comma':
        return CSVDelimiter.comma;
      case r'tab':
        return CSVDelimiter.tab;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CSVDelimiter self) {
    switch (self) {
      case CSVDelimiter.comma:
        return r'comma';
      case CSVDelimiter.tab:
        return r'tab';
    }
  }
}

extension CSVDelimiterMapperExtension on CSVDelimiter {
  String toValue() {
    CSVDelimiterMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CSVDelimiter>(this) as String;
  }
}

class TableTypeMapper extends EnumMapper<TableType> {
  TableTypeMapper._();

  static TableTypeMapper? _instance;
  static TableTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TableTypeMapper._());
    }
    return _instance!;
  }

  static TableType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TableType decode(dynamic value) {
    switch (value) {
      case r'action':
        return TableType.action;
      case r'knowledge':
        return TableType.knowledge;
      case r'chat':
        return TableType.chat;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(TableType self) {
    switch (self) {
      case TableType.action:
        return r'action';
      case TableType.knowledge:
        return r'knowledge';
      case TableType.chat:
        return r'chat';
    }
  }
}

extension TableTypeMapperExtension on TableType {
  String toValue() {
    TableTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<TableType>(this) as String;
  }
}

class ColumnSchemaDtypeMapper extends EnumMapper<ColumnSchemaDtype> {
  ColumnSchemaDtypeMapper._();

  static ColumnSchemaDtypeMapper? _instance;
  static ColumnSchemaDtypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColumnSchemaDtypeMapper._());
    }
    return _instance!;
  }

  static ColumnSchemaDtype fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ColumnSchemaDtype decode(dynamic value) {
    switch (value) {
      case r'int':
        return ColumnSchemaDtype.int;
      case r'float':
        return ColumnSchemaDtype.float;
      case r'bool':
        return ColumnSchemaDtype.bool;
      case r'str':
        return ColumnSchemaDtype.str;
      case r'file':
        return ColumnSchemaDtype.file;
      case r'image':
        return ColumnSchemaDtype.image;
      case r'audio':
        return ColumnSchemaDtype.audio;
      case r'document':
        return ColumnSchemaDtype.document;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ColumnSchemaDtype self) {
    switch (self) {
      case ColumnSchemaDtype.int:
        return r'int';
      case ColumnSchemaDtype.float:
        return r'float';
      case ColumnSchemaDtype.bool:
        return r'bool';
      case ColumnSchemaDtype.str:
        return r'str';
      case ColumnSchemaDtype.file:
        return r'file';
      case ColumnSchemaDtype.image:
        return r'image';
      case ColumnSchemaDtype.audio:
        return r'audio';
      case ColumnSchemaDtype.document:
        return r'document';
    }
  }
}

extension ColumnSchemaDtypeMapperExtension on ColumnSchemaDtype {
  String toValue() {
    ColumnSchemaDtypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ColumnSchemaDtype>(this) as String;
  }
}

class RegenStrategyMapper extends EnumMapper<RegenStrategy> {
  RegenStrategyMapper._();

  static RegenStrategyMapper? _instance;
  static RegenStrategyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegenStrategyMapper._());
    }
    return _instance!;
  }

  static RegenStrategy fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  RegenStrategy decode(dynamic value) {
    switch (value) {
      case r'run_all':
        return RegenStrategy.runAll;
      case r'run_before':
        return RegenStrategy.runBefore;
      case r'run_selected':
        return RegenStrategy.runSelected;
      case r'run_after':
        return RegenStrategy.runAfter;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(RegenStrategy self) {
    switch (self) {
      case RegenStrategy.runAll:
        return r'run_all';
      case RegenStrategy.runBefore:
        return r'run_before';
      case RegenStrategy.runSelected:
        return r'run_selected';
      case RegenStrategy.runAfter:
        return r'run_after';
    }
  }
}

extension RegenStrategyMapperExtension on RegenStrategy {
  String toValue() {
    RegenStrategyMapper.ensureInitialized();
    return MapperContainer.globals.toValue<RegenStrategy>(this) as String;
  }
}

class VectorMetricMapper extends EnumMapper<VectorMetric> {
  VectorMetricMapper._();

  static VectorMetricMapper? _instance;
  static VectorMetricMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VectorMetricMapper._());
    }
    return _instance!;
  }

  static VectorMetric fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  VectorMetric decode(dynamic value) {
    switch (value) {
      case r'cosine':
        return VectorMetric.cosine;
      case r'euclidean':
        return VectorMetric.euclidean;
      case r'dot_product':
        return VectorMetric.dotProduct;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(VectorMetric self) {
    switch (self) {
      case VectorMetric.cosine:
        return r'cosine';
      case VectorMetric.euclidean:
        return r'euclidean';
      case VectorMetric.dotProduct:
        return r'dot_product';
    }
  }
}

extension VectorMetricMapperExtension on VectorMetric {
  String toValue() {
    VectorMetricMapper.ensureInitialized();
    return MapperContainer.globals.toValue<VectorMetric>(this) as String;
  }
}

class GenConfigTypesMapper extends EnumMapper<GenConfigTypes> {
  GenConfigTypesMapper._();

  static GenConfigTypesMapper? _instance;
  static GenConfigTypesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenConfigTypesMapper._());
    }
    return _instance!;
  }

  static GenConfigTypes fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  GenConfigTypes decode(dynamic value) {
    switch (value) {
      case r'llm':
        return GenConfigTypes.llm;
      case r'python':
        return GenConfigTypes.python;
      case r'chat':
        return GenConfigTypes.chat;
      case r'embed':
        return GenConfigTypes.embed;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(GenConfigTypes self) {
    switch (self) {
      case GenConfigTypes.llm:
        return r'llm';
      case GenConfigTypes.python:
        return r'python';
      case GenConfigTypes.chat:
        return r'chat';
      case GenConfigTypes.embed:
        return r'embed';
    }
  }
}

extension GenConfigTypesMapperExtension on GenConfigTypes {
  String toValue() {
    GenConfigTypesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<GenConfigTypes>(this) as String;
  }
}

class CellCompletionResponseMapper
    extends ClassMapperBase<CellCompletionResponse> {
  CellCompletionResponseMapper._();

  static CellCompletionResponseMapper? _instance;
  static CellCompletionResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CellCompletionResponseMapper._());
      ChatCompletionChunkResponseMapper.ensureInitialized();
      ObjectTypeMapper.ensureInitialized();
      ChatCompletionChoiceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CellCompletionResponse';

  static String _$outputColumnName(CellCompletionResponse v) =>
      v.outputColumnName;
  static const Field<CellCompletionResponse, String> _f$outputColumnName =
      Field('outputColumnName', _$outputColumnName, key: r'output_column_name');
  static String _$rowId(CellCompletionResponse v) => v.rowId;
  static const Field<CellCompletionResponse, String> _f$rowId = Field(
    'rowId',
    _$rowId,
    key: r'row_id',
  );
  static ObjectType _$object(CellCompletionResponse v) => v.object;
  static const Field<CellCompletionResponse, ObjectType> _f$object = Field(
    'object',
    _$object,
  );
  static String _$id(CellCompletionResponse v) => v.id;
  static const Field<CellCompletionResponse, String> _f$id = Field('id', _$id);
  static int _$created(CellCompletionResponse v) => v.created;
  static const Field<CellCompletionResponse, int> _f$created = Field(
    'created',
    _$created,
  );
  static String _$model(CellCompletionResponse v) => v.model;
  static const Field<CellCompletionResponse, String> _f$model = Field(
    'model',
    _$model,
  );
  static List<ChatCompletionChoice> _$choices(CellCompletionResponse v) =>
      v.choices;
  static const Field<CellCompletionResponse, List<ChatCompletionChoice>>
  _f$choices = Field('choices', _$choices);
  static ChatCompletionUsage? _$usage(CellCompletionResponse v) => v.usage;
  static const Field<CellCompletionResponse, ChatCompletionUsage> _f$usage =
      Field('usage', _$usage, mode: FieldMode.member);
  static References? _$references(CellCompletionResponse v) => v.references;
  static const Field<CellCompletionResponse, References> _f$references = Field(
    'references',
    _$references,
    mode: FieldMode.member,
  );
  static String? _$serviceTier(CellCompletionResponse v) => v.serviceTier;
  static const Field<CellCompletionResponse, String> _f$serviceTier = Field(
    'serviceTier',
    _$serviceTier,
    key: r'service_tier',
    mode: FieldMode.member,
  );
  static String? _$systemFingerprint(CellCompletionResponse v) =>
      v.systemFingerprint;
  static const Field<CellCompletionResponse, String> _f$systemFingerprint =
      Field(
        'systemFingerprint',
        _$systemFingerprint,
        key: r'system_fingerprint',
        mode: FieldMode.member,
      );
  static String? _$finishReason(CellCompletionResponse v) => v.finishReason;
  static const Field<CellCompletionResponse, String> _f$finishReason = Field(
    'finishReason',
    _$finishReason,
    key: r'finish_reason',
    mode: FieldMode.member,
  );
  static ChatCompletionMessage? _$delta(CellCompletionResponse v) => v.delta;
  static const Field<CellCompletionResponse, ChatCompletionMessage> _f$delta =
      Field('delta', _$delta, mode: FieldMode.member);
  static ChatCompletionMessage? _$message(CellCompletionResponse v) =>
      v.message;
  static const Field<CellCompletionResponse, ChatCompletionMessage> _f$message =
      Field('message', _$message, mode: FieldMode.member);
  static String? _$reasoningContent(CellCompletionResponse v) =>
      v.reasoningContent;
  static const Field<CellCompletionResponse, String> _f$reasoningContent =
      Field(
        'reasoningContent',
        _$reasoningContent,
        key: r'reasoning_content',
        mode: FieldMode.member,
      );
  static String _$content(CellCompletionResponse v) => v.content;
  static const Field<CellCompletionResponse, String> _f$content = Field(
    'content',
    _$content,
    mode: FieldMode.member,
  );
  static int _$promptTokens(CellCompletionResponse v) => v.promptTokens;
  static const Field<CellCompletionResponse, int> _f$promptTokens = Field(
    'promptTokens',
    _$promptTokens,
    key: r'prompt_tokens',
    mode: FieldMode.member,
  );
  static int _$completionTokens(CellCompletionResponse v) => v.completionTokens;
  static const Field<CellCompletionResponse, int> _f$completionTokens = Field(
    'completionTokens',
    _$completionTokens,
    key: r'completion_tokens',
    mode: FieldMode.member,
  );
  static int _$reasoningTokens(CellCompletionResponse v) => v.reasoningTokens;
  static const Field<CellCompletionResponse, int> _f$reasoningTokens = Field(
    'reasoningTokens',
    _$reasoningTokens,
    key: r'reasoning_tokens',
    mode: FieldMode.member,
  );
  static int _$totalTokens(CellCompletionResponse v) => v.totalTokens;
  static const Field<CellCompletionResponse, int> _f$totalTokens = Field(
    'totalTokens',
    _$totalTokens,
    key: r'total_tokens',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<CellCompletionResponse> fields = const {
    #outputColumnName: _f$outputColumnName,
    #rowId: _f$rowId,
    #object: _f$object,
    #id: _f$id,
    #created: _f$created,
    #model: _f$model,
    #choices: _f$choices,
    #usage: _f$usage,
    #references: _f$references,
    #serviceTier: _f$serviceTier,
    #systemFingerprint: _f$systemFingerprint,
    #finishReason: _f$finishReason,
    #delta: _f$delta,
    #message: _f$message,
    #reasoningContent: _f$reasoningContent,
    #content: _f$content,
    #promptTokens: _f$promptTokens,
    #completionTokens: _f$completionTokens,
    #reasoningTokens: _f$reasoningTokens,
    #totalTokens: _f$totalTokens,
  };

  static CellCompletionResponse _instantiate(DecodingData data) {
    return CellCompletionResponse(
      outputColumnName: data.dec(_f$outputColumnName),
      rowId: data.dec(_f$rowId),
      object: data.dec(_f$object),
      id: data.dec(_f$id),
      created: data.dec(_f$created),
      model: data.dec(_f$model),
      choices: data.dec(_f$choices),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CellCompletionResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CellCompletionResponse>(map);
  }

  static CellCompletionResponse fromJson(String json) {
    return ensureInitialized().decodeJson<CellCompletionResponse>(json);
  }
}

mixin CellCompletionResponseMappable {
  String toJson() {
    return CellCompletionResponseMapper.ensureInitialized()
        .encodeJson<CellCompletionResponse>(this as CellCompletionResponse);
  }

  Map<String, dynamic> toMap() {
    return CellCompletionResponseMapper.ensureInitialized()
        .encodeMap<CellCompletionResponse>(this as CellCompletionResponse);
  }

  CellCompletionResponseCopyWith<
    CellCompletionResponse,
    CellCompletionResponse,
    CellCompletionResponse
  >
  get copyWith =>
      _CellCompletionResponseCopyWithImpl<
        CellCompletionResponse,
        CellCompletionResponse
      >(this as CellCompletionResponse, $identity, $identity);
  @override
  String toString() {
    return CellCompletionResponseMapper.ensureInitialized().stringifyValue(
      this as CellCompletionResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return CellCompletionResponseMapper.ensureInitialized().equalsValue(
      this as CellCompletionResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return CellCompletionResponseMapper.ensureInitialized().hashValue(
      this as CellCompletionResponse,
    );
  }
}

extension CellCompletionResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CellCompletionResponse, $Out> {
  CellCompletionResponseCopyWith<$R, CellCompletionResponse, $Out>
  get $asCellCompletionResponse => $base.as(
    (v, t, t2) => _CellCompletionResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CellCompletionResponseCopyWith<
  $R,
  $In extends CellCompletionResponse,
  $Out
>
    implements ChatCompletionChunkResponseCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<
    $R,
    ChatCompletionChoice,
    ChatCompletionChoiceCopyWith<$R, ChatCompletionChoice, ChatCompletionChoice>
  >
  get choices;
  @override
  $R call({
    String? outputColumnName,
    String? rowId,
    ObjectType? object,
    String? id,
    int? created,
    String? model,
    List<ChatCompletionChoice>? choices,
  });
  CellCompletionResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CellCompletionResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CellCompletionResponse, $Out>
    implements
        CellCompletionResponseCopyWith<$R, CellCompletionResponse, $Out> {
  _CellCompletionResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CellCompletionResponse> $mapper =
      CellCompletionResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ChatCompletionChoice,
    ChatCompletionChoiceCopyWith<$R, ChatCompletionChoice, ChatCompletionChoice>
  >
  get choices => ListCopyWith(
    $value.choices,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(choices: v),
  );
  @override
  $R call({
    String? outputColumnName,
    String? rowId,
    ObjectType? object,
    String? id,
    int? created,
    String? model,
    List<ChatCompletionChoice>? choices,
  }) => $apply(
    FieldCopyWithData({
      if (outputColumnName != null) #outputColumnName: outputColumnName,
      if (rowId != null) #rowId: rowId,
      if (object != null) #object: object,
      if (id != null) #id: id,
      if (created != null) #created: created,
      if (model != null) #model: model,
      if (choices != null) #choices: choices,
    }),
  );
  @override
  CellCompletionResponse $make(CopyWithData data) => CellCompletionResponse(
    outputColumnName: data.get(#outputColumnName, or: $value.outputColumnName),
    rowId: data.get(#rowId, or: $value.rowId),
    object: data.get(#object, or: $value.object),
    id: data.get(#id, or: $value.id),
    created: data.get(#created, or: $value.created),
    model: data.get(#model, or: $value.model),
    choices: data.get(#choices, or: $value.choices),
  );

  @override
  CellCompletionResponseCopyWith<$R2, CellCompletionResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CellCompletionResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CellReferencesResponseMapper
    extends ClassMapperBase<CellReferencesResponse> {
  CellReferencesResponseMapper._();

  static CellReferencesResponseMapper? _instance;
  static CellReferencesResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CellReferencesResponseMapper._());
      ReferencesMapper.ensureInitialized();
      ObjectTypeMapper.ensureInitialized();
      ChunkMapper.ensureInitialized();
      FinishReasonMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CellReferencesResponse';

  static ObjectType _$object(CellReferencesResponse v) => v.object;
  static const Field<CellReferencesResponse, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.genTableReferences,
  );
  static List<Chunk> _$chunks(CellReferencesResponse v) => v.chunks;
  static const Field<CellReferencesResponse, List<Chunk>> _f$chunks = Field(
    'chunks',
    _$chunks,
    opt: true,
    def: const [],
  );
  static String _$searchQuery(CellReferencesResponse v) => v.searchQuery;
  static const Field<CellReferencesResponse, String> _f$searchQuery = Field(
    'searchQuery',
    _$searchQuery,
    key: r'search_query',
  );
  static FinishReason? _$finishReason(CellReferencesResponse v) =>
      v.finishReason;
  static const Field<CellReferencesResponse, FinishReason> _f$finishReason =
      Field('finishReason', _$finishReason, key: r'finish_reason', opt: true);
  static String _$outputColumnName(CellReferencesResponse v) =>
      v.outputColumnName;
  static const Field<CellReferencesResponse, String> _f$outputColumnName =
      Field('outputColumnName', _$outputColumnName, key: r'output_column_name');
  static String _$rowId(CellReferencesResponse v) => v.rowId;
  static const Field<CellReferencesResponse, String> _f$rowId = Field(
    'rowId',
    _$rowId,
    key: r'row_id',
  );

  @override
  final MappableFields<CellReferencesResponse> fields = const {
    #object: _f$object,
    #chunks: _f$chunks,
    #searchQuery: _f$searchQuery,
    #finishReason: _f$finishReason,
    #outputColumnName: _f$outputColumnName,
    #rowId: _f$rowId,
  };

  static CellReferencesResponse _instantiate(DecodingData data) {
    return CellReferencesResponse(
      object: data.dec(_f$object),
      chunks: data.dec(_f$chunks),
      searchQuery: data.dec(_f$searchQuery),
      finishReason: data.dec(_f$finishReason),
      outputColumnName: data.dec(_f$outputColumnName),
      rowId: data.dec(_f$rowId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CellReferencesResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CellReferencesResponse>(map);
  }

  static CellReferencesResponse fromJson(String json) {
    return ensureInitialized().decodeJson<CellReferencesResponse>(json);
  }
}

mixin CellReferencesResponseMappable {
  String toJson() {
    return CellReferencesResponseMapper.ensureInitialized()
        .encodeJson<CellReferencesResponse>(this as CellReferencesResponse);
  }

  Map<String, dynamic> toMap() {
    return CellReferencesResponseMapper.ensureInitialized()
        .encodeMap<CellReferencesResponse>(this as CellReferencesResponse);
  }

  CellReferencesResponseCopyWith<
    CellReferencesResponse,
    CellReferencesResponse,
    CellReferencesResponse
  >
  get copyWith =>
      _CellReferencesResponseCopyWithImpl<
        CellReferencesResponse,
        CellReferencesResponse
      >(this as CellReferencesResponse, $identity, $identity);
  @override
  String toString() {
    return CellReferencesResponseMapper.ensureInitialized().stringifyValue(
      this as CellReferencesResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return CellReferencesResponseMapper.ensureInitialized().equalsValue(
      this as CellReferencesResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return CellReferencesResponseMapper.ensureInitialized().hashValue(
      this as CellReferencesResponse,
    );
  }
}

extension CellReferencesResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CellReferencesResponse, $Out> {
  CellReferencesResponseCopyWith<$R, CellReferencesResponse, $Out>
  get $asCellReferencesResponse => $base.as(
    (v, t, t2) => _CellReferencesResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CellReferencesResponseCopyWith<
  $R,
  $In extends CellReferencesResponse,
  $Out
>
    implements ReferencesCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, Chunk, ChunkCopyWith<$R, Chunk, Chunk>> get chunks;
  @override
  $R call({
    ObjectType? object,
    List<Chunk>? chunks,
    String? searchQuery,
    FinishReason? finishReason,
    String? outputColumnName,
    String? rowId,
  });
  CellReferencesResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CellReferencesResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CellReferencesResponse, $Out>
    implements
        CellReferencesResponseCopyWith<$R, CellReferencesResponse, $Out> {
  _CellReferencesResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CellReferencesResponse> $mapper =
      CellReferencesResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Chunk, ChunkCopyWith<$R, Chunk, Chunk>> get chunks =>
      ListCopyWith(
        $value.chunks,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(chunks: v),
      );
  @override
  $R call({
    ObjectType? object,
    List<Chunk>? chunks,
    String? searchQuery,
    Object? finishReason = $none,
    String? outputColumnName,
    String? rowId,
  }) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (chunks != null) #chunks: chunks,
      if (searchQuery != null) #searchQuery: searchQuery,
      if (finishReason != $none) #finishReason: finishReason,
      if (outputColumnName != null) #outputColumnName: outputColumnName,
      if (rowId != null) #rowId: rowId,
    }),
  );
  @override
  CellReferencesResponse $make(CopyWithData data) => CellReferencesResponse(
    object: data.get(#object, or: $value.object),
    chunks: data.get(#chunks, or: $value.chunks),
    searchQuery: data.get(#searchQuery, or: $value.searchQuery),
    finishReason: data.get(#finishReason, or: $value.finishReason),
    outputColumnName: data.get(#outputColumnName, or: $value.outputColumnName),
    rowId: data.get(#rowId, or: $value.rowId),
  );

  @override
  CellReferencesResponseCopyWith<$R2, CellReferencesResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CellReferencesResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

