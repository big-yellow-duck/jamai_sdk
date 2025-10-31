// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'model.dart';

class ModelInfoListResponseMapper
    extends ClassMapperBase<ModelInfoListResponse> {
  ModelInfoListResponseMapper._();

  static ModelInfoListResponseMapper? _instance;
  static ModelInfoListResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelInfoListResponseMapper._());
      ModelInfoReadMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelInfoListResponse';

  static String _$object(ModelInfoListResponse v) => v.object;
  static const Field<ModelInfoListResponse, String> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: "models.info",
  );
  static List<ModelInfoRead> _$data(ModelInfoListResponse v) => v.data;
  static const Field<ModelInfoListResponse, List<ModelInfoRead>> _f$data =
      Field('data', _$data);

  @override
  final MappableFields<ModelInfoListResponse> fields = const {
    #object: _f$object,
    #data: _f$data,
  };

  static ModelInfoListResponse _instantiate(DecodingData data) {
    return ModelInfoListResponse(
      object: data.dec(_f$object),
      data: data.dec(_f$data),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModelInfoListResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelInfoListResponse>(map);
  }

  static ModelInfoListResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ModelInfoListResponse>(json);
  }
}

mixin ModelInfoListResponseMappable {
  String toJson() {
    return ModelInfoListResponseMapper.ensureInitialized()
        .encodeJson<ModelInfoListResponse>(this as ModelInfoListResponse);
  }

  Map<String, dynamic> toMap() {
    return ModelInfoListResponseMapper.ensureInitialized()
        .encodeMap<ModelInfoListResponse>(this as ModelInfoListResponse);
  }

  ModelInfoListResponseCopyWith<
    ModelInfoListResponse,
    ModelInfoListResponse,
    ModelInfoListResponse
  >
  get copyWith =>
      _ModelInfoListResponseCopyWithImpl<
        ModelInfoListResponse,
        ModelInfoListResponse
      >(this as ModelInfoListResponse, $identity, $identity);
  @override
  String toString() {
    return ModelInfoListResponseMapper.ensureInitialized().stringifyValue(
      this as ModelInfoListResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModelInfoListResponseMapper.ensureInitialized().equalsValue(
      this as ModelInfoListResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return ModelInfoListResponseMapper.ensureInitialized().hashValue(
      this as ModelInfoListResponse,
    );
  }
}

extension ModelInfoListResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModelInfoListResponse, $Out> {
  ModelInfoListResponseCopyWith<$R, ModelInfoListResponse, $Out>
  get $asModelInfoListResponse => $base.as(
    (v, t, t2) => _ModelInfoListResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ModelInfoListResponseCopyWith<
  $R,
  $In extends ModelInfoListResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ModelInfoRead,
    ModelInfoReadCopyWith<$R, ModelInfoRead, ModelInfoRead>
  >
  get data;
  $R call({String? object, List<ModelInfoRead>? data});
  ModelInfoListResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ModelInfoListResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelInfoListResponse, $Out>
    implements ModelInfoListResponseCopyWith<$R, ModelInfoListResponse, $Out> {
  _ModelInfoListResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelInfoListResponse> $mapper =
      ModelInfoListResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ModelInfoRead,
    ModelInfoReadCopyWith<$R, ModelInfoRead, ModelInfoRead>
  >
  get data => ListCopyWith(
    $value.data,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(data: v),
  );
  @override
  $R call({String? object, List<ModelInfoRead>? data}) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (data != null) #data: data,
    }),
  );
  @override
  ModelInfoListResponse $make(CopyWithData data) => ModelInfoListResponse(
    object: data.get(#object, or: $value.object),
    data: data.get(#data, or: $value.data),
  );

  @override
  ModelInfoListResponseCopyWith<$R2, ModelInfoListResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ModelInfoListResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModelPriceMapper extends ClassMapperBase<ModelPrice> {
  ModelPriceMapper._();

  static ModelPriceMapper? _instance;
  static ModelPriceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelPriceMapper._());
      LLMModelPriceMapper.ensureInitialized();
      EmbeddingModelPriceMapper.ensureInitialized();
      RerankingModelPriceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelPrice';

  static String _$id(ModelPrice v) => v.id;
  static const Field<ModelPrice, String> _f$id = Field('id', _$id);
  static String _$name(ModelPrice v) => v.name;
  static const Field<ModelPrice, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<ModelPrice> fields = const {#id: _f$id, #name: _f$name};

  static ModelPrice _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('ModelPrice');
  }

  @override
  final Function instantiate = _instantiate;

  static ModelPrice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelPrice>(map);
  }

  static ModelPrice fromJson(String json) {
    return ensureInitialized().decodeJson<ModelPrice>(json);
  }
}

mixin ModelPriceMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ModelPriceCopyWith<ModelPrice, ModelPrice, ModelPrice> get copyWith;
}

abstract class ModelPriceCopyWith<$R, $In extends ModelPrice, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name});
  ModelPriceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class LLMModelPriceMapper extends ClassMapperBase<LLMModelPrice> {
  LLMModelPriceMapper._();

  static LLMModelPriceMapper? _instance;
  static LLMModelPriceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LLMModelPriceMapper._());
      ModelPriceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LLMModelPrice';

  static String _$id(LLMModelPrice v) => v.id;
  static const Field<LLMModelPrice, String> _f$id = Field('id', _$id);
  static String _$name(LLMModelPrice v) => v.name;
  static const Field<LLMModelPrice, String> _f$name = Field('name', _$name);
  static double _$llmInputCostPerMtoken(LLMModelPrice v) =>
      v.llmInputCostPerMtoken;
  static const Field<LLMModelPrice, double> _f$llmInputCostPerMtoken = Field(
    'llmInputCostPerMtoken',
    _$llmInputCostPerMtoken,
    key: r'llm_input_cost_per_mtoken',
  );
  static double _$llmOutputCostPerMtoken(LLMModelPrice v) =>
      v.llmOutputCostPerMtoken;
  static const Field<LLMModelPrice, double> _f$llmOutputCostPerMtoken = Field(
    'llmOutputCostPerMtoken',
    _$llmOutputCostPerMtoken,
    key: r'llm_output_cost_per_mtoken',
  );

  @override
  final MappableFields<LLMModelPrice> fields = const {
    #id: _f$id,
    #name: _f$name,
    #llmInputCostPerMtoken: _f$llmInputCostPerMtoken,
    #llmOutputCostPerMtoken: _f$llmOutputCostPerMtoken,
  };

  static LLMModelPrice _instantiate(DecodingData data) {
    return LLMModelPrice(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      llmInputCostPerMtoken: data.dec(_f$llmInputCostPerMtoken),
      llmOutputCostPerMtoken: data.dec(_f$llmOutputCostPerMtoken),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LLMModelPrice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LLMModelPrice>(map);
  }

  static LLMModelPrice fromJson(String json) {
    return ensureInitialized().decodeJson<LLMModelPrice>(json);
  }
}

