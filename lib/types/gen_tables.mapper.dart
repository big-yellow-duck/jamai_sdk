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
      case 'gen_config.llm':
        return GenConfigTypes.llm;
      case 'gen_config.python':
        return GenConfigTypes.python;
      case 'gen_config.chat':
        return GenConfigTypes.chat;
      case 'gen_config.embed':
        return GenConfigTypes.embed;
      case 'gen_config.code':
        return GenConfigTypes.code;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(GenConfigTypes self) {
    switch (self) {
      case GenConfigTypes.llm:
        return 'gen_config.llm';
      case GenConfigTypes.python:
        return 'gen_config.python';
      case GenConfigTypes.chat:
        return 'gen_config.chat';
      case GenConfigTypes.embed:
        return 'gen_config.embed';
      case GenConfigTypes.code:
        return 'gen_config.code';
    }
  }
}

extension GenConfigTypesMapperExtension on GenConfigTypes {
  dynamic toValue() {
    GenConfigTypesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<GenConfigTypes>(this);
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
      ChatCompletionUsageMapper.ensureInitialized();
      ReferencesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CellCompletionResponse';

  static String _$id(CellCompletionResponse v) => v.id;
  static const Field<CellCompletionResponse, String> _f$id = Field('id', _$id);
  static ObjectType _$object(CellCompletionResponse v) => v.object;
  static const Field<CellCompletionResponse, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.completionChunk,
  );
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
      Field('usage', _$usage, opt: true);
  static References? _$references(CellCompletionResponse v) => v.references;
  static const Field<CellCompletionResponse, References> _f$references = Field(
    'references',
    _$references,
    opt: true,
  );
  static String? _$serviceTier(CellCompletionResponse v) => v.serviceTier;
  static const Field<CellCompletionResponse, String> _f$serviceTier = Field(
    'serviceTier',
    _$serviceTier,
    key: r'service_tier',
    opt: true,
  );
  static String? _$systemFingerprint(CellCompletionResponse v) =>
      v.systemFingerprint;
  static const Field<CellCompletionResponse, String> _f$systemFingerprint =
      Field(
        'systemFingerprint',
        _$systemFingerprint,
        key: r'system_fingerprint',
        opt: true,
      );
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
    #id: _f$id,
    #object: _f$object,
    #created: _f$created,
    #model: _f$model,
    #choices: _f$choices,
    #usage: _f$usage,
    #references: _f$references,
    #serviceTier: _f$serviceTier,
    #systemFingerprint: _f$systemFingerprint,
    #outputColumnName: _f$outputColumnName,
    #rowId: _f$rowId,
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
      id: data.dec(_f$id),
      object: data.dec(_f$object),
      created: data.dec(_f$created),
      model: data.dec(_f$model),
      choices: data.dec(_f$choices),
      usage: data.dec(_f$usage),
      references: data.dec(_f$references),
      serviceTier: data.dec(_f$serviceTier),
      systemFingerprint: data.dec(_f$systemFingerprint),
      outputColumnName: data.dec(_f$outputColumnName),
      rowId: data.dec(_f$rowId),
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
  ChatCompletionUsageCopyWith<$R, ChatCompletionUsage, ChatCompletionUsage>?
  get usage;
  @override
  ReferencesCopyWith<$R, References, References>? get references;
  @override
  $R call({
    String? id,
    ObjectType? object,
    int? created,
    String? model,
    List<ChatCompletionChoice>? choices,
    ChatCompletionUsage? usage,
    References? references,
    String? serviceTier,
    String? systemFingerprint,
    String? outputColumnName,
    String? rowId,
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
  ChatCompletionUsageCopyWith<$R, ChatCompletionUsage, ChatCompletionUsage>?
  get usage => $value.usage?.copyWith.$chain((v) => call(usage: v));
  @override
  ReferencesCopyWith<$R, References, References>? get references =>
      $value.references?.copyWith.$chain((v) => call(references: v));
  @override
  $R call({
    String? id,
    ObjectType? object,
    int? created,
    String? model,
    List<ChatCompletionChoice>? choices,
    Object? usage = $none,
    Object? references = $none,
    Object? serviceTier = $none,
    Object? systemFingerprint = $none,
    String? outputColumnName,
    String? rowId,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (object != null) #object: object,
      if (created != null) #created: created,
      if (model != null) #model: model,
      if (choices != null) #choices: choices,
      if (usage != $none) #usage: usage,
      if (references != $none) #references: references,
      if (serviceTier != $none) #serviceTier: serviceTier,
      if (systemFingerprint != $none) #systemFingerprint: systemFingerprint,
      if (outputColumnName != null) #outputColumnName: outputColumnName,
      if (rowId != null) #rowId: rowId,
    }),
  );
  @override
  CellCompletionResponse $make(CopyWithData data) => CellCompletionResponse(
    id: data.get(#id, or: $value.id),
    object: data.get(#object, or: $value.object),
    created: data.get(#created, or: $value.created),
    model: data.get(#model, or: $value.model),
    choices: data.get(#choices, or: $value.choices),
    usage: data.get(#usage, or: $value.usage),
    references: data.get(#references, or: $value.references),
    serviceTier: data.get(#serviceTier, or: $value.serviceTier),
    systemFingerprint: data.get(
      #systemFingerprint,
      or: $value.systemFingerprint,
    ),
    outputColumnName: data.get(#outputColumnName, or: $value.outputColumnName),
    rowId: data.get(#rowId, or: $value.rowId),
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

class RowCompletionResponseMapper
    extends ClassMapperBase<RowCompletionResponse> {
  RowCompletionResponseMapper._();

  static RowCompletionResponseMapper? _instance;
  static RowCompletionResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RowCompletionResponseMapper._());
      ChatCompletionChunkResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RowCompletionResponse';

  static String _$object(RowCompletionResponse v) => v.object;
  static const Field<RowCompletionResponse, String> _f$object = Field(
    'object',
    _$object,
  );
  static Map<String, ChatCompletionChunkResponse> _$columns(
    RowCompletionResponse v,
  ) => v.columns;
  static const Field<
    RowCompletionResponse,
    Map<String, ChatCompletionChunkResponse>
  >
  _f$columns = Field('columns', _$columns);
  static String _$rowId(RowCompletionResponse v) => v.rowId;
  static const Field<RowCompletionResponse, String> _f$rowId = Field(
    'rowId',
    _$rowId,
    key: r'row_id',
  );

  @override
  final MappableFields<RowCompletionResponse> fields = const {
    #object: _f$object,
    #columns: _f$columns,
    #rowId: _f$rowId,
  };

  static RowCompletionResponse _instantiate(DecodingData data) {
    return RowCompletionResponse(
      object: data.dec(_f$object),
      columns: data.dec(_f$columns),
      rowId: data.dec(_f$rowId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RowCompletionResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RowCompletionResponse>(map);
  }

  static RowCompletionResponse fromJson(String json) {
    return ensureInitialized().decodeJson<RowCompletionResponse>(json);
  }
}

mixin RowCompletionResponseMappable {
  String toJson() {
    return RowCompletionResponseMapper.ensureInitialized()
        .encodeJson<RowCompletionResponse>(this as RowCompletionResponse);
  }

  Map<String, dynamic> toMap() {
    return RowCompletionResponseMapper.ensureInitialized()
        .encodeMap<RowCompletionResponse>(this as RowCompletionResponse);
  }

  RowCompletionResponseCopyWith<
    RowCompletionResponse,
    RowCompletionResponse,
    RowCompletionResponse
  >
  get copyWith =>
      _RowCompletionResponseCopyWithImpl<
        RowCompletionResponse,
        RowCompletionResponse
      >(this as RowCompletionResponse, $identity, $identity);
  @override
  String toString() {
    return RowCompletionResponseMapper.ensureInitialized().stringifyValue(
      this as RowCompletionResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return RowCompletionResponseMapper.ensureInitialized().equalsValue(
      this as RowCompletionResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return RowCompletionResponseMapper.ensureInitialized().hashValue(
      this as RowCompletionResponse,
    );
  }
}

extension RowCompletionResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RowCompletionResponse, $Out> {
  RowCompletionResponseCopyWith<$R, RowCompletionResponse, $Out>
  get $asRowCompletionResponse => $base.as(
    (v, t, t2) => _RowCompletionResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RowCompletionResponseCopyWith<
  $R,
  $In extends RowCompletionResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
    $R,
    String,
    ChatCompletionChunkResponse,
    ChatCompletionChunkResponseCopyWith<
      $R,
      ChatCompletionChunkResponse,
      ChatCompletionChunkResponse
    >
  >
  get columns;
  $R call({
    String? object,
    Map<String, ChatCompletionChunkResponse>? columns,
    String? rowId,
  });
  RowCompletionResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RowCompletionResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RowCompletionResponse, $Out>
    implements RowCompletionResponseCopyWith<$R, RowCompletionResponse, $Out> {
  _RowCompletionResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RowCompletionResponse> $mapper =
      RowCompletionResponseMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    String,
    ChatCompletionChunkResponse,
    ChatCompletionChunkResponseCopyWith<
      $R,
      ChatCompletionChunkResponse,
      ChatCompletionChunkResponse
    >
  >
  get columns => MapCopyWith(
    $value.columns,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(columns: v),
  );
  @override
  $R call({
    String? object,
    Map<String, ChatCompletionChunkResponse>? columns,
    String? rowId,
  }) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (columns != null) #columns: columns,
      if (rowId != null) #rowId: rowId,
    }),
  );
  @override
  RowCompletionResponse $make(CopyWithData data) => RowCompletionResponse(
    object: data.get(#object, or: $value.object),
    columns: data.get(#columns, or: $value.columns),
    rowId: data.get(#rowId, or: $value.rowId),
  );

  @override
  RowCompletionResponseCopyWith<$R2, RowCompletionResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RowCompletionResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MultiRowCompletionResponseMapper
    extends ClassMapperBase<MultiRowCompletionResponse> {
  MultiRowCompletionResponseMapper._();

  static MultiRowCompletionResponseMapper? _instance;
  static MultiRowCompletionResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = MultiRowCompletionResponseMapper._(),
      );
      RowCompletionResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MultiRowCompletionResponse';

  static String _$object(MultiRowCompletionResponse v) => v.object;
  static const Field<MultiRowCompletionResponse, String> _f$object = Field(
    'object',
    _$object,
  );
  static List<RowCompletionResponse> _$rows(MultiRowCompletionResponse v) =>
      v.rows;
  static const Field<MultiRowCompletionResponse, List<RowCompletionResponse>>
  _f$rows = Field('rows', _$rows);

  @override
  final MappableFields<MultiRowCompletionResponse> fields = const {
    #object: _f$object,
    #rows: _f$rows,
  };

  static MultiRowCompletionResponse _instantiate(DecodingData data) {
    return MultiRowCompletionResponse(
      object: data.dec(_f$object),
      rows: data.dec(_f$rows),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MultiRowCompletionResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MultiRowCompletionResponse>(map);
  }

  static MultiRowCompletionResponse fromJson(String json) {
    return ensureInitialized().decodeJson<MultiRowCompletionResponse>(json);
  }
}

mixin MultiRowCompletionResponseMappable {
  String toJson() {
    return MultiRowCompletionResponseMapper.ensureInitialized()
        .encodeJson<MultiRowCompletionResponse>(
          this as MultiRowCompletionResponse,
        );
  }

  Map<String, dynamic> toMap() {
    return MultiRowCompletionResponseMapper.ensureInitialized()
        .encodeMap<MultiRowCompletionResponse>(
          this as MultiRowCompletionResponse,
        );
  }

  MultiRowCompletionResponseCopyWith<
    MultiRowCompletionResponse,
    MultiRowCompletionResponse,
    MultiRowCompletionResponse
  >
  get copyWith =>
      _MultiRowCompletionResponseCopyWithImpl<
        MultiRowCompletionResponse,
        MultiRowCompletionResponse
      >(this as MultiRowCompletionResponse, $identity, $identity);
  @override
  String toString() {
    return MultiRowCompletionResponseMapper.ensureInitialized().stringifyValue(
      this as MultiRowCompletionResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return MultiRowCompletionResponseMapper.ensureInitialized().equalsValue(
      this as MultiRowCompletionResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return MultiRowCompletionResponseMapper.ensureInitialized().hashValue(
      this as MultiRowCompletionResponse,
    );
  }
}

extension MultiRowCompletionResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MultiRowCompletionResponse, $Out> {
  MultiRowCompletionResponseCopyWith<$R, MultiRowCompletionResponse, $Out>
  get $asMultiRowCompletionResponse => $base.as(
    (v, t, t2) => _MultiRowCompletionResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MultiRowCompletionResponseCopyWith<
  $R,
  $In extends MultiRowCompletionResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    RowCompletionResponse,
    RowCompletionResponseCopyWith<
      $R,
      RowCompletionResponse,
      RowCompletionResponse
    >
  >
  get rows;
  $R call({String? object, List<RowCompletionResponse>? rows});
  MultiRowCompletionResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MultiRowCompletionResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MultiRowCompletionResponse, $Out>
    implements
        MultiRowCompletionResponseCopyWith<
          $R,
          MultiRowCompletionResponse,
          $Out
        > {
  _MultiRowCompletionResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MultiRowCompletionResponse> $mapper =
      MultiRowCompletionResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    RowCompletionResponse,
    RowCompletionResponseCopyWith<
      $R,
      RowCompletionResponse,
      RowCompletionResponse
    >
  >
  get rows => ListCopyWith(
    $value.rows,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(rows: v),
  );
  @override
  $R call({String? object, List<RowCompletionResponse>? rows}) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (rows != null) #rows: rows,
    }),
  );
  @override
  MultiRowCompletionResponse $make(CopyWithData data) =>
      MultiRowCompletionResponse(
        object: data.get(#object, or: $value.object),
        rows: data.get(#rows, or: $value.rows),
      );

  @override
  MultiRowCompletionResponseCopyWith<$R2, MultiRowCompletionResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MultiRowCompletionResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LLMGenConfigMapper extends ClassMapperBase<LLMGenConfig> {
  LLMGenConfigMapper._();

  static LLMGenConfigMapper? _instance;
  static LLMGenConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LLMGenConfigMapper._());
      ChatRequestBaseMapper.ensureInitialized();
      DiscriminatedLLMGenConfigMapper.ensureInitialized();
      DiscriminatedChatGenConfigMapper.ensureInitialized();
      RAGParamsMapper.ensureInitialized();
      ToolMapper.ensureInitialized();
      ReasoningEffortMapper.ensureInitialized();
      ReasoningSummaryMapper.ensureInitialized();
      GenConfigTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LLMGenConfig';

  static String _$model(LLMGenConfig v) => v.model;
  static const Field<LLMGenConfig, String> _f$model = Field(
    'model',
    _$model,
    opt: true,
    def: '',
  );
  static RAGParams? _$ragParams(LLMGenConfig v) => v.ragParams;
  static const Field<LLMGenConfig, RAGParams> _f$ragParams = Field(
    'ragParams',
    _$ragParams,
    key: r'rag_params',
    opt: true,
  );
  static List<Tool>? _$tools(LLMGenConfig v) => v.tools;
  static const Field<LLMGenConfig, List<Tool>> _f$tools = Field(
    'tools',
    _$tools,
    opt: true,
  );
  static ToolChoiceOption? _$toolChoice(LLMGenConfig v) => v.toolChoice;
  static const Field<LLMGenConfig, ToolChoiceOption> _f$toolChoice = Field(
    'toolChoice',
    _$toolChoice,
    key: r'tool_choice',
    opt: true,
    hook: ToolChoiceHook(),
  );
  static double _$temperature(LLMGenConfig v) => v.temperature;
  static const Field<LLMGenConfig, double> _f$temperature = Field(
    'temperature',
    _$temperature,
    opt: true,
    def: 0.2,
  );
  static double _$topP(LLMGenConfig v) => v.topP;
  static const Field<LLMGenConfig, double> _f$topP = Field(
    'topP',
    _$topP,
    key: r'top_p',
    opt: true,
    def: 0.6,
  );
  static bool _$stream(LLMGenConfig v) => v.stream;
  static const Field<LLMGenConfig, bool> _f$stream = Field(
    'stream',
    _$stream,
    opt: true,
    def: true,
  );
  static int _$maxTokens(LLMGenConfig v) => v.maxTokens;
  static const Field<LLMGenConfig, int> _f$maxTokens = Field(
    'maxTokens',
    _$maxTokens,
    key: r'max_tokens',
    opt: true,
    def: 2048,
  );
  static List<String>? _$stop(LLMGenConfig v) => v.stop;
  static const Field<LLMGenConfig, List<String>> _f$stop = Field(
    'stop',
    _$stop,
    opt: true,
  );
  static double _$presencePenalty(LLMGenConfig v) => v.presencePenalty;
  static const Field<LLMGenConfig, double> _f$presencePenalty = Field(
    'presencePenalty',
    _$presencePenalty,
    key: r'presence_penalty',
    opt: true,
    def: 0.0,
  );
  static double _$frequencyPenalty(LLMGenConfig v) => v.frequencyPenalty;
  static const Field<LLMGenConfig, double> _f$frequencyPenalty = Field(
    'frequencyPenalty',
    _$frequencyPenalty,
    key: r'frequency_penalty',
    opt: true,
    def: 0.0,
  );
  static Map<String, dynamic> _$logitBias(LLMGenConfig v) => v.logitBias;
  static const Field<LLMGenConfig, Map<String, dynamic>> _f$logitBias = Field(
    'logitBias',
    _$logitBias,
    key: r'logit_bias',
    opt: true,
    def: const {},
  );
  static int _$thinkingBudget(LLMGenConfig v) => v.thinkingBudget;
  static const Field<LLMGenConfig, int> _f$thinkingBudget = Field(
    'thinkingBudget',
    _$thinkingBudget,
    key: r'thinking_budget',
    opt: true,
    def: 1,
  );
  static ReasoningEffort? _$reasoningEffort(LLMGenConfig v) =>
      v.reasoningEffort;
  static const Field<LLMGenConfig, ReasoningEffort> _f$reasoningEffort = Field(
    'reasoningEffort',
    _$reasoningEffort,
    key: r'reasoning_effort',
    opt: true,
  );
  static int? _$reasoningBudget(LLMGenConfig v) => v.reasoningBudget;
  static const Field<LLMGenConfig, int> _f$reasoningBudget = Field(
    'reasoningBudget',
    _$reasoningBudget,
    key: r'reasoning_budget',
    opt: true,
  );
  static ReasoningSummary _$reasoningSummary(LLMGenConfig v) =>
      v.reasoningSummary;
  static const Field<LLMGenConfig, ReasoningSummary> _f$reasoningSummary =
      Field(
        'reasoningSummary',
        _$reasoningSummary,
        key: r'reasoning_summary',
        opt: true,
        def: ReasoningSummary.auto,
      );
  static GenConfigTypes _$object(LLMGenConfig v) => v.object;
  static const Field<LLMGenConfig, GenConfigTypes> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: GenConfigTypes.llm,
  );
  static String _$systemPrompt(LLMGenConfig v) => v.systemPrompt;
  static const Field<LLMGenConfig, String> _f$systemPrompt = Field(
    'systemPrompt',
    _$systemPrompt,
    key: r'system_prompt',
    opt: true,
    def: '',
  );
  static String _$prompt(LLMGenConfig v) => v.prompt;
  static const Field<LLMGenConfig, String> _f$prompt = Field(
    'prompt',
    _$prompt,
    opt: true,
    def: '',
  );
  static bool _$multiTurn(LLMGenConfig v) => v.multiTurn;
  static const Field<LLMGenConfig, bool> _f$multiTurn = Field(
    'multiTurn',
    _$multiTurn,
    key: r'multi_turn',
    opt: true,
    def: false,
  );
  static Map<String, dynamic> _$hyperparams(LLMGenConfig v) => v.hyperparams;
  static const Field<LLMGenConfig, Map<String, dynamic>> _f$hyperparams = Field(
    'hyperparams',
    _$hyperparams,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<LLMGenConfig> fields = const {
    #model: _f$model,
    #ragParams: _f$ragParams,
    #tools: _f$tools,
    #toolChoice: _f$toolChoice,
    #temperature: _f$temperature,
    #topP: _f$topP,
    #stream: _f$stream,
    #maxTokens: _f$maxTokens,
    #stop: _f$stop,
    #presencePenalty: _f$presencePenalty,
    #frequencyPenalty: _f$frequencyPenalty,
    #logitBias: _f$logitBias,
    #thinkingBudget: _f$thinkingBudget,
    #reasoningEffort: _f$reasoningEffort,
    #reasoningBudget: _f$reasoningBudget,
    #reasoningSummary: _f$reasoningSummary,
    #object: _f$object,
    #systemPrompt: _f$systemPrompt,
    #prompt: _f$prompt,
    #multiTurn: _f$multiTurn,
    #hyperparams: _f$hyperparams,
  };

  static LLMGenConfig _instantiate(DecodingData data) {
    return LLMGenConfig(
      model: data.dec(_f$model),
      ragParams: data.dec(_f$ragParams),
      tools: data.dec(_f$tools),
      toolChoice: data.dec(_f$toolChoice),
      temperature: data.dec(_f$temperature),
      topP: data.dec(_f$topP),
      stream: data.dec(_f$stream),
      maxTokens: data.dec(_f$maxTokens),
      stop: data.dec(_f$stop),
      presencePenalty: data.dec(_f$presencePenalty),
      frequencyPenalty: data.dec(_f$frequencyPenalty),
      logitBias: data.dec(_f$logitBias),
      thinkingBudget: data.dec(_f$thinkingBudget),
      reasoningEffort: data.dec(_f$reasoningEffort),
      reasoningBudget: data.dec(_f$reasoningBudget),
      reasoningSummary: data.dec(_f$reasoningSummary),
      object: data.dec(_f$object),
      systemPrompt: data.dec(_f$systemPrompt),
      prompt: data.dec(_f$prompt),
      multiTurn: data.dec(_f$multiTurn),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LLMGenConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LLMGenConfig>(map);
  }

  static LLMGenConfig fromJson(String json) {
    return ensureInitialized().decodeJson<LLMGenConfig>(json);
  }
}

mixin LLMGenConfigMappable {
  String toJson() {
    return LLMGenConfigMapper.ensureInitialized().encodeJson<LLMGenConfig>(
      this as LLMGenConfig,
    );
  }

  Map<String, dynamic> toMap() {
    return LLMGenConfigMapper.ensureInitialized().encodeMap<LLMGenConfig>(
      this as LLMGenConfig,
    );
  }

  @override
  String toString() {
    return LLMGenConfigMapper.ensureInitialized().stringifyValue(
      this as LLMGenConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return LLMGenConfigMapper.ensureInitialized().equalsValue(
      this as LLMGenConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return LLMGenConfigMapper.ensureInitialized().hashValue(
      this as LLMGenConfig,
    );
  }
}

class EmbedGenConfigMapper extends ClassMapperBase<EmbedGenConfig> {
  EmbedGenConfigMapper._();

  static EmbedGenConfigMapper? _instance;
  static EmbedGenConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmbedGenConfigMapper._());
      DiscriminatedEmbedGenConfigMapper.ensureInitialized();
      GenConfigTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EmbedGenConfig';

  static GenConfigTypes _$object(EmbedGenConfig v) => v.object;
  static const Field<EmbedGenConfig, GenConfigTypes> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: GenConfigTypes.embed,
  );
  static String _$embeddingModel(EmbedGenConfig v) => v.embeddingModel;
  static const Field<EmbedGenConfig, String> _f$embeddingModel = Field(
    'embeddingModel',
    _$embeddingModel,
    key: r'embedding_model',
  );
  static String _$sourceColumn(EmbedGenConfig v) => v.sourceColumn;
  static const Field<EmbedGenConfig, String> _f$sourceColumn = Field(
    'sourceColumn',
    _$sourceColumn,
    key: r'source_column',
  );

  @override
  final MappableFields<EmbedGenConfig> fields = const {
    #object: _f$object,
    #embeddingModel: _f$embeddingModel,
    #sourceColumn: _f$sourceColumn,
  };

  static EmbedGenConfig _instantiate(DecodingData data) {
    return EmbedGenConfig(
      object: data.dec(_f$object),
      embeddingModel: data.dec(_f$embeddingModel),
      sourceColumn: data.dec(_f$sourceColumn),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EmbedGenConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmbedGenConfig>(map);
  }

  static EmbedGenConfig fromJson(String json) {
    return ensureInitialized().decodeJson<EmbedGenConfig>(json);
  }
}

mixin EmbedGenConfigMappable {
  String toJson() {
    return EmbedGenConfigMapper.ensureInitialized().encodeJson<EmbedGenConfig>(
      this as EmbedGenConfig,
    );
  }

  Map<String, dynamic> toMap() {
    return EmbedGenConfigMapper.ensureInitialized().encodeMap<EmbedGenConfig>(
      this as EmbedGenConfig,
    );
  }

  EmbedGenConfigCopyWith<EmbedGenConfig, EmbedGenConfig, EmbedGenConfig>
  get copyWith => _EmbedGenConfigCopyWithImpl<EmbedGenConfig, EmbedGenConfig>(
    this as EmbedGenConfig,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return EmbedGenConfigMapper.ensureInitialized().stringifyValue(
      this as EmbedGenConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return EmbedGenConfigMapper.ensureInitialized().equalsValue(
      this as EmbedGenConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return EmbedGenConfigMapper.ensureInitialized().hashValue(
      this as EmbedGenConfig,
    );
  }
}

extension EmbedGenConfigValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmbedGenConfig, $Out> {
  EmbedGenConfigCopyWith<$R, EmbedGenConfig, $Out> get $asEmbedGenConfig =>
      $base.as((v, t, t2) => _EmbedGenConfigCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EmbedGenConfigCopyWith<$R, $In extends EmbedGenConfig, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    GenConfigTypes? object,
    String? embeddingModel,
    String? sourceColumn,
  });
  EmbedGenConfigCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EmbedGenConfigCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmbedGenConfig, $Out>
    implements EmbedGenConfigCopyWith<$R, EmbedGenConfig, $Out> {
  _EmbedGenConfigCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmbedGenConfig> $mapper =
      EmbedGenConfigMapper.ensureInitialized();
  @override
  $R call({
    GenConfigTypes? object,
    String? embeddingModel,
    String? sourceColumn,
  }) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (embeddingModel != null) #embeddingModel: embeddingModel,
      if (sourceColumn != null) #sourceColumn: sourceColumn,
    }),
  );
  @override
  EmbedGenConfig $make(CopyWithData data) => EmbedGenConfig(
    object: data.get(#object, or: $value.object),
    embeddingModel: data.get(#embeddingModel, or: $value.embeddingModel),
    sourceColumn: data.get(#sourceColumn, or: $value.sourceColumn),
  );

  @override
  EmbedGenConfigCopyWith<$R2, EmbedGenConfig, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EmbedGenConfigCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CodeGenConfigMapper extends ClassMapperBase<CodeGenConfig> {
  CodeGenConfigMapper._();

  static CodeGenConfigMapper? _instance;
  static CodeGenConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CodeGenConfigMapper._());
      DiscriminatedCodeGenConfigMapper.ensureInitialized();
      GenConfigTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CodeGenConfig';

  static GenConfigTypes _$object(CodeGenConfig v) => v.object;
  static const Field<CodeGenConfig, GenConfigTypes> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: GenConfigTypes.code,
  );
  static String _$sourceColumn(CodeGenConfig v) => v.sourceColumn;
  static const Field<CodeGenConfig, String> _f$sourceColumn = Field(
    'sourceColumn',
    _$sourceColumn,
    key: r'source_column',
  );

  @override
  final MappableFields<CodeGenConfig> fields = const {
    #object: _f$object,
    #sourceColumn: _f$sourceColumn,
  };

  static CodeGenConfig _instantiate(DecodingData data) {
    return CodeGenConfig(
      object: data.dec(_f$object),
      sourceColumn: data.dec(_f$sourceColumn),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CodeGenConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CodeGenConfig>(map);
  }

  static CodeGenConfig fromJson(String json) {
    return ensureInitialized().decodeJson<CodeGenConfig>(json);
  }
}

mixin CodeGenConfigMappable {
  String toJson() {
    return CodeGenConfigMapper.ensureInitialized().encodeJson<CodeGenConfig>(
      this as CodeGenConfig,
    );
  }

  Map<String, dynamic> toMap() {
    return CodeGenConfigMapper.ensureInitialized().encodeMap<CodeGenConfig>(
      this as CodeGenConfig,
    );
  }

  CodeGenConfigCopyWith<CodeGenConfig, CodeGenConfig, CodeGenConfig>
  get copyWith => _CodeGenConfigCopyWithImpl<CodeGenConfig, CodeGenConfig>(
    this as CodeGenConfig,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return CodeGenConfigMapper.ensureInitialized().stringifyValue(
      this as CodeGenConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return CodeGenConfigMapper.ensureInitialized().equalsValue(
      this as CodeGenConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return CodeGenConfigMapper.ensureInitialized().hashValue(
      this as CodeGenConfig,
    );
  }
}

extension CodeGenConfigValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CodeGenConfig, $Out> {
  CodeGenConfigCopyWith<$R, CodeGenConfig, $Out> get $asCodeGenConfig =>
      $base.as((v, t, t2) => _CodeGenConfigCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CodeGenConfigCopyWith<$R, $In extends CodeGenConfig, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({GenConfigTypes? object, String? sourceColumn});
  CodeGenConfigCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CodeGenConfigCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CodeGenConfig, $Out>
    implements CodeGenConfigCopyWith<$R, CodeGenConfig, $Out> {
  _CodeGenConfigCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CodeGenConfig> $mapper =
      CodeGenConfigMapper.ensureInitialized();
  @override
  $R call({GenConfigTypes? object, String? sourceColumn}) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (sourceColumn != null) #sourceColumn: sourceColumn,
    }),
  );
  @override
  CodeGenConfig $make(CopyWithData data) => CodeGenConfig(
    object: data.get(#object, or: $value.object),
    sourceColumn: data.get(#sourceColumn, or: $value.sourceColumn),
  );

  @override
  CodeGenConfigCopyWith<$R2, CodeGenConfig, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CodeGenConfigCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PythonGenConfigMapper extends ClassMapperBase<PythonGenConfig> {
  PythonGenConfigMapper._();

  static PythonGenConfigMapper? _instance;
  static PythonGenConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PythonGenConfigMapper._());
      DiscriminatedPythonGenConfigMapper.ensureInitialized();
      GenConfigTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PythonGenConfig';

  static GenConfigTypes _$object(PythonGenConfig v) => v.object;
  static const Field<PythonGenConfig, GenConfigTypes> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: GenConfigTypes.python,
  );
  static String _$pythonCode(PythonGenConfig v) => v.pythonCode;
  static const Field<PythonGenConfig, String> _f$pythonCode = Field(
    'pythonCode',
    _$pythonCode,
    key: r'python_code',
  );

  @override
  final MappableFields<PythonGenConfig> fields = const {
    #object: _f$object,
    #pythonCode: _f$pythonCode,
  };

  static PythonGenConfig _instantiate(DecodingData data) {
    return PythonGenConfig(
      object: data.dec(_f$object),
      pythonCode: data.dec(_f$pythonCode),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PythonGenConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PythonGenConfig>(map);
  }

  static PythonGenConfig fromJson(String json) {
    return ensureInitialized().decodeJson<PythonGenConfig>(json);
  }
}

mixin PythonGenConfigMappable {
  String toJson() {
    return PythonGenConfigMapper.ensureInitialized()
        .encodeJson<PythonGenConfig>(this as PythonGenConfig);
  }

  Map<String, dynamic> toMap() {
    return PythonGenConfigMapper.ensureInitialized().encodeMap<PythonGenConfig>(
      this as PythonGenConfig,
    );
  }

  PythonGenConfigCopyWith<PythonGenConfig, PythonGenConfig, PythonGenConfig>
  get copyWith =>
      _PythonGenConfigCopyWithImpl<PythonGenConfig, PythonGenConfig>(
        this as PythonGenConfig,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PythonGenConfigMapper.ensureInitialized().stringifyValue(
      this as PythonGenConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return PythonGenConfigMapper.ensureInitialized().equalsValue(
      this as PythonGenConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return PythonGenConfigMapper.ensureInitialized().hashValue(
      this as PythonGenConfig,
    );
  }
}

extension PythonGenConfigValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PythonGenConfig, $Out> {
  PythonGenConfigCopyWith<$R, PythonGenConfig, $Out> get $asPythonGenConfig =>
      $base.as((v, t, t2) => _PythonGenConfigCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PythonGenConfigCopyWith<$R, $In extends PythonGenConfig, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({GenConfigTypes? object, String? pythonCode});
  PythonGenConfigCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PythonGenConfigCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PythonGenConfig, $Out>
    implements PythonGenConfigCopyWith<$R, PythonGenConfig, $Out> {
  _PythonGenConfigCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PythonGenConfig> $mapper =
      PythonGenConfigMapper.ensureInitialized();
  @override
  $R call({GenConfigTypes? object, String? pythonCode}) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (pythonCode != null) #pythonCode: pythonCode,
    }),
  );
  @override
  PythonGenConfig $make(CopyWithData data) => PythonGenConfig(
    object: data.get(#object, or: $value.object),
    pythonCode: data.get(#pythonCode, or: $value.pythonCode),
  );

  @override
  PythonGenConfigCopyWith<$R2, PythonGenConfig, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PythonGenConfigCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DiscriminatedGenConfigMapper
    extends ClassMapperBase<DiscriminatedGenConfig> {
  DiscriminatedGenConfigMapper._();

  static DiscriminatedGenConfigMapper? _instance;
  static DiscriminatedGenConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiscriminatedGenConfigMapper._());
      DiscriminatedLLMGenConfigMapper.ensureInitialized();
      DiscriminatedChatGenConfigMapper.ensureInitialized();
      DiscriminatedPythonGenConfigMapper.ensureInitialized();
      DiscriminatedEmbedGenConfigMapper.ensureInitialized();
      DiscriminatedCodeGenConfigMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiscriminatedGenConfig';

  @override
  final MappableFields<DiscriminatedGenConfig> fields = const {};

  static DiscriminatedGenConfig _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'DiscriminatedGenConfig',
      'object',
      '${data.value['object']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DiscriminatedGenConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiscriminatedGenConfig>(map);
  }

  static DiscriminatedGenConfig fromJson(String json) {
    return ensureInitialized().decodeJson<DiscriminatedGenConfig>(json);
  }
}

mixin DiscriminatedGenConfigMappable {
  String toJson();
  Map<String, dynamic> toMap();
}

class DiscriminatedLLMGenConfigMapper
    extends SubClassMapperBase<DiscriminatedLLMGenConfig> {
  DiscriminatedLLMGenConfigMapper._();

  static DiscriminatedLLMGenConfigMapper? _instance;
  static DiscriminatedLLMGenConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = DiscriminatedLLMGenConfigMapper._(),
      );
      LLMGenConfigMapper.ensureInitialized().addSubMapper(_instance!);
      RAGParamsMapper.ensureInitialized();
      ToolMapper.ensureInitialized();
      ReasoningEffortMapper.ensureInitialized();
      ReasoningSummaryMapper.ensureInitialized();
      GenConfigTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiscriminatedLLMGenConfig';

  static String _$model(DiscriminatedLLMGenConfig v) => v.model;
  static const Field<DiscriminatedLLMGenConfig, String> _f$model = Field(
    'model',
    _$model,
    opt: true,
    def: '',
  );
  static RAGParams? _$ragParams(DiscriminatedLLMGenConfig v) => v.ragParams;
  static const Field<DiscriminatedLLMGenConfig, RAGParams> _f$ragParams = Field(
    'ragParams',
    _$ragParams,
    key: r'rag_params',
    opt: true,
  );
  static List<Tool>? _$tools(DiscriminatedLLMGenConfig v) => v.tools;
  static const Field<DiscriminatedLLMGenConfig, List<Tool>> _f$tools = Field(
    'tools',
    _$tools,
    opt: true,
  );
  static ToolChoiceOption? _$toolChoice(DiscriminatedLLMGenConfig v) =>
      v.toolChoice;
  static const Field<DiscriminatedLLMGenConfig, ToolChoiceOption>
  _f$toolChoice = Field(
    'toolChoice',
    _$toolChoice,
    key: r'tool_choice',
    opt: true,
    hook: ToolChoiceHook(),
  );
  static double _$temperature(DiscriminatedLLMGenConfig v) => v.temperature;
  static const Field<DiscriminatedLLMGenConfig, double> _f$temperature = Field(
    'temperature',
    _$temperature,
    opt: true,
    def: 0.2,
  );
  static double _$topP(DiscriminatedLLMGenConfig v) => v.topP;
  static const Field<DiscriminatedLLMGenConfig, double> _f$topP = Field(
    'topP',
    _$topP,
    key: r'top_p',
    opt: true,
    def: 0.6,
  );
  static bool _$stream(DiscriminatedLLMGenConfig v) => v.stream;
  static const Field<DiscriminatedLLMGenConfig, bool> _f$stream = Field(
    'stream',
    _$stream,
    opt: true,
    def: true,
  );
  static int _$maxTokens(DiscriminatedLLMGenConfig v) => v.maxTokens;
  static const Field<DiscriminatedLLMGenConfig, int> _f$maxTokens = Field(
    'maxTokens',
    _$maxTokens,
    key: r'max_tokens',
    opt: true,
    def: 2048,
  );
  static List<String>? _$stop(DiscriminatedLLMGenConfig v) => v.stop;
  static const Field<DiscriminatedLLMGenConfig, List<String>> _f$stop = Field(
    'stop',
    _$stop,
    opt: true,
  );
  static double _$presencePenalty(DiscriminatedLLMGenConfig v) =>
      v.presencePenalty;
  static const Field<DiscriminatedLLMGenConfig, double> _f$presencePenalty =
      Field(
        'presencePenalty',
        _$presencePenalty,
        key: r'presence_penalty',
        opt: true,
        def: 0.0,
      );
  static double _$frequencyPenalty(DiscriminatedLLMGenConfig v) =>
      v.frequencyPenalty;
  static const Field<DiscriminatedLLMGenConfig, double> _f$frequencyPenalty =
      Field(
        'frequencyPenalty',
        _$frequencyPenalty,
        key: r'frequency_penalty',
        opt: true,
        def: 0.0,
      );
  static Map<String, dynamic> _$logitBias(DiscriminatedLLMGenConfig v) =>
      v.logitBias;
  static const Field<DiscriminatedLLMGenConfig, Map<String, dynamic>>
  _f$logitBias = Field(
    'logitBias',
    _$logitBias,
    key: r'logit_bias',
    opt: true,
    def: const {},
  );
  static int _$thinkingBudget(DiscriminatedLLMGenConfig v) => v.thinkingBudget;
  static const Field<DiscriminatedLLMGenConfig, int> _f$thinkingBudget = Field(
    'thinkingBudget',
    _$thinkingBudget,
    key: r'thinking_budget',
    opt: true,
    def: 1,
  );
  static ReasoningEffort? _$reasoningEffort(DiscriminatedLLMGenConfig v) =>
      v.reasoningEffort;
  static const Field<DiscriminatedLLMGenConfig, ReasoningEffort>
  _f$reasoningEffort = Field(
    'reasoningEffort',
    _$reasoningEffort,
    key: r'reasoning_effort',
    opt: true,
  );
  static int? _$reasoningBudget(DiscriminatedLLMGenConfig v) =>
      v.reasoningBudget;
  static const Field<DiscriminatedLLMGenConfig, int> _f$reasoningBudget = Field(
    'reasoningBudget',
    _$reasoningBudget,
    key: r'reasoning_budget',
    opt: true,
  );
  static ReasoningSummary _$reasoningSummary(DiscriminatedLLMGenConfig v) =>
      v.reasoningSummary;
  static const Field<DiscriminatedLLMGenConfig, ReasoningSummary>
  _f$reasoningSummary = Field(
    'reasoningSummary',
    _$reasoningSummary,
    key: r'reasoning_summary',
    opt: true,
    def: ReasoningSummary.auto,
  );
  static GenConfigTypes _$object(DiscriminatedLLMGenConfig v) => v.object;
  static const Field<DiscriminatedLLMGenConfig, GenConfigTypes> _f$object =
      Field('object', _$object, opt: true, def: GenConfigTypes.llm);
  static String _$systemPrompt(DiscriminatedLLMGenConfig v) => v.systemPrompt;
  static const Field<DiscriminatedLLMGenConfig, String> _f$systemPrompt = Field(
    'systemPrompt',
    _$systemPrompt,
    key: r'system_prompt',
    opt: true,
    def: '',
  );
  static String _$prompt(DiscriminatedLLMGenConfig v) => v.prompt;
  static const Field<DiscriminatedLLMGenConfig, String> _f$prompt = Field(
    'prompt',
    _$prompt,
    opt: true,
    def: '',
  );
  static bool _$multiTurn(DiscriminatedLLMGenConfig v) => v.multiTurn;
  static const Field<DiscriminatedLLMGenConfig, bool> _f$multiTurn = Field(
    'multiTurn',
    _$multiTurn,
    key: r'multi_turn',
    opt: true,
    def: false,
  );
  static Map<String, dynamic> _$hyperparams(DiscriminatedLLMGenConfig v) =>
      v.hyperparams;
  static const Field<DiscriminatedLLMGenConfig, Map<String, dynamic>>
  _f$hyperparams = Field('hyperparams', _$hyperparams, mode: FieldMode.member);

  @override
  final MappableFields<DiscriminatedLLMGenConfig> fields = const {
    #model: _f$model,
    #ragParams: _f$ragParams,
    #tools: _f$tools,
    #toolChoice: _f$toolChoice,
    #temperature: _f$temperature,
    #topP: _f$topP,
    #stream: _f$stream,
    #maxTokens: _f$maxTokens,
    #stop: _f$stop,
    #presencePenalty: _f$presencePenalty,
    #frequencyPenalty: _f$frequencyPenalty,
    #logitBias: _f$logitBias,
    #thinkingBudget: _f$thinkingBudget,
    #reasoningEffort: _f$reasoningEffort,
    #reasoningBudget: _f$reasoningBudget,
    #reasoningSummary: _f$reasoningSummary,
    #object: _f$object,
    #systemPrompt: _f$systemPrompt,
    #prompt: _f$prompt,
    #multiTurn: _f$multiTurn,
    #hyperparams: _f$hyperparams,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = GenConfigTypes.llm;
  @override
  late final ClassMapperBase superMapper =
      LLMGenConfigMapper.ensureInitialized();

  static DiscriminatedLLMGenConfig _instantiate(DecodingData data) {
    return DiscriminatedLLMGenConfig(
      model: data.dec(_f$model),
      ragParams: data.dec(_f$ragParams),
      tools: data.dec(_f$tools),
      toolChoice: data.dec(_f$toolChoice),
      temperature: data.dec(_f$temperature),
      topP: data.dec(_f$topP),
      stream: data.dec(_f$stream),
      maxTokens: data.dec(_f$maxTokens),
      stop: data.dec(_f$stop),
      presencePenalty: data.dec(_f$presencePenalty),
      frequencyPenalty: data.dec(_f$frequencyPenalty),
      logitBias: data.dec(_f$logitBias),
      thinkingBudget: data.dec(_f$thinkingBudget),
      reasoningEffort: data.dec(_f$reasoningEffort),
      reasoningBudget: data.dec(_f$reasoningBudget),
      reasoningSummary: data.dec(_f$reasoningSummary),
      object: data.dec(_f$object),
      systemPrompt: data.dec(_f$systemPrompt),
      prompt: data.dec(_f$prompt),
      multiTurn: data.dec(_f$multiTurn),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DiscriminatedLLMGenConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiscriminatedLLMGenConfig>(map);
  }

  static DiscriminatedLLMGenConfig fromJson(String json) {
    return ensureInitialized().decodeJson<DiscriminatedLLMGenConfig>(json);
  }
}

mixin DiscriminatedLLMGenConfigMappable {
  String toJson() {
    return DiscriminatedLLMGenConfigMapper.ensureInitialized()
        .encodeJson<DiscriminatedLLMGenConfig>(
          this as DiscriminatedLLMGenConfig,
        );
  }

  Map<String, dynamic> toMap() {
    return DiscriminatedLLMGenConfigMapper.ensureInitialized()
        .encodeMap<DiscriminatedLLMGenConfig>(
          this as DiscriminatedLLMGenConfig,
        );
  }

  @override
  String toString() {
    return DiscriminatedLLMGenConfigMapper.ensureInitialized().stringifyValue(
      this as DiscriminatedLLMGenConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return DiscriminatedLLMGenConfigMapper.ensureInitialized().equalsValue(
      this as DiscriminatedLLMGenConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return DiscriminatedLLMGenConfigMapper.ensureInitialized().hashValue(
      this as DiscriminatedLLMGenConfig,
    );
  }
}

class DiscriminatedChatGenConfigMapper
    extends SubClassMapperBase<DiscriminatedChatGenConfig> {
  DiscriminatedChatGenConfigMapper._();

  static DiscriminatedChatGenConfigMapper? _instance;
  static DiscriminatedChatGenConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = DiscriminatedChatGenConfigMapper._(),
      );
      LLMGenConfigMapper.ensureInitialized().addSubMapper(_instance!);
      RAGParamsMapper.ensureInitialized();
      ToolMapper.ensureInitialized();
      ReasoningEffortMapper.ensureInitialized();
      ReasoningSummaryMapper.ensureInitialized();
      GenConfigTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiscriminatedChatGenConfig';

  static String _$model(DiscriminatedChatGenConfig v) => v.model;
  static const Field<DiscriminatedChatGenConfig, String> _f$model = Field(
    'model',
    _$model,
    opt: true,
    def: '',
  );
  static RAGParams? _$ragParams(DiscriminatedChatGenConfig v) => v.ragParams;
  static const Field<DiscriminatedChatGenConfig, RAGParams> _f$ragParams =
      Field('ragParams', _$ragParams, key: r'rag_params', opt: true);
  static List<Tool>? _$tools(DiscriminatedChatGenConfig v) => v.tools;
  static const Field<DiscriminatedChatGenConfig, List<Tool>> _f$tools = Field(
    'tools',
    _$tools,
    opt: true,
  );
  static ToolChoiceOption? _$toolChoice(DiscriminatedChatGenConfig v) =>
      v.toolChoice;
  static const Field<DiscriminatedChatGenConfig, ToolChoiceOption>
  _f$toolChoice = Field(
    'toolChoice',
    _$toolChoice,
    key: r'tool_choice',
    opt: true,
    hook: ToolChoiceHook(),
  );
  static double _$temperature(DiscriminatedChatGenConfig v) => v.temperature;
  static const Field<DiscriminatedChatGenConfig, double> _f$temperature = Field(
    'temperature',
    _$temperature,
    opt: true,
    def: 0.2,
  );
  static double _$topP(DiscriminatedChatGenConfig v) => v.topP;
  static const Field<DiscriminatedChatGenConfig, double> _f$topP = Field(
    'topP',
    _$topP,
    key: r'top_p',
    opt: true,
    def: 0.6,
  );
  static bool _$stream(DiscriminatedChatGenConfig v) => v.stream;
  static const Field<DiscriminatedChatGenConfig, bool> _f$stream = Field(
    'stream',
    _$stream,
    opt: true,
    def: true,
  );
  static int _$maxTokens(DiscriminatedChatGenConfig v) => v.maxTokens;
  static const Field<DiscriminatedChatGenConfig, int> _f$maxTokens = Field(
    'maxTokens',
    _$maxTokens,
    key: r'max_tokens',
    opt: true,
    def: 2048,
  );
  static List<String>? _$stop(DiscriminatedChatGenConfig v) => v.stop;
  static const Field<DiscriminatedChatGenConfig, List<String>> _f$stop = Field(
    'stop',
    _$stop,
    opt: true,
  );
  static double _$presencePenalty(DiscriminatedChatGenConfig v) =>
      v.presencePenalty;
  static const Field<DiscriminatedChatGenConfig, double> _f$presencePenalty =
      Field(
        'presencePenalty',
        _$presencePenalty,
        key: r'presence_penalty',
        opt: true,
        def: 0.0,
      );
  static double _$frequencyPenalty(DiscriminatedChatGenConfig v) =>
      v.frequencyPenalty;
  static const Field<DiscriminatedChatGenConfig, double> _f$frequencyPenalty =
      Field(
        'frequencyPenalty',
        _$frequencyPenalty,
        key: r'frequency_penalty',
        opt: true,
        def: 0.0,
      );
  static Map<String, dynamic> _$logitBias(DiscriminatedChatGenConfig v) =>
      v.logitBias;
  static const Field<DiscriminatedChatGenConfig, Map<String, dynamic>>
  _f$logitBias = Field(
    'logitBias',
    _$logitBias,
    key: r'logit_bias',
    opt: true,
    def: const {},
  );
  static int _$thinkingBudget(DiscriminatedChatGenConfig v) => v.thinkingBudget;
  static const Field<DiscriminatedChatGenConfig, int> _f$thinkingBudget = Field(
    'thinkingBudget',
    _$thinkingBudget,
    key: r'thinking_budget',
    opt: true,
    def: 1,
  );
  static ReasoningEffort? _$reasoningEffort(DiscriminatedChatGenConfig v) =>
      v.reasoningEffort;
  static const Field<DiscriminatedChatGenConfig, ReasoningEffort>
  _f$reasoningEffort = Field(
    'reasoningEffort',
    _$reasoningEffort,
    key: r'reasoning_effort',
    opt: true,
  );
  static int? _$reasoningBudget(DiscriminatedChatGenConfig v) =>
      v.reasoningBudget;
  static const Field<DiscriminatedChatGenConfig, int> _f$reasoningBudget =
      Field(
        'reasoningBudget',
        _$reasoningBudget,
        key: r'reasoning_budget',
        opt: true,
      );
  static ReasoningSummary _$reasoningSummary(DiscriminatedChatGenConfig v) =>
      v.reasoningSummary;
  static const Field<DiscriminatedChatGenConfig, ReasoningSummary>
  _f$reasoningSummary = Field(
    'reasoningSummary',
    _$reasoningSummary,
    key: r'reasoning_summary',
    opt: true,
    def: ReasoningSummary.auto,
  );
  static GenConfigTypes _$object(DiscriminatedChatGenConfig v) => v.object;
  static const Field<DiscriminatedChatGenConfig, GenConfigTypes> _f$object =
      Field('object', _$object, opt: true, def: GenConfigTypes.llm);
  static String _$systemPrompt(DiscriminatedChatGenConfig v) => v.systemPrompt;
  static const Field<DiscriminatedChatGenConfig, String> _f$systemPrompt =
      Field(
        'systemPrompt',
        _$systemPrompt,
        key: r'system_prompt',
        opt: true,
        def: '',
      );
  static String _$prompt(DiscriminatedChatGenConfig v) => v.prompt;
  static const Field<DiscriminatedChatGenConfig, String> _f$prompt = Field(
    'prompt',
    _$prompt,
    opt: true,
    def: '',
  );
  static bool _$multiTurn(DiscriminatedChatGenConfig v) => v.multiTurn;
  static const Field<DiscriminatedChatGenConfig, bool> _f$multiTurn = Field(
    'multiTurn',
    _$multiTurn,
    key: r'multi_turn',
    opt: true,
    def: false,
  );
  static Map<String, dynamic> _$hyperparams(DiscriminatedChatGenConfig v) =>
      v.hyperparams;
  static const Field<DiscriminatedChatGenConfig, Map<String, dynamic>>
  _f$hyperparams = Field('hyperparams', _$hyperparams, mode: FieldMode.member);

  @override
  final MappableFields<DiscriminatedChatGenConfig> fields = const {
    #model: _f$model,
    #ragParams: _f$ragParams,
    #tools: _f$tools,
    #toolChoice: _f$toolChoice,
    #temperature: _f$temperature,
    #topP: _f$topP,
    #stream: _f$stream,
    #maxTokens: _f$maxTokens,
    #stop: _f$stop,
    #presencePenalty: _f$presencePenalty,
    #frequencyPenalty: _f$frequencyPenalty,
    #logitBias: _f$logitBias,
    #thinkingBudget: _f$thinkingBudget,
    #reasoningEffort: _f$reasoningEffort,
    #reasoningBudget: _f$reasoningBudget,
    #reasoningSummary: _f$reasoningSummary,
    #object: _f$object,
    #systemPrompt: _f$systemPrompt,
    #prompt: _f$prompt,
    #multiTurn: _f$multiTurn,
    #hyperparams: _f$hyperparams,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = GenConfigTypes.chat;
  @override
  late final ClassMapperBase superMapper =
      LLMGenConfigMapper.ensureInitialized();

  static DiscriminatedChatGenConfig _instantiate(DecodingData data) {
    return DiscriminatedChatGenConfig(
      model: data.dec(_f$model),
      ragParams: data.dec(_f$ragParams),
      tools: data.dec(_f$tools),
      toolChoice: data.dec(_f$toolChoice),
      temperature: data.dec(_f$temperature),
      topP: data.dec(_f$topP),
      stream: data.dec(_f$stream),
      maxTokens: data.dec(_f$maxTokens),
      stop: data.dec(_f$stop),
      presencePenalty: data.dec(_f$presencePenalty),
      frequencyPenalty: data.dec(_f$frequencyPenalty),
      logitBias: data.dec(_f$logitBias),
      thinkingBudget: data.dec(_f$thinkingBudget),
      reasoningEffort: data.dec(_f$reasoningEffort),
      reasoningBudget: data.dec(_f$reasoningBudget),
      reasoningSummary: data.dec(_f$reasoningSummary),
      object: data.dec(_f$object),
      systemPrompt: data.dec(_f$systemPrompt),
      prompt: data.dec(_f$prompt),
      multiTurn: data.dec(_f$multiTurn),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DiscriminatedChatGenConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiscriminatedChatGenConfig>(map);
  }

  static DiscriminatedChatGenConfig fromJson(String json) {
    return ensureInitialized().decodeJson<DiscriminatedChatGenConfig>(json);
  }
}

mixin DiscriminatedChatGenConfigMappable {
  String toJson() {
    return DiscriminatedChatGenConfigMapper.ensureInitialized()
        .encodeJson<DiscriminatedChatGenConfig>(
          this as DiscriminatedChatGenConfig,
        );
  }

  Map<String, dynamic> toMap() {
    return DiscriminatedChatGenConfigMapper.ensureInitialized()
        .encodeMap<DiscriminatedChatGenConfig>(
          this as DiscriminatedChatGenConfig,
        );
  }

  @override
  String toString() {
    return DiscriminatedChatGenConfigMapper.ensureInitialized().stringifyValue(
      this as DiscriminatedChatGenConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return DiscriminatedChatGenConfigMapper.ensureInitialized().equalsValue(
      this as DiscriminatedChatGenConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return DiscriminatedChatGenConfigMapper.ensureInitialized().hashValue(
      this as DiscriminatedChatGenConfig,
    );
  }
}

class DiscriminatedPythonGenConfigMapper
    extends SubClassMapperBase<DiscriminatedPythonGenConfig> {
  DiscriminatedPythonGenConfigMapper._();

  static DiscriminatedPythonGenConfigMapper? _instance;
  static DiscriminatedPythonGenConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = DiscriminatedPythonGenConfigMapper._(),
      );
      PythonGenConfigMapper.ensureInitialized().addSubMapper(_instance!);
      GenConfigTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiscriminatedPythonGenConfig';

  static GenConfigTypes _$object(DiscriminatedPythonGenConfig v) => v.object;
  static const Field<DiscriminatedPythonGenConfig, GenConfigTypes> _f$object =
      Field('object', _$object, opt: true, def: GenConfigTypes.python);
  static String _$pythonCode(DiscriminatedPythonGenConfig v) => v.pythonCode;
  static const Field<DiscriminatedPythonGenConfig, String> _f$pythonCode =
      Field('pythonCode', _$pythonCode, key: r'python_code');

  @override
  final MappableFields<DiscriminatedPythonGenConfig> fields = const {
    #object: _f$object,
    #pythonCode: _f$pythonCode,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = GenConfigTypes.python;
  @override
  late final ClassMapperBase superMapper =
      PythonGenConfigMapper.ensureInitialized();

  static DiscriminatedPythonGenConfig _instantiate(DecodingData data) {
    return DiscriminatedPythonGenConfig(
      object: data.dec(_f$object),
      pythonCode: data.dec(_f$pythonCode),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DiscriminatedPythonGenConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiscriminatedPythonGenConfig>(map);
  }

  static DiscriminatedPythonGenConfig fromJson(String json) {
    return ensureInitialized().decodeJson<DiscriminatedPythonGenConfig>(json);
  }
}

mixin DiscriminatedPythonGenConfigMappable {
  String toJson() {
    return DiscriminatedPythonGenConfigMapper.ensureInitialized()
        .encodeJson<DiscriminatedPythonGenConfig>(
          this as DiscriminatedPythonGenConfig,
        );
  }

  Map<String, dynamic> toMap() {
    return DiscriminatedPythonGenConfigMapper.ensureInitialized()
        .encodeMap<DiscriminatedPythonGenConfig>(
          this as DiscriminatedPythonGenConfig,
        );
  }

  DiscriminatedPythonGenConfigCopyWith<
    DiscriminatedPythonGenConfig,
    DiscriminatedPythonGenConfig,
    DiscriminatedPythonGenConfig
  >
  get copyWith =>
      _DiscriminatedPythonGenConfigCopyWithImpl<
        DiscriminatedPythonGenConfig,
        DiscriminatedPythonGenConfig
      >(this as DiscriminatedPythonGenConfig, $identity, $identity);
  @override
  String toString() {
    return DiscriminatedPythonGenConfigMapper.ensureInitialized()
        .stringifyValue(this as DiscriminatedPythonGenConfig);
  }

  @override
  bool operator ==(Object other) {
    return DiscriminatedPythonGenConfigMapper.ensureInitialized().equalsValue(
      this as DiscriminatedPythonGenConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return DiscriminatedPythonGenConfigMapper.ensureInitialized().hashValue(
      this as DiscriminatedPythonGenConfig,
    );
  }
}

extension DiscriminatedPythonGenConfigValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiscriminatedPythonGenConfig, $Out> {
  DiscriminatedPythonGenConfigCopyWith<$R, DiscriminatedPythonGenConfig, $Out>
  get $asDiscriminatedPythonGenConfig => $base.as(
    (v, t, t2) => _DiscriminatedPythonGenConfigCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class DiscriminatedPythonGenConfigCopyWith<
  $R,
  $In extends DiscriminatedPythonGenConfig,
  $Out
>
    implements PythonGenConfigCopyWith<$R, $In, $Out> {
  @override
  $R call({GenConfigTypes? object, String? pythonCode});
  DiscriminatedPythonGenConfigCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DiscriminatedPythonGenConfigCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiscriminatedPythonGenConfig, $Out>
    implements
        DiscriminatedPythonGenConfigCopyWith<
          $R,
          DiscriminatedPythonGenConfig,
          $Out
        > {
  _DiscriminatedPythonGenConfigCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<DiscriminatedPythonGenConfig> $mapper =
      DiscriminatedPythonGenConfigMapper.ensureInitialized();
  @override
  $R call({GenConfigTypes? object, String? pythonCode}) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (pythonCode != null) #pythonCode: pythonCode,
    }),
  );
  @override
  DiscriminatedPythonGenConfig $make(CopyWithData data) =>
      DiscriminatedPythonGenConfig(
        object: data.get(#object, or: $value.object),
        pythonCode: data.get(#pythonCode, or: $value.pythonCode),
      );

  @override
  DiscriminatedPythonGenConfigCopyWith<$R2, DiscriminatedPythonGenConfig, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DiscriminatedPythonGenConfigCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DiscriminatedEmbedGenConfigMapper
    extends SubClassMapperBase<DiscriminatedEmbedGenConfig> {
  DiscriminatedEmbedGenConfigMapper._();

  static DiscriminatedEmbedGenConfigMapper? _instance;
  static DiscriminatedEmbedGenConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = DiscriminatedEmbedGenConfigMapper._(),
      );
      EmbedGenConfigMapper.ensureInitialized().addSubMapper(_instance!);
      GenConfigTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiscriminatedEmbedGenConfig';

  static GenConfigTypes _$object(DiscriminatedEmbedGenConfig v) => v.object;
  static const Field<DiscriminatedEmbedGenConfig, GenConfigTypes> _f$object =
      Field('object', _$object, opt: true, def: GenConfigTypes.embed);
  static String _$embeddingModel(DiscriminatedEmbedGenConfig v) =>
      v.embeddingModel;
  static const Field<DiscriminatedEmbedGenConfig, String> _f$embeddingModel =
      Field('embeddingModel', _$embeddingModel, key: r'embedding_model');
  static String _$sourceColumn(DiscriminatedEmbedGenConfig v) => v.sourceColumn;
  static const Field<DiscriminatedEmbedGenConfig, String> _f$sourceColumn =
      Field('sourceColumn', _$sourceColumn, key: r'source_column');

  @override
  final MappableFields<DiscriminatedEmbedGenConfig> fields = const {
    #object: _f$object,
    #embeddingModel: _f$embeddingModel,
    #sourceColumn: _f$sourceColumn,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = GenConfigTypes.embed;
  @override
  late final ClassMapperBase superMapper =
      EmbedGenConfigMapper.ensureInitialized();

  static DiscriminatedEmbedGenConfig _instantiate(DecodingData data) {
    return DiscriminatedEmbedGenConfig(
      object: data.dec(_f$object),
      embeddingModel: data.dec(_f$embeddingModel),
      sourceColumn: data.dec(_f$sourceColumn),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DiscriminatedEmbedGenConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiscriminatedEmbedGenConfig>(map);
  }

  static DiscriminatedEmbedGenConfig fromJson(String json) {
    return ensureInitialized().decodeJson<DiscriminatedEmbedGenConfig>(json);
  }
}

mixin DiscriminatedEmbedGenConfigMappable {
  String toJson() {
    return DiscriminatedEmbedGenConfigMapper.ensureInitialized()
        .encodeJson<DiscriminatedEmbedGenConfig>(
          this as DiscriminatedEmbedGenConfig,
        );
  }

  Map<String, dynamic> toMap() {
    return DiscriminatedEmbedGenConfigMapper.ensureInitialized()
        .encodeMap<DiscriminatedEmbedGenConfig>(
          this as DiscriminatedEmbedGenConfig,
        );
  }

  DiscriminatedEmbedGenConfigCopyWith<
    DiscriminatedEmbedGenConfig,
    DiscriminatedEmbedGenConfig,
    DiscriminatedEmbedGenConfig
  >
  get copyWith =>
      _DiscriminatedEmbedGenConfigCopyWithImpl<
        DiscriminatedEmbedGenConfig,
        DiscriminatedEmbedGenConfig
      >(this as DiscriminatedEmbedGenConfig, $identity, $identity);
  @override
  String toString() {
    return DiscriminatedEmbedGenConfigMapper.ensureInitialized().stringifyValue(
      this as DiscriminatedEmbedGenConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return DiscriminatedEmbedGenConfigMapper.ensureInitialized().equalsValue(
      this as DiscriminatedEmbedGenConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return DiscriminatedEmbedGenConfigMapper.ensureInitialized().hashValue(
      this as DiscriminatedEmbedGenConfig,
    );
  }
}

extension DiscriminatedEmbedGenConfigValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiscriminatedEmbedGenConfig, $Out> {
  DiscriminatedEmbedGenConfigCopyWith<$R, DiscriminatedEmbedGenConfig, $Out>
  get $asDiscriminatedEmbedGenConfig => $base.as(
    (v, t, t2) => _DiscriminatedEmbedGenConfigCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class DiscriminatedEmbedGenConfigCopyWith<
  $R,
  $In extends DiscriminatedEmbedGenConfig,
  $Out
>
    implements EmbedGenConfigCopyWith<$R, $In, $Out> {
  @override
  $R call({
    GenConfigTypes? object,
    String? embeddingModel,
    String? sourceColumn,
  });
  DiscriminatedEmbedGenConfigCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DiscriminatedEmbedGenConfigCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiscriminatedEmbedGenConfig, $Out>
    implements
        DiscriminatedEmbedGenConfigCopyWith<
          $R,
          DiscriminatedEmbedGenConfig,
          $Out
        > {
  _DiscriminatedEmbedGenConfigCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<DiscriminatedEmbedGenConfig> $mapper =
      DiscriminatedEmbedGenConfigMapper.ensureInitialized();
  @override
  $R call({
    GenConfigTypes? object,
    String? embeddingModel,
    String? sourceColumn,
  }) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (embeddingModel != null) #embeddingModel: embeddingModel,
      if (sourceColumn != null) #sourceColumn: sourceColumn,
    }),
  );
  @override
  DiscriminatedEmbedGenConfig $make(CopyWithData data) =>
      DiscriminatedEmbedGenConfig(
        object: data.get(#object, or: $value.object),
        embeddingModel: data.get(#embeddingModel, or: $value.embeddingModel),
        sourceColumn: data.get(#sourceColumn, or: $value.sourceColumn),
      );

  @override
  DiscriminatedEmbedGenConfigCopyWith<$R2, DiscriminatedEmbedGenConfig, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DiscriminatedEmbedGenConfigCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DiscriminatedCodeGenConfigMapper
    extends SubClassMapperBase<DiscriminatedCodeGenConfig> {
  DiscriminatedCodeGenConfigMapper._();

  static DiscriminatedCodeGenConfigMapper? _instance;
  static DiscriminatedCodeGenConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = DiscriminatedCodeGenConfigMapper._(),
      );
      CodeGenConfigMapper.ensureInitialized().addSubMapper(_instance!);
      GenConfigTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DiscriminatedCodeGenConfig';

  static GenConfigTypes _$object(DiscriminatedCodeGenConfig v) => v.object;
  static const Field<DiscriminatedCodeGenConfig, GenConfigTypes> _f$object =
      Field('object', _$object, opt: true, def: GenConfigTypes.code);
  static String _$sourceColumn(DiscriminatedCodeGenConfig v) => v.sourceColumn;
  static const Field<DiscriminatedCodeGenConfig, String> _f$sourceColumn =
      Field('sourceColumn', _$sourceColumn, key: r'source_column');

  @override
  final MappableFields<DiscriminatedCodeGenConfig> fields = const {
    #object: _f$object,
    #sourceColumn: _f$sourceColumn,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = GenConfigTypes.code;
  @override
  late final ClassMapperBase superMapper =
      CodeGenConfigMapper.ensureInitialized();

  static DiscriminatedCodeGenConfig _instantiate(DecodingData data) {
    return DiscriminatedCodeGenConfig(
      object: data.dec(_f$object),
      sourceColumn: data.dec(_f$sourceColumn),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DiscriminatedCodeGenConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiscriminatedCodeGenConfig>(map);
  }

  static DiscriminatedCodeGenConfig fromJson(String json) {
    return ensureInitialized().decodeJson<DiscriminatedCodeGenConfig>(json);
  }
}

mixin DiscriminatedCodeGenConfigMappable {
  String toJson() {
    return DiscriminatedCodeGenConfigMapper.ensureInitialized()
        .encodeJson<DiscriminatedCodeGenConfig>(
          this as DiscriminatedCodeGenConfig,
        );
  }

  Map<String, dynamic> toMap() {
    return DiscriminatedCodeGenConfigMapper.ensureInitialized()
        .encodeMap<DiscriminatedCodeGenConfig>(
          this as DiscriminatedCodeGenConfig,
        );
  }

  DiscriminatedCodeGenConfigCopyWith<
    DiscriminatedCodeGenConfig,
    DiscriminatedCodeGenConfig,
    DiscriminatedCodeGenConfig
  >
  get copyWith =>
      _DiscriminatedCodeGenConfigCopyWithImpl<
        DiscriminatedCodeGenConfig,
        DiscriminatedCodeGenConfig
      >(this as DiscriminatedCodeGenConfig, $identity, $identity);
  @override
  String toString() {
    return DiscriminatedCodeGenConfigMapper.ensureInitialized().stringifyValue(
      this as DiscriminatedCodeGenConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return DiscriminatedCodeGenConfigMapper.ensureInitialized().equalsValue(
      this as DiscriminatedCodeGenConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return DiscriminatedCodeGenConfigMapper.ensureInitialized().hashValue(
      this as DiscriminatedCodeGenConfig,
    );
  }
}

extension DiscriminatedCodeGenConfigValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiscriminatedCodeGenConfig, $Out> {
  DiscriminatedCodeGenConfigCopyWith<$R, DiscriminatedCodeGenConfig, $Out>
  get $asDiscriminatedCodeGenConfig => $base.as(
    (v, t, t2) => _DiscriminatedCodeGenConfigCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class DiscriminatedCodeGenConfigCopyWith<
  $R,
  $In extends DiscriminatedCodeGenConfig,
  $Out
>
    implements CodeGenConfigCopyWith<$R, $In, $Out> {
  @override
  $R call({GenConfigTypes? object, String? sourceColumn});
  DiscriminatedCodeGenConfigCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DiscriminatedCodeGenConfigCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiscriminatedCodeGenConfig, $Out>
    implements
        DiscriminatedCodeGenConfigCopyWith<
          $R,
          DiscriminatedCodeGenConfig,
          $Out
        > {
  _DiscriminatedCodeGenConfigCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiscriminatedCodeGenConfig> $mapper =
      DiscriminatedCodeGenConfigMapper.ensureInitialized();
  @override
  $R call({GenConfigTypes? object, String? sourceColumn}) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (sourceColumn != null) #sourceColumn: sourceColumn,
    }),
  );
  @override
  DiscriminatedCodeGenConfig $make(CopyWithData data) =>
      DiscriminatedCodeGenConfig(
        object: data.get(#object, or: $value.object),
        sourceColumn: data.get(#sourceColumn, or: $value.sourceColumn),
      );

  @override
  DiscriminatedCodeGenConfigCopyWith<$R2, DiscriminatedCodeGenConfig, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DiscriminatedCodeGenConfigCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ColumnSchemaMapper extends ClassMapperBase<ColumnSchema> {
  ColumnSchemaMapper._();

  static ColumnSchemaMapper? _instance;
  static ColumnSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColumnSchemaMapper._());
      ColumnSchemaCreateMapper.ensureInitialized();
      ColumnSchemaDtypeMapper.ensureInitialized();
      DiscriminatedGenConfigMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ColumnSchema';

  static String _$id(ColumnSchema v) => v.id;
  static const Field<ColumnSchema, String> _f$id = Field('id', _$id);
  static ColumnSchemaDtype _$dtype(ColumnSchema v) => v.dtype;
  static const Field<ColumnSchema, ColumnSchemaDtype> _f$dtype = Field(
    'dtype',
    _$dtype,
    opt: true,
    def: ColumnSchemaDtype.str,
  );
  static int _$vlen(ColumnSchema v) => v.vlen;
  static const Field<ColumnSchema, int> _f$vlen = Field(
    'vlen',
    _$vlen,
    opt: true,
    def: 0,
  );
  static bool _$index(ColumnSchema v) => v.index;
  static const Field<ColumnSchema, bool> _f$index = Field(
    'index',
    _$index,
    opt: true,
    def: true,
  );
  static DiscriminatedGenConfig? _$genConfig(ColumnSchema v) => v.genConfig;
  static const Field<ColumnSchema, DiscriminatedGenConfig> _f$genConfig = Field(
    'genConfig',
    _$genConfig,
    key: r'gen_config',
    opt: true,
  );

  @override
  final MappableFields<ColumnSchema> fields = const {
    #id: _f$id,
    #dtype: _f$dtype,
    #vlen: _f$vlen,
    #index: _f$index,
    #genConfig: _f$genConfig,
  };

  static ColumnSchema _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('ColumnSchema');
  }

  @override
  final Function instantiate = _instantiate;

  static ColumnSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColumnSchema>(map);
  }

  static ColumnSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ColumnSchema>(json);
  }
}

mixin ColumnSchemaMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ColumnSchemaCopyWith<ColumnSchema, ColumnSchema, ColumnSchema> get copyWith;
}

abstract class ColumnSchemaCopyWith<$R, $In extends ColumnSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    ColumnSchemaDtype? dtype,
    int? vlen,
    bool? index,
    DiscriminatedGenConfig? genConfig,
  });
  ColumnSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class ColumnSchemaCreateMapper extends ClassMapperBase<ColumnSchemaCreate> {
  ColumnSchemaCreateMapper._();

  static ColumnSchemaCreateMapper? _instance;
  static ColumnSchemaCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColumnSchemaCreateMapper._());
      ColumnSchemaMapper.ensureInitialized();
      ColumnSchemaDtypeMapper.ensureInitialized();
      DiscriminatedGenConfigMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ColumnSchemaCreate';

  static String _$id(ColumnSchemaCreate v) => v.id;
  static const Field<ColumnSchemaCreate, String> _f$id = Field('id', _$id);
  static ColumnSchemaDtype _$dtype(ColumnSchemaCreate v) => v.dtype;
  static const Field<ColumnSchemaCreate, ColumnSchemaDtype> _f$dtype = Field(
    'dtype',
    _$dtype,
    opt: true,
    def: ColumnSchemaDtype.str,
  );
  static int _$vlen(ColumnSchemaCreate v) => v.vlen;
  static const Field<ColumnSchemaCreate, int> _f$vlen = Field(
    'vlen',
    _$vlen,
    opt: true,
    def: 0,
  );
  static bool _$index(ColumnSchemaCreate v) => v.index;
  static const Field<ColumnSchemaCreate, bool> _f$index = Field(
    'index',
    _$index,
    opt: true,
    def: true,
  );
  static DiscriminatedGenConfig? _$genConfig(ColumnSchemaCreate v) =>
      v.genConfig;
  static const Field<ColumnSchemaCreate, DiscriminatedGenConfig> _f$genConfig =
      Field('genConfig', _$genConfig, key: r'gen_config', opt: true);

  @override
  final MappableFields<ColumnSchemaCreate> fields = const {
    #id: _f$id,
    #dtype: _f$dtype,
    #vlen: _f$vlen,
    #index: _f$index,
    #genConfig: _f$genConfig,
  };

  static ColumnSchemaCreate _instantiate(DecodingData data) {
    return ColumnSchemaCreate(
      id: data.dec(_f$id),
      dtype: data.dec(_f$dtype),
      vlen: data.dec(_f$vlen),
      index: data.dec(_f$index),
      genConfig: data.dec(_f$genConfig),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ColumnSchemaCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColumnSchemaCreate>(map);
  }

  static ColumnSchemaCreate fromJson(String json) {
    return ensureInitialized().decodeJson<ColumnSchemaCreate>(json);
  }
}

mixin ColumnSchemaCreateMappable {
  String toJson() {
    return ColumnSchemaCreateMapper.ensureInitialized()
        .encodeJson<ColumnSchemaCreate>(this as ColumnSchemaCreate);
  }

  Map<String, dynamic> toMap() {
    return ColumnSchemaCreateMapper.ensureInitialized()
        .encodeMap<ColumnSchemaCreate>(this as ColumnSchemaCreate);
  }

  ColumnSchemaCreateCopyWith<
    ColumnSchemaCreate,
    ColumnSchemaCreate,
    ColumnSchemaCreate
  >
  get copyWith =>
      _ColumnSchemaCreateCopyWithImpl<ColumnSchemaCreate, ColumnSchemaCreate>(
        this as ColumnSchemaCreate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ColumnSchemaCreateMapper.ensureInitialized().stringifyValue(
      this as ColumnSchemaCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return ColumnSchemaCreateMapper.ensureInitialized().equalsValue(
      this as ColumnSchemaCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return ColumnSchemaCreateMapper.ensureInitialized().hashValue(
      this as ColumnSchemaCreate,
    );
  }
}

extension ColumnSchemaCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColumnSchemaCreate, $Out> {
  ColumnSchemaCreateCopyWith<$R, ColumnSchemaCreate, $Out>
  get $asColumnSchemaCreate => $base.as(
    (v, t, t2) => _ColumnSchemaCreateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ColumnSchemaCreateCopyWith<
  $R,
  $In extends ColumnSchemaCreate,
  $Out
>
    implements ColumnSchemaCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    ColumnSchemaDtype? dtype,
    int? vlen,
    bool? index,
    DiscriminatedGenConfig? genConfig,
  });
  ColumnSchemaCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ColumnSchemaCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColumnSchemaCreate, $Out>
    implements ColumnSchemaCreateCopyWith<$R, ColumnSchemaCreate, $Out> {
  _ColumnSchemaCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColumnSchemaCreate> $mapper =
      ColumnSchemaCreateMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    ColumnSchemaDtype? dtype,
    int? vlen,
    bool? index,
    Object? genConfig = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (dtype != null) #dtype: dtype,
      if (vlen != null) #vlen: vlen,
      if (index != null) #index: index,
      if (genConfig != $none) #genConfig: genConfig,
    }),
  );
  @override
  ColumnSchemaCreate $make(CopyWithData data) => ColumnSchemaCreate(
    id: data.get(#id, or: $value.id),
    dtype: data.get(#dtype, or: $value.dtype),
    vlen: data.get(#vlen, or: $value.vlen),
    index: data.get(#index, or: $value.index),
    genConfig: data.get(#genConfig, or: $value.genConfig),
  );

  @override
  ColumnSchemaCreateCopyWith<$R2, ColumnSchemaCreate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ColumnSchemaCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TableSchemaCreateMapper extends ClassMapperBase<TableSchemaCreate> {
  TableSchemaCreateMapper._();

  static TableSchemaCreateMapper? _instance;
  static TableSchemaCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TableSchemaCreateMapper._());
      KnowledgeTableSchemaCreateMapper.ensureInitialized();
      ColumnSchemaCreateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TableSchemaCreate';

  static String _$id(TableSchemaCreate v) => v.id;
  static const Field<TableSchemaCreate, String> _f$id = Field('id', _$id);
  static List<ColumnSchemaCreate> _$cols(TableSchemaCreate v) => v.cols;
  static const Field<TableSchemaCreate, List<ColumnSchemaCreate>> _f$cols =
      Field('cols', _$cols);

  @override
  final MappableFields<TableSchemaCreate> fields = const {
    #id: _f$id,
    #cols: _f$cols,
  };

  static TableSchemaCreate _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('TableSchemaCreate');
  }

  @override
  final Function instantiate = _instantiate;

  static TableSchemaCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TableSchemaCreate>(map);
  }

  static TableSchemaCreate fromJson(String json) {
    return ensureInitialized().decodeJson<TableSchemaCreate>(json);
  }
}

mixin TableSchemaCreateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  TableSchemaCreateCopyWith<
    TableSchemaCreate,
    TableSchemaCreate,
    TableSchemaCreate
  >
  get copyWith;
}

abstract class TableSchemaCreateCopyWith<
  $R,
  $In extends TableSchemaCreate,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ColumnSchemaCreate,
    ColumnSchemaCreateCopyWith<$R, ColumnSchemaCreate, ColumnSchemaCreate>
  >
  get cols;
  $R call({String? id, List<ColumnSchemaCreate>? cols});
  TableSchemaCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class KnowledgeTableSchemaCreateMapper
    extends ClassMapperBase<KnowledgeTableSchemaCreate> {
  KnowledgeTableSchemaCreateMapper._();

  static KnowledgeTableSchemaCreateMapper? _instance;
  static KnowledgeTableSchemaCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = KnowledgeTableSchemaCreateMapper._(),
      );
      TableSchemaCreateMapper.ensureInitialized();
      ColumnSchemaCreateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'KnowledgeTableSchemaCreate';

  static String _$id(KnowledgeTableSchemaCreate v) => v.id;
  static const Field<KnowledgeTableSchemaCreate, String> _f$id = Field(
    'id',
    _$id,
  );
  static List<ColumnSchemaCreate> _$cols(KnowledgeTableSchemaCreate v) =>
      v.cols;
  static const Field<KnowledgeTableSchemaCreate, List<ColumnSchemaCreate>>
  _f$cols = Field('cols', _$cols);
  static String _$embeddingModel(KnowledgeTableSchemaCreate v) =>
      v.embeddingModel;
  static const Field<KnowledgeTableSchemaCreate, String> _f$embeddingModel =
      Field('embeddingModel', _$embeddingModel, key: r'embedding_model');

  @override
  final MappableFields<KnowledgeTableSchemaCreate> fields = const {
    #id: _f$id,
    #cols: _f$cols,
    #embeddingModel: _f$embeddingModel,
  };

  static KnowledgeTableSchemaCreate _instantiate(DecodingData data) {
    return KnowledgeTableSchemaCreate(
      id: data.dec(_f$id),
      cols: data.dec(_f$cols),
      embeddingModel: data.dec(_f$embeddingModel),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static KnowledgeTableSchemaCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<KnowledgeTableSchemaCreate>(map);
  }

  static KnowledgeTableSchemaCreate fromJson(String json) {
    return ensureInitialized().decodeJson<KnowledgeTableSchemaCreate>(json);
  }
}

mixin KnowledgeTableSchemaCreateMappable {
  String toJson() {
    return KnowledgeTableSchemaCreateMapper.ensureInitialized()
        .encodeJson<KnowledgeTableSchemaCreate>(
          this as KnowledgeTableSchemaCreate,
        );
  }

  Map<String, dynamic> toMap() {
    return KnowledgeTableSchemaCreateMapper.ensureInitialized()
        .encodeMap<KnowledgeTableSchemaCreate>(
          this as KnowledgeTableSchemaCreate,
        );
  }

  KnowledgeTableSchemaCreateCopyWith<
    KnowledgeTableSchemaCreate,
    KnowledgeTableSchemaCreate,
    KnowledgeTableSchemaCreate
  >
  get copyWith =>
      _KnowledgeTableSchemaCreateCopyWithImpl<
        KnowledgeTableSchemaCreate,
        KnowledgeTableSchemaCreate
      >(this as KnowledgeTableSchemaCreate, $identity, $identity);
  @override
  String toString() {
    return KnowledgeTableSchemaCreateMapper.ensureInitialized().stringifyValue(
      this as KnowledgeTableSchemaCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return KnowledgeTableSchemaCreateMapper.ensureInitialized().equalsValue(
      this as KnowledgeTableSchemaCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return KnowledgeTableSchemaCreateMapper.ensureInitialized().hashValue(
      this as KnowledgeTableSchemaCreate,
    );
  }
}

extension KnowledgeTableSchemaCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, KnowledgeTableSchemaCreate, $Out> {
  KnowledgeTableSchemaCreateCopyWith<$R, KnowledgeTableSchemaCreate, $Out>
  get $asKnowledgeTableSchemaCreate => $base.as(
    (v, t, t2) => _KnowledgeTableSchemaCreateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class KnowledgeTableSchemaCreateCopyWith<
  $R,
  $In extends KnowledgeTableSchemaCreate,
  $Out
>
    implements TableSchemaCreateCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<
    $R,
    ColumnSchemaCreate,
    ColumnSchemaCreateCopyWith<$R, ColumnSchemaCreate, ColumnSchemaCreate>
  >
  get cols;
  @override
  $R call({String? id, List<ColumnSchemaCreate>? cols, String? embeddingModel});
  KnowledgeTableSchemaCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _KnowledgeTableSchemaCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, KnowledgeTableSchemaCreate, $Out>
    implements
        KnowledgeTableSchemaCreateCopyWith<
          $R,
          KnowledgeTableSchemaCreate,
          $Out
        > {
  _KnowledgeTableSchemaCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<KnowledgeTableSchemaCreate> $mapper =
      KnowledgeTableSchemaCreateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ColumnSchemaCreate,
    ColumnSchemaCreateCopyWith<$R, ColumnSchemaCreate, ColumnSchemaCreate>
  >
  get cols => ListCopyWith(
    $value.cols,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(cols: v),
  );
  @override
  $R call({
    String? id,
    List<ColumnSchemaCreate>? cols,
    String? embeddingModel,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (cols != null) #cols: cols,
      if (embeddingModel != null) #embeddingModel: embeddingModel,
    }),
  );
  @override
  KnowledgeTableSchemaCreate $make(CopyWithData data) =>
      KnowledgeTableSchemaCreate(
        id: data.get(#id, or: $value.id),
        cols: data.get(#cols, or: $value.cols),
        embeddingModel: data.get(#embeddingModel, or: $value.embeddingModel),
      );

  @override
  KnowledgeTableSchemaCreateCopyWith<$R2, KnowledgeTableSchemaCreate, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _KnowledgeTableSchemaCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TableMetaMapper extends ClassMapperBase<TableMeta> {
  TableMetaMapper._();

  static TableMetaMapper? _instance;
  static TableMetaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TableMetaMapper._());
      TableMetaResponseMapper.ensureInitialized();
      ColumnSchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TableMeta';

  static String _$id(TableMeta v) => v.id;
  static const Field<TableMeta, String> _f$id = Field('id', _$id);
  static Map<String, dynamic>? _$meta(TableMeta v) => v.meta;
  static const Field<TableMeta, Map<String, dynamic>> _f$meta = Field(
    'meta',
    _$meta,
    opt: true,
  );
  static List<ColumnSchema> _$cols(TableMeta v) => v.cols;
  static const Field<TableMeta, List<ColumnSchema>> _f$cols = Field(
    'cols',
    _$cols,
  );
  static String? _$parentId(TableMeta v) => v.parentId;
  static const Field<TableMeta, String> _f$parentId = Field(
    'parentId',
    _$parentId,
    key: r'parent_id',
    opt: true,
  );
  static String _$title(TableMeta v) => v.title;
  static const Field<TableMeta, String> _f$title = Field(
    'title',
    _$title,
    opt: true,
    def: '',
  );
  static String? _$createdBy(TableMeta v) => v.createdBy;
  static const Field<TableMeta, String> _f$createdBy = Field(
    'createdBy',
    _$createdBy,
    key: r'created_by',
    opt: true,
  );
  static DateTime _$updatedAt(TableMeta v) => v.updatedAt;
  static const Field<TableMeta, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static int _$numRows(TableMeta v) => v.numRows;
  static const Field<TableMeta, int> _f$numRows = Field(
    'numRows',
    _$numRows,
    key: r'num_rows',
    opt: true,
    def: -1,
  );
  static String _$version(TableMeta v) => v.version;
  static const Field<TableMeta, String> _f$version = Field(
    'version',
    _$version,
  );
  static Map<String, ColumnSchema> _$colMap(TableMeta v) => v.colMap;
  static const Field<TableMeta, Map<String, ColumnSchema>> _f$colMap = Field(
    'colMap',
    _$colMap,
    key: r'col_map',
    mode: FieldMode.member,
  );
  static Map<String, dynamic> _$cfgMap(TableMeta v) => v.cfgMap;
  static const Field<TableMeta, Map<String, dynamic>> _f$cfgMap = Field(
    'cfgMap',
    _$cfgMap,
    key: r'cfg_map',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<TableMeta> fields = const {
    #id: _f$id,
    #meta: _f$meta,
    #cols: _f$cols,
    #parentId: _f$parentId,
    #title: _f$title,
    #createdBy: _f$createdBy,
    #updatedAt: _f$updatedAt,
    #numRows: _f$numRows,
    #version: _f$version,
    #colMap: _f$colMap,
    #cfgMap: _f$cfgMap,
  };

  static TableMeta _instantiate(DecodingData data) {
    return TableMeta(
      id: data.dec(_f$id),
      meta: data.dec(_f$meta),
      cols: data.dec(_f$cols),
      parentId: data.dec(_f$parentId),
      title: data.dec(_f$title),
      createdBy: data.dec(_f$createdBy),
      updatedAt: data.dec(_f$updatedAt),
      numRows: data.dec(_f$numRows),
      version: data.dec(_f$version),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TableMeta fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TableMeta>(map);
  }

  static TableMeta fromJson(String json) {
    return ensureInitialized().decodeJson<TableMeta>(json);
  }
}

mixin TableMetaMappable {
  String toJson() {
    return TableMetaMapper.ensureInitialized().encodeJson<TableMeta>(
      this as TableMeta,
    );
  }

  Map<String, dynamic> toMap() {
    return TableMetaMapper.ensureInitialized().encodeMap<TableMeta>(
      this as TableMeta,
    );
  }

  TableMetaCopyWith<TableMeta, TableMeta, TableMeta> get copyWith =>
      _TableMetaCopyWithImpl<TableMeta, TableMeta>(
        this as TableMeta,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TableMetaMapper.ensureInitialized().stringifyValue(
      this as TableMeta,
    );
  }

  @override
  bool operator ==(Object other) {
    return TableMetaMapper.ensureInitialized().equalsValue(
      this as TableMeta,
      other,
    );
  }

  @override
  int get hashCode {
    return TableMetaMapper.ensureInitialized().hashValue(this as TableMeta);
  }
}

extension TableMetaValueCopy<$R, $Out> on ObjectCopyWith<$R, TableMeta, $Out> {
  TableMetaCopyWith<$R, TableMeta, $Out> get $asTableMeta =>
      $base.as((v, t, t2) => _TableMetaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TableMetaCopyWith<$R, $In extends TableMeta, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get meta;
  ListCopyWith<
    $R,
    ColumnSchema,
    ColumnSchemaCopyWith<$R, ColumnSchema, ColumnSchema>
  >
  get cols;
  $R call({
    String? id,
    Map<String, dynamic>? meta,
    List<ColumnSchema>? cols,
    String? parentId,
    String? title,
    String? createdBy,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  });
  TableMetaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TableMetaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TableMeta, $Out>
    implements TableMetaCopyWith<$R, TableMeta, $Out> {
  _TableMetaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TableMeta> $mapper =
      TableMetaMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get meta => $value.meta != null
      ? MapCopyWith(
          $value.meta!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(meta: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    ColumnSchema,
    ColumnSchemaCopyWith<$R, ColumnSchema, ColumnSchema>
  >
  get cols => ListCopyWith(
    $value.cols,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(cols: v),
  );
  @override
  $R call({
    String? id,
    Object? meta = $none,
    List<ColumnSchema>? cols,
    Object? parentId = $none,
    String? title,
    Object? createdBy = $none,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (meta != $none) #meta: meta,
      if (cols != null) #cols: cols,
      if (parentId != $none) #parentId: parentId,
      if (title != null) #title: title,
      if (createdBy != $none) #createdBy: createdBy,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (numRows != null) #numRows: numRows,
      if (version != null) #version: version,
    }),
  );
  @override
  TableMeta $make(CopyWithData data) => TableMeta(
    id: data.get(#id, or: $value.id),
    meta: data.get(#meta, or: $value.meta),
    cols: data.get(#cols, or: $value.cols),
    parentId: data.get(#parentId, or: $value.parentId),
    title: data.get(#title, or: $value.title),
    createdBy: data.get(#createdBy, or: $value.createdBy),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    numRows: data.get(#numRows, or: $value.numRows),
    version: data.get(#version, or: $value.version),
  );

  @override
  TableMetaCopyWith<$R2, TableMeta, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TableMetaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TableMetaResponseMapper extends ClassMapperBase<TableMetaResponse> {
  TableMetaResponseMapper._();

  static TableMetaResponseMapper? _instance;
  static TableMetaResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TableMetaResponseMapper._());
      TableMetaMapper.ensureInitialized();
      ColumnSchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TableMetaResponse';

  static String _$id(TableMetaResponse v) => v.id;
  static const Field<TableMetaResponse, String> _f$id = Field('id', _$id);
  static Map<String, dynamic>? _$meta(TableMetaResponse v) => v.meta;
  static const Field<TableMetaResponse, Map<String, dynamic>> _f$meta = Field(
    'meta',
    _$meta,
    opt: true,
  );
  static List<ColumnSchema> _$cols(TableMetaResponse v) => v.cols;
  static const Field<TableMetaResponse, List<ColumnSchema>> _f$cols = Field(
    'cols',
    _$cols,
  );
  static String? _$parentId(TableMetaResponse v) => v.parentId;
  static const Field<TableMetaResponse, String> _f$parentId = Field(
    'parentId',
    _$parentId,
    key: r'parent_id',
    opt: true,
  );
  static String _$title(TableMetaResponse v) => v.title;
  static const Field<TableMetaResponse, String> _f$title = Field(
    'title',
    _$title,
    opt: true,
    def: '',
  );
  static String? _$createdBy(TableMetaResponse v) => v.createdBy;
  static const Field<TableMetaResponse, String> _f$createdBy = Field(
    'createdBy',
    _$createdBy,
    key: r'created_by',
    opt: true,
  );
  static DateTime _$updatedAt(TableMetaResponse v) => v.updatedAt;
  static const Field<TableMetaResponse, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static int _$numRows(TableMetaResponse v) => v.numRows;
  static const Field<TableMetaResponse, int> _f$numRows = Field(
    'numRows',
    _$numRows,
    key: r'num_rows',
    opt: true,
    def: -1,
  );
  static String _$version(TableMetaResponse v) => v.version;
  static const Field<TableMetaResponse, String> _f$version = Field(
    'version',
    _$version,
  );
  static String? _$indexedAtFts(TableMetaResponse v) => v.indexedAtFts;
  static const Field<TableMetaResponse, String> _f$indexedAtFts = Field(
    'indexedAtFts',
    _$indexedAtFts,
    key: r'indexed_at_fts',
    opt: true,
  );
  static String? _$indexedAtVec(TableMetaResponse v) => v.indexedAtVec;
  static const Field<TableMetaResponse, String> _f$indexedAtVec = Field(
    'indexedAtVec',
    _$indexedAtVec,
    key: r'indexed_at_vec',
    opt: true,
  );
  static String? _$indexedAtSca(TableMetaResponse v) => v.indexedAtSca;
  static const Field<TableMetaResponse, String> _f$indexedAtSca = Field(
    'indexedAtSca',
    _$indexedAtSca,
    key: r'indexed_at_sca',
    opt: true,
  );
  static Map<String, ColumnSchema> _$colMap(TableMetaResponse v) => v.colMap;
  static const Field<TableMetaResponse, Map<String, ColumnSchema>> _f$colMap =
      Field('colMap', _$colMap, key: r'col_map', mode: FieldMode.member);
  static Map<String, dynamic> _$cfgMap(TableMetaResponse v) => v.cfgMap;
  static const Field<TableMetaResponse, Map<String, dynamic>> _f$cfgMap = Field(
    'cfgMap',
    _$cfgMap,
    key: r'cfg_map',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<TableMetaResponse> fields = const {
    #id: _f$id,
    #meta: _f$meta,
    #cols: _f$cols,
    #parentId: _f$parentId,
    #title: _f$title,
    #createdBy: _f$createdBy,
    #updatedAt: _f$updatedAt,
    #numRows: _f$numRows,
    #version: _f$version,
    #indexedAtFts: _f$indexedAtFts,
    #indexedAtVec: _f$indexedAtVec,
    #indexedAtSca: _f$indexedAtSca,
    #colMap: _f$colMap,
    #cfgMap: _f$cfgMap,
  };

  static TableMetaResponse _instantiate(DecodingData data) {
    return TableMetaResponse(
      id: data.dec(_f$id),
      meta: data.dec(_f$meta),
      cols: data.dec(_f$cols),
      parentId: data.dec(_f$parentId),
      title: data.dec(_f$title),
      createdBy: data.dec(_f$createdBy),
      updatedAt: data.dec(_f$updatedAt),
      numRows: data.dec(_f$numRows),
      version: data.dec(_f$version),
      indexedAtFts: data.dec(_f$indexedAtFts),
      indexedAtVec: data.dec(_f$indexedAtVec),
      indexedAtSca: data.dec(_f$indexedAtSca),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TableMetaResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TableMetaResponse>(map);
  }

  static TableMetaResponse fromJson(String json) {
    return ensureInitialized().decodeJson<TableMetaResponse>(json);
  }
}

mixin TableMetaResponseMappable {
  String toJson() {
    return TableMetaResponseMapper.ensureInitialized()
        .encodeJson<TableMetaResponse>(this as TableMetaResponse);
  }

  Map<String, dynamic> toMap() {
    return TableMetaResponseMapper.ensureInitialized()
        .encodeMap<TableMetaResponse>(this as TableMetaResponse);
  }

  TableMetaResponseCopyWith<
    TableMetaResponse,
    TableMetaResponse,
    TableMetaResponse
  >
  get copyWith =>
      _TableMetaResponseCopyWithImpl<TableMetaResponse, TableMetaResponse>(
        this as TableMetaResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TableMetaResponseMapper.ensureInitialized().stringifyValue(
      this as TableMetaResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return TableMetaResponseMapper.ensureInitialized().equalsValue(
      this as TableMetaResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return TableMetaResponseMapper.ensureInitialized().hashValue(
      this as TableMetaResponse,
    );
  }
}

extension TableMetaResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TableMetaResponse, $Out> {
  TableMetaResponseCopyWith<$R, TableMetaResponse, $Out>
  get $asTableMetaResponse => $base.as(
    (v, t, t2) => _TableMetaResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TableMetaResponseCopyWith<
  $R,
  $In extends TableMetaResponse,
  $Out
>
    implements TableMetaCopyWith<$R, $In, $Out> {
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta;
  ListCopyWith<
    $R,
    ColumnSchema,
    ColumnSchemaCopyWith<$R, ColumnSchema, ColumnSchema>
  >
  get cols;
  @override
  $R call({
    String? id,
    Map<String, dynamic>? meta,
    List<ColumnSchema>? cols,
    String? parentId,
    String? title,
    String? createdBy,
    DateTime? updatedAt,
    int? numRows,
    String? version,
    String? indexedAtFts,
    String? indexedAtVec,
    String? indexedAtSca,
  });
  TableMetaResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TableMetaResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TableMetaResponse, $Out>
    implements TableMetaResponseCopyWith<$R, TableMetaResponse, $Out> {
  _TableMetaResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TableMetaResponse> $mapper =
      TableMetaResponseMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta => $value.meta != null
      ? MapCopyWith(
          $value.meta!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(meta: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    ColumnSchema,
    ColumnSchemaCopyWith<$R, ColumnSchema, ColumnSchema>
  >
  get cols => ListCopyWith(
    $value.cols,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(cols: v),
  );
  @override
  $R call({
    String? id,
    Object? meta = $none,
    List<ColumnSchema>? cols,
    Object? parentId = $none,
    String? title,
    Object? createdBy = $none,
    DateTime? updatedAt,
    int? numRows,
    String? version,
    Object? indexedAtFts = $none,
    Object? indexedAtVec = $none,
    Object? indexedAtSca = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (meta != $none) #meta: meta,
      if (cols != null) #cols: cols,
      if (parentId != $none) #parentId: parentId,
      if (title != null) #title: title,
      if (createdBy != $none) #createdBy: createdBy,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (numRows != null) #numRows: numRows,
      if (version != null) #version: version,
      if (indexedAtFts != $none) #indexedAtFts: indexedAtFts,
      if (indexedAtVec != $none) #indexedAtVec: indexedAtVec,
      if (indexedAtSca != $none) #indexedAtSca: indexedAtSca,
    }),
  );
  @override
  TableMetaResponse $make(CopyWithData data) => TableMetaResponse(
    id: data.get(#id, or: $value.id),
    meta: data.get(#meta, or: $value.meta),
    cols: data.get(#cols, or: $value.cols),
    parentId: data.get(#parentId, or: $value.parentId),
    title: data.get(#title, or: $value.title),
    createdBy: data.get(#createdBy, or: $value.createdBy),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    numRows: data.get(#numRows, or: $value.numRows),
    version: data.get(#version, or: $value.version),
    indexedAtFts: data.get(#indexedAtFts, or: $value.indexedAtFts),
    indexedAtVec: data.get(#indexedAtVec, or: $value.indexedAtVec),
    indexedAtSca: data.get(#indexedAtSca, or: $value.indexedAtSca),
  );

  @override
  TableMetaResponseCopyWith<$R2, TableMetaResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TableMetaResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GenConfigUpdateRequestMapper
    extends ClassMapperBase<GenConfigUpdateRequest> {
  GenConfigUpdateRequestMapper._();

  static GenConfigUpdateRequestMapper? _instance;
  static GenConfigUpdateRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenConfigUpdateRequestMapper._());
      DiscriminatedGenConfigMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GenConfigUpdateRequest';

  static String _$tableId(GenConfigUpdateRequest v) => v.tableId;
  static const Field<GenConfigUpdateRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static Map<String, DiscriminatedGenConfig?> _$columnMap(
    GenConfigUpdateRequest v,
  ) => v.columnMap;
  static const Field<
    GenConfigUpdateRequest,
    Map<String, DiscriminatedGenConfig?>
  >
  _f$columnMap = Field('columnMap', _$columnMap, key: r'column_map');

  @override
  final MappableFields<GenConfigUpdateRequest> fields = const {
    #tableId: _f$tableId,
    #columnMap: _f$columnMap,
  };

  static GenConfigUpdateRequest _instantiate(DecodingData data) {
    return GenConfigUpdateRequest(
      tableId: data.dec(_f$tableId),
      columnMap: data.dec(_f$columnMap),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GenConfigUpdateRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GenConfigUpdateRequest>(map);
  }

  static GenConfigUpdateRequest fromJson(String json) {
    return ensureInitialized().decodeJson<GenConfigUpdateRequest>(json);
  }
}

mixin GenConfigUpdateRequestMappable {
  String toJson() {
    return GenConfigUpdateRequestMapper.ensureInitialized()
        .encodeJson<GenConfigUpdateRequest>(this as GenConfigUpdateRequest);
  }

  Map<String, dynamic> toMap() {
    return GenConfigUpdateRequestMapper.ensureInitialized()
        .encodeMap<GenConfigUpdateRequest>(this as GenConfigUpdateRequest);
  }

  GenConfigUpdateRequestCopyWith<
    GenConfigUpdateRequest,
    GenConfigUpdateRequest,
    GenConfigUpdateRequest
  >
  get copyWith =>
      _GenConfigUpdateRequestCopyWithImpl<
        GenConfigUpdateRequest,
        GenConfigUpdateRequest
      >(this as GenConfigUpdateRequest, $identity, $identity);
  @override
  String toString() {
    return GenConfigUpdateRequestMapper.ensureInitialized().stringifyValue(
      this as GenConfigUpdateRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return GenConfigUpdateRequestMapper.ensureInitialized().equalsValue(
      this as GenConfigUpdateRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return GenConfigUpdateRequestMapper.ensureInitialized().hashValue(
      this as GenConfigUpdateRequest,
    );
  }
}

extension GenConfigUpdateRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GenConfigUpdateRequest, $Out> {
  GenConfigUpdateRequestCopyWith<$R, GenConfigUpdateRequest, $Out>
  get $asGenConfigUpdateRequest => $base.as(
    (v, t, t2) => _GenConfigUpdateRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class GenConfigUpdateRequestCopyWith<
  $R,
  $In extends GenConfigUpdateRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
    $R,
    String,
    DiscriminatedGenConfig?,
    ObjectCopyWith<$R, DiscriminatedGenConfig?, DiscriminatedGenConfig?>?
  >
  get columnMap;
  $R call({String? tableId, Map<String, DiscriminatedGenConfig?>? columnMap});
  GenConfigUpdateRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GenConfigUpdateRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GenConfigUpdateRequest, $Out>
    implements
        GenConfigUpdateRequestCopyWith<$R, GenConfigUpdateRequest, $Out> {
  _GenConfigUpdateRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GenConfigUpdateRequest> $mapper =
      GenConfigUpdateRequestMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    String,
    DiscriminatedGenConfig?,
    ObjectCopyWith<$R, DiscriminatedGenConfig?, DiscriminatedGenConfig?>?
  >
  get columnMap => MapCopyWith(
    $value.columnMap,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(columnMap: v),
  );
  @override
  $R call({String? tableId, Map<String, DiscriminatedGenConfig?>? columnMap}) =>
      $apply(
        FieldCopyWithData({
          if (tableId != null) #tableId: tableId,
          if (columnMap != null) #columnMap: columnMap,
        }),
      );
  @override
  GenConfigUpdateRequest $make(CopyWithData data) => GenConfigUpdateRequest(
    tableId: data.get(#tableId, or: $value.tableId),
    columnMap: data.get(#columnMap, or: $value.columnMap),
  );

  @override
  GenConfigUpdateRequestCopyWith<$R2, GenConfigUpdateRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GenConfigUpdateRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ColumnRenameRequestMapper extends ClassMapperBase<ColumnRenameRequest> {
  ColumnRenameRequestMapper._();

  static ColumnRenameRequestMapper? _instance;
  static ColumnRenameRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColumnRenameRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ColumnRenameRequest';

  static String _$tableId(ColumnRenameRequest v) => v.tableId;
  static const Field<ColumnRenameRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static Map<String, String> _$columnMap(ColumnRenameRequest v) => v.columnMap;
  static const Field<ColumnRenameRequest, Map<String, String>> _f$columnMap =
      Field('columnMap', _$columnMap, key: r'column_map');

  @override
  final MappableFields<ColumnRenameRequest> fields = const {
    #tableId: _f$tableId,
    #columnMap: _f$columnMap,
  };

  static ColumnRenameRequest _instantiate(DecodingData data) {
    return ColumnRenameRequest(
      tableId: data.dec(_f$tableId),
      columnMap: data.dec(_f$columnMap),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ColumnRenameRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColumnRenameRequest>(map);
  }

  static ColumnRenameRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ColumnRenameRequest>(json);
  }
}

mixin ColumnRenameRequestMappable {
  String toJson() {
    return ColumnRenameRequestMapper.ensureInitialized()
        .encodeJson<ColumnRenameRequest>(this as ColumnRenameRequest);
  }

  Map<String, dynamic> toMap() {
    return ColumnRenameRequestMapper.ensureInitialized()
        .encodeMap<ColumnRenameRequest>(this as ColumnRenameRequest);
  }

  ColumnRenameRequestCopyWith<
    ColumnRenameRequest,
    ColumnRenameRequest,
    ColumnRenameRequest
  >
  get copyWith =>
      _ColumnRenameRequestCopyWithImpl<
        ColumnRenameRequest,
        ColumnRenameRequest
      >(this as ColumnRenameRequest, $identity, $identity);
  @override
  String toString() {
    return ColumnRenameRequestMapper.ensureInitialized().stringifyValue(
      this as ColumnRenameRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return ColumnRenameRequestMapper.ensureInitialized().equalsValue(
      this as ColumnRenameRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return ColumnRenameRequestMapper.ensureInitialized().hashValue(
      this as ColumnRenameRequest,
    );
  }
}

extension ColumnRenameRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColumnRenameRequest, $Out> {
  ColumnRenameRequestCopyWith<$R, ColumnRenameRequest, $Out>
  get $asColumnRenameRequest => $base.as(
    (v, t, t2) => _ColumnRenameRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ColumnRenameRequestCopyWith<
  $R,
  $In extends ColumnRenameRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get columnMap;
  $R call({String? tableId, Map<String, String>? columnMap});
  ColumnRenameRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ColumnRenameRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColumnRenameRequest, $Out>
    implements ColumnRenameRequestCopyWith<$R, ColumnRenameRequest, $Out> {
  _ColumnRenameRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColumnRenameRequest> $mapper =
      ColumnRenameRequestMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get columnMap => MapCopyWith(
    $value.columnMap,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(columnMap: v),
  );
  @override
  $R call({String? tableId, Map<String, String>? columnMap}) => $apply(
    FieldCopyWithData({
      if (tableId != null) #tableId: tableId,
      if (columnMap != null) #columnMap: columnMap,
    }),
  );
  @override
  ColumnRenameRequest $make(CopyWithData data) => ColumnRenameRequest(
    tableId: data.get(#tableId, or: $value.tableId),
    columnMap: data.get(#columnMap, or: $value.columnMap),
  );

  @override
  ColumnRenameRequestCopyWith<$R2, ColumnRenameRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ColumnRenameRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ColumnReorderRequestMapper extends ClassMapperBase<ColumnReorderRequest> {
  ColumnReorderRequestMapper._();

  static ColumnReorderRequestMapper? _instance;
  static ColumnReorderRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColumnReorderRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ColumnReorderRequest';

  static String _$tableId(ColumnReorderRequest v) => v.tableId;
  static const Field<ColumnReorderRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static List<String> _$columnNames(ColumnReorderRequest v) => v.columnNames;
  static const Field<ColumnReorderRequest, List<String>> _f$columnNames = Field(
    'columnNames',
    _$columnNames,
    key: r'column_names',
  );

  @override
  final MappableFields<ColumnReorderRequest> fields = const {
    #tableId: _f$tableId,
    #columnNames: _f$columnNames,
  };

  static ColumnReorderRequest _instantiate(DecodingData data) {
    return ColumnReorderRequest(
      tableId: data.dec(_f$tableId),
      columnNames: data.dec(_f$columnNames),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ColumnReorderRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColumnReorderRequest>(map);
  }

  static ColumnReorderRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ColumnReorderRequest>(json);
  }
}

mixin ColumnReorderRequestMappable {
  String toJson() {
    return ColumnReorderRequestMapper.ensureInitialized()
        .encodeJson<ColumnReorderRequest>(this as ColumnReorderRequest);
  }

  Map<String, dynamic> toMap() {
    return ColumnReorderRequestMapper.ensureInitialized()
        .encodeMap<ColumnReorderRequest>(this as ColumnReorderRequest);
  }

  ColumnReorderRequestCopyWith<
    ColumnReorderRequest,
    ColumnReorderRequest,
    ColumnReorderRequest
  >
  get copyWith =>
      _ColumnReorderRequestCopyWithImpl<
        ColumnReorderRequest,
        ColumnReorderRequest
      >(this as ColumnReorderRequest, $identity, $identity);
  @override
  String toString() {
    return ColumnReorderRequestMapper.ensureInitialized().stringifyValue(
      this as ColumnReorderRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return ColumnReorderRequestMapper.ensureInitialized().equalsValue(
      this as ColumnReorderRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return ColumnReorderRequestMapper.ensureInitialized().hashValue(
      this as ColumnReorderRequest,
    );
  }
}

extension ColumnReorderRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColumnReorderRequest, $Out> {
  ColumnReorderRequestCopyWith<$R, ColumnReorderRequest, $Out>
  get $asColumnReorderRequest => $base.as(
    (v, t, t2) => _ColumnReorderRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ColumnReorderRequestCopyWith<
  $R,
  $In extends ColumnReorderRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get columnNames;
  $R call({String? tableId, List<String>? columnNames});
  ColumnReorderRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ColumnReorderRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColumnReorderRequest, $Out>
    implements ColumnReorderRequestCopyWith<$R, ColumnReorderRequest, $Out> {
  _ColumnReorderRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColumnReorderRequest> $mapper =
      ColumnReorderRequestMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get columnNames => ListCopyWith(
    $value.columnNames,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(columnNames: v),
  );
  @override
  $R call({String? tableId, List<String>? columnNames}) => $apply(
    FieldCopyWithData({
      if (tableId != null) #tableId: tableId,
      if (columnNames != null) #columnNames: columnNames,
    }),
  );
  @override
  ColumnReorderRequest $make(CopyWithData data) => ColumnReorderRequest(
    tableId: data.get(#tableId, or: $value.tableId),
    columnNames: data.get(#columnNames, or: $value.columnNames),
  );

  @override
  ColumnReorderRequestCopyWith<$R2, ColumnReorderRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ColumnReorderRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ColumnDropRequestMapper extends ClassMapperBase<ColumnDropRequest> {
  ColumnDropRequestMapper._();

  static ColumnDropRequestMapper? _instance;
  static ColumnDropRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColumnDropRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ColumnDropRequest';

  static String _$tableId(ColumnDropRequest v) => v.tableId;
  static const Field<ColumnDropRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static List<String> _$columnNames(ColumnDropRequest v) => v.columnNames;
  static const Field<ColumnDropRequest, List<String>> _f$columnNames = Field(
    'columnNames',
    _$columnNames,
    key: r'column_names',
  );

  @override
  final MappableFields<ColumnDropRequest> fields = const {
    #tableId: _f$tableId,
    #columnNames: _f$columnNames,
  };

  static ColumnDropRequest _instantiate(DecodingData data) {
    return ColumnDropRequest(
      tableId: data.dec(_f$tableId),
      columnNames: data.dec(_f$columnNames),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ColumnDropRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColumnDropRequest>(map);
  }

  static ColumnDropRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ColumnDropRequest>(json);
  }
}

mixin ColumnDropRequestMappable {
  String toJson() {
    return ColumnDropRequestMapper.ensureInitialized()
        .encodeJson<ColumnDropRequest>(this as ColumnDropRequest);
  }

  Map<String, dynamic> toMap() {
    return ColumnDropRequestMapper.ensureInitialized()
        .encodeMap<ColumnDropRequest>(this as ColumnDropRequest);
  }

  ColumnDropRequestCopyWith<
    ColumnDropRequest,
    ColumnDropRequest,
    ColumnDropRequest
  >
  get copyWith =>
      _ColumnDropRequestCopyWithImpl<ColumnDropRequest, ColumnDropRequest>(
        this as ColumnDropRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ColumnDropRequestMapper.ensureInitialized().stringifyValue(
      this as ColumnDropRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return ColumnDropRequestMapper.ensureInitialized().equalsValue(
      this as ColumnDropRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return ColumnDropRequestMapper.ensureInitialized().hashValue(
      this as ColumnDropRequest,
    );
  }
}

extension ColumnDropRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColumnDropRequest, $Out> {
  ColumnDropRequestCopyWith<$R, ColumnDropRequest, $Out>
  get $asColumnDropRequest => $base.as(
    (v, t, t2) => _ColumnDropRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ColumnDropRequestCopyWith<
  $R,
  $In extends ColumnDropRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get columnNames;
  $R call({String? tableId, List<String>? columnNames});
  ColumnDropRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ColumnDropRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColumnDropRequest, $Out>
    implements ColumnDropRequestCopyWith<$R, ColumnDropRequest, $Out> {
  _ColumnDropRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColumnDropRequest> $mapper =
      ColumnDropRequestMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get columnNames => ListCopyWith(
    $value.columnNames,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(columnNames: v),
  );
  @override
  $R call({String? tableId, List<String>? columnNames}) => $apply(
    FieldCopyWithData({
      if (tableId != null) #tableId: tableId,
      if (columnNames != null) #columnNames: columnNames,
    }),
  );
  @override
  ColumnDropRequest $make(CopyWithData data) => ColumnDropRequest(
    tableId: data.get(#tableId, or: $value.tableId),
    columnNames: data.get(#columnNames, or: $value.columnNames),
  );

  @override
  ColumnDropRequestCopyWith<$R2, ColumnDropRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ColumnDropRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MultiRowAddRequestMapper extends ClassMapperBase<MultiRowAddRequest> {
  MultiRowAddRequestMapper._();

  static MultiRowAddRequestMapper? _instance;
  static MultiRowAddRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MultiRowAddRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MultiRowAddRequest';

  static String _$tableId(MultiRowAddRequest v) => v.tableId;
  static const Field<MultiRowAddRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static List<Map<String, dynamic>> _$data(MultiRowAddRequest v) => v.data;
  static const Field<MultiRowAddRequest, List<Map<String, dynamic>>> _f$data =
      Field('data', _$data);
  static bool _$stream(MultiRowAddRequest v) => v.stream;
  static const Field<MultiRowAddRequest, bool> _f$stream = Field(
    'stream',
    _$stream,
    opt: true,
    def: true,
  );
  static bool _$concurrent(MultiRowAddRequest v) => v.concurrent;
  static const Field<MultiRowAddRequest, bool> _f$concurrent = Field(
    'concurrent',
    _$concurrent,
    opt: true,
    def: true,
  );

  @override
  final MappableFields<MultiRowAddRequest> fields = const {
    #tableId: _f$tableId,
    #data: _f$data,
    #stream: _f$stream,
    #concurrent: _f$concurrent,
  };

  static MultiRowAddRequest _instantiate(DecodingData data) {
    return MultiRowAddRequest(
      tableId: data.dec(_f$tableId),
      data: data.dec(_f$data),
      stream: data.dec(_f$stream),
      concurrent: data.dec(_f$concurrent),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MultiRowAddRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MultiRowAddRequest>(map);
  }

  static MultiRowAddRequest fromJson(String json) {
    return ensureInitialized().decodeJson<MultiRowAddRequest>(json);
  }
}

mixin MultiRowAddRequestMappable {
  String toJson() {
    return MultiRowAddRequestMapper.ensureInitialized()
        .encodeJson<MultiRowAddRequest>(this as MultiRowAddRequest);
  }

  Map<String, dynamic> toMap() {
    return MultiRowAddRequestMapper.ensureInitialized()
        .encodeMap<MultiRowAddRequest>(this as MultiRowAddRequest);
  }

  MultiRowAddRequestCopyWith<
    MultiRowAddRequest,
    MultiRowAddRequest,
    MultiRowAddRequest
  >
  get copyWith =>
      _MultiRowAddRequestCopyWithImpl<MultiRowAddRequest, MultiRowAddRequest>(
        this as MultiRowAddRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MultiRowAddRequestMapper.ensureInitialized().stringifyValue(
      this as MultiRowAddRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return MultiRowAddRequestMapper.ensureInitialized().equalsValue(
      this as MultiRowAddRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return MultiRowAddRequestMapper.ensureInitialized().hashValue(
      this as MultiRowAddRequest,
    );
  }
}

extension MultiRowAddRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MultiRowAddRequest, $Out> {
  MultiRowAddRequestCopyWith<$R, MultiRowAddRequest, $Out>
  get $asMultiRowAddRequest => $base.as(
    (v, t, t2) => _MultiRowAddRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MultiRowAddRequestCopyWith<
  $R,
  $In extends MultiRowAddRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >
  get data;
  $R call({
    String? tableId,
    List<Map<String, dynamic>>? data,
    bool? stream,
    bool? concurrent,
  });
  MultiRowAddRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MultiRowAddRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MultiRowAddRequest, $Out>
    implements MultiRowAddRequestCopyWith<$R, MultiRowAddRequest, $Out> {
  _MultiRowAddRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MultiRowAddRequest> $mapper =
      MultiRowAddRequestMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >
  get data => ListCopyWith(
    $value.data,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(data: v),
  );
  @override
  $R call({
    String? tableId,
    List<Map<String, dynamic>>? data,
    bool? stream,
    bool? concurrent,
  }) => $apply(
    FieldCopyWithData({
      if (tableId != null) #tableId: tableId,
      if (data != null) #data: data,
      if (stream != null) #stream: stream,
      if (concurrent != null) #concurrent: concurrent,
    }),
  );
  @override
  MultiRowAddRequest $make(CopyWithData data) => MultiRowAddRequest(
    tableId: data.get(#tableId, or: $value.tableId),
    data: data.get(#data, or: $value.data),
    stream: data.get(#stream, or: $value.stream),
    concurrent: data.get(#concurrent, or: $value.concurrent),
  );

  @override
  MultiRowAddRequestCopyWith<$R2, MultiRowAddRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MultiRowAddRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RowUpdateRequestMapper extends ClassMapperBase<RowUpdateRequest> {
  RowUpdateRequestMapper._();

  static RowUpdateRequestMapper? _instance;
  static RowUpdateRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RowUpdateRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RowUpdateRequest';

  static String _$tableId(RowUpdateRequest v) => v.tableId;
  static const Field<RowUpdateRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static String _$rowId(RowUpdateRequest v) => v.rowId;
  static const Field<RowUpdateRequest, String> _f$rowId = Field(
    'rowId',
    _$rowId,
    key: r'row_id',
  );
  static Map<String, dynamic> _$data(RowUpdateRequest v) => v.data;
  static const Field<RowUpdateRequest, Map<String, dynamic>> _f$data = Field(
    'data',
    _$data,
  );

  @override
  final MappableFields<RowUpdateRequest> fields = const {
    #tableId: _f$tableId,
    #rowId: _f$rowId,
    #data: _f$data,
  };

  static RowUpdateRequest _instantiate(DecodingData data) {
    return RowUpdateRequest(
      tableId: data.dec(_f$tableId),
      rowId: data.dec(_f$rowId),
      data: data.dec(_f$data),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RowUpdateRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RowUpdateRequest>(map);
  }

  static RowUpdateRequest fromJson(String json) {
    return ensureInitialized().decodeJson<RowUpdateRequest>(json);
  }
}

mixin RowUpdateRequestMappable {
  String toJson() {
    return RowUpdateRequestMapper.ensureInitialized()
        .encodeJson<RowUpdateRequest>(this as RowUpdateRequest);
  }

  Map<String, dynamic> toMap() {
    return RowUpdateRequestMapper.ensureInitialized()
        .encodeMap<RowUpdateRequest>(this as RowUpdateRequest);
  }

  RowUpdateRequestCopyWith<RowUpdateRequest, RowUpdateRequest, RowUpdateRequest>
  get copyWith =>
      _RowUpdateRequestCopyWithImpl<RowUpdateRequest, RowUpdateRequest>(
        this as RowUpdateRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RowUpdateRequestMapper.ensureInitialized().stringifyValue(
      this as RowUpdateRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return RowUpdateRequestMapper.ensureInitialized().equalsValue(
      this as RowUpdateRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return RowUpdateRequestMapper.ensureInitialized().hashValue(
      this as RowUpdateRequest,
    );
  }
}

extension RowUpdateRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RowUpdateRequest, $Out> {
  RowUpdateRequestCopyWith<$R, RowUpdateRequest, $Out>
  get $asRowUpdateRequest =>
      $base.as((v, t, t2) => _RowUpdateRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RowUpdateRequestCopyWith<$R, $In extends RowUpdateRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data;
  $R call({String? tableId, String? rowId, Map<String, dynamic>? data});
  RowUpdateRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RowUpdateRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RowUpdateRequest, $Out>
    implements RowUpdateRequestCopyWith<$R, RowUpdateRequest, $Out> {
  _RowUpdateRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RowUpdateRequest> $mapper =
      RowUpdateRequestMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data => MapCopyWith(
    $value.data,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(data: v),
  );
  @override
  $R call({String? tableId, String? rowId, Map<String, dynamic>? data}) =>
      $apply(
        FieldCopyWithData({
          if (tableId != null) #tableId: tableId,
          if (rowId != null) #rowId: rowId,
          if (data != null) #data: data,
        }),
      );
  @override
  RowUpdateRequest $make(CopyWithData data) => RowUpdateRequest(
    tableId: data.get(#tableId, or: $value.tableId),
    rowId: data.get(#rowId, or: $value.rowId),
    data: data.get(#data, or: $value.data),
  );

  @override
  RowUpdateRequestCopyWith<$R2, RowUpdateRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RowUpdateRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MultiRowUpdateRequestMapper
    extends ClassMapperBase<MultiRowUpdateRequest> {
  MultiRowUpdateRequestMapper._();

  static MultiRowUpdateRequestMapper? _instance;
  static MultiRowUpdateRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MultiRowUpdateRequestMapper._());
      MultiRowUpdateRequestWithLimitMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MultiRowUpdateRequest';

  static String _$tableId(MultiRowUpdateRequest v) => v.tableId;
  static const Field<MultiRowUpdateRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static Map<String, Map<String, dynamic>> _$data(MultiRowUpdateRequest v) =>
      v.data;
  static const Field<MultiRowUpdateRequest, Map<String, Map<String, dynamic>>>
  _f$data = Field('data', _$data);

  @override
  final MappableFields<MultiRowUpdateRequest> fields = const {
    #tableId: _f$tableId,
    #data: _f$data,
  };

  static MultiRowUpdateRequest _instantiate(DecodingData data) {
    return MultiRowUpdateRequest(
      tableId: data.dec(_f$tableId),
      data: data.dec(_f$data),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MultiRowUpdateRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MultiRowUpdateRequest>(map);
  }

  static MultiRowUpdateRequest fromJson(String json) {
    return ensureInitialized().decodeJson<MultiRowUpdateRequest>(json);
  }
}

mixin MultiRowUpdateRequestMappable {
  String toJson() {
    return MultiRowUpdateRequestMapper.ensureInitialized()
        .encodeJson<MultiRowUpdateRequest>(this as MultiRowUpdateRequest);
  }

  Map<String, dynamic> toMap() {
    return MultiRowUpdateRequestMapper.ensureInitialized()
        .encodeMap<MultiRowUpdateRequest>(this as MultiRowUpdateRequest);
  }

  MultiRowUpdateRequestCopyWith<
    MultiRowUpdateRequest,
    MultiRowUpdateRequest,
    MultiRowUpdateRequest
  >
  get copyWith =>
      _MultiRowUpdateRequestCopyWithImpl<
        MultiRowUpdateRequest,
        MultiRowUpdateRequest
      >(this as MultiRowUpdateRequest, $identity, $identity);
  @override
  String toString() {
    return MultiRowUpdateRequestMapper.ensureInitialized().stringifyValue(
      this as MultiRowUpdateRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return MultiRowUpdateRequestMapper.ensureInitialized().equalsValue(
      this as MultiRowUpdateRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return MultiRowUpdateRequestMapper.ensureInitialized().hashValue(
      this as MultiRowUpdateRequest,
    );
  }
}

extension MultiRowUpdateRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MultiRowUpdateRequest, $Out> {
  MultiRowUpdateRequestCopyWith<$R, MultiRowUpdateRequest, $Out>
  get $asMultiRowUpdateRequest => $base.as(
    (v, t, t2) => _MultiRowUpdateRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MultiRowUpdateRequestCopyWith<
  $R,
  $In extends MultiRowUpdateRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
    $R,
    String,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>?
  >
  get data;
  $R call({String? tableId, Map<String, Map<String, dynamic>>? data});
  MultiRowUpdateRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MultiRowUpdateRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MultiRowUpdateRequest, $Out>
    implements MultiRowUpdateRequestCopyWith<$R, MultiRowUpdateRequest, $Out> {
  _MultiRowUpdateRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MultiRowUpdateRequest> $mapper =
      MultiRowUpdateRequestMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    String,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>?
  >
  get data => MapCopyWith(
    $value.data,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(data: v),
  );
  @override
  $R call({String? tableId, Map<String, Map<String, dynamic>>? data}) => $apply(
    FieldCopyWithData({
      if (tableId != null) #tableId: tableId,
      if (data != null) #data: data,
    }),
  );
  @override
  MultiRowUpdateRequest $make(CopyWithData data) => MultiRowUpdateRequest(
    tableId: data.get(#tableId, or: $value.tableId),
    data: data.get(#data, or: $value.data),
  );

  @override
  MultiRowUpdateRequestCopyWith<$R2, MultiRowUpdateRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MultiRowUpdateRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MultiRowUpdateRequestWithLimitMapper
    extends ClassMapperBase<MultiRowUpdateRequestWithLimit> {
  MultiRowUpdateRequestWithLimitMapper._();

  static MultiRowUpdateRequestWithLimitMapper? _instance;
  static MultiRowUpdateRequestWithLimitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = MultiRowUpdateRequestWithLimitMapper._(),
      );
      MultiRowUpdateRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MultiRowUpdateRequestWithLimit';

  static String _$tableId(MultiRowUpdateRequestWithLimit v) => v.tableId;
  static const Field<MultiRowUpdateRequestWithLimit, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static Map<String, Map<String, dynamic>> _$data(
    MultiRowUpdateRequestWithLimit v,
  ) => v.data;
  static const Field<
    MultiRowUpdateRequestWithLimit,
    Map<String, Map<String, dynamic>>
  >
  _f$data = Field('data', _$data);

  @override
  final MappableFields<MultiRowUpdateRequestWithLimit> fields = const {
    #tableId: _f$tableId,
    #data: _f$data,
  };

  static MultiRowUpdateRequestWithLimit _instantiate(DecodingData data) {
    return MultiRowUpdateRequestWithLimit(
      tableId: data.dec(_f$tableId),
      data: data.dec(_f$data),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MultiRowUpdateRequestWithLimit fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MultiRowUpdateRequestWithLimit>(map);
  }

  static MultiRowUpdateRequestWithLimit fromJson(String json) {
    return ensureInitialized().decodeJson<MultiRowUpdateRequestWithLimit>(json);
  }
}

mixin MultiRowUpdateRequestWithLimitMappable {
  String toJson() {
    return MultiRowUpdateRequestWithLimitMapper.ensureInitialized()
        .encodeJson<MultiRowUpdateRequestWithLimit>(
          this as MultiRowUpdateRequestWithLimit,
        );
  }

  Map<String, dynamic> toMap() {
    return MultiRowUpdateRequestWithLimitMapper.ensureInitialized()
        .encodeMap<MultiRowUpdateRequestWithLimit>(
          this as MultiRowUpdateRequestWithLimit,
        );
  }

  MultiRowUpdateRequestWithLimitCopyWith<
    MultiRowUpdateRequestWithLimit,
    MultiRowUpdateRequestWithLimit,
    MultiRowUpdateRequestWithLimit
  >
  get copyWith =>
      _MultiRowUpdateRequestWithLimitCopyWithImpl<
        MultiRowUpdateRequestWithLimit,
        MultiRowUpdateRequestWithLimit
      >(this as MultiRowUpdateRequestWithLimit, $identity, $identity);
  @override
  String toString() {
    return MultiRowUpdateRequestWithLimitMapper.ensureInitialized()
        .stringifyValue(this as MultiRowUpdateRequestWithLimit);
  }

  @override
  bool operator ==(Object other) {
    return MultiRowUpdateRequestWithLimitMapper.ensureInitialized().equalsValue(
      this as MultiRowUpdateRequestWithLimit,
      other,
    );
  }

  @override
  int get hashCode {
    return MultiRowUpdateRequestWithLimitMapper.ensureInitialized().hashValue(
      this as MultiRowUpdateRequestWithLimit,
    );
  }
}

extension MultiRowUpdateRequestWithLimitValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MultiRowUpdateRequestWithLimit, $Out> {
  MultiRowUpdateRequestWithLimitCopyWith<
    $R,
    MultiRowUpdateRequestWithLimit,
    $Out
  >
  get $asMultiRowUpdateRequestWithLimit => $base.as(
    (v, t, t2) =>
        _MultiRowUpdateRequestWithLimitCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MultiRowUpdateRequestWithLimitCopyWith<
  $R,
  $In extends MultiRowUpdateRequestWithLimit,
  $Out
>
    implements MultiRowUpdateRequestCopyWith<$R, $In, $Out> {
  @override
  MapCopyWith<
    $R,
    String,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >
  get data;
  @override
  $R call({String? tableId, Map<String, Map<String, dynamic>>? data});
  MultiRowUpdateRequestWithLimitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MultiRowUpdateRequestWithLimitCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MultiRowUpdateRequestWithLimit, $Out>
    implements
        MultiRowUpdateRequestWithLimitCopyWith<
          $R,
          MultiRowUpdateRequestWithLimit,
          $Out
        > {
  _MultiRowUpdateRequestWithLimitCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<MultiRowUpdateRequestWithLimit> $mapper =
      MultiRowUpdateRequestWithLimitMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    String,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >
  get data => MapCopyWith(
    $value.data,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(data: v),
  );
  @override
  $R call({String? tableId, Map<String, Map<String, dynamic>>? data}) => $apply(
    FieldCopyWithData({
      if (tableId != null) #tableId: tableId,
      if (data != null) #data: data,
    }),
  );
  @override
  MultiRowUpdateRequestWithLimit $make(CopyWithData data) =>
      MultiRowUpdateRequestWithLimit(
        tableId: data.get(#tableId, or: $value.tableId),
        data: data.get(#data, or: $value.data),
      );

  @override
  MultiRowUpdateRequestWithLimitCopyWith<
    $R2,
    MultiRowUpdateRequestWithLimit,
    $Out2
  >
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MultiRowUpdateRequestWithLimitCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MultiRowRegenRequestMapper extends ClassMapperBase<MultiRowRegenRequest> {
  MultiRowRegenRequestMapper._();

  static MultiRowRegenRequestMapper? _instance;
  static MultiRowRegenRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MultiRowRegenRequestMapper._());
      RegenStrategyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MultiRowRegenRequest';

  static String _$tableId(MultiRowRegenRequest v) => v.tableId;
  static const Field<MultiRowRegenRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static List<String> _$rowIds(MultiRowRegenRequest v) => v.rowIds;
  static const Field<MultiRowRegenRequest, List<String>> _f$rowIds = Field(
    'rowIds',
    _$rowIds,
    key: r'row_ids',
  );
  static RegenStrategy _$regenStrategy(MultiRowRegenRequest v) =>
      v.regenStrategy;
  static const Field<MultiRowRegenRequest, RegenStrategy> _f$regenStrategy =
      Field(
        'regenStrategy',
        _$regenStrategy,
        key: r'regen_strategy',
        opt: true,
        def: RegenStrategy.runAll,
      );
  static String? _$outputColumnId(MultiRowRegenRequest v) => v.outputColumnId;
  static const Field<MultiRowRegenRequest, String> _f$outputColumnId = Field(
    'outputColumnId',
    _$outputColumnId,
    key: r'output_column_id',
    opt: true,
  );
  static bool _$stream(MultiRowRegenRequest v) => v.stream;
  static const Field<MultiRowRegenRequest, bool> _f$stream = Field(
    'stream',
    _$stream,
    opt: true,
    def: true,
  );
  static bool _$concurrent(MultiRowRegenRequest v) => v.concurrent;
  static const Field<MultiRowRegenRequest, bool> _f$concurrent = Field(
    'concurrent',
    _$concurrent,
    opt: true,
    def: true,
  );

  @override
  final MappableFields<MultiRowRegenRequest> fields = const {
    #tableId: _f$tableId,
    #rowIds: _f$rowIds,
    #regenStrategy: _f$regenStrategy,
    #outputColumnId: _f$outputColumnId,
    #stream: _f$stream,
    #concurrent: _f$concurrent,
  };

  static MultiRowRegenRequest _instantiate(DecodingData data) {
    return MultiRowRegenRequest(
      tableId: data.dec(_f$tableId),
      rowIds: data.dec(_f$rowIds),
      regenStrategy: data.dec(_f$regenStrategy),
      outputColumnId: data.dec(_f$outputColumnId),
      stream: data.dec(_f$stream),
      concurrent: data.dec(_f$concurrent),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MultiRowRegenRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MultiRowRegenRequest>(map);
  }

  static MultiRowRegenRequest fromJson(String json) {
    return ensureInitialized().decodeJson<MultiRowRegenRequest>(json);
  }
}

mixin MultiRowRegenRequestMappable {
  String toJson() {
    return MultiRowRegenRequestMapper.ensureInitialized()
        .encodeJson<MultiRowRegenRequest>(this as MultiRowRegenRequest);
  }

  Map<String, dynamic> toMap() {
    return MultiRowRegenRequestMapper.ensureInitialized()
        .encodeMap<MultiRowRegenRequest>(this as MultiRowRegenRequest);
  }

  MultiRowRegenRequestCopyWith<
    MultiRowRegenRequest,
    MultiRowRegenRequest,
    MultiRowRegenRequest
  >
  get copyWith =>
      _MultiRowRegenRequestCopyWithImpl<
        MultiRowRegenRequest,
        MultiRowRegenRequest
      >(this as MultiRowRegenRequest, $identity, $identity);
  @override
  String toString() {
    return MultiRowRegenRequestMapper.ensureInitialized().stringifyValue(
      this as MultiRowRegenRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return MultiRowRegenRequestMapper.ensureInitialized().equalsValue(
      this as MultiRowRegenRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return MultiRowRegenRequestMapper.ensureInitialized().hashValue(
      this as MultiRowRegenRequest,
    );
  }
}

extension MultiRowRegenRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MultiRowRegenRequest, $Out> {
  MultiRowRegenRequestCopyWith<$R, MultiRowRegenRequest, $Out>
  get $asMultiRowRegenRequest => $base.as(
    (v, t, t2) => _MultiRowRegenRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MultiRowRegenRequestCopyWith<
  $R,
  $In extends MultiRowRegenRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get rowIds;
  $R call({
    String? tableId,
    List<String>? rowIds,
    RegenStrategy? regenStrategy,
    String? outputColumnId,
    bool? stream,
    bool? concurrent,
  });
  MultiRowRegenRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MultiRowRegenRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MultiRowRegenRequest, $Out>
    implements MultiRowRegenRequestCopyWith<$R, MultiRowRegenRequest, $Out> {
  _MultiRowRegenRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MultiRowRegenRequest> $mapper =
      MultiRowRegenRequestMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get rowIds =>
      ListCopyWith(
        $value.rowIds,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(rowIds: v),
      );
  @override
  $R call({
    String? tableId,
    List<String>? rowIds,
    RegenStrategy? regenStrategy,
    Object? outputColumnId = $none,
    bool? stream,
    bool? concurrent,
  }) => $apply(
    FieldCopyWithData({
      if (tableId != null) #tableId: tableId,
      if (rowIds != null) #rowIds: rowIds,
      if (regenStrategy != null) #regenStrategy: regenStrategy,
      if (outputColumnId != $none) #outputColumnId: outputColumnId,
      if (stream != null) #stream: stream,
      if (concurrent != null) #concurrent: concurrent,
    }),
  );
  @override
  MultiRowRegenRequest $make(CopyWithData data) => MultiRowRegenRequest(
    tableId: data.get(#tableId, or: $value.tableId),
    rowIds: data.get(#rowIds, or: $value.rowIds),
    regenStrategy: data.get(#regenStrategy, or: $value.regenStrategy),
    outputColumnId: data.get(#outputColumnId, or: $value.outputColumnId),
    stream: data.get(#stream, or: $value.stream),
    concurrent: data.get(#concurrent, or: $value.concurrent),
  );

  @override
  MultiRowRegenRequestCopyWith<$R2, MultiRowRegenRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MultiRowRegenRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MultiRowDeleteRequestMapper
    extends ClassMapperBase<MultiRowDeleteRequest> {
  MultiRowDeleteRequestMapper._();

  static MultiRowDeleteRequestMapper? _instance;
  static MultiRowDeleteRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MultiRowDeleteRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MultiRowDeleteRequest';

  static String _$tableId(MultiRowDeleteRequest v) => v.tableId;
  static const Field<MultiRowDeleteRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static List<String>? _$rowIds(MultiRowDeleteRequest v) => v.rowIds;
  static const Field<MultiRowDeleteRequest, List<String>> _f$rowIds = Field(
    'rowIds',
    _$rowIds,
    key: r'row_ids',
    opt: true,
  );
  static String _$where(MultiRowDeleteRequest v) => v.where;
  static const Field<MultiRowDeleteRequest, String> _f$where = Field(
    'where',
    _$where,
    opt: true,
    def: '',
  );

  @override
  final MappableFields<MultiRowDeleteRequest> fields = const {
    #tableId: _f$tableId,
    #rowIds: _f$rowIds,
    #where: _f$where,
  };

  static MultiRowDeleteRequest _instantiate(DecodingData data) {
    return MultiRowDeleteRequest(
      tableId: data.dec(_f$tableId),
      rowIds: data.dec(_f$rowIds),
      where: data.dec(_f$where),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MultiRowDeleteRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MultiRowDeleteRequest>(map);
  }

  static MultiRowDeleteRequest fromJson(String json) {
    return ensureInitialized().decodeJson<MultiRowDeleteRequest>(json);
  }
}

mixin MultiRowDeleteRequestMappable {
  String toJson() {
    return MultiRowDeleteRequestMapper.ensureInitialized()
        .encodeJson<MultiRowDeleteRequest>(this as MultiRowDeleteRequest);
  }

  Map<String, dynamic> toMap() {
    return MultiRowDeleteRequestMapper.ensureInitialized()
        .encodeMap<MultiRowDeleteRequest>(this as MultiRowDeleteRequest);
  }

  MultiRowDeleteRequestCopyWith<
    MultiRowDeleteRequest,
    MultiRowDeleteRequest,
    MultiRowDeleteRequest
  >
  get copyWith =>
      _MultiRowDeleteRequestCopyWithImpl<
        MultiRowDeleteRequest,
        MultiRowDeleteRequest
      >(this as MultiRowDeleteRequest, $identity, $identity);
  @override
  String toString() {
    return MultiRowDeleteRequestMapper.ensureInitialized().stringifyValue(
      this as MultiRowDeleteRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return MultiRowDeleteRequestMapper.ensureInitialized().equalsValue(
      this as MultiRowDeleteRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return MultiRowDeleteRequestMapper.ensureInitialized().hashValue(
      this as MultiRowDeleteRequest,
    );
  }
}

extension MultiRowDeleteRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MultiRowDeleteRequest, $Out> {
  MultiRowDeleteRequestCopyWith<$R, MultiRowDeleteRequest, $Out>
  get $asMultiRowDeleteRequest => $base.as(
    (v, t, t2) => _MultiRowDeleteRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MultiRowDeleteRequestCopyWith<
  $R,
  $In extends MultiRowDeleteRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get rowIds;
  $R call({String? tableId, List<String>? rowIds, String? where});
  MultiRowDeleteRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MultiRowDeleteRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MultiRowDeleteRequest, $Out>
    implements MultiRowDeleteRequestCopyWith<$R, MultiRowDeleteRequest, $Out> {
  _MultiRowDeleteRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MultiRowDeleteRequest> $mapper =
      MultiRowDeleteRequestMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get rowIds =>
      $value.rowIds != null
      ? ListCopyWith(
          $value.rowIds!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(rowIds: v),
        )
      : null;
  @override
  $R call({String? tableId, Object? rowIds = $none, String? where}) => $apply(
    FieldCopyWithData({
      if (tableId != null) #tableId: tableId,
      if (rowIds != $none) #rowIds: rowIds,
      if (where != null) #where: where,
    }),
  );
  @override
  MultiRowDeleteRequest $make(CopyWithData data) => MultiRowDeleteRequest(
    tableId: data.get(#tableId, or: $value.tableId),
    rowIds: data.get(#rowIds, or: $value.rowIds),
    where: data.get(#where, or: $value.where),
  );

  @override
  MultiRowDeleteRequestCopyWith<$R2, MultiRowDeleteRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MultiRowDeleteRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SearchRequestMapper extends ClassMapperBase<SearchRequest> {
  SearchRequestMapper._();

  static SearchRequestMapper? _instance;
  static SearchRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchRequestMapper._());
      VectorMetricMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SearchRequest';

  static String _$tableId(SearchRequest v) => v.tableId;
  static const Field<SearchRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static String _$query(SearchRequest v) => v.query;
  static const Field<SearchRequest, String> _f$query = Field('query', _$query);
  static int _$limit(SearchRequest v) => v.limit;
  static const Field<SearchRequest, int> _f$limit = Field(
    'limit',
    _$limit,
    opt: true,
    def: 100,
  );
  static VectorMetric _$metric(SearchRequest v) => v.metric;
  static const Field<SearchRequest, VectorMetric> _f$metric = Field(
    'metric',
    _$metric,
    opt: true,
    def: VectorMetric.cosine,
  );
  static int _$floatDecimals(SearchRequest v) => v.floatDecimals;
  static const Field<SearchRequest, int> _f$floatDecimals = Field(
    'floatDecimals',
    _$floatDecimals,
    key: r'float_decimals',
    opt: true,
    def: 0,
  );
  static int _$vecDecimals(SearchRequest v) => v.vecDecimals;
  static const Field<SearchRequest, int> _f$vecDecimals = Field(
    'vecDecimals',
    _$vecDecimals,
    key: r'vec_decimals',
    opt: true,
    def: 0,
  );
  static String? _$rerankingModel(SearchRequest v) => v.rerankingModel;
  static const Field<SearchRequest, String> _f$rerankingModel = Field(
    'rerankingModel',
    _$rerankingModel,
    key: r'reranking_model',
    opt: true,
  );

  @override
  final MappableFields<SearchRequest> fields = const {
    #tableId: _f$tableId,
    #query: _f$query,
    #limit: _f$limit,
    #metric: _f$metric,
    #floatDecimals: _f$floatDecimals,
    #vecDecimals: _f$vecDecimals,
    #rerankingModel: _f$rerankingModel,
  };

  static SearchRequest _instantiate(DecodingData data) {
    return SearchRequest(
      tableId: data.dec(_f$tableId),
      query: data.dec(_f$query),
      limit: data.dec(_f$limit),
      metric: data.dec(_f$metric),
      floatDecimals: data.dec(_f$floatDecimals),
      vecDecimals: data.dec(_f$vecDecimals),
      rerankingModel: data.dec(_f$rerankingModel),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SearchRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchRequest>(map);
  }

  static SearchRequest fromJson(String json) {
    return ensureInitialized().decodeJson<SearchRequest>(json);
  }
}

mixin SearchRequestMappable {
  String toJson() {
    return SearchRequestMapper.ensureInitialized().encodeJson<SearchRequest>(
      this as SearchRequest,
    );
  }

  Map<String, dynamic> toMap() {
    return SearchRequestMapper.ensureInitialized().encodeMap<SearchRequest>(
      this as SearchRequest,
    );
  }

  SearchRequestCopyWith<SearchRequest, SearchRequest, SearchRequest>
  get copyWith => _SearchRequestCopyWithImpl<SearchRequest, SearchRequest>(
    this as SearchRequest,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return SearchRequestMapper.ensureInitialized().stringifyValue(
      this as SearchRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return SearchRequestMapper.ensureInitialized().equalsValue(
      this as SearchRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return SearchRequestMapper.ensureInitialized().hashValue(
      this as SearchRequest,
    );
  }
}

extension SearchRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchRequest, $Out> {
  SearchRequestCopyWith<$R, SearchRequest, $Out> get $asSearchRequest =>
      $base.as((v, t, t2) => _SearchRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SearchRequestCopyWith<$R, $In extends SearchRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? tableId,
    String? query,
    int? limit,
    VectorMetric? metric,
    int? floatDecimals,
    int? vecDecimals,
    String? rerankingModel,
  });
  SearchRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SearchRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchRequest, $Out>
    implements SearchRequestCopyWith<$R, SearchRequest, $Out> {
  _SearchRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchRequest> $mapper =
      SearchRequestMapper.ensureInitialized();
  @override
  $R call({
    String? tableId,
    String? query,
    int? limit,
    VectorMetric? metric,
    int? floatDecimals,
    int? vecDecimals,
    Object? rerankingModel = $none,
  }) => $apply(
    FieldCopyWithData({
      if (tableId != null) #tableId: tableId,
      if (query != null) #query: query,
      if (limit != null) #limit: limit,
      if (metric != null) #metric: metric,
      if (floatDecimals != null) #floatDecimals: floatDecimals,
      if (vecDecimals != null) #vecDecimals: vecDecimals,
      if (rerankingModel != $none) #rerankingModel: rerankingModel,
    }),
  );
  @override
  SearchRequest $make(CopyWithData data) => SearchRequest(
    tableId: data.get(#tableId, or: $value.tableId),
    query: data.get(#query, or: $value.query),
    limit: data.get(#limit, or: $value.limit),
    metric: data.get(#metric, or: $value.metric),
    floatDecimals: data.get(#floatDecimals, or: $value.floatDecimals),
    vecDecimals: data.get(#vecDecimals, or: $value.vecDecimals),
    rerankingModel: data.get(#rerankingModel, or: $value.rerankingModel),
  );

  @override
  SearchRequestCopyWith<$R2, SearchRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SearchRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TableDataImportRequestMapper
    extends ClassMapperBase<TableDataImportRequest> {
  TableDataImportRequestMapper._();

  static TableDataImportRequestMapper? _instance;
  static TableDataImportRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TableDataImportRequestMapper._());
      CSVDelimiterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TableDataImportRequest';

  static String _$filePath(TableDataImportRequest v) => v.filePath;
  static const Field<TableDataImportRequest, String> _f$filePath = Field(
    'filePath',
    _$filePath,
    key: r'file_path',
  );
  static String _$tableId(TableDataImportRequest v) => v.tableId;
  static const Field<TableDataImportRequest, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static bool _$stream(TableDataImportRequest v) => v.stream;
  static const Field<TableDataImportRequest, bool> _f$stream = Field(
    'stream',
    _$stream,
    opt: true,
    def: true,
  );
  static CSVDelimiter _$delimiter(TableDataImportRequest v) => v.delimiter;
  static const Field<TableDataImportRequest, CSVDelimiter> _f$delimiter = Field(
    'delimiter',
    _$delimiter,
    opt: true,
    def: CSVDelimiter.comma,
  );

  @override
  final MappableFields<TableDataImportRequest> fields = const {
    #filePath: _f$filePath,
    #tableId: _f$tableId,
    #stream: _f$stream,
    #delimiter: _f$delimiter,
  };

  static TableDataImportRequest _instantiate(DecodingData data) {
    return TableDataImportRequest(
      filePath: data.dec(_f$filePath),
      tableId: data.dec(_f$tableId),
      stream: data.dec(_f$stream),
      delimiter: data.dec(_f$delimiter),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TableDataImportRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TableDataImportRequest>(map);
  }

  static TableDataImportRequest fromJson(String json) {
    return ensureInitialized().decodeJson<TableDataImportRequest>(json);
  }
}

mixin TableDataImportRequestMappable {
  String toJson() {
    return TableDataImportRequestMapper.ensureInitialized()
        .encodeJson<TableDataImportRequest>(this as TableDataImportRequest);
  }

  Map<String, dynamic> toMap() {
    return TableDataImportRequestMapper.ensureInitialized()
        .encodeMap<TableDataImportRequest>(this as TableDataImportRequest);
  }

  TableDataImportRequestCopyWith<
    TableDataImportRequest,
    TableDataImportRequest,
    TableDataImportRequest
  >
  get copyWith =>
      _TableDataImportRequestCopyWithImpl<
        TableDataImportRequest,
        TableDataImportRequest
      >(this as TableDataImportRequest, $identity, $identity);
  @override
  String toString() {
    return TableDataImportRequestMapper.ensureInitialized().stringifyValue(
      this as TableDataImportRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return TableDataImportRequestMapper.ensureInitialized().equalsValue(
      this as TableDataImportRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return TableDataImportRequestMapper.ensureInitialized().hashValue(
      this as TableDataImportRequest,
    );
  }
}

extension TableDataImportRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TableDataImportRequest, $Out> {
  TableDataImportRequestCopyWith<$R, TableDataImportRequest, $Out>
  get $asTableDataImportRequest => $base.as(
    (v, t, t2) => _TableDataImportRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TableDataImportRequestCopyWith<
  $R,
  $In extends TableDataImportRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? filePath,
    String? tableId,
    bool? stream,
    CSVDelimiter? delimiter,
  });
  TableDataImportRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TableDataImportRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TableDataImportRequest, $Out>
    implements
        TableDataImportRequestCopyWith<$R, TableDataImportRequest, $Out> {
  _TableDataImportRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TableDataImportRequest> $mapper =
      TableDataImportRequestMapper.ensureInitialized();
  @override
  $R call({
    String? filePath,
    String? tableId,
    bool? stream,
    CSVDelimiter? delimiter,
  }) => $apply(
    FieldCopyWithData({
      if (filePath != null) #filePath: filePath,
      if (tableId != null) #tableId: tableId,
      if (stream != null) #stream: stream,
      if (delimiter != null) #delimiter: delimiter,
    }),
  );
  @override
  TableDataImportRequest $make(CopyWithData data) => TableDataImportRequest(
    filePath: data.get(#filePath, or: $value.filePath),
    tableId: data.get(#tableId, or: $value.tableId),
    stream: data.get(#stream, or: $value.stream),
    delimiter: data.get(#delimiter, or: $value.delimiter),
  );

  @override
  TableDataImportRequestCopyWith<$R2, TableDataImportRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TableDataImportRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TableImportRequestMapper extends ClassMapperBase<TableImportRequest> {
  TableImportRequestMapper._();

  static TableImportRequestMapper? _instance;
  static TableImportRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TableImportRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TableImportRequest';

  static String _$filePath(TableImportRequest v) => v.filePath;
  static const Field<TableImportRequest, String> _f$filePath = Field(
    'filePath',
    _$filePath,
    key: r'file_path',
  );
  static String? _$tableIdDst(TableImportRequest v) => v.tableIdDst;
  static const Field<TableImportRequest, String> _f$tableIdDst = Field(
    'tableIdDst',
    _$tableIdDst,
    key: r'table_id_dst',
    opt: true,
  );
  static bool _$blocking(TableImportRequest v) => v.blocking;
  static const Field<TableImportRequest, bool> _f$blocking = Field(
    'blocking',
    _$blocking,
    opt: true,
    def: true,
  );

  @override
  final MappableFields<TableImportRequest> fields = const {
    #filePath: _f$filePath,
    #tableIdDst: _f$tableIdDst,
    #blocking: _f$blocking,
  };

  static TableImportRequest _instantiate(DecodingData data) {
    return TableImportRequest(
      filePath: data.dec(_f$filePath),
      tableIdDst: data.dec(_f$tableIdDst),
      blocking: data.dec(_f$blocking),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TableImportRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TableImportRequest>(map);
  }

  static TableImportRequest fromJson(String json) {
    return ensureInitialized().decodeJson<TableImportRequest>(json);
  }
}

mixin TableImportRequestMappable {
  String toJson() {
    return TableImportRequestMapper.ensureInitialized()
        .encodeJson<TableImportRequest>(this as TableImportRequest);
  }

  Map<String, dynamic> toMap() {
    return TableImportRequestMapper.ensureInitialized()
        .encodeMap<TableImportRequest>(this as TableImportRequest);
  }

  TableImportRequestCopyWith<
    TableImportRequest,
    TableImportRequest,
    TableImportRequest
  >
  get copyWith =>
      _TableImportRequestCopyWithImpl<TableImportRequest, TableImportRequest>(
        this as TableImportRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TableImportRequestMapper.ensureInitialized().stringifyValue(
      this as TableImportRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return TableImportRequestMapper.ensureInitialized().equalsValue(
      this as TableImportRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return TableImportRequestMapper.ensureInitialized().hashValue(
      this as TableImportRequest,
    );
  }
}

extension TableImportRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TableImportRequest, $Out> {
  TableImportRequestCopyWith<$R, TableImportRequest, $Out>
  get $asTableImportRequest => $base.as(
    (v, t, t2) => _TableImportRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TableImportRequestCopyWith<
  $R,
  $In extends TableImportRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? filePath, String? tableIdDst, bool? blocking});
  TableImportRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TableImportRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TableImportRequest, $Out>
    implements TableImportRequestCopyWith<$R, TableImportRequest, $Out> {
  _TableImportRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TableImportRequest> $mapper =
      TableImportRequestMapper.ensureInitialized();
  @override
  $R call({String? filePath, Object? tableIdDst = $none, bool? blocking}) =>
      $apply(
        FieldCopyWithData({
          if (filePath != null) #filePath: filePath,
          if (tableIdDst != $none) #tableIdDst: tableIdDst,
          if (blocking != null) #blocking: blocking,
        }),
      );
  @override
  TableImportRequest $make(CopyWithData data) => TableImportRequest(
    filePath: data.get(#filePath, or: $value.filePath),
    tableIdDst: data.get(#tableIdDst, or: $value.tableIdDst),
    blocking: data.get(#blocking, or: $value.blocking),
  );

  @override
  TableImportRequestCopyWith<$R2, TableImportRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TableImportRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