mixin LLMModelPriceMappable {
  String toJson() {
    return LLMModelPriceMapper.ensureInitialized().encodeJson<LLMModelPrice>(
      this as LLMModelPrice,
    );
  }

  Map<String, dynamic> toMap() {
    return LLMModelPriceMapper.ensureInitialized().encodeMap<LLMModelPrice>(
      this as LLMModelPrice,
    );
  }

  LLMModelPriceCopyWith<LLMModelPrice, LLMModelPrice, LLMModelPrice>
  get copyWith => _LLMModelPriceCopyWithImpl<LLMModelPrice, LLMModelPrice>(
    this as LLMModelPrice,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return LLMModelPriceMapper.ensureInitialized().stringifyValue(
      this as LLMModelPrice,
    );
  }

  @override
  bool operator ==(Object other) {
    return LLMModelPriceMapper.ensureInitialized().equalsValue(
      this as LLMModelPrice,
      other,
    );
  }

  @override
  int get hashCode {
    return LLMModelPriceMapper.ensureInitialized().hashValue(
      this as LLMModelPrice,
    );
  }
}

extension LLMModelPriceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LLMModelPrice, $Out> {
  LLMModelPriceCopyWith<$R, LLMModelPrice, $Out> get $asLLMModelPrice =>
      $base.as((v, t, t2) => _LLMModelPriceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LLMModelPriceCopyWith<$R, $In extends LLMModelPrice, $Out>
    implements ModelPriceCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    String? name,
    double? llmInputCostPerMtoken,
    double? llmOutputCostPerMtoken,
  });
  LLMModelPriceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LLMModelPriceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LLMModelPrice, $Out>
    implements LLMModelPriceCopyWith<$R, LLMModelPrice, $Out> {
  _LLMModelPriceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LLMModelPrice> $mapper =
      LLMModelPriceMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? name,
    double? llmInputCostPerMtoken,
    double? llmOutputCostPerMtoken,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (llmInputCostPerMtoken != null)
        #llmInputCostPerMtoken: llmInputCostPerMtoken,
      if (llmOutputCostPerMtoken != null)
        #llmOutputCostPerMtoken: llmOutputCostPerMtoken,
    }),
  );
  @override
  LLMModelPrice $make(CopyWithData data) => LLMModelPrice(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    llmInputCostPerMtoken: data.get(
      #llmInputCostPerMtoken,
      or: $value.llmInputCostPerMtoken,
    ),
    llmOutputCostPerMtoken: data.get(
      #llmOutputCostPerMtoken,
      or: $value.llmOutputCostPerMtoken,
    ),
  );

  @override
  LLMModelPriceCopyWith<$R2, LLMModelPrice, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LLMModelPriceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EmbeddingModelPriceMapper extends ClassMapperBase<EmbeddingModelPrice> {
  EmbeddingModelPriceMapper._();

  static EmbeddingModelPriceMapper? _instance;
  static EmbeddingModelPriceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmbeddingModelPriceMapper._());
      ModelPriceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EmbeddingModelPrice';

  static String _$id(EmbeddingModelPrice v) => v.id;
  static const Field<EmbeddingModelPrice, String> _f$id = Field('id', _$id);
  static String _$name(EmbeddingModelPrice v) => v.name;
  static const Field<EmbeddingModelPrice, String> _f$name = Field(
    'name',
    _$name,
  );
  static double _$embeddingCostPerMtoken(EmbeddingModelPrice v) =>
      v.embeddingCostPerMtoken;
  static const Field<EmbeddingModelPrice, double> _f$embeddingCostPerMtoken =
      Field(
        'embeddingCostPerMtoken',
        _$embeddingCostPerMtoken,
        key: r'embedding_cost_per_mtoken',
      );

  @override
  final MappableFields<EmbeddingModelPrice> fields = const {
    #id: _f$id,
    #name: _f$name,
    #embeddingCostPerMtoken: _f$embeddingCostPerMtoken,
  };

  static EmbeddingModelPrice _instantiate(DecodingData data) {
    return EmbeddingModelPrice(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      embeddingCostPerMtoken: data.dec(_f$embeddingCostPerMtoken),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EmbeddingModelPrice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmbeddingModelPrice>(map);
  }

  static EmbeddingModelPrice fromJson(String json) {
    return ensureInitialized().decodeJson<EmbeddingModelPrice>(json);
  }
}

mixin EmbeddingModelPriceMappable {
  String toJson() {
    return EmbeddingModelPriceMapper.ensureInitialized()
        .encodeJson<EmbeddingModelPrice>(this as EmbeddingModelPrice);
  }

  Map<String, dynamic> toMap() {
    return EmbeddingModelPriceMapper.ensureInitialized()
        .encodeMap<EmbeddingModelPrice>(this as EmbeddingModelPrice);
  }

  EmbeddingModelPriceCopyWith<
    EmbeddingModelPrice,
    EmbeddingModelPrice,
    EmbeddingModelPrice
  >
  get copyWith =>
      _EmbeddingModelPriceCopyWithImpl<
        EmbeddingModelPrice,
        EmbeddingModelPrice
      >(this as EmbeddingModelPrice, $identity, $identity);
  @override
  String toString() {
    return EmbeddingModelPriceMapper.ensureInitialized().stringifyValue(
      this as EmbeddingModelPrice,
    );
  }

  @override
  bool operator ==(Object other) {
    return EmbeddingModelPriceMapper.ensureInitialized().equalsValue(
      this as EmbeddingModelPrice,
      other,
    );
  }

  @override
  int get hashCode {
    return EmbeddingModelPriceMapper.ensureInitialized().hashValue(
      this as EmbeddingModelPrice,
    );
  }
}

extension EmbeddingModelPriceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmbeddingModelPrice, $Out> {
  EmbeddingModelPriceCopyWith<$R, EmbeddingModelPrice, $Out>
  get $asEmbeddingModelPrice => $base.as(
    (v, t, t2) => _EmbeddingModelPriceCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EmbeddingModelPriceCopyWith<
  $R,
  $In extends EmbeddingModelPrice,
  $Out
>
    implements ModelPriceCopyWith<$R, $In, $Out> {
  @override
  $R call({String? id, String? name, double? embeddingCostPerMtoken});
  EmbeddingModelPriceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EmbeddingModelPriceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmbeddingModelPrice, $Out>
    implements EmbeddingModelPriceCopyWith<$R, EmbeddingModelPrice, $Out> {
  _EmbeddingModelPriceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmbeddingModelPrice> $mapper =
      EmbeddingModelPriceMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, double? embeddingCostPerMtoken}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (embeddingCostPerMtoken != null)
        #embeddingCostPerMtoken: embeddingCostPerMtoken,
    }),
  );
  @override
  EmbeddingModelPrice $make(CopyWithData data) => EmbeddingModelPrice(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    embeddingCostPerMtoken: data.get(
      #embeddingCostPerMtoken,
      or: $value.embeddingCostPerMtoken,
    ),
  );

  @override
  EmbeddingModelPriceCopyWith<$R2, EmbeddingModelPrice, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EmbeddingModelPriceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RerankingModelPriceMapper extends ClassMapperBase<RerankingModelPrice> {
  RerankingModelPriceMapper._();

  static RerankingModelPriceMapper? _instance;
  static RerankingModelPriceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RerankingModelPriceMapper._());
      ModelPriceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RerankingModelPrice';

  static String _$id(RerankingModelPrice v) => v.id;
  static const Field<RerankingModelPrice, String> _f$id = Field('id', _$id);
  static String _$name(RerankingModelPrice v) => v.name;
  static const Field<RerankingModelPrice, String> _f$name = Field(
    'name',
    _$name,
  );
  static double _$rerankingCostPerKsearch(RerankingModelPrice v) =>
      v.rerankingCostPerKsearch;
  static const Field<RerankingModelPrice, double> _f$rerankingCostPerKsearch =
      Field(
        'rerankingCostPerKsearch',
        _$rerankingCostPerKsearch,
        key: r'reranking_cost_per_ksearch',
      );

  @override
  final MappableFields<RerankingModelPrice> fields = const {
    #id: _f$id,
    #name: _f$name,
    #rerankingCostPerKsearch: _f$rerankingCostPerKsearch,
  };

  static RerankingModelPrice _instantiate(DecodingData data) {
    return RerankingModelPrice(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      rerankingCostPerKsearch: data.dec(_f$rerankingCostPerKsearch),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RerankingModelPrice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RerankingModelPrice>(map);
  }

  static RerankingModelPrice fromJson(String json) {
    return ensureInitialized().decodeJson<RerankingModelPrice>(json);
  }
}

mixin RerankingModelPriceMappable {
  String toJson() {
    return RerankingModelPriceMapper.ensureInitialized()
        .encodeJson<RerankingModelPrice>(this as RerankingModelPrice);
  }

  Map<String, dynamic> toMap() {
    return RerankingModelPriceMapper.ensureInitialized()
        .encodeMap<RerankingModelPrice>(this as RerankingModelPrice);
  }

  RerankingModelPriceCopyWith<
    RerankingModelPrice,
    RerankingModelPrice,
    RerankingModelPrice
  >
  get copyWith =>
      _RerankingModelPriceCopyWithImpl<
        RerankingModelPrice,
        RerankingModelPrice
      >(this as RerankingModelPrice, $identity, $identity);
  @override
  String toString() {
    return RerankingModelPriceMapper.ensureInitialized().stringifyValue(
      this as RerankingModelPrice,
    );
  }

  @override
  bool operator ==(Object other) {
    return RerankingModelPriceMapper.ensureInitialized().equalsValue(
      this as RerankingModelPrice,
      other,
    );
  }

  @override
  int get hashCode {
    return RerankingModelPriceMapper.ensureInitialized().hashValue(
      this as RerankingModelPrice,
    );
  }
}

extension RerankingModelPriceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RerankingModelPrice, $Out> {
  RerankingModelPriceCopyWith<$R, RerankingModelPrice, $Out>
  get $asRerankingModelPrice => $base.as(
    (v, t, t2) => _RerankingModelPriceCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RerankingModelPriceCopyWith<
  $R,
  $In extends RerankingModelPrice,
  $Out
>
    implements ModelPriceCopyWith<$R, $In, $Out> {
  @override
  $R call({String? id, String? name, double? rerankingCostPerKsearch});
  RerankingModelPriceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RerankingModelPriceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RerankingModelPrice, $Out>
    implements RerankingModelPriceCopyWith<$R, RerankingModelPrice, $Out> {
  _RerankingModelPriceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RerankingModelPrice> $mapper =
      RerankingModelPriceMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, double? rerankingCostPerKsearch}) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (name != null) #name: name,
          if (rerankingCostPerKsearch != null)
            #rerankingCostPerKsearch: rerankingCostPerKsearch,
        }),
      );
  @override
  RerankingModelPrice $make(CopyWithData data) => RerankingModelPrice(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    rerankingCostPerKsearch: data.get(
      #rerankingCostPerKsearch,
      or: $value.rerankingCostPerKsearch,
    ),
  );

  @override
  RerankingModelPriceCopyWith<$R2, RerankingModelPrice, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RerankingModelPriceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModelPriceResponseMapper extends ClassMapperBase<ModelPriceResponse> {
  ModelPriceResponseMapper._();

  static ModelPriceResponseMapper? _instance;
  static ModelPriceResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelPriceResponseMapper._());
      LLMModelPriceMapper.ensureInitialized();
      EmbeddingModelPriceMapper.ensureInitialized();
      RerankingModelPriceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelPriceResponse';

  static String _$object(ModelPriceResponse v) => v.object;
  static const Field<ModelPriceResponse, String> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: "prices.models",
  );
  static List<LLMModelPrice> _$llmModels(ModelPriceResponse v) => v.llmModels;
  static const Field<ModelPriceResponse, List<LLMModelPrice>> _f$llmModels =
      Field(
        'llmModels',
        _$llmModels,
        key: r'llm_models',
        opt: true,
        def: const [],
      );
  static List<EmbeddingModelPrice> _$embedModels(ModelPriceResponse v) =>
      v.embedModels;
  static const Field<ModelPriceResponse, List<EmbeddingModelPrice>>
  _f$embedModels = Field(
    'embedModels',
    _$embedModels,
    key: r'embed_models',
    opt: true,
    def: const [],
  );
  static List<RerankingModelPrice> _$rerankModels(ModelPriceResponse v) =>
      v.rerankModels;
  static const Field<ModelPriceResponse, List<RerankingModelPrice>>
  _f$rerankModels = Field(
    'rerankModels',
    _$rerankModels,
    key: r'rerank_models',
    opt: true,
    def: const [],
  );
  static Map<String, dynamic> _$modelMap(ModelPriceResponse v) => v.modelMap;
  static const Field<ModelPriceResponse, Map<String, dynamic>> _f$modelMap =
      Field('modelMap', _$modelMap, key: r'model_map', mode: FieldMode.member);

  @override
  final MappableFields<ModelPriceResponse> fields = const {
    #object: _f$object,
    #llmModels: _f$llmModels,
    #embedModels: _f$embedModels,
    #rerankModels: _f$rerankModels,
    #modelMap: _f$modelMap,
  };

  static ModelPriceResponse _instantiate(DecodingData data) {
    return ModelPriceResponse(
      object: data.dec(_f$object),
      llmModels: data.dec(_f$llmModels),
      embedModels: data.dec(_f$embedModels),
      rerankModels: data.dec(_f$rerankModels),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModelPriceResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelPriceResponse>(map);
  }

  static ModelPriceResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ModelPriceResponse>(json);
  }
}

mixin ModelPriceResponseMappable {
  String toJson() {
    return ModelPriceResponseMapper.ensureInitialized()
        .encodeJson<ModelPriceResponse>(this as ModelPriceResponse);
  }

  Map<String, dynamic> toMap() {
    return ModelPriceResponseMapper.ensureInitialized()
        .encodeMap<ModelPriceResponse>(this as ModelPriceResponse);
  }

  ModelPriceResponseCopyWith<
    ModelPriceResponse,
    ModelPriceResponse,
    ModelPriceResponse
  >
  get copyWith =>
      _ModelPriceResponseCopyWithImpl<ModelPriceResponse, ModelPriceResponse>(
        this as ModelPriceResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ModelPriceResponseMapper.ensureInitialized().stringifyValue(
      this as ModelPriceResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModelPriceResponseMapper.ensureInitialized().equalsValue(
      this as ModelPriceResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return ModelPriceResponseMapper.ensureInitialized().hashValue(
      this as ModelPriceResponse,
    );
  }
}

extension ModelPriceResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModelPriceResponse, $Out> {
  ModelPriceResponseCopyWith<$R, ModelPriceResponse, $Out>
  get $asModelPriceResponse => $base.as(
    (v, t, t2) => _ModelPriceResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ModelPriceResponseCopyWith<
  $R,
  $In extends ModelPriceResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    LLMModelPrice,
    LLMModelPriceCopyWith<$R, LLMModelPrice, LLMModelPrice>
  >
  get llmModels;
  ListCopyWith<
    $R,
    EmbeddingModelPrice,
    EmbeddingModelPriceCopyWith<$R, EmbeddingModelPrice, EmbeddingModelPrice>
  >
  get embedModels;
  ListCopyWith<
    $R,
    RerankingModelPrice,
    RerankingModelPriceCopyWith<$R, RerankingModelPrice, RerankingModelPrice>
  >
  get rerankModels;
  $R call({
    String? object,
    List<LLMModelPrice>? llmModels,
    List<EmbeddingModelPrice>? embedModels,
    List<RerankingModelPrice>? rerankModels,
  });
  ModelPriceResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ModelPriceResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelPriceResponse, $Out>
    implements ModelPriceResponseCopyWith<$R, ModelPriceResponse, $Out> {
  _ModelPriceResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelPriceResponse> $mapper =
      ModelPriceResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    LLMModelPrice,
    LLMModelPriceCopyWith<$R, LLMModelPrice, LLMModelPrice>
  >
  get llmModels => ListCopyWith(
    $value.llmModels,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(llmModels: v),
  );
  @override
  ListCopyWith<
    $R,
    EmbeddingModelPrice,
    EmbeddingModelPriceCopyWith<$R, EmbeddingModelPrice, EmbeddingModelPrice>
  >
  get embedModels => ListCopyWith(
    $value.embedModels,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(embedModels: v),
  );
  @override
  ListCopyWith<
    $R,
    RerankingModelPrice,
    RerankingModelPriceCopyWith<$R, RerankingModelPrice, RerankingModelPrice>
  >
  get rerankModels => ListCopyWith(
    $value.rerankModels,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(rerankModels: v),
  );
  @override
  $R call({
    String? object,
    List<LLMModelPrice>? llmModels,
    List<EmbeddingModelPrice>? embedModels,
    List<RerankingModelPrice>? rerankModels,
  }) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (llmModels != null) #llmModels: llmModels,
      if (embedModels != null) #embedModels: embedModels,
      if (rerankModels != null) #rerankModels: rerankModels,
    }),
  );
  @override
  ModelPriceResponse $make(CopyWithData data) => ModelPriceResponse(
    object: data.get(#object, or: $value.object),
    llmModels: data.get(#llmModels, or: $value.llmModels),
    embedModels: data.get(#embedModels, or: $value.embedModels),
    rerankModels: data.get(#rerankModels, or: $value.rerankModels),
  );

  @override
  ModelPriceResponseCopyWith<$R2, ModelPriceResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModelPriceResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

