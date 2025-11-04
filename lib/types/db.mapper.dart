// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'db.dart';

class ProductTypeMapper extends EnumMapper<ProductType> {
  ProductTypeMapper._();

  static ProductTypeMapper? _instance;
  static ProductTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductTypeMapper._());
    }
    return _instance!;
  }

  static ProductType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ProductType decode(dynamic value) {
    switch (value) {
      case r'credit':
        return ProductType.credit;
      case r'credit_grant':
        return ProductType.creditGrant;
      case r'llm_tokens':
        return ProductType.llmTokens;
      case r'embedding_tokens':
        return ProductType.embeddingTokens;
      case r'reranker_searches':
        return ProductType.rerankerSearches;
      case r'db_storage':
        return ProductType.dbStorage;
      case r'file_storage':
        return ProductType.fileStorage;
      case r'egress':
        return ProductType.egress;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ProductType self) {
    switch (self) {
      case ProductType.credit:
        return r'credit';
      case ProductType.creditGrant:
        return r'credit_grant';
      case ProductType.llmTokens:
        return r'llm_tokens';
      case ProductType.embeddingTokens:
        return r'embedding_tokens';
      case ProductType.rerankerSearches:
        return r'reranker_searches';
      case ProductType.dbStorage:
        return r'db_storage';
      case ProductType.fileStorage:
        return r'file_storage';
      case ProductType.egress:
        return r'egress';
    }
  }
}

extension ProductTypeMapperExtension on ProductType {
  String toValue() {
    ProductTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ProductType>(this) as String;
  }
}

class OnPremProviderMapper extends EnumMapper<OnPremProvider> {
  OnPremProviderMapper._();

  static OnPremProviderMapper? _instance;
  static OnPremProviderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OnPremProviderMapper._());
    }
    return _instance!;
  }

  static OnPremProvider fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  OnPremProvider decode(dynamic value) {
    switch (value) {
      case r'vllm':
        return OnPremProvider.vllm;
      case r'vllm_amd':
        return OnPremProvider.vllmAmd;
      case r'ollama':
        return OnPremProvider.ollama;
      case r'infinity':
        return OnPremProvider.infinity;
      case r'infinity_cpu':
        return OnPremProvider.infinityCpu;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(OnPremProvider self) {
    switch (self) {
      case OnPremProvider.vllm:
        return r'vllm';
      case OnPremProvider.vllmAmd:
        return r'vllm_amd';
      case OnPremProvider.ollama:
        return r'ollama';
      case OnPremProvider.infinity:
        return r'infinity';
      case OnPremProvider.infinityCpu:
        return r'infinity_cpu';
    }
  }
}

extension OnPremProviderMapperExtension on OnPremProvider {
  String toValue() {
    OnPremProviderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<OnPremProvider>(this) as String;
  }
}

class CloudProviderMapper extends EnumMapper<CloudProvider> {
  CloudProviderMapper._();

  static CloudProviderMapper? _instance;
  static CloudProviderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CloudProviderMapper._());
    }
    return _instance!;
  }

  static CloudProvider fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CloudProvider decode(dynamic value) {
    switch (value) {
      case r'anthropic':
        return CloudProvider.anthropic;
      case r'azure':
        return CloudProvider.azure;
      case r'azure_ai':
        return CloudProvider.azureAi;
      case r'bedrock':
        return CloudProvider.bedrock;
      case r'cerebras':
        return CloudProvider.cerebras;
      case r'cohere':
        return CloudProvider.cohere;
      case r'deepseek':
        return CloudProvider.deepseek;
      case r'ellm':
        return CloudProvider.ellm;
      case r'fireworks_ai':
        return CloudProvider.fireworksAi;
      case r'gemini':
        return CloudProvider.gemini;
      case r'groq':
        return CloudProvider.groq;
      case r'hyperbolic':
        return CloudProvider.hyperbolic;
      case r'infinity_cloud':
        return CloudProvider.infinityCloud;
      case r'jina_ai':
        return CloudProvider.jinaAi;
      case r'openai':
        return CloudProvider.openai;
      case r'openrouter':
        return CloudProvider.openrouter;
      case r'sagemaker':
        return CloudProvider.sagemaker;
      case r'sambanova':
        return CloudProvider.sambanova;
      case r'together_ai':
        return CloudProvider.togetherAi;
      case r'voyage':
        return CloudProvider.voyage;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CloudProvider self) {
    switch (self) {
      case CloudProvider.anthropic:
        return r'anthropic';
      case CloudProvider.azure:
        return r'azure';
      case CloudProvider.azureAi:
        return r'azure_ai';
      case CloudProvider.bedrock:
        return r'bedrock';
      case CloudProvider.cerebras:
        return r'cerebras';
      case CloudProvider.cohere:
        return r'cohere';
      case CloudProvider.deepseek:
        return r'deepseek';
      case CloudProvider.ellm:
        return r'ellm';
      case CloudProvider.fireworksAi:
        return r'fireworks_ai';
      case CloudProvider.gemini:
        return r'gemini';
      case CloudProvider.groq:
        return r'groq';
      case CloudProvider.hyperbolic:
        return r'hyperbolic';
      case CloudProvider.infinityCloud:
        return r'infinity_cloud';
      case CloudProvider.jinaAi:
        return r'jina_ai';
      case CloudProvider.openai:
        return r'openai';
      case CloudProvider.openrouter:
        return r'openrouter';
      case CloudProvider.sagemaker:
        return r'sagemaker';
      case CloudProvider.sambanova:
        return r'sambanova';
      case CloudProvider.togetherAi:
        return r'together_ai';
      case CloudProvider.voyage:
        return r'voyage';
    }
  }
}

extension CloudProviderMapperExtension on CloudProvider {
  String toValue() {
    CloudProviderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CloudProvider>(this) as String;
  }
}

class ModelProviderMapper extends EnumMapper<ModelProvider> {
  ModelProviderMapper._();

  static ModelProviderMapper? _instance;
  static ModelProviderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelProviderMapper._());
    }
    return _instance!;
  }

  static ModelProvider fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ModelProvider decode(dynamic value) {
    switch (value) {
      case r'anthropic':
        return ModelProvider.anthropic;
      case r'cohere':
        return ModelProvider.cohere;
      case r'deepseek':
        return ModelProvider.deepseek;
      case r'gemini':
        return ModelProvider.gemini;
      case r'jina_ai':
        return ModelProvider.jinaAi;
      case r'openai':
        return ModelProvider.openai;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ModelProvider self) {
    switch (self) {
      case ModelProvider.anthropic:
        return r'anthropic';
      case ModelProvider.cohere:
        return r'cohere';
      case ModelProvider.deepseek:
        return r'deepseek';
      case ModelProvider.gemini:
        return r'gemini';
      case ModelProvider.jinaAi:
        return r'jina_ai';
      case ModelProvider.openai:
        return r'openai';
    }
  }
}

extension ModelProviderMapperExtension on ModelProvider {
  String toValue() {
    ModelProviderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ModelProvider>(this) as String;
  }
}

class DeploymentStatusMapper extends EnumMapper<DeploymentStatus> {
  DeploymentStatusMapper._();

  static DeploymentStatusMapper? _instance;
  static DeploymentStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeploymentStatusMapper._());
    }
    return _instance!;
  }

  static DeploymentStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DeploymentStatus decode(dynamic value) {
    switch (value) {
      case r'active':
        return DeploymentStatus.active;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DeploymentStatus self) {
    switch (self) {
      case DeploymentStatus.active:
        return r'active';
    }
  }
}

extension DeploymentStatusMapperExtension on DeploymentStatus {
  String toValue() {
    DeploymentStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DeploymentStatus>(this) as String;
  }
}

class ModelTypeMapper extends EnumMapper<ModelType> {
  ModelTypeMapper._();

  static ModelTypeMapper? _instance;
  static ModelTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelTypeMapper._());
    }
    return _instance!;
  }

  static ModelType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ModelType decode(dynamic value) {
    switch (value) {
      case r'completion':
        return ModelType.completion;
      case r'llm':
        return ModelType.llm;
      case r'embed':
        return ModelType.embed;
      case r'rerank':
        return ModelType.rerank;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ModelType self) {
    switch (self) {
      case ModelType.completion:
        return r'completion';
      case ModelType.llm:
        return r'llm';
      case ModelType.embed:
        return r'embed';
      case ModelType.rerank:
        return r'rerank';
    }
  }
}

extension ModelTypeMapperExtension on ModelType {
  String toValue() {
    ModelTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ModelType>(this) as String;
  }
}

class ModelCapabilityMapper extends EnumMapper<ModelCapability> {
  ModelCapabilityMapper._();

  static ModelCapabilityMapper? _instance;
  static ModelCapabilityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelCapabilityMapper._());
    }
    return _instance!;
  }

  static ModelCapability fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ModelCapability decode(dynamic value) {
    switch (value) {
      case r'completion':
        return ModelCapability.completion;
      case r'chat':
        return ModelCapability.chat;
      case r'tool':
        return ModelCapability.tool;
      case r'image':
        return ModelCapability.image;
      case r'audio':
        return ModelCapability.audio;
      case r'embed':
        return ModelCapability.embed;
      case r'rerank':
        return ModelCapability.rerank;
      case r'reasoning':
        return ModelCapability.reasoning;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ModelCapability self) {
    switch (self) {
      case ModelCapability.completion:
        return r'completion';
      case ModelCapability.chat:
        return r'chat';
      case ModelCapability.tool:
        return r'tool';
      case ModelCapability.image:
        return r'image';
      case ModelCapability.audio:
        return r'audio';
      case ModelCapability.embed:
        return r'embed';
      case ModelCapability.rerank:
        return r'rerank';
      case ModelCapability.reasoning:
        return r'reasoning';
    }
  }
}

extension ModelCapabilityMapperExtension on ModelCapability {
  String toValue() {
    ModelCapabilityMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ModelCapability>(this) as String;
  }
}

class RoleMapper extends EnumMapper<Role> {
  RoleMapper._();

  static RoleMapper? _instance;
  static RoleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoleMapper._());
    }
    return _instance!;
  }

  static Role fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Role decode(dynamic value) {
    switch (value) {
      case r'admin':
        return Role.admin;
      case r'member':
        return Role.member;
      case r'guest':
        return Role.guest;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Role self) {
    switch (self) {
      case Role.admin:
        return r'admin';
      case Role.member:
        return r'member';
      case Role.guest:
        return r'guest';
    }
  }
}

extension RoleMapperExtension on Role {
  String toValue() {
    RoleMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Role>(this) as String;
  }
}

class RankedRoleMapper extends EnumMapper<RankedRole> {
  RankedRoleMapper._();

  static RankedRoleMapper? _instance;
  static RankedRoleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RankedRoleMapper._());
    }
    return _instance!;
  }

  static RankedRole fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  RankedRole decode(dynamic value) {
    switch (value) {
      case r'guest':
        return RankedRole.guest;
      case r'member':
        return RankedRole.member;
      case r'admin':
        return RankedRole.admin;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(RankedRole self) {
    switch (self) {
      case RankedRole.guest:
        return r'guest';
      case RankedRole.member:
        return r'member';
      case RankedRole.admin:
        return r'admin';
    }
  }
}

extension RankedRoleMapperExtension on RankedRole {
  String toValue() {
    RankedRoleMapper.ensureInitialized();
    return MapperContainer.globals.toValue<RankedRole>(this) as String;
  }
}

class PaymentStateMapper extends EnumMapper<PaymentState> {
  PaymentStateMapper._();

  static PaymentStateMapper? _instance;
  static PaymentStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentStateMapper._());
    }
    return _instance!;
  }

  static PaymentState fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PaymentState decode(dynamic value) {
    switch (value) {
      case r'NONE':
        return PaymentState.none;
      case r'SUCCESS':
        return PaymentState.success;
      case r'PROCESSING':
        return PaymentState.processing;
      case r'FAILED':
        return PaymentState.failed;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PaymentState self) {
    switch (self) {
      case PaymentState.none:
        return r'NONE';
      case PaymentState.success:
        return r'SUCCESS';
      case PaymentState.processing:
        return r'PROCESSING';
      case PaymentState.failed:
        return r'FAILED';
    }
  }
}

extension PaymentStateMapperExtension on PaymentState {
  String toValue() {
    PaymentStateMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PaymentState>(this) as String;
  }
}

class PriceTierMapper extends ClassMapperBase<PriceTier> {
  PriceTierMapper._();

  static PriceTierMapper? _instance;
  static PriceTierMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PriceTierMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PriceTier';

  static double _$unitCost(PriceTier v) => v.unitCost;
  static const Field<PriceTier, double> _f$unitCost = Field(
    'unitCost',
    _$unitCost,
    key: r'unit_cost',
  );
  static double? _$upTo(PriceTier v) => v.upTo;
  static const Field<PriceTier, double> _f$upTo = Field(
    'upTo',
    _$upTo,
    key: r'up_to',
    opt: true,
  );

  @override
  final MappableFields<PriceTier> fields = const {
    #unitCost: _f$unitCost,
    #upTo: _f$upTo,
  };

  static PriceTier _instantiate(DecodingData data) {
    return PriceTier(unitCost: data.dec(_f$unitCost), upTo: data.dec(_f$upTo));
  }

  @override
  final Function instantiate = _instantiate;

  static PriceTier fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PriceTier>(map);
  }

  static PriceTier fromJson(String json) {
    return ensureInitialized().decodeJson<PriceTier>(json);
  }
}

mixin PriceTierMappable {
  String toJson() {
    return PriceTierMapper.ensureInitialized().encodeJson<PriceTier>(
      this as PriceTier,
    );
  }

  Map<String, dynamic> toMap() {
    return PriceTierMapper.ensureInitialized().encodeMap<PriceTier>(
      this as PriceTier,
    );
  }

  PriceTierCopyWith<PriceTier, PriceTier, PriceTier> get copyWith =>
      _PriceTierCopyWithImpl<PriceTier, PriceTier>(
        this as PriceTier,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PriceTierMapper.ensureInitialized().stringifyValue(
      this as PriceTier,
    );
  }

  @override
  bool operator ==(Object other) {
    return PriceTierMapper.ensureInitialized().equalsValue(
      this as PriceTier,
      other,
    );
  }

  @override
  int get hashCode {
    return PriceTierMapper.ensureInitialized().hashValue(this as PriceTier);
  }
}

extension PriceTierValueCopy<$R, $Out> on ObjectCopyWith<$R, PriceTier, $Out> {
  PriceTierCopyWith<$R, PriceTier, $Out> get $asPriceTier =>
      $base.as((v, t, t2) => _PriceTierCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PriceTierCopyWith<$R, $In extends PriceTier, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? unitCost, double? upTo});
  PriceTierCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PriceTierCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PriceTier, $Out>
    implements PriceTierCopyWith<$R, PriceTier, $Out> {
  _PriceTierCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PriceTier> $mapper =
      PriceTierMapper.ensureInitialized();
  @override
  $R call({double? unitCost, Object? upTo = $none}) => $apply(
    FieldCopyWithData({
      if (unitCost != null) #unitCost: unitCost,
      if (upTo != $none) #upTo: upTo,
    }),
  );
  @override
  PriceTier $make(CopyWithData data) => PriceTier(
    unitCost: data.get(#unitCost, or: $value.unitCost),
    upTo: data.get(#upTo, or: $value.upTo),
  );

  @override
  PriceTierCopyWith<$R2, PriceTier, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PriceTierCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProductMapper extends ClassMapperBase<Product> {
  ProductMapper._();

  static ProductMapper? _instance;
  static ProductMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductMapper._());
      PriceTierMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Product';

  static String _$name(Product v) => v.name;
  static const Field<Product, String> _f$name = Field('name', _$name);
  static PriceTier _$included(Product v) => v.included;
  static const Field<Product, PriceTier> _f$included = Field(
    'included',
    _$included,
  );
  static List<PriceTier> _$tiers(Product v) => v.tiers;
  static const Field<Product, List<PriceTier>> _f$tiers = Field(
    'tiers',
    _$tiers,
  );
  static String _$unit(Product v) => v.unit;
  static const Field<Product, String> _f$unit = Field('unit', _$unit);

  @override
  final MappableFields<Product> fields = const {
    #name: _f$name,
    #included: _f$included,
    #tiers: _f$tiers,
    #unit: _f$unit,
  };

  static Product _instantiate(DecodingData data) {
    return Product(
      name: data.dec(_f$name),
      included: data.dec(_f$included),
      tiers: data.dec(_f$tiers),
      unit: data.dec(_f$unit),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Product fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Product>(map);
  }

  static Product fromJson(String json) {
    return ensureInitialized().decodeJson<Product>(json);
  }
}

mixin ProductMappable {
  String toJson() {
    return ProductMapper.ensureInitialized().encodeJson<Product>(
      this as Product,
    );
  }

  Map<String, dynamic> toMap() {
    return ProductMapper.ensureInitialized().encodeMap<Product>(
      this as Product,
    );
  }

  ProductCopyWith<Product, Product, Product> get copyWith =>
      _ProductCopyWithImpl<Product, Product>(
        this as Product,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProductMapper.ensureInitialized().stringifyValue(this as Product);
  }

  @override
  bool operator ==(Object other) {
    return ProductMapper.ensureInitialized().equalsValue(
      this as Product,
      other,
    );
  }

  @override
  int get hashCode {
    return ProductMapper.ensureInitialized().hashValue(this as Product);
  }
}

extension ProductValueCopy<$R, $Out> on ObjectCopyWith<$R, Product, $Out> {
  ProductCopyWith<$R, Product, $Out> get $asProduct =>
      $base.as((v, t, t2) => _ProductCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProductCopyWith<$R, $In extends Product, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PriceTierCopyWith<$R, PriceTier, PriceTier> get included;
  ListCopyWith<$R, PriceTier, PriceTierCopyWith<$R, PriceTier, PriceTier>>
  get tiers;
  $R call({
    String? name,
    PriceTier? included,
    List<PriceTier>? tiers,
    String? unit,
  });
  ProductCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProductCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Product, $Out>
    implements ProductCopyWith<$R, Product, $Out> {
  _ProductCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Product> $mapper =
      ProductMapper.ensureInitialized();
  @override
  PriceTierCopyWith<$R, PriceTier, PriceTier> get included =>
      $value.included.copyWith.$chain((v) => call(included: v));
  @override
  ListCopyWith<$R, PriceTier, PriceTierCopyWith<$R, PriceTier, PriceTier>>
  get tiers => ListCopyWith(
    $value.tiers,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(tiers: v),
  );
  @override
  $R call({
    String? name,
    PriceTier? included,
    List<PriceTier>? tiers,
    String? unit,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (included != null) #included: included,
      if (tiers != null) #tiers: tiers,
      if (unit != null) #unit: unit,
    }),
  );
  @override
  Product $make(CopyWithData data) => Product(
    name: data.get(#name, or: $value.name),
    included: data.get(#included, or: $value.included),
    tiers: data.get(#tiers, or: $value.tiers),
    unit: data.get(#unit, or: $value.unit),
  );

  @override
  ProductCopyWith<$R2, Product, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProductCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProductsMapper extends ClassMapperBase<Products> {
  ProductsMapper._();

  static ProductsMapper? _instance;
  static ProductsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductsMapper._());
      ProductMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Products';

  static Product _$llmTokens(Products v) => v.llmTokens;
  static const Field<Products, Product> _f$llmTokens = Field(
    'llmTokens',
    _$llmTokens,
    key: r'llm_tokens',
  );
  static Product _$embeddingTokens(Products v) => v.embeddingTokens;
  static const Field<Products, Product> _f$embeddingTokens = Field(
    'embeddingTokens',
    _$embeddingTokens,
    key: r'embedding_tokens',
  );
  static Product _$rerankerSearches(Products v) => v.rerankerSearches;
  static const Field<Products, Product> _f$rerankerSearches = Field(
    'rerankerSearches',
    _$rerankerSearches,
    key: r'reranker_searches',
  );
  static Product _$dbStorage(Products v) => v.dbStorage;
  static const Field<Products, Product> _f$dbStorage = Field(
    'dbStorage',
    _$dbStorage,
    key: r'db_storage',
  );
  static Product _$fileStorage(Products v) => v.fileStorage;
  static const Field<Products, Product> _f$fileStorage = Field(
    'fileStorage',
    _$fileStorage,
    key: r'file_storage',
  );
  static Product _$egress(Products v) => v.egress;
  static const Field<Products, Product> _f$egress = Field('egress', _$egress);

  @override
  final MappableFields<Products> fields = const {
    #llmTokens: _f$llmTokens,
    #embeddingTokens: _f$embeddingTokens,
    #rerankerSearches: _f$rerankerSearches,
    #dbStorage: _f$dbStorage,
    #fileStorage: _f$fileStorage,
    #egress: _f$egress,
  };

  static Products _instantiate(DecodingData data) {
    return Products(
      llmTokens: data.dec(_f$llmTokens),
      embeddingTokens: data.dec(_f$embeddingTokens),
      rerankerSearches: data.dec(_f$rerankerSearches),
      dbStorage: data.dec(_f$dbStorage),
      fileStorage: data.dec(_f$fileStorage),
      egress: data.dec(_f$egress),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Products fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Products>(map);
  }

  static Products fromJson(String json) {
    return ensureInitialized().decodeJson<Products>(json);
  }
}

mixin ProductsMappable {
  String toJson() {
    return ProductsMapper.ensureInitialized().encodeJson<Products>(
      this as Products,
    );
  }

  Map<String, dynamic> toMap() {
    return ProductsMapper.ensureInitialized().encodeMap<Products>(
      this as Products,
    );
  }

  ProductsCopyWith<Products, Products, Products> get copyWith =>
      _ProductsCopyWithImpl<Products, Products>(
        this as Products,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProductsMapper.ensureInitialized().stringifyValue(this as Products);
  }

  @override
  bool operator ==(Object other) {
    return ProductsMapper.ensureInitialized().equalsValue(
      this as Products,
      other,
    );
  }

  @override
  int get hashCode {
    return ProductsMapper.ensureInitialized().hashValue(this as Products);
  }
}

extension ProductsValueCopy<$R, $Out> on ObjectCopyWith<$R, Products, $Out> {
  ProductsCopyWith<$R, Products, $Out> get $asProducts =>
      $base.as((v, t, t2) => _ProductsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProductsCopyWith<$R, $In extends Products, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ProductCopyWith<$R, Product, Product> get llmTokens;
  ProductCopyWith<$R, Product, Product> get embeddingTokens;
  ProductCopyWith<$R, Product, Product> get rerankerSearches;
  ProductCopyWith<$R, Product, Product> get dbStorage;
  ProductCopyWith<$R, Product, Product> get fileStorage;
  ProductCopyWith<$R, Product, Product> get egress;
  $R call({
    Product? llmTokens,
    Product? embeddingTokens,
    Product? rerankerSearches,
    Product? dbStorage,
    Product? fileStorage,
    Product? egress,
  });
  ProductsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProductsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Products, $Out>
    implements ProductsCopyWith<$R, Products, $Out> {
  _ProductsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Products> $mapper =
      ProductsMapper.ensureInitialized();
  @override
  ProductCopyWith<$R, Product, Product> get llmTokens =>
      $value.llmTokens.copyWith.$chain((v) => call(llmTokens: v));
  @override
  ProductCopyWith<$R, Product, Product> get embeddingTokens =>
      $value.embeddingTokens.copyWith.$chain((v) => call(embeddingTokens: v));
  @override
  ProductCopyWith<$R, Product, Product> get rerankerSearches =>
      $value.rerankerSearches.copyWith.$chain((v) => call(rerankerSearches: v));
  @override
  ProductCopyWith<$R, Product, Product> get dbStorage =>
      $value.dbStorage.copyWith.$chain((v) => call(dbStorage: v));
  @override
  ProductCopyWith<$R, Product, Product> get fileStorage =>
      $value.fileStorage.copyWith.$chain((v) => call(fileStorage: v));
  @override
  ProductCopyWith<$R, Product, Product> get egress =>
      $value.egress.copyWith.$chain((v) => call(egress: v));
  @override
  $R call({
    Product? llmTokens,
    Product? embeddingTokens,
    Product? rerankerSearches,
    Product? dbStorage,
    Product? fileStorage,
    Product? egress,
  }) => $apply(
    FieldCopyWithData({
      if (llmTokens != null) #llmTokens: llmTokens,
      if (embeddingTokens != null) #embeddingTokens: embeddingTokens,
      if (rerankerSearches != null) #rerankerSearches: rerankerSearches,
      if (dbStorage != null) #dbStorage: dbStorage,
      if (fileStorage != null) #fileStorage: fileStorage,
      if (egress != null) #egress: egress,
    }),
  );
  @override
  Products $make(CopyWithData data) => Products(
    llmTokens: data.get(#llmTokens, or: $value.llmTokens),
    embeddingTokens: data.get(#embeddingTokens, or: $value.embeddingTokens),
    rerankerSearches: data.get(#rerankerSearches, or: $value.rerankerSearches),
    dbStorage: data.get(#dbStorage, or: $value.dbStorage),
    fileStorage: data.get(#fileStorage, or: $value.fileStorage),
    egress: data.get(#egress, or: $value.egress),
  );

  @override
  ProductsCopyWith<$R2, Products, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProductsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PricePlanUpdateMapper extends ClassMapperBase<PricePlanUpdate> {
  PricePlanUpdateMapper._();

  static PricePlanUpdateMapper? _instance;
  static PricePlanUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PricePlanUpdateMapper._());
      PricePlanCreateMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      ProductsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PricePlanUpdate';

  static SanitizedNonEmptyString _$stripePriceIdLive(PricePlanUpdate v) =>
      v.stripePriceIdLive;
  static const Field<PricePlanUpdate, SanitizedNonEmptyString>
  _f$stripePriceIdLive = Field(
    'stripePriceIdLive',
    _$stripePriceIdLive,
    key: r'stripe_price_id_live',
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedNonEmptyString _$stripePriceIdTest(PricePlanUpdate v) =>
      v.stripePriceIdTest;
  static const Field<PricePlanUpdate, SanitizedNonEmptyString>
  _f$stripePriceIdTest = Field(
    'stripePriceIdTest',
    _$stripePriceIdTest,
    key: r'stripe_price_id_test',
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedNonEmptyString _$name(PricePlanUpdate v) => v.name;
  static const Field<PricePlanUpdate, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static double _$flatCost(PricePlanUpdate v) => v.flatCost;
  static const Field<PricePlanUpdate, double> _f$flatCost = Field(
    'flatCost',
    _$flatCost,
    key: r'flat_cost',
    opt: true,
    def: 0.0,
  );
  static double _$creditGrant(PricePlanUpdate v) => v.creditGrant;
  static const Field<PricePlanUpdate, double> _f$creditGrant = Field(
    'creditGrant',
    _$creditGrant,
    key: r'credit_grant',
    opt: true,
    def: 0.0,
  );
  static int? _$maxUsers(PricePlanUpdate v) => v.maxUsers;
  static const Field<PricePlanUpdate, int> _f$maxUsers = Field(
    'maxUsers',
    _$maxUsers,
    key: r'max_users',
    opt: true,
  );
  static Products _$products(PricePlanUpdate v) => v.products;
  static const Field<PricePlanUpdate, Products> _f$products = Field(
    'products',
    _$products,
    opt: true,
  );
  static List<String> _$allowedOrgs(PricePlanUpdate v) => v.allowedOrgs;
  static const Field<PricePlanUpdate, List<String>> _f$allowedOrgs = Field(
    'allowedOrgs',
    _$allowedOrgs,
    key: r'allowed_orgs',
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<PricePlanUpdate> fields = const {
    #stripePriceIdLive: _f$stripePriceIdLive,
    #stripePriceIdTest: _f$stripePriceIdTest,
    #name: _f$name,
    #flatCost: _f$flatCost,
    #creditGrant: _f$creditGrant,
    #maxUsers: _f$maxUsers,
    #products: _f$products,
    #allowedOrgs: _f$allowedOrgs,
  };

  static PricePlanUpdate _instantiate(DecodingData data) {
    return PricePlanUpdate(
      stripePriceIdLive: data.dec(_f$stripePriceIdLive),
      stripePriceIdTest: data.dec(_f$stripePriceIdTest),
      name: data.dec(_f$name),
      flatCost: data.dec(_f$flatCost),
      creditGrant: data.dec(_f$creditGrant),
      maxUsers: data.dec(_f$maxUsers),
      products: data.dec(_f$products),
      allowedOrgs: data.dec(_f$allowedOrgs),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PricePlanUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PricePlanUpdate>(map);
  }

  static PricePlanUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<PricePlanUpdate>(json);
  }
}

mixin PricePlanUpdateMappable {
  String toJson() {
    return PricePlanUpdateMapper.ensureInitialized()
        .encodeJson<PricePlanUpdate>(this as PricePlanUpdate);
  }

  Map<String, dynamic> toMap() {
    return PricePlanUpdateMapper.ensureInitialized().encodeMap<PricePlanUpdate>(
      this as PricePlanUpdate,
    );
  }

  PricePlanUpdateCopyWith<PricePlanUpdate, PricePlanUpdate, PricePlanUpdate>
  get copyWith =>
      _PricePlanUpdateCopyWithImpl<PricePlanUpdate, PricePlanUpdate>(
        this as PricePlanUpdate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PricePlanUpdateMapper.ensureInitialized().stringifyValue(
      this as PricePlanUpdate,
    );
  }

  @override
  bool operator ==(Object other) {
    return PricePlanUpdateMapper.ensureInitialized().equalsValue(
      this as PricePlanUpdate,
      other,
    );
  }

  @override
  int get hashCode {
    return PricePlanUpdateMapper.ensureInitialized().hashValue(
      this as PricePlanUpdate,
    );
  }
}

extension PricePlanUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PricePlanUpdate, $Out> {
  PricePlanUpdateCopyWith<$R, PricePlanUpdate, $Out> get $asPricePlanUpdate =>
      $base.as((v, t, t2) => _PricePlanUpdateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PricePlanUpdateCopyWith<$R, $In extends PricePlanUpdate, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdLive;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdTest;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  ProductsCopyWith<$R, Products, Products> get products;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get allowedOrgs;
  $R call({
    SanitizedNonEmptyString? stripePriceIdLive,
    SanitizedNonEmptyString? stripePriceIdTest,
    SanitizedNonEmptyString? name,
    double? flatCost,
    double? creditGrant,
    int? maxUsers,
    Products? products,
    List<String>? allowedOrgs,
  });
  PricePlanUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PricePlanUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PricePlanUpdate, $Out>
    implements PricePlanUpdateCopyWith<$R, PricePlanUpdate, $Out> {
  _PricePlanUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PricePlanUpdate> $mapper =
      PricePlanUpdateMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdLive => $value.stripePriceIdLive.copyWith.$chain(
    (v) => call(stripePriceIdLive: v),
  );
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdTest => $value.stripePriceIdTest.copyWith.$chain(
    (v) => call(stripePriceIdTest: v),
  );
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  ProductsCopyWith<$R, Products, Products> get products =>
      ($value.products as Products).copyWith.$chain((v) => call(products: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>
  get allowedOrgs => ListCopyWith(
    $value.allowedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(allowedOrgs: v),
  );
  @override
  $R call({
    SanitizedNonEmptyString? stripePriceIdLive,
    SanitizedNonEmptyString? stripePriceIdTest,
    SanitizedNonEmptyString? name,
    double? flatCost,
    double? creditGrant,
    Object? maxUsers = $none,
    Object? products = $none,
    List<String>? allowedOrgs,
  }) => $apply(
    FieldCopyWithData({
      if (stripePriceIdLive != null) #stripePriceIdLive: stripePriceIdLive,
      if (stripePriceIdTest != null) #stripePriceIdTest: stripePriceIdTest,
      if (name != null) #name: name,
      if (flatCost != null) #flatCost: flatCost,
      if (creditGrant != null) #creditGrant: creditGrant,
      if (maxUsers != $none) #maxUsers: maxUsers,
      if (products != $none) #products: products,
      if (allowedOrgs != null) #allowedOrgs: allowedOrgs,
    }),
  );
  @override
  PricePlanUpdate $make(CopyWithData data) => PricePlanUpdate(
    stripePriceIdLive: data.get(
      #stripePriceIdLive,
      or: $value.stripePriceIdLive,
    ),
    stripePriceIdTest: data.get(
      #stripePriceIdTest,
      or: $value.stripePriceIdTest,
    ),
    name: data.get(#name, or: $value.name),
    flatCost: data.get(#flatCost, or: $value.flatCost),
    creditGrant: data.get(#creditGrant, or: $value.creditGrant),
    maxUsers: data.get(#maxUsers, or: $value.maxUsers),
    products: data.get(#products, or: $value.products),
    allowedOrgs: data.get(#allowedOrgs, or: $value.allowedOrgs),
  );

  @override
  PricePlanUpdateCopyWith<$R2, PricePlanUpdate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PricePlanUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PricePlanCreateMapper extends ClassMapperBase<PricePlanCreate> {
  PricePlanCreateMapper._();

  static PricePlanCreateMapper? _instance;
  static PricePlanCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PricePlanCreateMapper._());
      PricePlanUpdateMapper.ensureInitialized();
      PricePlanMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      ProductsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PricePlanCreate';

  static String _$id(PricePlanCreate v) => v.id;
  static const Field<PricePlanCreate, String> _f$id = Field('id', _$id);
  static SanitizedNonEmptyString _$name(PricePlanCreate v) => v.name;
  static const Field<PricePlanCreate, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedNonEmptyString _$stripePriceIdLive(PricePlanCreate v) =>
      v.stripePriceIdLive;
  static const Field<PricePlanCreate, SanitizedNonEmptyString>
  _f$stripePriceIdLive = Field(
    'stripePriceIdLive',
    _$stripePriceIdLive,
    key: r'stripe_price_id_live',
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedNonEmptyString _$stripePriceIdTest(PricePlanCreate v) =>
      v.stripePriceIdTest;
  static const Field<PricePlanCreate, SanitizedNonEmptyString>
  _f$stripePriceIdTest = Field(
    'stripePriceIdTest',
    _$stripePriceIdTest,
    key: r'stripe_price_id_test',
    hook: SanitizedNonEmptyStringHook(),
  );
  static double _$flatCost(PricePlanCreate v) => v.flatCost;
  static const Field<PricePlanCreate, double> _f$flatCost = Field(
    'flatCost',
    _$flatCost,
    key: r'flat_cost',
  );
  static double _$creditGrant(PricePlanCreate v) => v.creditGrant;
  static const Field<PricePlanCreate, double> _f$creditGrant = Field(
    'creditGrant',
    _$creditGrant,
    key: r'credit_grant',
  );
  static int? _$maxUsers(PricePlanCreate v) => v.maxUsers;
  static const Field<PricePlanCreate, int> _f$maxUsers = Field(
    'maxUsers',
    _$maxUsers,
    key: r'max_users',
  );
  static Products _$products(PricePlanCreate v) => v.products;
  static const Field<PricePlanCreate, Products> _f$products = Field(
    'products',
    _$products,
  );
  static List<String> _$allowedOrgs(PricePlanCreate v) => v.allowedOrgs;
  static const Field<PricePlanCreate, List<String>> _f$allowedOrgs = Field(
    'allowedOrgs',
    _$allowedOrgs,
    key: r'allowed_orgs',
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<PricePlanCreate> fields = const {
    #id: _f$id,
    #name: _f$name,
    #stripePriceIdLive: _f$stripePriceIdLive,
    #stripePriceIdTest: _f$stripePriceIdTest,
    #flatCost: _f$flatCost,
    #creditGrant: _f$creditGrant,
    #maxUsers: _f$maxUsers,
    #products: _f$products,
    #allowedOrgs: _f$allowedOrgs,
  };

  static PricePlanCreate _instantiate(DecodingData data) {
    return PricePlanCreate(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      stripePriceIdLive: data.dec(_f$stripePriceIdLive),
      stripePriceIdTest: data.dec(_f$stripePriceIdTest),
      flatCost: data.dec(_f$flatCost),
      creditGrant: data.dec(_f$creditGrant),
      maxUsers: data.dec(_f$maxUsers),
      products: data.dec(_f$products),
      allowedOrgs: data.dec(_f$allowedOrgs),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PricePlanCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PricePlanCreate>(map);
  }

  static PricePlanCreate fromJson(String json) {
    return ensureInitialized().decodeJson<PricePlanCreate>(json);
  }
}

mixin PricePlanCreateMappable {
  String toJson() {
    return PricePlanCreateMapper.ensureInitialized()
        .encodeJson<PricePlanCreate>(this as PricePlanCreate);
  }

  Map<String, dynamic> toMap() {
    return PricePlanCreateMapper.ensureInitialized().encodeMap<PricePlanCreate>(
      this as PricePlanCreate,
    );
  }

  PricePlanCreateCopyWith<PricePlanCreate, PricePlanCreate, PricePlanCreate>
  get copyWith =>
      _PricePlanCreateCopyWithImpl<PricePlanCreate, PricePlanCreate>(
        this as PricePlanCreate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PricePlanCreateMapper.ensureInitialized().stringifyValue(
      this as PricePlanCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return PricePlanCreateMapper.ensureInitialized().equalsValue(
      this as PricePlanCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return PricePlanCreateMapper.ensureInitialized().hashValue(
      this as PricePlanCreate,
    );
  }
}

extension PricePlanCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PricePlanCreate, $Out> {
  PricePlanCreateCopyWith<$R, PricePlanCreate, $Out> get $asPricePlanCreate =>
      $base.as((v, t, t2) => _PricePlanCreateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PricePlanCreateCopyWith<$R, $In extends PricePlanCreate, $Out>
    implements PricePlanUpdateCopyWith<$R, $In, $Out> {
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdLive;
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdTest;
  @override
  ProductsCopyWith<$R, Products, Products> get products;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get allowedOrgs;
  @override
  $R call({
    String? id,
    SanitizedNonEmptyString? name,
    SanitizedNonEmptyString? stripePriceIdLive,
    SanitizedNonEmptyString? stripePriceIdTest,
    double? flatCost,
    double? creditGrant,
    int? maxUsers,
    Products? products,
    List<String>? allowedOrgs,
  });
  PricePlanCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PricePlanCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PricePlanCreate, $Out>
    implements PricePlanCreateCopyWith<$R, PricePlanCreate, $Out> {
  _PricePlanCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PricePlanCreate> $mapper =
      PricePlanCreateMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdLive => $value.stripePriceIdLive.copyWith.$chain(
    (v) => call(stripePriceIdLive: v),
  );
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdTest => $value.stripePriceIdTest.copyWith.$chain(
    (v) => call(stripePriceIdTest: v),
  );
  @override
  ProductsCopyWith<$R, Products, Products> get products =>
      $value.products.copyWith.$chain((v) => call(products: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>
  get allowedOrgs => ListCopyWith(
    $value.allowedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(allowedOrgs: v),
  );
  @override
  $R call({
    String? id,
    SanitizedNonEmptyString? name,
    SanitizedNonEmptyString? stripePriceIdLive,
    SanitizedNonEmptyString? stripePriceIdTest,
    double? flatCost,
    double? creditGrant,
    Object? maxUsers = $none,
    Products? products,
    List<String>? allowedOrgs,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (stripePriceIdLive != null) #stripePriceIdLive: stripePriceIdLive,
      if (stripePriceIdTest != null) #stripePriceIdTest: stripePriceIdTest,
      if (flatCost != null) #flatCost: flatCost,
      if (creditGrant != null) #creditGrant: creditGrant,
      if (maxUsers != $none) #maxUsers: maxUsers,
      if (products != null) #products: products,
      if (allowedOrgs != null) #allowedOrgs: allowedOrgs,
    }),
  );
  @override
  PricePlanCreate $make(CopyWithData data) => PricePlanCreate(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    stripePriceIdLive: data.get(
      #stripePriceIdLive,
      or: $value.stripePriceIdLive,
    ),
    stripePriceIdTest: data.get(
      #stripePriceIdTest,
      or: $value.stripePriceIdTest,
    ),
    flatCost: data.get(#flatCost, or: $value.flatCost),
    creditGrant: data.get(#creditGrant, or: $value.creditGrant),
    maxUsers: data.get(#maxUsers, or: $value.maxUsers),
    products: data.get(#products, or: $value.products),
    allowedOrgs: data.get(#allowedOrgs, or: $value.allowedOrgs),
  );

  @override
  PricePlanCreateCopyWith<$R2, PricePlanCreate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PricePlanCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PricePlanMapper extends ClassMapperBase<PricePlan> {
  PricePlanMapper._();

  static PricePlanMapper? _instance;
  static PricePlanMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PricePlanMapper._());
      PricePlanCreateMapper.ensureInitialized();
      PricePlanReadMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      ProductsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PricePlan';

  static String _$id(PricePlan v) => v.id;
  static const Field<PricePlan, String> _f$id = Field('id', _$id);
  static SanitizedNonEmptyString _$name(PricePlan v) => v.name;
  static const Field<PricePlan, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedNonEmptyString _$stripePriceIdLive(PricePlan v) =>
      v.stripePriceIdLive;
  static const Field<PricePlan, SanitizedNonEmptyString> _f$stripePriceIdLive =
      Field(
        'stripePriceIdLive',
        _$stripePriceIdLive,
        key: r'stripe_price_id_live',
        hook: SanitizedNonEmptyStringHook(),
      );
  static SanitizedNonEmptyString _$stripePriceIdTest(PricePlan v) =>
      v.stripePriceIdTest;
  static const Field<PricePlan, SanitizedNonEmptyString> _f$stripePriceIdTest =
      Field(
        'stripePriceIdTest',
        _$stripePriceIdTest,
        key: r'stripe_price_id_test',
        hook: SanitizedNonEmptyStringHook(),
      );
  static double _$flatCost(PricePlan v) => v.flatCost;
  static const Field<PricePlan, double> _f$flatCost = Field(
    'flatCost',
    _$flatCost,
    key: r'flat_cost',
  );
  static double _$creditGrant(PricePlan v) => v.creditGrant;
  static const Field<PricePlan, double> _f$creditGrant = Field(
    'creditGrant',
    _$creditGrant,
    key: r'credit_grant',
  );
  static int? _$maxUsers(PricePlan v) => v.maxUsers;
  static const Field<PricePlan, int> _f$maxUsers = Field(
    'maxUsers',
    _$maxUsers,
    key: r'max_users',
  );
  static Products _$products(PricePlan v) => v.products;
  static const Field<PricePlan, Products> _f$products = Field(
    'products',
    _$products,
  );
  static List<String> _$allowedOrgs(PricePlan v) => v.allowedOrgs;
  static const Field<PricePlan, List<String>> _f$allowedOrgs = Field(
    'allowedOrgs',
    _$allowedOrgs,
    key: r'allowed_orgs',
    opt: true,
    def: const [],
  );
  static bool _$isPrivate(PricePlan v) => v.isPrivate;
  static const Field<PricePlan, bool> _f$isPrivate = Field(
    'isPrivate',
    _$isPrivate,
    key: r'is_private',
  );
  static String _$stripePriceId(PricePlan v) => v.stripePriceId;
  static const Field<PricePlan, String> _f$stripePriceId = Field(
    'stripePriceId',
    _$stripePriceId,
    key: r'stripe_price_id',
  );

  @override
  final MappableFields<PricePlan> fields = const {
    #id: _f$id,
    #name: _f$name,
    #stripePriceIdLive: _f$stripePriceIdLive,
    #stripePriceIdTest: _f$stripePriceIdTest,
    #flatCost: _f$flatCost,
    #creditGrant: _f$creditGrant,
    #maxUsers: _f$maxUsers,
    #products: _f$products,
    #allowedOrgs: _f$allowedOrgs,
    #isPrivate: _f$isPrivate,
    #stripePriceId: _f$stripePriceId,
  };

  static PricePlan _instantiate(DecodingData data) {
    return PricePlan(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      stripePriceIdLive: data.dec(_f$stripePriceIdLive),
      stripePriceIdTest: data.dec(_f$stripePriceIdTest),
      flatCost: data.dec(_f$flatCost),
      creditGrant: data.dec(_f$creditGrant),
      maxUsers: data.dec(_f$maxUsers),
      products: data.dec(_f$products),
      allowedOrgs: data.dec(_f$allowedOrgs),
      isPrivate: data.dec(_f$isPrivate),
      stripePriceId: data.dec(_f$stripePriceId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PricePlan fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PricePlan>(map);
  }

  static PricePlan fromJson(String json) {
    return ensureInitialized().decodeJson<PricePlan>(json);
  }
}

mixin PricePlanMappable {
  String toJson() {
    return PricePlanMapper.ensureInitialized().encodeJson<PricePlan>(
      this as PricePlan,
    );
  }

  Map<String, dynamic> toMap() {
    return PricePlanMapper.ensureInitialized().encodeMap<PricePlan>(
      this as PricePlan,
    );
  }

  PricePlanCopyWith<PricePlan, PricePlan, PricePlan> get copyWith =>
      _PricePlanCopyWithImpl<PricePlan, PricePlan>(
        this as PricePlan,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PricePlanMapper.ensureInitialized().stringifyValue(
      this as PricePlan,
    );
  }

  @override
  bool operator ==(Object other) {
    return PricePlanMapper.ensureInitialized().equalsValue(
      this as PricePlan,
      other,
    );
  }

  @override
  int get hashCode {
    return PricePlanMapper.ensureInitialized().hashValue(this as PricePlan);
  }
}

extension PricePlanValueCopy<$R, $Out> on ObjectCopyWith<$R, PricePlan, $Out> {
  PricePlanCopyWith<$R, PricePlan, $Out> get $asPricePlan =>
      $base.as((v, t, t2) => _PricePlanCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PricePlanCopyWith<$R, $In extends PricePlan, $Out>
    implements PricePlanCreateCopyWith<$R, $In, $Out> {
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdLive;
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdTest;
  @override
  ProductsCopyWith<$R, Products, Products> get products;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get allowedOrgs;
  @override
  $R call({
    String? id,
    SanitizedNonEmptyString? name,
    SanitizedNonEmptyString? stripePriceIdLive,
    SanitizedNonEmptyString? stripePriceIdTest,
    double? flatCost,
    double? creditGrant,
    int? maxUsers,
    Products? products,
    List<String>? allowedOrgs,
    bool? isPrivate,
    String? stripePriceId,
  });
  PricePlanCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PricePlanCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PricePlan, $Out>
    implements PricePlanCopyWith<$R, PricePlan, $Out> {
  _PricePlanCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PricePlan> $mapper =
      PricePlanMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdLive => $value.stripePriceIdLive.copyWith.$chain(
    (v) => call(stripePriceIdLive: v),
  );
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdTest => $value.stripePriceIdTest.copyWith.$chain(
    (v) => call(stripePriceIdTest: v),
  );
  @override
  ProductsCopyWith<$R, Products, Products> get products =>
      $value.products.copyWith.$chain((v) => call(products: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>
  get allowedOrgs => ListCopyWith(
    $value.allowedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(allowedOrgs: v),
  );
  @override
  $R call({
    String? id,
    SanitizedNonEmptyString? name,
    SanitizedNonEmptyString? stripePriceIdLive,
    SanitizedNonEmptyString? stripePriceIdTest,
    double? flatCost,
    double? creditGrant,
    Object? maxUsers = $none,
    Products? products,
    List<String>? allowedOrgs,
    bool? isPrivate,
    String? stripePriceId,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (stripePriceIdLive != null) #stripePriceIdLive: stripePriceIdLive,
      if (stripePriceIdTest != null) #stripePriceIdTest: stripePriceIdTest,
      if (flatCost != null) #flatCost: flatCost,
      if (creditGrant != null) #creditGrant: creditGrant,
      if (maxUsers != $none) #maxUsers: maxUsers,
      if (products != null) #products: products,
      if (allowedOrgs != null) #allowedOrgs: allowedOrgs,
      if (isPrivate != null) #isPrivate: isPrivate,
      if (stripePriceId != null) #stripePriceId: stripePriceId,
    }),
  );
  @override
  PricePlan $make(CopyWithData data) => PricePlan(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    stripePriceIdLive: data.get(
      #stripePriceIdLive,
      or: $value.stripePriceIdLive,
    ),
    stripePriceIdTest: data.get(
      #stripePriceIdTest,
      or: $value.stripePriceIdTest,
    ),
    flatCost: data.get(#flatCost, or: $value.flatCost),
    creditGrant: data.get(#creditGrant, or: $value.creditGrant),
    maxUsers: data.get(#maxUsers, or: $value.maxUsers),
    products: data.get(#products, or: $value.products),
    allowedOrgs: data.get(#allowedOrgs, or: $value.allowedOrgs),
    isPrivate: data.get(#isPrivate, or: $value.isPrivate),
    stripePriceId: data.get(#stripePriceId, or: $value.stripePriceId),
  );

  @override
  PricePlanCopyWith<$R2, PricePlan, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PricePlanCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PricePlanReadMapper extends ClassMapperBase<PricePlanRead> {
  PricePlanReadMapper._();

  static PricePlanReadMapper? _instance;
  static PricePlanReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PricePlanReadMapper._());
      PricePlanMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      ProductsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PricePlanRead';

  static String _$id(PricePlanRead v) => v.id;
  static const Field<PricePlanRead, String> _f$id = Field('id', _$id);
  static SanitizedNonEmptyString _$name(PricePlanRead v) => v.name;
  static const Field<PricePlanRead, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedNonEmptyString _$stripePriceIdLive(PricePlanRead v) =>
      v.stripePriceIdLive;
  static const Field<PricePlanRead, SanitizedNonEmptyString>
  _f$stripePriceIdLive = Field(
    'stripePriceIdLive',
    _$stripePriceIdLive,
    key: r'stripe_price_id_live',
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedNonEmptyString _$stripePriceIdTest(PricePlanRead v) =>
      v.stripePriceIdTest;
  static const Field<PricePlanRead, SanitizedNonEmptyString>
  _f$stripePriceIdTest = Field(
    'stripePriceIdTest',
    _$stripePriceIdTest,
    key: r'stripe_price_id_test',
    hook: SanitizedNonEmptyStringHook(),
  );
  static double _$flatCost(PricePlanRead v) => v.flatCost;
  static const Field<PricePlanRead, double> _f$flatCost = Field(
    'flatCost',
    _$flatCost,
    key: r'flat_cost',
  );
  static double _$creditGrant(PricePlanRead v) => v.creditGrant;
  static const Field<PricePlanRead, double> _f$creditGrant = Field(
    'creditGrant',
    _$creditGrant,
    key: r'credit_grant',
  );
  static int? _$maxUsers(PricePlanRead v) => v.maxUsers;
  static const Field<PricePlanRead, int> _f$maxUsers = Field(
    'maxUsers',
    _$maxUsers,
    key: r'max_users',
  );
  static Products _$products(PricePlanRead v) => v.products;
  static const Field<PricePlanRead, Products> _f$products = Field(
    'products',
    _$products,
  );
  static List<String> _$allowedOrgs(PricePlanRead v) => v.allowedOrgs;
  static const Field<PricePlanRead, List<String>> _f$allowedOrgs = Field(
    'allowedOrgs',
    _$allowedOrgs,
    key: r'allowed_orgs',
    opt: true,
    def: const [],
  );
  static bool _$isPrivate(PricePlanRead v) => v.isPrivate;
  static const Field<PricePlanRead, bool> _f$isPrivate = Field(
    'isPrivate',
    _$isPrivate,
    key: r'is_private',
  );
  static String _$stripePriceId(PricePlanRead v) => v.stripePriceId;
  static const Field<PricePlanRead, String> _f$stripePriceId = Field(
    'stripePriceId',
    _$stripePriceId,
    key: r'stripe_price_id',
  );

  @override
  final MappableFields<PricePlanRead> fields = const {
    #id: _f$id,
    #name: _f$name,
    #stripePriceIdLive: _f$stripePriceIdLive,
    #stripePriceIdTest: _f$stripePriceIdTest,
    #flatCost: _f$flatCost,
    #creditGrant: _f$creditGrant,
    #maxUsers: _f$maxUsers,
    #products: _f$products,
    #allowedOrgs: _f$allowedOrgs,
    #isPrivate: _f$isPrivate,
    #stripePriceId: _f$stripePriceId,
  };

  static PricePlanRead _instantiate(DecodingData data) {
    return PricePlanRead(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      stripePriceIdLive: data.dec(_f$stripePriceIdLive),
      stripePriceIdTest: data.dec(_f$stripePriceIdTest),
      flatCost: data.dec(_f$flatCost),
      creditGrant: data.dec(_f$creditGrant),
      maxUsers: data.dec(_f$maxUsers),
      products: data.dec(_f$products),
      allowedOrgs: data.dec(_f$allowedOrgs),
      isPrivate: data.dec(_f$isPrivate),
      stripePriceId: data.dec(_f$stripePriceId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PricePlanRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PricePlanRead>(map);
  }

  static PricePlanRead fromJson(String json) {
    return ensureInitialized().decodeJson<PricePlanRead>(json);
  }
}

mixin PricePlanReadMappable {
  String toJson() {
    return PricePlanReadMapper.ensureInitialized().encodeJson<PricePlanRead>(
      this as PricePlanRead,
    );
  }

  Map<String, dynamic> toMap() {
    return PricePlanReadMapper.ensureInitialized().encodeMap<PricePlanRead>(
      this as PricePlanRead,
    );
  }

  PricePlanReadCopyWith<PricePlanRead, PricePlanRead, PricePlanRead>
  get copyWith => _PricePlanReadCopyWithImpl<PricePlanRead, PricePlanRead>(
    this as PricePlanRead,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PricePlanReadMapper.ensureInitialized().stringifyValue(
      this as PricePlanRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return PricePlanReadMapper.ensureInitialized().equalsValue(
      this as PricePlanRead,
      other,
    );
  }

  @override
  int get hashCode {
    return PricePlanReadMapper.ensureInitialized().hashValue(
      this as PricePlanRead,
    );
  }
}

extension PricePlanReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PricePlanRead, $Out> {
  PricePlanReadCopyWith<$R, PricePlanRead, $Out> get $asPricePlanRead =>
      $base.as((v, t, t2) => _PricePlanReadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PricePlanReadCopyWith<$R, $In extends PricePlanRead, $Out>
    implements PricePlanCopyWith<$R, $In, $Out> {
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdLive;
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdTest;
  @override
  ProductsCopyWith<$R, Products, Products> get products;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get allowedOrgs;
  @override
  $R call({
    String? id,
    SanitizedNonEmptyString? name,
    SanitizedNonEmptyString? stripePriceIdLive,
    SanitizedNonEmptyString? stripePriceIdTest,
    double? flatCost,
    double? creditGrant,
    int? maxUsers,
    Products? products,
    List<String>? allowedOrgs,
    bool? isPrivate,
    String? stripePriceId,
  });
  PricePlanReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PricePlanReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PricePlanRead, $Out>
    implements PricePlanReadCopyWith<$R, PricePlanRead, $Out> {
  _PricePlanReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PricePlanRead> $mapper =
      PricePlanReadMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdLive => $value.stripePriceIdLive.copyWith.$chain(
    (v) => call(stripePriceIdLive: v),
  );
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get stripePriceIdTest => $value.stripePriceIdTest.copyWith.$chain(
    (v) => call(stripePriceIdTest: v),
  );
  @override
  ProductsCopyWith<$R, Products, Products> get products =>
      $value.products.copyWith.$chain((v) => call(products: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get allowedOrgs => ListCopyWith(
    $value.allowedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(allowedOrgs: v),
  );
  @override
  $R call({
    String? id,
    SanitizedNonEmptyString? name,
    SanitizedNonEmptyString? stripePriceIdLive,
    SanitizedNonEmptyString? stripePriceIdTest,
    double? flatCost,
    double? creditGrant,
    Object? maxUsers = $none,
    Products? products,
    List<String>? allowedOrgs,
    bool? isPrivate,
    String? stripePriceId,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (stripePriceIdLive != null) #stripePriceIdLive: stripePriceIdLive,
      if (stripePriceIdTest != null) #stripePriceIdTest: stripePriceIdTest,
      if (flatCost != null) #flatCost: flatCost,
      if (creditGrant != null) #creditGrant: creditGrant,
      if (maxUsers != $none) #maxUsers: maxUsers,
      if (products != null) #products: products,
      if (allowedOrgs != null) #allowedOrgs: allowedOrgs,
      if (isPrivate != null) #isPrivate: isPrivate,
      if (stripePriceId != null) #stripePriceId: stripePriceId,
    }),
  );
  @override
  PricePlanRead $make(CopyWithData data) => PricePlanRead(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    stripePriceIdLive: data.get(
      #stripePriceIdLive,
      or: $value.stripePriceIdLive,
    ),
    stripePriceIdTest: data.get(
      #stripePriceIdTest,
      or: $value.stripePriceIdTest,
    ),
    flatCost: data.get(#flatCost, or: $value.flatCost),
    creditGrant: data.get(#creditGrant, or: $value.creditGrant),
    maxUsers: data.get(#maxUsers, or: $value.maxUsers),
    products: data.get(#products, or: $value.products),
    allowedOrgs: data.get(#allowedOrgs, or: $value.allowedOrgs),
    isPrivate: data.get(#isPrivate, or: $value.isPrivate),
    stripePriceId: data.get(#stripePriceId, or: $value.stripePriceId),
  );

  @override
  PricePlanReadCopyWith<$R2, PricePlanRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PricePlanReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DeploymentUpdateMapper extends ClassMapperBase<DeploymentUpdate> {
  DeploymentUpdateMapper._();

  static DeploymentUpdateMapper? _instance;
  static DeploymentUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeploymentUpdateMapper._());
      DeploymentCreateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DeploymentUpdate';

  static String _$name(DeploymentUpdate v) => v.name;
  static const Field<DeploymentUpdate, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static String _$routingId(DeploymentUpdate v) => v.routingId;
  static const Field<DeploymentUpdate, String> _f$routingId = Field(
    'routingId',
    _$routingId,
    key: r'routing_id',
    opt: true,
    def: "",
  );
  static String _$apiBase(DeploymentUpdate v) => v.apiBase;
  static const Field<DeploymentUpdate, String> _f$apiBase = Field(
    'apiBase',
    _$apiBase,
    key: r'api_base',
    opt: true,
    def: "",
  );
  static String _$provider(DeploymentUpdate v) => v.provider;
  static const Field<DeploymentUpdate, String> _f$provider = Field(
    'provider',
    _$provider,
    opt: true,
    def: "",
  );
  static int _$weight(DeploymentUpdate v) => v.weight;
  static const Field<DeploymentUpdate, int> _f$weight = Field(
    'weight',
    _$weight,
    opt: true,
    def: 1,
  );
  static DateTime _$cooldownUntil(DeploymentUpdate v) => v.cooldownUntil;
  static const Field<DeploymentUpdate, DateTime> _f$cooldownUntil = Field(
    'cooldownUntil',
    _$cooldownUntil,
    key: r'cooldown_until',
  );

  @override
  final MappableFields<DeploymentUpdate> fields = const {
    #name: _f$name,
    #routingId: _f$routingId,
    #apiBase: _f$apiBase,
    #provider: _f$provider,
    #weight: _f$weight,
    #cooldownUntil: _f$cooldownUntil,
  };

  static DeploymentUpdate _instantiate(DecodingData data) {
    return DeploymentUpdate(
      name: data.dec(_f$name),
      routingId: data.dec(_f$routingId),
      apiBase: data.dec(_f$apiBase),
      provider: data.dec(_f$provider),
      weight: data.dec(_f$weight),
      cooldownUntil: data.dec(_f$cooldownUntil),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DeploymentUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DeploymentUpdate>(map);
  }

  static DeploymentUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<DeploymentUpdate>(json);
  }
}

mixin DeploymentUpdateMappable {
  String toJson() {
    return DeploymentUpdateMapper.ensureInitialized()
        .encodeJson<DeploymentUpdate>(this as DeploymentUpdate);
  }

  Map<String, dynamic> toMap() {
    return DeploymentUpdateMapper.ensureInitialized()
        .encodeMap<DeploymentUpdate>(this as DeploymentUpdate);
  }

  DeploymentUpdateCopyWith<DeploymentUpdate, DeploymentUpdate, DeploymentUpdate>
  get copyWith =>
      _DeploymentUpdateCopyWithImpl<DeploymentUpdate, DeploymentUpdate>(
        this as DeploymentUpdate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DeploymentUpdateMapper.ensureInitialized().stringifyValue(
      this as DeploymentUpdate,
    );
  }

  @override
  bool operator ==(Object other) {
    return DeploymentUpdateMapper.ensureInitialized().equalsValue(
      this as DeploymentUpdate,
      other,
    );
  }

  @override
  int get hashCode {
    return DeploymentUpdateMapper.ensureInitialized().hashValue(
      this as DeploymentUpdate,
    );
  }
}

extension DeploymentUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeploymentUpdate, $Out> {
  DeploymentUpdateCopyWith<$R, DeploymentUpdate, $Out>
  get $asDeploymentUpdate =>
      $base.as((v, t, t2) => _DeploymentUpdateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DeploymentUpdateCopyWith<$R, $In extends DeploymentUpdate, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? name,
    String? routingId,
    String? apiBase,
    String? provider,
    int? weight,
    DateTime? cooldownUntil,
  });
  DeploymentUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DeploymentUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeploymentUpdate, $Out>
    implements DeploymentUpdateCopyWith<$R, DeploymentUpdate, $Out> {
  _DeploymentUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeploymentUpdate> $mapper =
      DeploymentUpdateMapper.ensureInitialized();
  @override
  $R call({
    String? name,
    String? routingId,
    String? apiBase,
    String? provider,
    int? weight,
    DateTime? cooldownUntil,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (routingId != null) #routingId: routingId,
      if (apiBase != null) #apiBase: apiBase,
      if (provider != null) #provider: provider,
      if (weight != null) #weight: weight,
      if (cooldownUntil != null) #cooldownUntil: cooldownUntil,
    }),
  );
  @override
  DeploymentUpdate $make(CopyWithData data) => DeploymentUpdate(
    name: data.get(#name, or: $value.name),
    routingId: data.get(#routingId, or: $value.routingId),
    apiBase: data.get(#apiBase, or: $value.apiBase),
    provider: data.get(#provider, or: $value.provider),
    weight: data.get(#weight, or: $value.weight),
    cooldownUntil: data.get(#cooldownUntil, or: $value.cooldownUntil),
  );

  @override
  DeploymentUpdateCopyWith<$R2, DeploymentUpdate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DeploymentUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DeploymentCreateMapper extends ClassMapperBase<DeploymentCreate> {
  DeploymentCreateMapper._();

  static DeploymentCreateMapper? _instance;
  static DeploymentCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeploymentCreateMapper._());
      DeploymentUpdateMapper.ensureInitialized();
      DeploymentMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DeploymentCreate';

  static String _$modelId(DeploymentCreate v) => v.modelId;
  static const Field<DeploymentCreate, String> _f$modelId = Field(
    'modelId',
    _$modelId,
    key: r'model_id',
  );
  static String _$name(DeploymentCreate v) => v.name;
  static const Field<DeploymentCreate, String> _f$name = Field('name', _$name);
  static String _$routingId(DeploymentCreate v) => v.routingId;
  static const Field<DeploymentCreate, String> _f$routingId = Field(
    'routingId',
    _$routingId,
    key: r'routing_id',
  );
  static String _$apiBase(DeploymentCreate v) => v.apiBase;
  static const Field<DeploymentCreate, String> _f$apiBase = Field(
    'apiBase',
    _$apiBase,
    key: r'api_base',
    opt: true,
    def: "",
  );
  static String _$provider(DeploymentCreate v) => v.provider;
  static const Field<DeploymentCreate, String> _f$provider = Field(
    'provider',
    _$provider,
  );
  static int _$weight(DeploymentCreate v) => v.weight;
  static const Field<DeploymentCreate, int> _f$weight = Field(
    'weight',
    _$weight,
    opt: true,
    def: 1,
  );
  static DateTime _$cooldownUntil(DeploymentCreate v) => v.cooldownUntil;
  static const Field<DeploymentCreate, DateTime> _f$cooldownUntil = Field(
    'cooldownUntil',
    _$cooldownUntil,
    key: r'cooldown_until',
  );

  @override
  final MappableFields<DeploymentCreate> fields = const {
    #modelId: _f$modelId,
    #name: _f$name,
    #routingId: _f$routingId,
    #apiBase: _f$apiBase,
    #provider: _f$provider,
    #weight: _f$weight,
    #cooldownUntil: _f$cooldownUntil,
  };

  static DeploymentCreate _instantiate(DecodingData data) {
    return DeploymentCreate(
      modelId: data.dec(_f$modelId),
      name: data.dec(_f$name),
      routingId: data.dec(_f$routingId),
      apiBase: data.dec(_f$apiBase),
      provider: data.dec(_f$provider),
      weight: data.dec(_f$weight),
      cooldownUntil: data.dec(_f$cooldownUntil),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DeploymentCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DeploymentCreate>(map);
  }

  static DeploymentCreate fromJson(String json) {
    return ensureInitialized().decodeJson<DeploymentCreate>(json);
  }
}

mixin DeploymentCreateMappable {
  String toJson() {
    return DeploymentCreateMapper.ensureInitialized()
        .encodeJson<DeploymentCreate>(this as DeploymentCreate);
  }

  Map<String, dynamic> toMap() {
    return DeploymentCreateMapper.ensureInitialized()
        .encodeMap<DeploymentCreate>(this as DeploymentCreate);
  }

  DeploymentCreateCopyWith<DeploymentCreate, DeploymentCreate, DeploymentCreate>
  get copyWith =>
      _DeploymentCreateCopyWithImpl<DeploymentCreate, DeploymentCreate>(
        this as DeploymentCreate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DeploymentCreateMapper.ensureInitialized().stringifyValue(
      this as DeploymentCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return DeploymentCreateMapper.ensureInitialized().equalsValue(
      this as DeploymentCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return DeploymentCreateMapper.ensureInitialized().hashValue(
      this as DeploymentCreate,
    );
  }
}

extension DeploymentCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeploymentCreate, $Out> {
  DeploymentCreateCopyWith<$R, DeploymentCreate, $Out>
  get $asDeploymentCreate =>
      $base.as((v, t, t2) => _DeploymentCreateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DeploymentCreateCopyWith<$R, $In extends DeploymentCreate, $Out>
    implements DeploymentUpdateCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? modelId,
    String? name,
    String? routingId,
    String? apiBase,
    String? provider,
    int? weight,
    DateTime? cooldownUntil,
  });
  DeploymentCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DeploymentCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeploymentCreate, $Out>
    implements DeploymentCreateCopyWith<$R, DeploymentCreate, $Out> {
  _DeploymentCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeploymentCreate> $mapper =
      DeploymentCreateMapper.ensureInitialized();
  @override
  $R call({
    String? modelId,
    String? name,
    String? routingId,
    String? apiBase,
    String? provider,
    int? weight,
    DateTime? cooldownUntil,
  }) => $apply(
    FieldCopyWithData({
      if (modelId != null) #modelId: modelId,
      if (name != null) #name: name,
      if (routingId != null) #routingId: routingId,
      if (apiBase != null) #apiBase: apiBase,
      if (provider != null) #provider: provider,
      if (weight != null) #weight: weight,
      if (cooldownUntil != null) #cooldownUntil: cooldownUntil,
    }),
  );
  @override
  DeploymentCreate $make(CopyWithData data) => DeploymentCreate(
    modelId: data.get(#modelId, or: $value.modelId),
    name: data.get(#name, or: $value.name),
    routingId: data.get(#routingId, or: $value.routingId),
    apiBase: data.get(#apiBase, or: $value.apiBase),
    provider: data.get(#provider, or: $value.provider),
    weight: data.get(#weight, or: $value.weight),
    cooldownUntil: data.get(#cooldownUntil, or: $value.cooldownUntil),
  );

  @override
  DeploymentCreateCopyWith<$R2, DeploymentCreate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DeploymentCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DeploymentMapper extends ClassMapperBase<Deployment> {
  DeploymentMapper._();

  static DeploymentMapper? _instance;
  static DeploymentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeploymentMapper._());
      DeploymentCreateMapper.ensureInitialized();
      DeploymentReadMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Deployment';

  static String _$id(Deployment v) => v.id;
  static const Field<Deployment, String> _f$id = Field('id', _$id);
  static String _$modelId(Deployment v) => v.modelId;
  static const Field<Deployment, String> _f$modelId = Field(
    'modelId',
    _$modelId,
    key: r'model_id',
  );
  static String _$name(Deployment v) => v.name;
  static const Field<Deployment, String> _f$name = Field('name', _$name);
  static String _$routingId(Deployment v) => v.routingId;
  static const Field<Deployment, String> _f$routingId = Field(
    'routingId',
    _$routingId,
    key: r'routing_id',
  );
  static String _$apiBase(Deployment v) => v.apiBase;
  static const Field<Deployment, String> _f$apiBase = Field(
    'apiBase',
    _$apiBase,
    key: r'api_base',
    opt: true,
    def: "",
  );
  static String _$provider(Deployment v) => v.provider;
  static const Field<Deployment, String> _f$provider = Field(
    'provider',
    _$provider,
  );
  static int _$weight(Deployment v) => v.weight;
  static const Field<Deployment, int> _f$weight = Field(
    'weight',
    _$weight,
    opt: true,
    def: 1,
  );
  static DateTime _$cooldownUntil(Deployment v) => v.cooldownUntil;
  static const Field<Deployment, DateTime> _f$cooldownUntil = Field(
    'cooldownUntil',
    _$cooldownUntil,
    key: r'cooldown_until',
  );
  static DateTime _$createdAt(Deployment v) => v.createdAt;
  static const Field<Deployment, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(Deployment v) => v.updatedAt;
  static const Field<Deployment, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );

  @override
  final MappableFields<Deployment> fields = const {
    #id: _f$id,
    #modelId: _f$modelId,
    #name: _f$name,
    #routingId: _f$routingId,
    #apiBase: _f$apiBase,
    #provider: _f$provider,
    #weight: _f$weight,
    #cooldownUntil: _f$cooldownUntil,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static Deployment _instantiate(DecodingData data) {
    return Deployment(
      id: data.dec(_f$id),
      modelId: data.dec(_f$modelId),
      name: data.dec(_f$name),
      routingId: data.dec(_f$routingId),
      apiBase: data.dec(_f$apiBase),
      provider: data.dec(_f$provider),
      weight: data.dec(_f$weight),
      cooldownUntil: data.dec(_f$cooldownUntil),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Deployment fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Deployment>(map);
  }

  static Deployment fromJson(String json) {
    return ensureInitialized().decodeJson<Deployment>(json);
  }
}

mixin DeploymentMappable {
  String toJson() {
    return DeploymentMapper.ensureInitialized().encodeJson<Deployment>(
      this as Deployment,
    );
  }

  Map<String, dynamic> toMap() {
    return DeploymentMapper.ensureInitialized().encodeMap<Deployment>(
      this as Deployment,
    );
  }

  DeploymentCopyWith<Deployment, Deployment, Deployment> get copyWith =>
      _DeploymentCopyWithImpl<Deployment, Deployment>(
        this as Deployment,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DeploymentMapper.ensureInitialized().stringifyValue(
      this as Deployment,
    );
  }

  @override
  bool operator ==(Object other) {
    return DeploymentMapper.ensureInitialized().equalsValue(
      this as Deployment,
      other,
    );
  }

  @override
  int get hashCode {
    return DeploymentMapper.ensureInitialized().hashValue(this as Deployment);
  }
}

extension DeploymentValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Deployment, $Out> {
  DeploymentCopyWith<$R, Deployment, $Out> get $asDeployment =>
      $base.as((v, t, t2) => _DeploymentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DeploymentCopyWith<$R, $In extends Deployment, $Out>
    implements DeploymentCreateCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    String? modelId,
    String? name,
    String? routingId,
    String? apiBase,
    String? provider,
    int? weight,
    DateTime? cooldownUntil,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  DeploymentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DeploymentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Deployment, $Out>
    implements DeploymentCopyWith<$R, Deployment, $Out> {
  _DeploymentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Deployment> $mapper =
      DeploymentMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? modelId,
    String? name,
    String? routingId,
    String? apiBase,
    String? provider,
    int? weight,
    DateTime? cooldownUntil,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (modelId != null) #modelId: modelId,
      if (name != null) #name: name,
      if (routingId != null) #routingId: routingId,
      if (apiBase != null) #apiBase: apiBase,
      if (provider != null) #provider: provider,
      if (weight != null) #weight: weight,
      if (cooldownUntil != null) #cooldownUntil: cooldownUntil,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  Deployment $make(CopyWithData data) => Deployment(
    id: data.get(#id, or: $value.id),
    modelId: data.get(#modelId, or: $value.modelId),
    name: data.get(#name, or: $value.name),
    routingId: data.get(#routingId, or: $value.routingId),
    apiBase: data.get(#apiBase, or: $value.apiBase),
    provider: data.get(#provider, or: $value.provider),
    weight: data.get(#weight, or: $value.weight),
    cooldownUntil: data.get(#cooldownUntil, or: $value.cooldownUntil),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  DeploymentCopyWith<$R2, Deployment, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DeploymentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DeploymentReadMapper extends ClassMapperBase<DeploymentRead> {
  DeploymentReadMapper._();

  static DeploymentReadMapper? _instance;
  static DeploymentReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeploymentReadMapper._());
      DeploymentMapper.ensureInitialized();
      ModelConfigMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DeploymentRead';

  static String _$id(DeploymentRead v) => v.id;
  static const Field<DeploymentRead, String> _f$id = Field('id', _$id);
  static String _$modelId(DeploymentRead v) => v.modelId;
  static const Field<DeploymentRead, String> _f$modelId = Field(
    'modelId',
    _$modelId,
    key: r'model_id',
  );
  static String _$name(DeploymentRead v) => v.name;
  static const Field<DeploymentRead, String> _f$name = Field('name', _$name);
  static String _$routingId(DeploymentRead v) => v.routingId;
  static const Field<DeploymentRead, String> _f$routingId = Field(
    'routingId',
    _$routingId,
    key: r'routing_id',
  );
  static String _$apiBase(DeploymentRead v) => v.apiBase;
  static const Field<DeploymentRead, String> _f$apiBase = Field(
    'apiBase',
    _$apiBase,
    key: r'api_base',
    opt: true,
    def: "",
  );
  static String _$provider(DeploymentRead v) => v.provider;
  static const Field<DeploymentRead, String> _f$provider = Field(
    'provider',
    _$provider,
  );
  static int _$weight(DeploymentRead v) => v.weight;
  static const Field<DeploymentRead, int> _f$weight = Field(
    'weight',
    _$weight,
    opt: true,
    def: 1,
  );
  static DateTime _$cooldownUntil(DeploymentRead v) => v.cooldownUntil;
  static const Field<DeploymentRead, DateTime> _f$cooldownUntil = Field(
    'cooldownUntil',
    _$cooldownUntil,
    key: r'cooldown_until',
  );
  static DateTime _$createdAt(DeploymentRead v) => v.createdAt;
  static const Field<DeploymentRead, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(DeploymentRead v) => v.updatedAt;
  static const Field<DeploymentRead, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static ModelConfig _$model(DeploymentRead v) => v.model;
  static const Field<DeploymentRead, ModelConfig> _f$model = Field(
    'model',
    _$model,
  );
  static String _$status(DeploymentRead v) => v.status;
  static const Field<DeploymentRead, String> _f$status = Field(
    'status',
    _$status,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<DeploymentRead> fields = const {
    #id: _f$id,
    #modelId: _f$modelId,
    #name: _f$name,
    #routingId: _f$routingId,
    #apiBase: _f$apiBase,
    #provider: _f$provider,
    #weight: _f$weight,
    #cooldownUntil: _f$cooldownUntil,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #model: _f$model,
    #status: _f$status,
  };

  static DeploymentRead _instantiate(DecodingData data) {
    return DeploymentRead(
      id: data.dec(_f$id),
      modelId: data.dec(_f$modelId),
      name: data.dec(_f$name),
      routingId: data.dec(_f$routingId),
      apiBase: data.dec(_f$apiBase),
      provider: data.dec(_f$provider),
      weight: data.dec(_f$weight),
      cooldownUntil: data.dec(_f$cooldownUntil),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      model: data.dec(_f$model),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DeploymentRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DeploymentRead>(map);
  }

  static DeploymentRead fromJson(String json) {
    return ensureInitialized().decodeJson<DeploymentRead>(json);
  }
}

mixin DeploymentReadMappable {
  String toJson() {
    return DeploymentReadMapper.ensureInitialized().encodeJson<DeploymentRead>(
      this as DeploymentRead,
    );
  }

  Map<String, dynamic> toMap() {
    return DeploymentReadMapper.ensureInitialized().encodeMap<DeploymentRead>(
      this as DeploymentRead,
    );
  }

  DeploymentReadCopyWith<DeploymentRead, DeploymentRead, DeploymentRead>
  get copyWith => _DeploymentReadCopyWithImpl<DeploymentRead, DeploymentRead>(
    this as DeploymentRead,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return DeploymentReadMapper.ensureInitialized().stringifyValue(
      this as DeploymentRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return DeploymentReadMapper.ensureInitialized().equalsValue(
      this as DeploymentRead,
      other,
    );
  }

  @override
  int get hashCode {
    return DeploymentReadMapper.ensureInitialized().hashValue(
      this as DeploymentRead,
    );
  }
}

extension DeploymentReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeploymentRead, $Out> {
  DeploymentReadCopyWith<$R, DeploymentRead, $Out> get $asDeploymentRead =>
      $base.as((v, t, t2) => _DeploymentReadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DeploymentReadCopyWith<$R, $In extends DeploymentRead, $Out>
    implements DeploymentCopyWith<$R, $In, $Out> {
  ModelConfigCopyWith<$R, ModelConfig, ModelConfig> get model;
  @override
  $R call({
    String? id,
    String? modelId,
    String? name,
    String? routingId,
    String? apiBase,
    String? provider,
    int? weight,
    DateTime? cooldownUntil,
    DateTime? createdAt,
    DateTime? updatedAt,
    ModelConfig? model,
  });
  DeploymentReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DeploymentReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeploymentRead, $Out>
    implements DeploymentReadCopyWith<$R, DeploymentRead, $Out> {
  _DeploymentReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeploymentRead> $mapper =
      DeploymentReadMapper.ensureInitialized();
  @override
  ModelConfigCopyWith<$R, ModelConfig, ModelConfig> get model =>
      $value.model.copyWith.$chain((v) => call(model: v));
  @override
  $R call({
    String? id,
    String? modelId,
    String? name,
    String? routingId,
    String? apiBase,
    String? provider,
    int? weight,
    DateTime? cooldownUntil,
    DateTime? createdAt,
    DateTime? updatedAt,
    ModelConfig? model,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (modelId != null) #modelId: modelId,
      if (name != null) #name: name,
      if (routingId != null) #routingId: routingId,
      if (apiBase != null) #apiBase: apiBase,
      if (provider != null) #provider: provider,
      if (weight != null) #weight: weight,
      if (cooldownUntil != null) #cooldownUntil: cooldownUntil,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (model != null) #model: model,
    }),
  );
  @override
  DeploymentRead $make(CopyWithData data) => DeploymentRead(
    id: data.get(#id, or: $value.id),
    modelId: data.get(#modelId, or: $value.modelId),
    name: data.get(#name, or: $value.name),
    routingId: data.get(#routingId, or: $value.routingId),
    apiBase: data.get(#apiBase, or: $value.apiBase),
    provider: data.get(#provider, or: $value.provider),
    weight: data.get(#weight, or: $value.weight),
    cooldownUntil: data.get(#cooldownUntil, or: $value.cooldownUntil),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    model: data.get(#model, or: $value.model),
  );

  @override
  DeploymentReadCopyWith<$R2, DeploymentRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DeploymentReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModelConfigMapper extends ClassMapperBase<ModelConfig> {
  ModelConfigMapper._();

  static ModelConfigMapper? _instance;
  static ModelConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelConfigMapper._());
      ModelConfigCreateMapper.ensureInitialized();
      ModelConfigReadMapper.ensureInitialized();
      ModelTypeMapper.ensureInitialized();
      ModelCapabilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelConfig';

  static String _$id(ModelConfig v) => v.id;
  static const Field<ModelConfig, String> _f$id = Field('id', _$id);
  static ModelType _$type(ModelConfig v) => v.type;
  static const Field<ModelConfig, ModelType> _f$type = Field('type', _$type);
  static String _$name(ModelConfig v) => v.name;
  static const Field<ModelConfig, String> _f$name = Field('name', _$name);
  static String _$ownedBy(ModelConfig v) => v.ownedBy;
  static const Field<ModelConfig, String> _f$ownedBy = Field(
    'ownedBy',
    _$ownedBy,
    key: r'owned_by',
  );
  static List<ModelCapability> _$capabilities(ModelConfig v) => v.capabilities;
  static const Field<ModelConfig, List<ModelCapability>> _f$capabilities =
      Field('capabilities', _$capabilities);
  static int _$contextLength(ModelConfig v) => v.contextLength;
  static const Field<ModelConfig, int> _f$contextLength = Field(
    'contextLength',
    _$contextLength,
    key: r'context_length',
  );
  static List<String> _$languages(ModelConfig v) => v.languages;
  static const Field<ModelConfig, List<String>> _f$languages = Field(
    'languages',
    _$languages,
    opt: true,
    def: const ["en"],
  );
  static int? _$maxOutputTokens(ModelConfig v) => v.maxOutputTokens;
  static const Field<ModelConfig, int> _f$maxOutputTokens = Field(
    'maxOutputTokens',
    _$maxOutputTokens,
    key: r'max_output_tokens',
    opt: true,
  );
  static double _$timeout(ModelConfig v) => v.timeout;
  static const Field<ModelConfig, double> _f$timeout = Field(
    'timeout',
    _$timeout,
    opt: true,
    def: 108000.0,
  );
  static int _$priority(ModelConfig v) => v.priority;
  static const Field<ModelConfig, int> _f$priority = Field(
    'priority',
    _$priority,
    opt: true,
    def: 0,
  );
  static List<String> _$allowedOrgs(ModelConfig v) => v.allowedOrgs;
  static const Field<ModelConfig, List<String>> _f$allowedOrgs = Field(
    'allowedOrgs',
    _$allowedOrgs,
    key: r'allowed_orgs',
    opt: true,
    def: const [],
  );
  static List<String> _$blockedOrgs(ModelConfig v) => v.blockedOrgs;
  static const Field<ModelConfig, List<String>> _f$blockedOrgs = Field(
    'blockedOrgs',
    _$blockedOrgs,
    key: r'blocked_orgs',
    opt: true,
    def: const [],
  );
  static double _$llmInputCostPerMtoken(ModelConfig v) =>
      v.llmInputCostPerMtoken;
  static const Field<ModelConfig, double> _f$llmInputCostPerMtoken = Field(
    'llmInputCostPerMtoken',
    _$llmInputCostPerMtoken,
    key: r'llm_input_cost_per_mtoken',
    opt: true,
    def: -1.0,
  );
  static double _$llmOutputCostPerMtoken(ModelConfig v) =>
      v.llmOutputCostPerMtoken;
  static const Field<ModelConfig, double> _f$llmOutputCostPerMtoken = Field(
    'llmOutputCostPerMtoken',
    _$llmOutputCostPerMtoken,
    key: r'llm_output_cost_per_mtoken',
    opt: true,
    def: -1.0,
  );
  static int? _$embeddingSize(ModelConfig v) => v.embeddingSize;
  static const Field<ModelConfig, int> _f$embeddingSize = Field(
    'embeddingSize',
    _$embeddingSize,
    key: r'embedding_size',
    opt: true,
  );
  static int? _$embeddingDimensions(ModelConfig v) => v.embeddingDimensions;
  static const Field<ModelConfig, int> _f$embeddingDimensions = Field(
    'embeddingDimensions',
    _$embeddingDimensions,
    key: r'embedding_dimensions',
    opt: true,
  );
  static String? _$embeddingTransformQuery(ModelConfig v) =>
      v.embeddingTransformQuery;
  static const Field<ModelConfig, String> _f$embeddingTransformQuery = Field(
    'embeddingTransformQuery',
    _$embeddingTransformQuery,
    key: r'embedding_transform_query',
    opt: true,
  );
  static double _$embeddingCostPerMtoken(ModelConfig v) =>
      v.embeddingCostPerMtoken;
  static const Field<ModelConfig, double> _f$embeddingCostPerMtoken = Field(
    'embeddingCostPerMtoken',
    _$embeddingCostPerMtoken,
    key: r'embedding_cost_per_mtoken',
    opt: true,
    def: -1.0,
  );
  static double _$rerankingCostPerKsearch(ModelConfig v) =>
      v.rerankingCostPerKsearch;
  static const Field<ModelConfig, double> _f$rerankingCostPerKsearch = Field(
    'rerankingCostPerKsearch',
    _$rerankingCostPerKsearch,
    key: r'reranking_cost_per_ksearch',
    opt: true,
    def: -1.0,
  );
  static bool _$isPrivate(ModelConfig v) => v.isPrivate;
  static const Field<ModelConfig, bool> _f$isPrivate = Field(
    'isPrivate',
    _$isPrivate,
    key: r'is_private',
  );
  static DateTime _$createdAt(ModelConfig v) => v.createdAt;
  static const Field<ModelConfig, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(ModelConfig v) => v.updatedAt;
  static const Field<ModelConfig, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static Set<String> _$capabilitiesSet(ModelConfig v) => v.capabilitiesSet;
  static const Field<ModelConfig, Set<String>> _f$capabilitiesSet = Field(
    'capabilitiesSet',
    _$capabilitiesSet,
    key: r'capabilities_set',
    mode: FieldMode.member,
  );
  static int _$finalEmbeddingSize(ModelConfig v) => v.finalEmbeddingSize;
  static const Field<ModelConfig, int> _f$finalEmbeddingSize = Field(
    'finalEmbeddingSize',
    _$finalEmbeddingSize,
    key: r'final_embedding_size',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ModelConfig> fields = const {
    #id: _f$id,
    #type: _f$type,
    #name: _f$name,
    #ownedBy: _f$ownedBy,
    #capabilities: _f$capabilities,
    #contextLength: _f$contextLength,
    #languages: _f$languages,
    #maxOutputTokens: _f$maxOutputTokens,
    #timeout: _f$timeout,
    #priority: _f$priority,
    #allowedOrgs: _f$allowedOrgs,
    #blockedOrgs: _f$blockedOrgs,
    #llmInputCostPerMtoken: _f$llmInputCostPerMtoken,
    #llmOutputCostPerMtoken: _f$llmOutputCostPerMtoken,
    #embeddingSize: _f$embeddingSize,
    #embeddingDimensions: _f$embeddingDimensions,
    #embeddingTransformQuery: _f$embeddingTransformQuery,
    #embeddingCostPerMtoken: _f$embeddingCostPerMtoken,
    #rerankingCostPerKsearch: _f$rerankingCostPerKsearch,
    #isPrivate: _f$isPrivate,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #capabilitiesSet: _f$capabilitiesSet,
    #finalEmbeddingSize: _f$finalEmbeddingSize,
  };

  static ModelConfig _instantiate(DecodingData data) {
    return ModelConfig(
      id: data.dec(_f$id),
      type: data.dec(_f$type),
      name: data.dec(_f$name),
      ownedBy: data.dec(_f$ownedBy),
      capabilities: data.dec(_f$capabilities),
      contextLength: data.dec(_f$contextLength),
      languages: data.dec(_f$languages),
      maxOutputTokens: data.dec(_f$maxOutputTokens),
      timeout: data.dec(_f$timeout),
      priority: data.dec(_f$priority),
      allowedOrgs: data.dec(_f$allowedOrgs),
      blockedOrgs: data.dec(_f$blockedOrgs),
      llmInputCostPerMtoken: data.dec(_f$llmInputCostPerMtoken),
      llmOutputCostPerMtoken: data.dec(_f$llmOutputCostPerMtoken),
      embeddingSize: data.dec(_f$embeddingSize),
      embeddingDimensions: data.dec(_f$embeddingDimensions),
      embeddingTransformQuery: data.dec(_f$embeddingTransformQuery),
      embeddingCostPerMtoken: data.dec(_f$embeddingCostPerMtoken),
      rerankingCostPerKsearch: data.dec(_f$rerankingCostPerKsearch),
      isPrivate: data.dec(_f$isPrivate),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModelConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelConfig>(map);
  }

  static ModelConfig fromJson(String json) {
    return ensureInitialized().decodeJson<ModelConfig>(json);
  }
}

mixin ModelConfigMappable {
  String toJson() {
    return ModelConfigMapper.ensureInitialized().encodeJson<ModelConfig>(
      this as ModelConfig,
    );
  }

  Map<String, dynamic> toMap() {
    return ModelConfigMapper.ensureInitialized().encodeMap<ModelConfig>(
      this as ModelConfig,
    );
  }

  ModelConfigCopyWith<ModelConfig, ModelConfig, ModelConfig> get copyWith =>
      _ModelConfigCopyWithImpl<ModelConfig, ModelConfig>(
        this as ModelConfig,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ModelConfigMapper.ensureInitialized().stringifyValue(
      this as ModelConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModelConfigMapper.ensureInitialized().equalsValue(
      this as ModelConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return ModelConfigMapper.ensureInitialized().hashValue(this as ModelConfig);
  }
}

extension ModelConfigValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModelConfig, $Out> {
  ModelConfigCopyWith<$R, ModelConfig, $Out> get $asModelConfig =>
      $base.as((v, t, t2) => _ModelConfigCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ModelConfigCopyWith<$R, $In extends ModelConfig, $Out>
    implements ModelConfigCreateCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>?
  >
  get capabilities;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get languages;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get allowedOrgs;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get blockedOrgs;
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    int? maxOutputTokens,
    double? timeout,
    int? priority,
    List<String>? allowedOrgs,
    List<String>? blockedOrgs,
    double? llmInputCostPerMtoken,
    double? llmOutputCostPerMtoken,
    int? embeddingSize,
    int? embeddingDimensions,
    String? embeddingTransformQuery,
    double? embeddingCostPerMtoken,
    double? rerankingCostPerKsearch,
    bool? isPrivate,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  ModelConfigCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModelConfigCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelConfig, $Out>
    implements ModelConfigCopyWith<$R, ModelConfig, $Out> {
  _ModelConfigCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelConfig> $mapper =
      ModelConfigMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>?
  >
  get capabilities => ListCopyWith(
    $value.capabilities,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(capabilities: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get languages =>
      ListCopyWith(
        $value.languages,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(languages: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>
  get allowedOrgs => ListCopyWith(
    $value.allowedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(allowedOrgs: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>
  get blockedOrgs => ListCopyWith(
    $value.blockedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(blockedOrgs: v),
  );
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    Object? maxOutputTokens = $none,
    double? timeout,
    int? priority,
    List<String>? allowedOrgs,
    List<String>? blockedOrgs,
    double? llmInputCostPerMtoken,
    double? llmOutputCostPerMtoken,
    Object? embeddingSize = $none,
    Object? embeddingDimensions = $none,
    Object? embeddingTransformQuery = $none,
    double? embeddingCostPerMtoken,
    double? rerankingCostPerKsearch,
    bool? isPrivate,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (type != null) #type: type,
      if (name != null) #name: name,
      if (ownedBy != null) #ownedBy: ownedBy,
      if (capabilities != null) #capabilities: capabilities,
      if (contextLength != null) #contextLength: contextLength,
      if (languages != null) #languages: languages,
      if (maxOutputTokens != $none) #maxOutputTokens: maxOutputTokens,
      if (timeout != null) #timeout: timeout,
      if (priority != null) #priority: priority,
      if (allowedOrgs != null) #allowedOrgs: allowedOrgs,
      if (blockedOrgs != null) #blockedOrgs: blockedOrgs,
      if (llmInputCostPerMtoken != null)
        #llmInputCostPerMtoken: llmInputCostPerMtoken,
      if (llmOutputCostPerMtoken != null)
        #llmOutputCostPerMtoken: llmOutputCostPerMtoken,
      if (embeddingSize != $none) #embeddingSize: embeddingSize,
      if (embeddingDimensions != $none)
        #embeddingDimensions: embeddingDimensions,
      if (embeddingTransformQuery != $none)
        #embeddingTransformQuery: embeddingTransformQuery,
      if (embeddingCostPerMtoken != null)
        #embeddingCostPerMtoken: embeddingCostPerMtoken,
      if (rerankingCostPerKsearch != null)
        #rerankingCostPerKsearch: rerankingCostPerKsearch,
      if (isPrivate != null) #isPrivate: isPrivate,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  ModelConfig $make(CopyWithData data) => ModelConfig(
    id: data.get(#id, or: $value.id),
    type: data.get(#type, or: $value.type),
    name: data.get(#name, or: $value.name),
    ownedBy: data.get(#ownedBy, or: $value.ownedBy),
    capabilities: data.get(#capabilities, or: $value.capabilities),
    contextLength: data.get(#contextLength, or: $value.contextLength),
    languages: data.get(#languages, or: $value.languages),
    maxOutputTokens: data.get(#maxOutputTokens, or: $value.maxOutputTokens),
    timeout: data.get(#timeout, or: $value.timeout),
    priority: data.get(#priority, or: $value.priority),
    allowedOrgs: data.get(#allowedOrgs, or: $value.allowedOrgs),
    blockedOrgs: data.get(#blockedOrgs, or: $value.blockedOrgs),
    llmInputCostPerMtoken: data.get(
      #llmInputCostPerMtoken,
      or: $value.llmInputCostPerMtoken,
    ),
    llmOutputCostPerMtoken: data.get(
      #llmOutputCostPerMtoken,
      or: $value.llmOutputCostPerMtoken,
    ),
    embeddingSize: data.get(#embeddingSize, or: $value.embeddingSize),
    embeddingDimensions: data.get(
      #embeddingDimensions,
      or: $value.embeddingDimensions,
    ),
    embeddingTransformQuery: data.get(
      #embeddingTransformQuery,
      or: $value.embeddingTransformQuery,
    ),
    embeddingCostPerMtoken: data.get(
      #embeddingCostPerMtoken,
      or: $value.embeddingCostPerMtoken,
    ),
    rerankingCostPerKsearch: data.get(
      #rerankingCostPerKsearch,
      or: $value.rerankingCostPerKsearch,
    ),
    isPrivate: data.get(#isPrivate, or: $value.isPrivate),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  ModelConfigCopyWith<$R2, ModelConfig, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModelConfigCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModelConfigCreateMapper extends ClassMapperBase<ModelConfigCreate> {
  ModelConfigCreateMapper._();

  static ModelConfigCreateMapper? _instance;
  static ModelConfigCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelConfigCreateMapper._());
      ModelConfigUpdateMapper.ensureInitialized();
      ModelConfigMapper.ensureInitialized();
      ModelTypeMapper.ensureInitialized();
      ModelCapabilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelConfigCreate';

  static String _$id(ModelConfigCreate v) => v.id;
  static const Field<ModelConfigCreate, String> _f$id = Field('id', _$id);
  static ModelType _$type(ModelConfigCreate v) => v.type;
  static const Field<ModelConfigCreate, ModelType> _f$type = Field(
    'type',
    _$type,
  );
  static String _$name(ModelConfigCreate v) => v.name;
  static const Field<ModelConfigCreate, String> _f$name = Field('name', _$name);
  static String _$ownedBy(ModelConfigCreate v) => v.ownedBy;
  static const Field<ModelConfigCreate, String> _f$ownedBy = Field(
    'ownedBy',
    _$ownedBy,
    key: r'owned_by',
  );
  static List<ModelCapability> _$capabilities(ModelConfigCreate v) =>
      v.capabilities;
  static const Field<ModelConfigCreate, List<ModelCapability>> _f$capabilities =
      Field('capabilities', _$capabilities);
  static int _$contextLength(ModelConfigCreate v) => v.contextLength;
  static const Field<ModelConfigCreate, int> _f$contextLength = Field(
    'contextLength',
    _$contextLength,
    key: r'context_length',
  );
  static List<String> _$languages(ModelConfigCreate v) => v.languages;
  static const Field<ModelConfigCreate, List<String>> _f$languages = Field(
    'languages',
    _$languages,
    opt: true,
    def: const ["en"],
  );
  static int? _$maxOutputTokens(ModelConfigCreate v) => v.maxOutputTokens;
  static const Field<ModelConfigCreate, int> _f$maxOutputTokens = Field(
    'maxOutputTokens',
    _$maxOutputTokens,
    key: r'max_output_tokens',
    opt: true,
  );
  static double _$timeout(ModelConfigCreate v) => v.timeout;
  static const Field<ModelConfigCreate, double> _f$timeout = Field(
    'timeout',
    _$timeout,
    opt: true,
    def: 108000.0,
  );
  static int _$priority(ModelConfigCreate v) => v.priority;
  static const Field<ModelConfigCreate, int> _f$priority = Field(
    'priority',
    _$priority,
    opt: true,
    def: 0,
  );
  static List<String> _$allowedOrgs(ModelConfigCreate v) => v.allowedOrgs;
  static const Field<ModelConfigCreate, List<String>> _f$allowedOrgs = Field(
    'allowedOrgs',
    _$allowedOrgs,
    key: r'allowed_orgs',
    opt: true,
    def: const [],
  );
  static List<String> _$blockedOrgs(ModelConfigCreate v) => v.blockedOrgs;
  static const Field<ModelConfigCreate, List<String>> _f$blockedOrgs = Field(
    'blockedOrgs',
    _$blockedOrgs,
    key: r'blocked_orgs',
    opt: true,
    def: const [],
  );
  static double _$llmInputCostPerMtoken(ModelConfigCreate v) =>
      v.llmInputCostPerMtoken;
  static const Field<ModelConfigCreate, double> _f$llmInputCostPerMtoken =
      Field(
        'llmInputCostPerMtoken',
        _$llmInputCostPerMtoken,
        key: r'llm_input_cost_per_mtoken',
        opt: true,
        def: -1.0,
      );
  static double _$llmOutputCostPerMtoken(ModelConfigCreate v) =>
      v.llmOutputCostPerMtoken;
  static const Field<ModelConfigCreate, double> _f$llmOutputCostPerMtoken =
      Field(
        'llmOutputCostPerMtoken',
        _$llmOutputCostPerMtoken,
        key: r'llm_output_cost_per_mtoken',
        opt: true,
        def: -1.0,
      );
  static int? _$embeddingSize(ModelConfigCreate v) => v.embeddingSize;
  static const Field<ModelConfigCreate, int> _f$embeddingSize = Field(
    'embeddingSize',
    _$embeddingSize,
    key: r'embedding_size',
    opt: true,
  );
  static int? _$embeddingDimensions(ModelConfigCreate v) =>
      v.embeddingDimensions;
  static const Field<ModelConfigCreate, int> _f$embeddingDimensions = Field(
    'embeddingDimensions',
    _$embeddingDimensions,
    key: r'embedding_dimensions',
    opt: true,
  );
  static String? _$embeddingTransformQuery(ModelConfigCreate v) =>
      v.embeddingTransformQuery;
  static const Field<ModelConfigCreate, String> _f$embeddingTransformQuery =
      Field(
        'embeddingTransformQuery',
        _$embeddingTransformQuery,
        key: r'embedding_transform_query',
        opt: true,
      );
  static double _$embeddingCostPerMtoken(ModelConfigCreate v) =>
      v.embeddingCostPerMtoken;
  static const Field<ModelConfigCreate, double> _f$embeddingCostPerMtoken =
      Field(
        'embeddingCostPerMtoken',
        _$embeddingCostPerMtoken,
        key: r'embedding_cost_per_mtoken',
        opt: true,
        def: -1.0,
      );
  static double _$rerankingCostPerKsearch(ModelConfigCreate v) =>
      v.rerankingCostPerKsearch;
  static const Field<ModelConfigCreate, double> _f$rerankingCostPerKsearch =
      Field(
        'rerankingCostPerKsearch',
        _$rerankingCostPerKsearch,
        key: r'reranking_cost_per_ksearch',
        opt: true,
        def: -1.0,
      );
  static Set<String> _$capabilitiesSet(ModelConfigCreate v) =>
      v.capabilitiesSet;
  static const Field<ModelConfigCreate, Set<String>> _f$capabilitiesSet = Field(
    'capabilitiesSet',
    _$capabilitiesSet,
    key: r'capabilities_set',
    mode: FieldMode.member,
  );
  static int _$finalEmbeddingSize(ModelConfigCreate v) => v.finalEmbeddingSize;
  static const Field<ModelConfigCreate, int> _f$finalEmbeddingSize = Field(
    'finalEmbeddingSize',
    _$finalEmbeddingSize,
    key: r'final_embedding_size',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ModelConfigCreate> fields = const {
    #id: _f$id,
    #type: _f$type,
    #name: _f$name,
    #ownedBy: _f$ownedBy,
    #capabilities: _f$capabilities,
    #contextLength: _f$contextLength,
    #languages: _f$languages,
    #maxOutputTokens: _f$maxOutputTokens,
    #timeout: _f$timeout,
    #priority: _f$priority,
    #allowedOrgs: _f$allowedOrgs,
    #blockedOrgs: _f$blockedOrgs,
    #llmInputCostPerMtoken: _f$llmInputCostPerMtoken,
    #llmOutputCostPerMtoken: _f$llmOutputCostPerMtoken,
    #embeddingSize: _f$embeddingSize,
    #embeddingDimensions: _f$embeddingDimensions,
    #embeddingTransformQuery: _f$embeddingTransformQuery,
    #embeddingCostPerMtoken: _f$embeddingCostPerMtoken,
    #rerankingCostPerKsearch: _f$rerankingCostPerKsearch,
    #capabilitiesSet: _f$capabilitiesSet,
    #finalEmbeddingSize: _f$finalEmbeddingSize,
  };

  static ModelConfigCreate _instantiate(DecodingData data) {
    return ModelConfigCreate(
      id: data.dec(_f$id),
      type: data.dec(_f$type),
      name: data.dec(_f$name),
      ownedBy: data.dec(_f$ownedBy),
      capabilities: data.dec(_f$capabilities),
      contextLength: data.dec(_f$contextLength),
      languages: data.dec(_f$languages),
      maxOutputTokens: data.dec(_f$maxOutputTokens),
      timeout: data.dec(_f$timeout),
      priority: data.dec(_f$priority),
      allowedOrgs: data.dec(_f$allowedOrgs),
      blockedOrgs: data.dec(_f$blockedOrgs),
      llmInputCostPerMtoken: data.dec(_f$llmInputCostPerMtoken),
      llmOutputCostPerMtoken: data.dec(_f$llmOutputCostPerMtoken),
      embeddingSize: data.dec(_f$embeddingSize),
      embeddingDimensions: data.dec(_f$embeddingDimensions),
      embeddingTransformQuery: data.dec(_f$embeddingTransformQuery),
      embeddingCostPerMtoken: data.dec(_f$embeddingCostPerMtoken),
      rerankingCostPerKsearch: data.dec(_f$rerankingCostPerKsearch),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModelConfigCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelConfigCreate>(map);
  }

  static ModelConfigCreate fromJson(String json) {
    return ensureInitialized().decodeJson<ModelConfigCreate>(json);
  }
}

mixin ModelConfigCreateMappable {
  String toJson() {
    return ModelConfigCreateMapper.ensureInitialized()
        .encodeJson<ModelConfigCreate>(this as ModelConfigCreate);
  }

  Map<String, dynamic> toMap() {
    return ModelConfigCreateMapper.ensureInitialized()
        .encodeMap<ModelConfigCreate>(this as ModelConfigCreate);
  }

  ModelConfigCreateCopyWith<
    ModelConfigCreate,
    ModelConfigCreate,
    ModelConfigCreate
  >
  get copyWith =>
      _ModelConfigCreateCopyWithImpl<ModelConfigCreate, ModelConfigCreate>(
        this as ModelConfigCreate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ModelConfigCreateMapper.ensureInitialized().stringifyValue(
      this as ModelConfigCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModelConfigCreateMapper.ensureInitialized().equalsValue(
      this as ModelConfigCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return ModelConfigCreateMapper.ensureInitialized().hashValue(
      this as ModelConfigCreate,
    );
  }
}

extension ModelConfigCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModelConfigCreate, $Out> {
  ModelConfigCreateCopyWith<$R, ModelConfigCreate, $Out>
  get $asModelConfigCreate => $base.as(
    (v, t, t2) => _ModelConfigCreateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ModelConfigCreateCopyWith<
  $R,
  $In extends ModelConfigCreate,
  $Out
>
    implements ModelConfigUpdateCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>?
  >
  get capabilities;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get languages;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get allowedOrgs;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get blockedOrgs;
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    int? maxOutputTokens,
    double? timeout,
    int? priority,
    List<String>? allowedOrgs,
    List<String>? blockedOrgs,
    double? llmInputCostPerMtoken,
    double? llmOutputCostPerMtoken,
    int? embeddingSize,
    int? embeddingDimensions,
    String? embeddingTransformQuery,
    double? embeddingCostPerMtoken,
    double? rerankingCostPerKsearch,
  });
  ModelConfigCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ModelConfigCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelConfigCreate, $Out>
    implements ModelConfigCreateCopyWith<$R, ModelConfigCreate, $Out> {
  _ModelConfigCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelConfigCreate> $mapper =
      ModelConfigCreateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>?
  >
  get capabilities => ListCopyWith(
    $value.capabilities,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(capabilities: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get languages =>
      ListCopyWith(
        $value.languages,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(languages: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>
  get allowedOrgs => ListCopyWith(
    $value.allowedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(allowedOrgs: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>
  get blockedOrgs => ListCopyWith(
    $value.blockedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(blockedOrgs: v),
  );
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    Object? maxOutputTokens = $none,
    double? timeout,
    int? priority,
    List<String>? allowedOrgs,
    List<String>? blockedOrgs,
    double? llmInputCostPerMtoken,
    double? llmOutputCostPerMtoken,
    Object? embeddingSize = $none,
    Object? embeddingDimensions = $none,
    Object? embeddingTransformQuery = $none,
    double? embeddingCostPerMtoken,
    double? rerankingCostPerKsearch,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (type != null) #type: type,
      if (name != null) #name: name,
      if (ownedBy != null) #ownedBy: ownedBy,
      if (capabilities != null) #capabilities: capabilities,
      if (contextLength != null) #contextLength: contextLength,
      if (languages != null) #languages: languages,
      if (maxOutputTokens != $none) #maxOutputTokens: maxOutputTokens,
      if (timeout != null) #timeout: timeout,
      if (priority != null) #priority: priority,
      if (allowedOrgs != null) #allowedOrgs: allowedOrgs,
      if (blockedOrgs != null) #blockedOrgs: blockedOrgs,
      if (llmInputCostPerMtoken != null)
        #llmInputCostPerMtoken: llmInputCostPerMtoken,
      if (llmOutputCostPerMtoken != null)
        #llmOutputCostPerMtoken: llmOutputCostPerMtoken,
      if (embeddingSize != $none) #embeddingSize: embeddingSize,
      if (embeddingDimensions != $none)
        #embeddingDimensions: embeddingDimensions,
      if (embeddingTransformQuery != $none)
        #embeddingTransformQuery: embeddingTransformQuery,
      if (embeddingCostPerMtoken != null)
        #embeddingCostPerMtoken: embeddingCostPerMtoken,
      if (rerankingCostPerKsearch != null)
        #rerankingCostPerKsearch: rerankingCostPerKsearch,
    }),
  );
  @override
  ModelConfigCreate $make(CopyWithData data) => ModelConfigCreate(
    id: data.get(#id, or: $value.id),
    type: data.get(#type, or: $value.type),
    name: data.get(#name, or: $value.name),
    ownedBy: data.get(#ownedBy, or: $value.ownedBy),
    capabilities: data.get(#capabilities, or: $value.capabilities),
    contextLength: data.get(#contextLength, or: $value.contextLength),
    languages: data.get(#languages, or: $value.languages),
    maxOutputTokens: data.get(#maxOutputTokens, or: $value.maxOutputTokens),
    timeout: data.get(#timeout, or: $value.timeout),
    priority: data.get(#priority, or: $value.priority),
    allowedOrgs: data.get(#allowedOrgs, or: $value.allowedOrgs),
    blockedOrgs: data.get(#blockedOrgs, or: $value.blockedOrgs),
    llmInputCostPerMtoken: data.get(
      #llmInputCostPerMtoken,
      or: $value.llmInputCostPerMtoken,
    ),
    llmOutputCostPerMtoken: data.get(
      #llmOutputCostPerMtoken,
      or: $value.llmOutputCostPerMtoken,
    ),
    embeddingSize: data.get(#embeddingSize, or: $value.embeddingSize),
    embeddingDimensions: data.get(
      #embeddingDimensions,
      or: $value.embeddingDimensions,
    ),
    embeddingTransformQuery: data.get(
      #embeddingTransformQuery,
      or: $value.embeddingTransformQuery,
    ),
    embeddingCostPerMtoken: data.get(
      #embeddingCostPerMtoken,
      or: $value.embeddingCostPerMtoken,
    ),
    rerankingCostPerKsearch: data.get(
      #rerankingCostPerKsearch,
      or: $value.rerankingCostPerKsearch,
    ),
  );

  @override
  ModelConfigCreateCopyWith<$R2, ModelConfigCreate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModelConfigCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModelConfigUpdateMapper extends ClassMapperBase<ModelConfigUpdate> {
  ModelConfigUpdateMapper._();

  static ModelConfigUpdateMapper? _instance;
  static ModelConfigUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelConfigUpdateMapper._());
      ModelInfoMapper.ensureInitialized();
      ModelConfigCreateMapper.ensureInitialized();
      ModelTypeMapper.ensureInitialized();
      ModelCapabilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelConfigUpdate';

  static String _$id(ModelConfigUpdate v) => v.id;
  static const Field<ModelConfigUpdate, String> _f$id = Field('id', _$id);
  static ModelType _$type(ModelConfigUpdate v) => v.type;
  static const Field<ModelConfigUpdate, ModelType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: ModelType.llm,
  );
  static String _$name(ModelConfigUpdate v) => v.name;
  static const Field<ModelConfigUpdate, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static String _$ownedBy(ModelConfigUpdate v) => v.ownedBy;
  static const Field<ModelConfigUpdate, String> _f$ownedBy = Field(
    'ownedBy',
    _$ownedBy,
    key: r'owned_by',
    opt: true,
    def: "",
  );
  static List<ModelCapability> _$capabilities(ModelConfigUpdate v) =>
      v.capabilities;
  static const Field<ModelConfigUpdate, List<ModelCapability>> _f$capabilities =
      Field('capabilities', _$capabilities, opt: true, def: const []);
  static int _$contextLength(ModelConfigUpdate v) => v.contextLength;
  static const Field<ModelConfigUpdate, int> _f$contextLength = Field(
    'contextLength',
    _$contextLength,
    key: r'context_length',
    opt: true,
    def: 4096,
  );
  static List<String> _$languages(ModelConfigUpdate v) => v.languages;
  static const Field<ModelConfigUpdate, List<String>> _f$languages = Field(
    'languages',
    _$languages,
    opt: true,
    def: const ["en"],
  );
  static int? _$maxOutputTokens(ModelConfigUpdate v) => v.maxOutputTokens;
  static const Field<ModelConfigUpdate, int> _f$maxOutputTokens = Field(
    'maxOutputTokens',
    _$maxOutputTokens,
    key: r'max_output_tokens',
    opt: true,
  );
  static double _$timeout(ModelConfigUpdate v) => v.timeout;
  static const Field<ModelConfigUpdate, double> _f$timeout = Field(
    'timeout',
    _$timeout,
    opt: true,
    def: 108000.0,
  );
  static int _$priority(ModelConfigUpdate v) => v.priority;
  static const Field<ModelConfigUpdate, int> _f$priority = Field(
    'priority',
    _$priority,
    opt: true,
    def: 0,
  );
  static List<String> _$allowedOrgs(ModelConfigUpdate v) => v.allowedOrgs;
  static const Field<ModelConfigUpdate, List<String>> _f$allowedOrgs = Field(
    'allowedOrgs',
    _$allowedOrgs,
    key: r'allowed_orgs',
    opt: true,
    def: const [],
  );
  static List<String> _$blockedOrgs(ModelConfigUpdate v) => v.blockedOrgs;
  static const Field<ModelConfigUpdate, List<String>> _f$blockedOrgs = Field(
    'blockedOrgs',
    _$blockedOrgs,
    key: r'blocked_orgs',
    opt: true,
    def: const [],
  );
  static double _$llmInputCostPerMtoken(ModelConfigUpdate v) =>
      v.llmInputCostPerMtoken;
  static const Field<ModelConfigUpdate, double> _f$llmInputCostPerMtoken =
      Field(
        'llmInputCostPerMtoken',
        _$llmInputCostPerMtoken,
        key: r'llm_input_cost_per_mtoken',
        opt: true,
        def: -1.0,
      );
  static double _$llmOutputCostPerMtoken(ModelConfigUpdate v) =>
      v.llmOutputCostPerMtoken;
  static const Field<ModelConfigUpdate, double> _f$llmOutputCostPerMtoken =
      Field(
        'llmOutputCostPerMtoken',
        _$llmOutputCostPerMtoken,
        key: r'llm_output_cost_per_mtoken',
        opt: true,
        def: -1.0,
      );
  static int? _$embeddingSize(ModelConfigUpdate v) => v.embeddingSize;
  static const Field<ModelConfigUpdate, int> _f$embeddingSize = Field(
    'embeddingSize',
    _$embeddingSize,
    key: r'embedding_size',
    opt: true,
  );
  static int? _$embeddingDimensions(ModelConfigUpdate v) =>
      v.embeddingDimensions;
  static const Field<ModelConfigUpdate, int> _f$embeddingDimensions = Field(
    'embeddingDimensions',
    _$embeddingDimensions,
    key: r'embedding_dimensions',
    opt: true,
  );
  static String? _$embeddingTransformQuery(ModelConfigUpdate v) =>
      v.embeddingTransformQuery;
  static const Field<ModelConfigUpdate, String> _f$embeddingTransformQuery =
      Field(
        'embeddingTransformQuery',
        _$embeddingTransformQuery,
        key: r'embedding_transform_query',
        opt: true,
      );
  static double _$embeddingCostPerMtoken(ModelConfigUpdate v) =>
      v.embeddingCostPerMtoken;
  static const Field<ModelConfigUpdate, double> _f$embeddingCostPerMtoken =
      Field(
        'embeddingCostPerMtoken',
        _$embeddingCostPerMtoken,
        key: r'embedding_cost_per_mtoken',
        opt: true,
        def: -1.0,
      );
  static double _$rerankingCostPerKsearch(ModelConfigUpdate v) =>
      v.rerankingCostPerKsearch;
  static const Field<ModelConfigUpdate, double> _f$rerankingCostPerKsearch =
      Field(
        'rerankingCostPerKsearch',
        _$rerankingCostPerKsearch,
        key: r'reranking_cost_per_ksearch',
        opt: true,
        def: -1.0,
      );
  static Set<String> _$capabilitiesSet(ModelConfigUpdate v) =>
      v.capabilitiesSet;
  static const Field<ModelConfigUpdate, Set<String>> _f$capabilitiesSet = Field(
    'capabilitiesSet',
    _$capabilitiesSet,
    key: r'capabilities_set',
    mode: FieldMode.member,
  );
  static int _$finalEmbeddingSize(ModelConfigUpdate v) => v.finalEmbeddingSize;
  static const Field<ModelConfigUpdate, int> _f$finalEmbeddingSize = Field(
    'finalEmbeddingSize',
    _$finalEmbeddingSize,
    key: r'final_embedding_size',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ModelConfigUpdate> fields = const {
    #id: _f$id,
    #type: _f$type,
    #name: _f$name,
    #ownedBy: _f$ownedBy,
    #capabilities: _f$capabilities,
    #contextLength: _f$contextLength,
    #languages: _f$languages,
    #maxOutputTokens: _f$maxOutputTokens,
    #timeout: _f$timeout,
    #priority: _f$priority,
    #allowedOrgs: _f$allowedOrgs,
    #blockedOrgs: _f$blockedOrgs,
    #llmInputCostPerMtoken: _f$llmInputCostPerMtoken,
    #llmOutputCostPerMtoken: _f$llmOutputCostPerMtoken,
    #embeddingSize: _f$embeddingSize,
    #embeddingDimensions: _f$embeddingDimensions,
    #embeddingTransformQuery: _f$embeddingTransformQuery,
    #embeddingCostPerMtoken: _f$embeddingCostPerMtoken,
    #rerankingCostPerKsearch: _f$rerankingCostPerKsearch,
    #capabilitiesSet: _f$capabilitiesSet,
    #finalEmbeddingSize: _f$finalEmbeddingSize,
  };

  static ModelConfigUpdate _instantiate(DecodingData data) {
    return ModelConfigUpdate(
      id: data.dec(_f$id),
      type: data.dec(_f$type),
      name: data.dec(_f$name),
      ownedBy: data.dec(_f$ownedBy),
      capabilities: data.dec(_f$capabilities),
      contextLength: data.dec(_f$contextLength),
      languages: data.dec(_f$languages),
      maxOutputTokens: data.dec(_f$maxOutputTokens),
      timeout: data.dec(_f$timeout),
      priority: data.dec(_f$priority),
      allowedOrgs: data.dec(_f$allowedOrgs),
      blockedOrgs: data.dec(_f$blockedOrgs),
      llmInputCostPerMtoken: data.dec(_f$llmInputCostPerMtoken),
      llmOutputCostPerMtoken: data.dec(_f$llmOutputCostPerMtoken),
      embeddingSize: data.dec(_f$embeddingSize),
      embeddingDimensions: data.dec(_f$embeddingDimensions),
      embeddingTransformQuery: data.dec(_f$embeddingTransformQuery),
      embeddingCostPerMtoken: data.dec(_f$embeddingCostPerMtoken),
      rerankingCostPerKsearch: data.dec(_f$rerankingCostPerKsearch),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModelConfigUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelConfigUpdate>(map);
  }

  static ModelConfigUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<ModelConfigUpdate>(json);
  }
}

mixin ModelConfigUpdateMappable {
  String toJson() {
    return ModelConfigUpdateMapper.ensureInitialized()
        .encodeJson<ModelConfigUpdate>(this as ModelConfigUpdate);
  }

  Map<String, dynamic> toMap() {
    return ModelConfigUpdateMapper.ensureInitialized()
        .encodeMap<ModelConfigUpdate>(this as ModelConfigUpdate);
  }

  ModelConfigUpdateCopyWith<
    ModelConfigUpdate,
    ModelConfigUpdate,
    ModelConfigUpdate
  >
  get copyWith =>
      _ModelConfigUpdateCopyWithImpl<ModelConfigUpdate, ModelConfigUpdate>(
        this as ModelConfigUpdate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ModelConfigUpdateMapper.ensureInitialized().stringifyValue(
      this as ModelConfigUpdate,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModelConfigUpdateMapper.ensureInitialized().equalsValue(
      this as ModelConfigUpdate,
      other,
    );
  }

  @override
  int get hashCode {
    return ModelConfigUpdateMapper.ensureInitialized().hashValue(
      this as ModelConfigUpdate,
    );
  }
}

extension ModelConfigUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModelConfigUpdate, $Out> {
  ModelConfigUpdateCopyWith<$R, ModelConfigUpdate, $Out>
  get $asModelConfigUpdate => $base.as(
    (v, t, t2) => _ModelConfigUpdateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ModelConfigUpdateCopyWith<
  $R,
  $In extends ModelConfigUpdate,
  $Out
>
    implements ModelInfoCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>?
  >
  get capabilities;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get languages;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get allowedOrgs;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get blockedOrgs;
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    int? maxOutputTokens,
    double? timeout,
    int? priority,
    List<String>? allowedOrgs,
    List<String>? blockedOrgs,
    double? llmInputCostPerMtoken,
    double? llmOutputCostPerMtoken,
    int? embeddingSize,
    int? embeddingDimensions,
    String? embeddingTransformQuery,
    double? embeddingCostPerMtoken,
    double? rerankingCostPerKsearch,
  });
  ModelConfigUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ModelConfigUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelConfigUpdate, $Out>
    implements ModelConfigUpdateCopyWith<$R, ModelConfigUpdate, $Out> {
  _ModelConfigUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelConfigUpdate> $mapper =
      ModelConfigUpdateMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>?
  >
  get capabilities => ListCopyWith(
    $value.capabilities,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(capabilities: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get languages =>
      ListCopyWith(
        $value.languages,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(languages: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>
  get allowedOrgs => ListCopyWith(
    $value.allowedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(allowedOrgs: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?>
  get blockedOrgs => ListCopyWith(
    $value.blockedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(blockedOrgs: v),
  );
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    Object? maxOutputTokens = $none,
    double? timeout,
    int? priority,
    List<String>? allowedOrgs,
    List<String>? blockedOrgs,
    double? llmInputCostPerMtoken,
    double? llmOutputCostPerMtoken,
    Object? embeddingSize = $none,
    Object? embeddingDimensions = $none,
    Object? embeddingTransformQuery = $none,
    double? embeddingCostPerMtoken,
    double? rerankingCostPerKsearch,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (type != null) #type: type,
      if (name != null) #name: name,
      if (ownedBy != null) #ownedBy: ownedBy,
      if (capabilities != null) #capabilities: capabilities,
      if (contextLength != null) #contextLength: contextLength,
      if (languages != null) #languages: languages,
      if (maxOutputTokens != $none) #maxOutputTokens: maxOutputTokens,
      if (timeout != null) #timeout: timeout,
      if (priority != null) #priority: priority,
      if (allowedOrgs != null) #allowedOrgs: allowedOrgs,
      if (blockedOrgs != null) #blockedOrgs: blockedOrgs,
      if (llmInputCostPerMtoken != null)
        #llmInputCostPerMtoken: llmInputCostPerMtoken,
      if (llmOutputCostPerMtoken != null)
        #llmOutputCostPerMtoken: llmOutputCostPerMtoken,
      if (embeddingSize != $none) #embeddingSize: embeddingSize,
      if (embeddingDimensions != $none)
        #embeddingDimensions: embeddingDimensions,
      if (embeddingTransformQuery != $none)
        #embeddingTransformQuery: embeddingTransformQuery,
      if (embeddingCostPerMtoken != null)
        #embeddingCostPerMtoken: embeddingCostPerMtoken,
      if (rerankingCostPerKsearch != null)
        #rerankingCostPerKsearch: rerankingCostPerKsearch,
    }),
  );
  @override
  ModelConfigUpdate $make(CopyWithData data) => ModelConfigUpdate(
    id: data.get(#id, or: $value.id),
    type: data.get(#type, or: $value.type),
    name: data.get(#name, or: $value.name),
    ownedBy: data.get(#ownedBy, or: $value.ownedBy),
    capabilities: data.get(#capabilities, or: $value.capabilities),
    contextLength: data.get(#contextLength, or: $value.contextLength),
    languages: data.get(#languages, or: $value.languages),
    maxOutputTokens: data.get(#maxOutputTokens, or: $value.maxOutputTokens),
    timeout: data.get(#timeout, or: $value.timeout),
    priority: data.get(#priority, or: $value.priority),
    allowedOrgs: data.get(#allowedOrgs, or: $value.allowedOrgs),
    blockedOrgs: data.get(#blockedOrgs, or: $value.blockedOrgs),
    llmInputCostPerMtoken: data.get(
      #llmInputCostPerMtoken,
      or: $value.llmInputCostPerMtoken,
    ),
    llmOutputCostPerMtoken: data.get(
      #llmOutputCostPerMtoken,
      or: $value.llmOutputCostPerMtoken,
    ),
    embeddingSize: data.get(#embeddingSize, or: $value.embeddingSize),
    embeddingDimensions: data.get(
      #embeddingDimensions,
      or: $value.embeddingDimensions,
    ),
    embeddingTransformQuery: data.get(
      #embeddingTransformQuery,
      or: $value.embeddingTransformQuery,
    ),
    embeddingCostPerMtoken: data.get(
      #embeddingCostPerMtoken,
      or: $value.embeddingCostPerMtoken,
    ),
    rerankingCostPerKsearch: data.get(
      #rerankingCostPerKsearch,
      or: $value.rerankingCostPerKsearch,
    ),
  );

  @override
  ModelConfigUpdateCopyWith<$R2, ModelConfigUpdate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModelConfigUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModelInfoMapper extends ClassMapperBase<ModelInfo> {
  ModelInfoMapper._();

  static ModelInfoMapper? _instance;
  static ModelInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelInfoMapper._());
      ModelConfigUpdateMapper.ensureInitialized();
      ModelInfoReadMapper.ensureInitialized();
      ModelTypeMapper.ensureInitialized();
      ModelCapabilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelInfo';

  static String _$id(ModelInfo v) => v.id;
  static const Field<ModelInfo, String> _f$id = Field('id', _$id);
  static ModelType _$type(ModelInfo v) => v.type;
  static const Field<ModelInfo, ModelType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: ModelType.llm,
  );
  static String _$name(ModelInfo v) => v.name;
  static const Field<ModelInfo, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static String _$ownedBy(ModelInfo v) => v.ownedBy;
  static const Field<ModelInfo, String> _f$ownedBy = Field(
    'ownedBy',
    _$ownedBy,
    key: r'owned_by',
    opt: true,
    def: "",
  );
  static List<ModelCapability> _$capabilities(ModelInfo v) => v.capabilities;
  static const Field<ModelInfo, List<ModelCapability>> _f$capabilities = Field(
    'capabilities',
    _$capabilities,
    opt: true,
    def: const [],
  );
  static int _$contextLength(ModelInfo v) => v.contextLength;
  static const Field<ModelInfo, int> _f$contextLength = Field(
    'contextLength',
    _$contextLength,
    key: r'context_length',
    opt: true,
    def: 4096,
  );
  static List<String> _$languages(ModelInfo v) => v.languages;
  static const Field<ModelInfo, List<String>> _f$languages = Field(
    'languages',
    _$languages,
    opt: true,
    def: const ["en"],
  );
  static int? _$maxOutputTokens(ModelInfo v) => v.maxOutputTokens;
  static const Field<ModelInfo, int> _f$maxOutputTokens = Field(
    'maxOutputTokens',
    _$maxOutputTokens,
    key: r'max_output_tokens',
    opt: true,
  );
  static Set<String> _$capabilitiesSet(ModelInfo v) => v.capabilitiesSet;
  static const Field<ModelInfo, Set<String>> _f$capabilitiesSet = Field(
    'capabilitiesSet',
    _$capabilitiesSet,
    key: r'capabilities_set',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ModelInfo> fields = const {
    #id: _f$id,
    #type: _f$type,
    #name: _f$name,
    #ownedBy: _f$ownedBy,
    #capabilities: _f$capabilities,
    #contextLength: _f$contextLength,
    #languages: _f$languages,
    #maxOutputTokens: _f$maxOutputTokens,
    #capabilitiesSet: _f$capabilitiesSet,
  };

  static ModelInfo _instantiate(DecodingData data) {
    return ModelInfo(
      id: data.dec(_f$id),
      type: data.dec(_f$type),
      name: data.dec(_f$name),
      ownedBy: data.dec(_f$ownedBy),
      capabilities: data.dec(_f$capabilities),
      contextLength: data.dec(_f$contextLength),
      languages: data.dec(_f$languages),
      maxOutputTokens: data.dec(_f$maxOutputTokens),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModelInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelInfo>(map);
  }

  static ModelInfo fromJson(String json) {
    return ensureInitialized().decodeJson<ModelInfo>(json);
  }
}

mixin ModelInfoMappable {
  String toJson() {
    return ModelInfoMapper.ensureInitialized().encodeJson<ModelInfo>(
      this as ModelInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return ModelInfoMapper.ensureInitialized().encodeMap<ModelInfo>(
      this as ModelInfo,
    );
  }

  ModelInfoCopyWith<ModelInfo, ModelInfo, ModelInfo> get copyWith =>
      _ModelInfoCopyWithImpl<ModelInfo, ModelInfo>(
        this as ModelInfo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ModelInfoMapper.ensureInitialized().stringifyValue(
      this as ModelInfo,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModelInfoMapper.ensureInitialized().equalsValue(
      this as ModelInfo,
      other,
    );
  }

  @override
  int get hashCode {
    return ModelInfoMapper.ensureInitialized().hashValue(this as ModelInfo);
  }
}

extension ModelInfoValueCopy<$R, $Out> on ObjectCopyWith<$R, ModelInfo, $Out> {
  ModelInfoCopyWith<$R, ModelInfo, $Out> get $asModelInfo =>
      $base.as((v, t, t2) => _ModelInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ModelInfoCopyWith<$R, $In extends ModelInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>?
  >
  get capabilities;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get languages;
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    int? maxOutputTokens,
  });
  ModelInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModelInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelInfo, $Out>
    implements ModelInfoCopyWith<$R, ModelInfo, $Out> {
  _ModelInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelInfo> $mapper =
      ModelInfoMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>?
  >
  get capabilities => ListCopyWith(
    $value.capabilities,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(capabilities: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get languages =>
      ListCopyWith(
        $value.languages,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(languages: v),
      );
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    Object? maxOutputTokens = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (type != null) #type: type,
      if (name != null) #name: name,
      if (ownedBy != null) #ownedBy: ownedBy,
      if (capabilities != null) #capabilities: capabilities,
      if (contextLength != null) #contextLength: contextLength,
      if (languages != null) #languages: languages,
      if (maxOutputTokens != $none) #maxOutputTokens: maxOutputTokens,
    }),
  );
  @override
  ModelInfo $make(CopyWithData data) => ModelInfo(
    id: data.get(#id, or: $value.id),
    type: data.get(#type, or: $value.type),
    name: data.get(#name, or: $value.name),
    ownedBy: data.get(#ownedBy, or: $value.ownedBy),
    capabilities: data.get(#capabilities, or: $value.capabilities),
    contextLength: data.get(#contextLength, or: $value.contextLength),
    languages: data.get(#languages, or: $value.languages),
    maxOutputTokens: data.get(#maxOutputTokens, or: $value.maxOutputTokens),
  );

  @override
  ModelInfoCopyWith<$R2, ModelInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModelInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModelInfoReadMapper extends ClassMapperBase<ModelInfoRead> {
  ModelInfoReadMapper._();

  static ModelInfoReadMapper? _instance;
  static ModelInfoReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelInfoReadMapper._());
      ModelInfoMapper.ensureInitialized();
      ModelTypeMapper.ensureInitialized();
      ModelCapabilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelInfoRead';

  static String _$id(ModelInfoRead v) => v.id;
  static const Field<ModelInfoRead, String> _f$id = Field('id', _$id);
  static ModelType _$type(ModelInfoRead v) => v.type;
  static const Field<ModelInfoRead, ModelType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: ModelType.llm,
  );
  static String _$name(ModelInfoRead v) => v.name;
  static const Field<ModelInfoRead, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static String _$ownedBy(ModelInfoRead v) => v.ownedBy;
  static const Field<ModelInfoRead, String> _f$ownedBy = Field(
    'ownedBy',
    _$ownedBy,
    key: r'owned_by',
    opt: true,
    def: "",
  );
  static List<ModelCapability> _$capabilities(ModelInfoRead v) =>
      v.capabilities;
  static const Field<ModelInfoRead, List<ModelCapability>> _f$capabilities =
      Field('capabilities', _$capabilities, opt: true, def: const []);
  static int _$contextLength(ModelInfoRead v) => v.contextLength;
  static const Field<ModelInfoRead, int> _f$contextLength = Field(
    'contextLength',
    _$contextLength,
    key: r'context_length',
    opt: true,
    def: 4096,
  );
  static List<String> _$languages(ModelInfoRead v) => v.languages;
  static const Field<ModelInfoRead, List<String>> _f$languages = Field(
    'languages',
    _$languages,
    opt: true,
    def: const ["en"],
  );
  static int? _$maxOutputTokens(ModelInfoRead v) => v.maxOutputTokens;
  static const Field<ModelInfoRead, int> _f$maxOutputTokens = Field(
    'maxOutputTokens',
    _$maxOutputTokens,
    key: r'max_output_tokens',
    opt: true,
  );
  static DateTime _$createdAt(ModelInfoRead v) => v.createdAt;
  static const Field<ModelInfoRead, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(ModelInfoRead v) => v.updatedAt;
  static const Field<ModelInfoRead, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static Set<String> _$capabilitiesSet(ModelInfoRead v) => v.capabilitiesSet;
  static const Field<ModelInfoRead, Set<String>> _f$capabilitiesSet = Field(
    'capabilitiesSet',
    _$capabilitiesSet,
    key: r'capabilities_set',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ModelInfoRead> fields = const {
    #id: _f$id,
    #type: _f$type,
    #name: _f$name,
    #ownedBy: _f$ownedBy,
    #capabilities: _f$capabilities,
    #contextLength: _f$contextLength,
    #languages: _f$languages,
    #maxOutputTokens: _f$maxOutputTokens,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #capabilitiesSet: _f$capabilitiesSet,
  };

  static ModelInfoRead _instantiate(DecodingData data) {
    return ModelInfoRead(
      id: data.dec(_f$id),
      type: data.dec(_f$type),
      name: data.dec(_f$name),
      ownedBy: data.dec(_f$ownedBy),
      capabilities: data.dec(_f$capabilities),
      contextLength: data.dec(_f$contextLength),
      languages: data.dec(_f$languages),
      maxOutputTokens: data.dec(_f$maxOutputTokens),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModelInfoRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelInfoRead>(map);
  }

  static ModelInfoRead fromJson(String json) {
    return ensureInitialized().decodeJson<ModelInfoRead>(json);
  }
}

mixin ModelInfoReadMappable {
  String toJson() {
    return ModelInfoReadMapper.ensureInitialized().encodeJson<ModelInfoRead>(
      this as ModelInfoRead,
    );
  }

  Map<String, dynamic> toMap() {
    return ModelInfoReadMapper.ensureInitialized().encodeMap<ModelInfoRead>(
      this as ModelInfoRead,
    );
  }

  ModelInfoReadCopyWith<ModelInfoRead, ModelInfoRead, ModelInfoRead>
  get copyWith => _ModelInfoReadCopyWithImpl<ModelInfoRead, ModelInfoRead>(
    this as ModelInfoRead,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ModelInfoReadMapper.ensureInitialized().stringifyValue(
      this as ModelInfoRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModelInfoReadMapper.ensureInitialized().equalsValue(
      this as ModelInfoRead,
      other,
    );
  }

  @override
  int get hashCode {
    return ModelInfoReadMapper.ensureInitialized().hashValue(
      this as ModelInfoRead,
    );
  }
}

extension ModelInfoReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModelInfoRead, $Out> {
  ModelInfoReadCopyWith<$R, ModelInfoRead, $Out> get $asModelInfoRead =>
      $base.as((v, t, t2) => _ModelInfoReadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ModelInfoReadCopyWith<$R, $In extends ModelInfoRead, $Out>
    implements ModelInfoCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>
  >
  get capabilities;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get languages;
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    int? maxOutputTokens,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  ModelInfoReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ModelInfoReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelInfoRead, $Out>
    implements ModelInfoReadCopyWith<$R, ModelInfoRead, $Out> {
  _ModelInfoReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelInfoRead> $mapper =
      ModelInfoReadMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>
  >
  get capabilities => ListCopyWith(
    $value.capabilities,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(capabilities: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get languages =>
      ListCopyWith(
        $value.languages,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(languages: v),
      );
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    Object? maxOutputTokens = $none,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (type != null) #type: type,
      if (name != null) #name: name,
      if (ownedBy != null) #ownedBy: ownedBy,
      if (capabilities != null) #capabilities: capabilities,
      if (contextLength != null) #contextLength: contextLength,
      if (languages != null) #languages: languages,
      if (maxOutputTokens != $none) #maxOutputTokens: maxOutputTokens,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  ModelInfoRead $make(CopyWithData data) => ModelInfoRead(
    id: data.get(#id, or: $value.id),
    type: data.get(#type, or: $value.type),
    name: data.get(#name, or: $value.name),
    ownedBy: data.get(#ownedBy, or: $value.ownedBy),
    capabilities: data.get(#capabilities, or: $value.capabilities),
    contextLength: data.get(#contextLength, or: $value.contextLength),
    languages: data.get(#languages, or: $value.languages),
    maxOutputTokens: data.get(#maxOutputTokens, or: $value.maxOutputTokens),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  ModelInfoReadCopyWith<$R2, ModelInfoRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModelInfoReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ModelConfigReadMapper extends ClassMapperBase<ModelConfigRead> {
  ModelConfigReadMapper._();

  static ModelConfigReadMapper? _instance;
  static ModelConfigReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelConfigReadMapper._());
      ModelConfigMapper.ensureInitialized();
      ModelTypeMapper.ensureInitialized();
      ModelCapabilityMapper.ensureInitialized();
      DeploymentMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ModelConfigRead';

  static String _$id(ModelConfigRead v) => v.id;
  static const Field<ModelConfigRead, String> _f$id = Field('id', _$id);
  static ModelType _$type(ModelConfigRead v) => v.type;
  static const Field<ModelConfigRead, ModelType> _f$type = Field(
    'type',
    _$type,
  );
  static String _$name(ModelConfigRead v) => v.name;
  static const Field<ModelConfigRead, String> _f$name = Field('name', _$name);
  static String _$ownedBy(ModelConfigRead v) => v.ownedBy;
  static const Field<ModelConfigRead, String> _f$ownedBy = Field(
    'ownedBy',
    _$ownedBy,
    key: r'owned_by',
  );
  static List<ModelCapability> _$capabilities(ModelConfigRead v) =>
      v.capabilities;
  static const Field<ModelConfigRead, List<ModelCapability>> _f$capabilities =
      Field('capabilities', _$capabilities);
  static int _$contextLength(ModelConfigRead v) => v.contextLength;
  static const Field<ModelConfigRead, int> _f$contextLength = Field(
    'contextLength',
    _$contextLength,
    key: r'context_length',
  );
  static List<String> _$languages(ModelConfigRead v) => v.languages;
  static const Field<ModelConfigRead, List<String>> _f$languages = Field(
    'languages',
    _$languages,
    opt: true,
    def: const ["en"],
  );
  static int? _$maxOutputTokens(ModelConfigRead v) => v.maxOutputTokens;
  static const Field<ModelConfigRead, int> _f$maxOutputTokens = Field(
    'maxOutputTokens',
    _$maxOutputTokens,
    key: r'max_output_tokens',
    opt: true,
  );
  static double _$timeout(ModelConfigRead v) => v.timeout;
  static const Field<ModelConfigRead, double> _f$timeout = Field(
    'timeout',
    _$timeout,
    opt: true,
    def: 108000.0,
  );
  static int _$priority(ModelConfigRead v) => v.priority;
  static const Field<ModelConfigRead, int> _f$priority = Field(
    'priority',
    _$priority,
    opt: true,
    def: 0,
  );
  static List<String> _$allowedOrgs(ModelConfigRead v) => v.allowedOrgs;
  static const Field<ModelConfigRead, List<String>> _f$allowedOrgs = Field(
    'allowedOrgs',
    _$allowedOrgs,
    key: r'allowed_orgs',
    opt: true,
    def: const [],
  );
  static List<String> _$blockedOrgs(ModelConfigRead v) => v.blockedOrgs;
  static const Field<ModelConfigRead, List<String>> _f$blockedOrgs = Field(
    'blockedOrgs',
    _$blockedOrgs,
    key: r'blocked_orgs',
    opt: true,
    def: const [],
  );
  static double _$llmInputCostPerMtoken(ModelConfigRead v) =>
      v.llmInputCostPerMtoken;
  static const Field<ModelConfigRead, double> _f$llmInputCostPerMtoken = Field(
    'llmInputCostPerMtoken',
    _$llmInputCostPerMtoken,
    key: r'llm_input_cost_per_mtoken',
    opt: true,
    def: -1.0,
  );
  static double _$llmOutputCostPerMtoken(ModelConfigRead v) =>
      v.llmOutputCostPerMtoken;
  static const Field<ModelConfigRead, double> _f$llmOutputCostPerMtoken = Field(
    'llmOutputCostPerMtoken',
    _$llmOutputCostPerMtoken,
    key: r'llm_output_cost_per_mtoken',
    opt: true,
    def: -1.0,
  );
  static int? _$embeddingSize(ModelConfigRead v) => v.embeddingSize;
  static const Field<ModelConfigRead, int> _f$embeddingSize = Field(
    'embeddingSize',
    _$embeddingSize,
    key: r'embedding_size',
    opt: true,
  );
  static int? _$embeddingDimensions(ModelConfigRead v) => v.embeddingDimensions;
  static const Field<ModelConfigRead, int> _f$embeddingDimensions = Field(
    'embeddingDimensions',
    _$embeddingDimensions,
    key: r'embedding_dimensions',
    opt: true,
  );
  static String? _$embeddingTransformQuery(ModelConfigRead v) =>
      v.embeddingTransformQuery;
  static const Field<ModelConfigRead, String> _f$embeddingTransformQuery =
      Field(
        'embeddingTransformQuery',
        _$embeddingTransformQuery,
        key: r'embedding_transform_query',
        opt: true,
      );
  static double _$embeddingCostPerMtoken(ModelConfigRead v) =>
      v.embeddingCostPerMtoken;
  static const Field<ModelConfigRead, double> _f$embeddingCostPerMtoken = Field(
    'embeddingCostPerMtoken',
    _$embeddingCostPerMtoken,
    key: r'embedding_cost_per_mtoken',
    opt: true,
    def: -1.0,
  );
  static double _$rerankingCostPerKsearch(ModelConfigRead v) =>
      v.rerankingCostPerKsearch;
  static const Field<ModelConfigRead, double> _f$rerankingCostPerKsearch =
      Field(
        'rerankingCostPerKsearch',
        _$rerankingCostPerKsearch,
        key: r'reranking_cost_per_ksearch',
        opt: true,
        def: -1.0,
      );
  static bool _$isPrivate(ModelConfigRead v) => v.isPrivate;
  static const Field<ModelConfigRead, bool> _f$isPrivate = Field(
    'isPrivate',
    _$isPrivate,
    key: r'is_private',
  );
  static DateTime _$createdAt(ModelConfigRead v) => v.createdAt;
  static const Field<ModelConfigRead, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(ModelConfigRead v) => v.updatedAt;
  static const Field<ModelConfigRead, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static List<Deployment> _$deployments(ModelConfigRead v) => v.deployments;
  static const Field<ModelConfigRead, List<Deployment>> _f$deployments = Field(
    'deployments',
    _$deployments,
  );
  static bool _$isActive(ModelConfigRead v) => v.isActive;
  static const Field<ModelConfigRead, bool> _f$isActive = Field(
    'isActive',
    _$isActive,
    key: r'is_active',
  );
  static Set<String> _$capabilitiesSet(ModelConfigRead v) => v.capabilitiesSet;
  static const Field<ModelConfigRead, Set<String>> _f$capabilitiesSet = Field(
    'capabilitiesSet',
    _$capabilitiesSet,
    key: r'capabilities_set',
    mode: FieldMode.member,
  );
  static int _$finalEmbeddingSize(ModelConfigRead v) => v.finalEmbeddingSize;
  static const Field<ModelConfigRead, int> _f$finalEmbeddingSize = Field(
    'finalEmbeddingSize',
    _$finalEmbeddingSize,
    key: r'final_embedding_size',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ModelConfigRead> fields = const {
    #id: _f$id,
    #type: _f$type,
    #name: _f$name,
    #ownedBy: _f$ownedBy,
    #capabilities: _f$capabilities,
    #contextLength: _f$contextLength,
    #languages: _f$languages,
    #maxOutputTokens: _f$maxOutputTokens,
    #timeout: _f$timeout,
    #priority: _f$priority,
    #allowedOrgs: _f$allowedOrgs,
    #blockedOrgs: _f$blockedOrgs,
    #llmInputCostPerMtoken: _f$llmInputCostPerMtoken,
    #llmOutputCostPerMtoken: _f$llmOutputCostPerMtoken,
    #embeddingSize: _f$embeddingSize,
    #embeddingDimensions: _f$embeddingDimensions,
    #embeddingTransformQuery: _f$embeddingTransformQuery,
    #embeddingCostPerMtoken: _f$embeddingCostPerMtoken,
    #rerankingCostPerKsearch: _f$rerankingCostPerKsearch,
    #isPrivate: _f$isPrivate,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #deployments: _f$deployments,
    #isActive: _f$isActive,
    #capabilitiesSet: _f$capabilitiesSet,
    #finalEmbeddingSize: _f$finalEmbeddingSize,
  };

  static ModelConfigRead _instantiate(DecodingData data) {
    return ModelConfigRead(
      id: data.dec(_f$id),
      type: data.dec(_f$type),
      name: data.dec(_f$name),
      ownedBy: data.dec(_f$ownedBy),
      capabilities: data.dec(_f$capabilities),
      contextLength: data.dec(_f$contextLength),
      languages: data.dec(_f$languages),
      maxOutputTokens: data.dec(_f$maxOutputTokens),
      timeout: data.dec(_f$timeout),
      priority: data.dec(_f$priority),
      allowedOrgs: data.dec(_f$allowedOrgs),
      blockedOrgs: data.dec(_f$blockedOrgs),
      llmInputCostPerMtoken: data.dec(_f$llmInputCostPerMtoken),
      llmOutputCostPerMtoken: data.dec(_f$llmOutputCostPerMtoken),
      embeddingSize: data.dec(_f$embeddingSize),
      embeddingDimensions: data.dec(_f$embeddingDimensions),
      embeddingTransformQuery: data.dec(_f$embeddingTransformQuery),
      embeddingCostPerMtoken: data.dec(_f$embeddingCostPerMtoken),
      rerankingCostPerKsearch: data.dec(_f$rerankingCostPerKsearch),
      isPrivate: data.dec(_f$isPrivate),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      deployments: data.dec(_f$deployments),
      isActive: data.dec(_f$isActive),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ModelConfigRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ModelConfigRead>(map);
  }

  static ModelConfigRead fromJson(String json) {
    return ensureInitialized().decodeJson<ModelConfigRead>(json);
  }
}

mixin ModelConfigReadMappable {
  String toJson() {
    return ModelConfigReadMapper.ensureInitialized()
        .encodeJson<ModelConfigRead>(this as ModelConfigRead);
  }

  Map<String, dynamic> toMap() {
    return ModelConfigReadMapper.ensureInitialized().encodeMap<ModelConfigRead>(
      this as ModelConfigRead,
    );
  }

  ModelConfigReadCopyWith<ModelConfigRead, ModelConfigRead, ModelConfigRead>
  get copyWith =>
      _ModelConfigReadCopyWithImpl<ModelConfigRead, ModelConfigRead>(
        this as ModelConfigRead,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ModelConfigReadMapper.ensureInitialized().stringifyValue(
      this as ModelConfigRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return ModelConfigReadMapper.ensureInitialized().equalsValue(
      this as ModelConfigRead,
      other,
    );
  }

  @override
  int get hashCode {
    return ModelConfigReadMapper.ensureInitialized().hashValue(
      this as ModelConfigRead,
    );
  }
}

extension ModelConfigReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ModelConfigRead, $Out> {
  ModelConfigReadCopyWith<$R, ModelConfigRead, $Out> get $asModelConfigRead =>
      $base.as((v, t, t2) => _ModelConfigReadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ModelConfigReadCopyWith<$R, $In extends ModelConfigRead, $Out>
    implements ModelConfigCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>
  >
  get capabilities;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get languages;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get allowedOrgs;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get blockedOrgs;
  ListCopyWith<$R, Deployment, DeploymentCopyWith<$R, Deployment, Deployment>>
  get deployments;
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    int? maxOutputTokens,
    double? timeout,
    int? priority,
    List<String>? allowedOrgs,
    List<String>? blockedOrgs,
    double? llmInputCostPerMtoken,
    double? llmOutputCostPerMtoken,
    int? embeddingSize,
    int? embeddingDimensions,
    String? embeddingTransformQuery,
    double? embeddingCostPerMtoken,
    double? rerankingCostPerKsearch,
    bool? isPrivate,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Deployment>? deployments,
    bool? isActive,
  });
  ModelConfigReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ModelConfigReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ModelConfigRead, $Out>
    implements ModelConfigReadCopyWith<$R, ModelConfigRead, $Out> {
  _ModelConfigReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ModelConfigRead> $mapper =
      ModelConfigReadMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ModelCapability,
    ObjectCopyWith<$R, ModelCapability, ModelCapability>
  >
  get capabilities => ListCopyWith(
    $value.capabilities,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(capabilities: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get languages =>
      ListCopyWith(
        $value.languages,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(languages: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get allowedOrgs => ListCopyWith(
    $value.allowedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(allowedOrgs: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get blockedOrgs => ListCopyWith(
    $value.blockedOrgs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(blockedOrgs: v),
  );
  @override
  ListCopyWith<$R, Deployment, DeploymentCopyWith<$R, Deployment, Deployment>>
  get deployments => ListCopyWith(
    $value.deployments,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(deployments: v),
  );
  @override
  $R call({
    String? id,
    ModelType? type,
    String? name,
    String? ownedBy,
    List<ModelCapability>? capabilities,
    int? contextLength,
    List<String>? languages,
    Object? maxOutputTokens = $none,
    double? timeout,
    int? priority,
    List<String>? allowedOrgs,
    List<String>? blockedOrgs,
    double? llmInputCostPerMtoken,
    double? llmOutputCostPerMtoken,
    Object? embeddingSize = $none,
    Object? embeddingDimensions = $none,
    Object? embeddingTransformQuery = $none,
    double? embeddingCostPerMtoken,
    double? rerankingCostPerKsearch,
    bool? isPrivate,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Deployment>? deployments,
    bool? isActive,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (type != null) #type: type,
      if (name != null) #name: name,
      if (ownedBy != null) #ownedBy: ownedBy,
      if (capabilities != null) #capabilities: capabilities,
      if (contextLength != null) #contextLength: contextLength,
      if (languages != null) #languages: languages,
      if (maxOutputTokens != $none) #maxOutputTokens: maxOutputTokens,
      if (timeout != null) #timeout: timeout,
      if (priority != null) #priority: priority,
      if (allowedOrgs != null) #allowedOrgs: allowedOrgs,
      if (blockedOrgs != null) #blockedOrgs: blockedOrgs,
      if (llmInputCostPerMtoken != null)
        #llmInputCostPerMtoken: llmInputCostPerMtoken,
      if (llmOutputCostPerMtoken != null)
        #llmOutputCostPerMtoken: llmOutputCostPerMtoken,
      if (embeddingSize != $none) #embeddingSize: embeddingSize,
      if (embeddingDimensions != $none)
        #embeddingDimensions: embeddingDimensions,
      if (embeddingTransformQuery != $none)
        #embeddingTransformQuery: embeddingTransformQuery,
      if (embeddingCostPerMtoken != null)
        #embeddingCostPerMtoken: embeddingCostPerMtoken,
      if (rerankingCostPerKsearch != null)
        #rerankingCostPerKsearch: rerankingCostPerKsearch,
      if (isPrivate != null) #isPrivate: isPrivate,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (deployments != null) #deployments: deployments,
      if (isActive != null) #isActive: isActive,
    }),
  );
  @override
  ModelConfigRead $make(CopyWithData data) => ModelConfigRead(
    id: data.get(#id, or: $value.id),
    type: data.get(#type, or: $value.type),
    name: data.get(#name, or: $value.name),
    ownedBy: data.get(#ownedBy, or: $value.ownedBy),
    capabilities: data.get(#capabilities, or: $value.capabilities),
    contextLength: data.get(#contextLength, or: $value.contextLength),
    languages: data.get(#languages, or: $value.languages),
    maxOutputTokens: data.get(#maxOutputTokens, or: $value.maxOutputTokens),
    timeout: data.get(#timeout, or: $value.timeout),
    priority: data.get(#priority, or: $value.priority),
    allowedOrgs: data.get(#allowedOrgs, or: $value.allowedOrgs),
    blockedOrgs: data.get(#blockedOrgs, or: $value.blockedOrgs),
    llmInputCostPerMtoken: data.get(
      #llmInputCostPerMtoken,
      or: $value.llmInputCostPerMtoken,
    ),
    llmOutputCostPerMtoken: data.get(
      #llmOutputCostPerMtoken,
      or: $value.llmOutputCostPerMtoken,
    ),
    embeddingSize: data.get(#embeddingSize, or: $value.embeddingSize),
    embeddingDimensions: data.get(
      #embeddingDimensions,
      or: $value.embeddingDimensions,
    ),
    embeddingTransformQuery: data.get(
      #embeddingTransformQuery,
      or: $value.embeddingTransformQuery,
    ),
    embeddingCostPerMtoken: data.get(
      #embeddingCostPerMtoken,
      or: $value.embeddingCostPerMtoken,
    ),
    rerankingCostPerKsearch: data.get(
      #rerankingCostPerKsearch,
      or: $value.rerankingCostPerKsearch,
    ),
    isPrivate: data.get(#isPrivate, or: $value.isPrivate),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    deployments: data.get(#deployments, or: $value.deployments),
    isActive: data.get(#isActive, or: $value.isActive),
  );

  @override
  ModelConfigReadCopyWith<$R2, ModelConfigRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ModelConfigReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OrgMemberUpdateMapper extends ClassMapperBase<OrgMemberUpdate> {
  OrgMemberUpdateMapper._();

  static OrgMemberUpdateMapper? _instance;
  static OrgMemberUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrgMemberUpdateMapper._());
      OrgMemberCreateMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrgMemberUpdate';

  static Role _$role(OrgMemberUpdate v) => v.role;
  static const Field<OrgMemberUpdate, Role> _f$role = Field('role', _$role);

  @override
  final MappableFields<OrgMemberUpdate> fields = const {#role: _f$role};

  static OrgMemberUpdate _instantiate(DecodingData data) {
    return OrgMemberUpdate(role: data.dec(_f$role));
  }

  @override
  final Function instantiate = _instantiate;

  static OrgMemberUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrgMemberUpdate>(map);
  }

  static OrgMemberUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<OrgMemberUpdate>(json);
  }
}

mixin OrgMemberUpdateMappable {
  String toJson() {
    return OrgMemberUpdateMapper.ensureInitialized()
        .encodeJson<OrgMemberUpdate>(this as OrgMemberUpdate);
  }

  Map<String, dynamic> toMap() {
    return OrgMemberUpdateMapper.ensureInitialized().encodeMap<OrgMemberUpdate>(
      this as OrgMemberUpdate,
    );
  }

  OrgMemberUpdateCopyWith<OrgMemberUpdate, OrgMemberUpdate, OrgMemberUpdate>
  get copyWith =>
      _OrgMemberUpdateCopyWithImpl<OrgMemberUpdate, OrgMemberUpdate>(
        this as OrgMemberUpdate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OrgMemberUpdateMapper.ensureInitialized().stringifyValue(
      this as OrgMemberUpdate,
    );
  }

  @override
  bool operator ==(Object other) {
    return OrgMemberUpdateMapper.ensureInitialized().equalsValue(
      this as OrgMemberUpdate,
      other,
    );
  }

  @override
  int get hashCode {
    return OrgMemberUpdateMapper.ensureInitialized().hashValue(
      this as OrgMemberUpdate,
    );
  }
}

extension OrgMemberUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrgMemberUpdate, $Out> {
  OrgMemberUpdateCopyWith<$R, OrgMemberUpdate, $Out> get $asOrgMemberUpdate =>
      $base.as((v, t, t2) => _OrgMemberUpdateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OrgMemberUpdateCopyWith<$R, $In extends OrgMemberUpdate, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Role? role});
  OrgMemberUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _OrgMemberUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrgMemberUpdate, $Out>
    implements OrgMemberUpdateCopyWith<$R, OrgMemberUpdate, $Out> {
  _OrgMemberUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrgMemberUpdate> $mapper =
      OrgMemberUpdateMapper.ensureInitialized();
  @override
  $R call({Role? role}) =>
      $apply(FieldCopyWithData({if (role != null) #role: role}));
  @override
  OrgMemberUpdate $make(CopyWithData data) =>
      OrgMemberUpdate(role: data.get(#role, or: $value.role));

  @override
  OrgMemberUpdateCopyWith<$R2, OrgMemberUpdate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OrgMemberUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OrgMemberCreateMapper extends ClassMapperBase<OrgMemberCreate> {
  OrgMemberCreateMapper._();

  static OrgMemberCreateMapper? _instance;
  static OrgMemberCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrgMemberCreateMapper._());
      OrgMemberUpdateMapper.ensureInitialized();
      OrgMemberMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrgMemberCreate';

  static String _$userId(OrgMemberCreate v) => v.userId;
  static const Field<OrgMemberCreate, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static String _$organizationId(OrgMemberCreate v) => v.organizationId;
  static const Field<OrgMemberCreate, String> _f$organizationId = Field(
    'organizationId',
    _$organizationId,
    key: r'organization_id',
  );
  static Role _$role(OrgMemberCreate v) => v.role;
  static const Field<OrgMemberCreate, Role> _f$role = Field('role', _$role);

  @override
  final MappableFields<OrgMemberCreate> fields = const {
    #userId: _f$userId,
    #organizationId: _f$organizationId,
    #role: _f$role,
  };

  static OrgMemberCreate _instantiate(DecodingData data) {
    return OrgMemberCreate(
      userId: data.dec(_f$userId),
      organizationId: data.dec(_f$organizationId),
      role: data.dec(_f$role),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static OrgMemberCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrgMemberCreate>(map);
  }

  static OrgMemberCreate fromJson(String json) {
    return ensureInitialized().decodeJson<OrgMemberCreate>(json);
  }
}

mixin OrgMemberCreateMappable {
  String toJson() {
    return OrgMemberCreateMapper.ensureInitialized()
        .encodeJson<OrgMemberCreate>(this as OrgMemberCreate);
  }

  Map<String, dynamic> toMap() {
    return OrgMemberCreateMapper.ensureInitialized().encodeMap<OrgMemberCreate>(
      this as OrgMemberCreate,
    );
  }

  OrgMemberCreateCopyWith<OrgMemberCreate, OrgMemberCreate, OrgMemberCreate>
  get copyWith =>
      _OrgMemberCreateCopyWithImpl<OrgMemberCreate, OrgMemberCreate>(
        this as OrgMemberCreate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OrgMemberCreateMapper.ensureInitialized().stringifyValue(
      this as OrgMemberCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return OrgMemberCreateMapper.ensureInitialized().equalsValue(
      this as OrgMemberCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return OrgMemberCreateMapper.ensureInitialized().hashValue(
      this as OrgMemberCreate,
    );
  }
}

extension OrgMemberCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrgMemberCreate, $Out> {
  OrgMemberCreateCopyWith<$R, OrgMemberCreate, $Out> get $asOrgMemberCreate =>
      $base.as((v, t, t2) => _OrgMemberCreateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OrgMemberCreateCopyWith<$R, $In extends OrgMemberCreate, $Out>
    implements OrgMemberUpdateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? userId, String? organizationId, Role? role});
  OrgMemberCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _OrgMemberCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrgMemberCreate, $Out>
    implements OrgMemberCreateCopyWith<$R, OrgMemberCreate, $Out> {
  _OrgMemberCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrgMemberCreate> $mapper =
      OrgMemberCreateMapper.ensureInitialized();
  @override
  $R call({String? userId, String? organizationId, Role? role}) => $apply(
    FieldCopyWithData({
      if (userId != null) #userId: userId,
      if (organizationId != null) #organizationId: organizationId,
      if (role != null) #role: role,
    }),
  );
  @override
  OrgMemberCreate $make(CopyWithData data) => OrgMemberCreate(
    userId: data.get(#userId, or: $value.userId),
    organizationId: data.get(#organizationId, or: $value.organizationId),
    role: data.get(#role, or: $value.role),
  );

  @override
  OrgMemberCreateCopyWith<$R2, OrgMemberCreate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OrgMemberCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OrgMemberMapper extends ClassMapperBase<OrgMember> {
  OrgMemberMapper._();

  static OrgMemberMapper? _instance;
  static OrgMemberMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrgMemberMapper._());
      OrgMemberCreateMapper.ensureInitialized();
      OrgMemberReadMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrgMember';

  static String _$userId(OrgMember v) => v.userId;
  static const Field<OrgMember, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static String _$organizationId(OrgMember v) => v.organizationId;
  static const Field<OrgMember, String> _f$organizationId = Field(
    'organizationId',
    _$organizationId,
    key: r'organization_id',
  );
  static Role _$role(OrgMember v) => v.role;
  static const Field<OrgMember, Role> _f$role = Field('role', _$role);
  static DateTime _$createdAt(OrgMember v) => v.createdAt;
  static const Field<OrgMember, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(OrgMember v) => v.updatedAt;
  static const Field<OrgMember, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );

  @override
  final MappableFields<OrgMember> fields = const {
    #userId: _f$userId,
    #organizationId: _f$organizationId,
    #role: _f$role,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static OrgMember _instantiate(DecodingData data) {
    return OrgMember(
      userId: data.dec(_f$userId),
      organizationId: data.dec(_f$organizationId),
      role: data.dec(_f$role),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static OrgMember fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrgMember>(map);
  }

  static OrgMember fromJson(String json) {
    return ensureInitialized().decodeJson<OrgMember>(json);
  }
}

mixin OrgMemberMappable {
  String toJson() {
    return OrgMemberMapper.ensureInitialized().encodeJson<OrgMember>(
      this as OrgMember,
    );
  }

  Map<String, dynamic> toMap() {
    return OrgMemberMapper.ensureInitialized().encodeMap<OrgMember>(
      this as OrgMember,
    );
  }

  OrgMemberCopyWith<OrgMember, OrgMember, OrgMember> get copyWith =>
      _OrgMemberCopyWithImpl<OrgMember, OrgMember>(
        this as OrgMember,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OrgMemberMapper.ensureInitialized().stringifyValue(
      this as OrgMember,
    );
  }

  @override
  bool operator ==(Object other) {
    return OrgMemberMapper.ensureInitialized().equalsValue(
      this as OrgMember,
      other,
    );
  }

  @override
  int get hashCode {
    return OrgMemberMapper.ensureInitialized().hashValue(this as OrgMember);
  }
}

extension OrgMemberValueCopy<$R, $Out> on ObjectCopyWith<$R, OrgMember, $Out> {
  OrgMemberCopyWith<$R, OrgMember, $Out> get $asOrgMember =>
      $base.as((v, t, t2) => _OrgMemberCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OrgMemberCopyWith<$R, $In extends OrgMember, $Out>
    implements OrgMemberCreateCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? userId,
    String? organizationId,
    Role? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  OrgMemberCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrgMemberCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrgMember, $Out>
    implements OrgMemberCopyWith<$R, OrgMember, $Out> {
  _OrgMemberCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrgMember> $mapper =
      OrgMemberMapper.ensureInitialized();
  @override
  $R call({
    String? userId,
    String? organizationId,
    Role? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (userId != null) #userId: userId,
      if (organizationId != null) #organizationId: organizationId,
      if (role != null) #role: role,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  OrgMember $make(CopyWithData data) => OrgMember(
    userId: data.get(#userId, or: $value.userId),
    organizationId: data.get(#organizationId, or: $value.organizationId),
    role: data.get(#role, or: $value.role),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  OrgMemberCopyWith<$R2, OrgMember, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OrgMemberCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OrgMemberReadMapper extends ClassMapperBase<OrgMemberRead> {
  OrgMemberReadMapper._();

  static OrgMemberReadMapper? _instance;
  static OrgMemberReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrgMemberReadMapper._());
      OrgMemberMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
      UserMapper.ensureInitialized();
      OrganizationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrgMemberRead';

  static String _$userId(OrgMemberRead v) => v.userId;
  static const Field<OrgMemberRead, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static String _$organizationId(OrgMemberRead v) => v.organizationId;
  static const Field<OrgMemberRead, String> _f$organizationId = Field(
    'organizationId',
    _$organizationId,
    key: r'organization_id',
  );
  static Role _$role(OrgMemberRead v) => v.role;
  static const Field<OrgMemberRead, Role> _f$role = Field('role', _$role);
  static DateTime _$createdAt(OrgMemberRead v) => v.createdAt;
  static const Field<OrgMemberRead, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(OrgMemberRead v) => v.updatedAt;
  static const Field<OrgMemberRead, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static User _$user(OrgMemberRead v) => v.user;
  static const Field<OrgMemberRead, User> _f$user = Field('user', _$user);
  static Organization _$organization(OrgMemberRead v) => v.organization;
  static const Field<OrgMemberRead, Organization> _f$organization = Field(
    'organization',
    _$organization,
  );

  @override
  final MappableFields<OrgMemberRead> fields = const {
    #userId: _f$userId,
    #organizationId: _f$organizationId,
    #role: _f$role,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #user: _f$user,
    #organization: _f$organization,
  };

  static OrgMemberRead _instantiate(DecodingData data) {
    return OrgMemberRead(
      userId: data.dec(_f$userId),
      organizationId: data.dec(_f$organizationId),
      role: data.dec(_f$role),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      user: data.dec(_f$user),
      organization: data.dec(_f$organization),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static OrgMemberRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrgMemberRead>(map);
  }

  static OrgMemberRead fromJson(String json) {
    return ensureInitialized().decodeJson<OrgMemberRead>(json);
  }
}

mixin OrgMemberReadMappable {
  String toJson() {
    return OrgMemberReadMapper.ensureInitialized().encodeJson<OrgMemberRead>(
      this as OrgMemberRead,
    );
  }

  Map<String, dynamic> toMap() {
    return OrgMemberReadMapper.ensureInitialized().encodeMap<OrgMemberRead>(
      this as OrgMemberRead,
    );
  }

  OrgMemberReadCopyWith<OrgMemberRead, OrgMemberRead, OrgMemberRead>
  get copyWith => _OrgMemberReadCopyWithImpl<OrgMemberRead, OrgMemberRead>(
    this as OrgMemberRead,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return OrgMemberReadMapper.ensureInitialized().stringifyValue(
      this as OrgMemberRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return OrgMemberReadMapper.ensureInitialized().equalsValue(
      this as OrgMemberRead,
      other,
    );
  }

  @override
  int get hashCode {
    return OrgMemberReadMapper.ensureInitialized().hashValue(
      this as OrgMemberRead,
    );
  }
}

extension OrgMemberReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrgMemberRead, $Out> {
  OrgMemberReadCopyWith<$R, OrgMemberRead, $Out> get $asOrgMemberRead =>
      $base.as((v, t, t2) => _OrgMemberReadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OrgMemberReadCopyWith<$R, $In extends OrgMemberRead, $Out>
    implements OrgMemberCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User> get user;
  OrganizationCopyWith<$R, Organization, Organization> get organization;
  @override
  $R call({
    String? userId,
    String? organizationId,
    Role? role,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    Organization? organization,
  });
  OrgMemberReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrgMemberReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrgMemberRead, $Out>
    implements OrgMemberReadCopyWith<$R, OrgMemberRead, $Out> {
  _OrgMemberReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrgMemberRead> $mapper =
      OrgMemberReadMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  OrganizationCopyWith<$R, Organization, Organization> get organization =>
      $value.organization.copyWith.$chain((v) => call(organization: v));
  @override
  $R call({
    String? userId,
    String? organizationId,
    Role? role,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    Organization? organization,
  }) => $apply(
    FieldCopyWithData({
      if (userId != null) #userId: userId,
      if (organizationId != null) #organizationId: organizationId,
      if (role != null) #role: role,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (user != null) #user: user,
      if (organization != null) #organization: organization,
    }),
  );
  @override
  OrgMemberRead $make(CopyWithData data) => OrgMemberRead(
    userId: data.get(#userId, or: $value.userId),
    organizationId: data.get(#organizationId, or: $value.organizationId),
    role: data.get(#role, or: $value.role),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    user: data.get(#user, or: $value.user),
    organization: data.get(#organization, or: $value.organization),
  );

  @override
  OrgMemberReadCopyWith<$R2, OrgMemberRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OrgMemberReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UserMapper extends ClassMapperBase<User> {
  UserMapper._();

  static UserMapper? _instance;
  static UserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserMapper._());
      UserBaseMapper.ensureInitialized();
      UserAuthMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'User';

  static String _$id(User v) => v.id;
  static const Field<User, String> _f$id = Field('id', _$id);
  static String _$name(User v) => v.name;
  static const Field<User, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static String _$email(User v) => v.email;
  static const Field<User, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
    def: "",
  );
  static Uri? _$pictureUrl(User v) => v.pictureUrl;
  static const Field<User, Uri> _f$pictureUrl = Field(
    'pictureUrl',
    _$pictureUrl,
    key: r'picture_url',
    opt: true,
  );
  static String? _$googleId(User v) => v.googleId;
  static const Field<User, String> _f$googleId = Field(
    'googleId',
    _$googleId,
    key: r'google_id',
    opt: true,
  );
  static String? _$googleName(User v) => v.googleName;
  static const Field<User, String> _f$googleName = Field(
    'googleName',
    _$googleName,
    key: r'google_name',
    opt: true,
  );
  static String? _$googleUsername(User v) => v.googleUsername;
  static const Field<User, String> _f$googleUsername = Field(
    'googleUsername',
    _$googleUsername,
    key: r'google_username',
    opt: true,
  );
  static String? _$googleEmail(User v) => v.googleEmail;
  static const Field<User, String> _f$googleEmail = Field(
    'googleEmail',
    _$googleEmail,
    key: r'google_email',
    opt: true,
  );
  static Uri? _$googlePictureUrl(User v) => v.googlePictureUrl;
  static const Field<User, Uri> _f$googlePictureUrl = Field(
    'googlePictureUrl',
    _$googlePictureUrl,
    key: r'google_picture_url',
    opt: true,
  );
  static DateTime? _$googleUpdatedAt(User v) => v.googleUpdatedAt;
  static const Field<User, DateTime> _f$googleUpdatedAt = Field(
    'googleUpdatedAt',
    _$googleUpdatedAt,
    key: r'google_updated_at',
    opt: true,
  );
  static String? _$githubId(User v) => v.githubId;
  static const Field<User, String> _f$githubId = Field(
    'githubId',
    _$githubId,
    key: r'github_id',
    opt: true,
  );
  static String? _$githubName(User v) => v.githubName;
  static const Field<User, String> _f$githubName = Field(
    'githubName',
    _$githubName,
    key: r'github_name',
    opt: true,
  );
  static String? _$githubUsername(User v) => v.githubUsername;
  static const Field<User, String> _f$githubUsername = Field(
    'githubUsername',
    _$githubUsername,
    key: r'github_username',
    opt: true,
  );
  static String? _$githubEmail(User v) => v.githubEmail;
  static const Field<User, String> _f$githubEmail = Field(
    'githubEmail',
    _$githubEmail,
    key: r'github_email',
    opt: true,
  );
  static Uri? _$githubPictureUrl(User v) => v.githubPictureUrl;
  static const Field<User, Uri> _f$githubPictureUrl = Field(
    'githubPictureUrl',
    _$githubPictureUrl,
    key: r'github_picture_url',
    opt: true,
  );
  static DateTime? _$githubUpdatedAt(User v) => v.githubUpdatedAt;
  static const Field<User, DateTime> _f$githubUpdatedAt = Field(
    'githubUpdatedAt',
    _$githubUpdatedAt,
    key: r'github_updated_at',
    opt: true,
  );
  static bool _$emailVerified(User v) => v.emailVerified;
  static const Field<User, bool> _f$emailVerified = Field(
    'emailVerified',
    _$emailVerified,
    key: r'email_verified',
  );
  static String? _$passwordHash(User v) => v.passwordHash;
  static const Field<User, String> _f$passwordHash = Field(
    'passwordHash',
    _$passwordHash,
    key: r'password_hash',
    opt: true,
  );
  static int _$refreshCounter(User v) => v.refreshCounter;
  static const Field<User, int> _f$refreshCounter = Field(
    'refreshCounter',
    _$refreshCounter,
    key: r'refresh_counter',
    opt: true,
    def: 0,
  );
  static String _$preferredName(User v) => v.preferredName;
  static const Field<User, String> _f$preferredName = Field(
    'preferredName',
    _$preferredName,
    key: r'preferred_name',
  );
  static String _$preferredEmail(User v) => v.preferredEmail;
  static const Field<User, String> _f$preferredEmail = Field(
    'preferredEmail',
    _$preferredEmail,
    key: r'preferred_email',
  );
  static Uri? _$preferredPictureUrl(User v) => v.preferredPictureUrl;
  static const Field<User, Uri> _f$preferredPictureUrl = Field(
    'preferredPictureUrl',
    _$preferredPictureUrl,
    key: r'preferred_picture_url',
    opt: true,
  );
  static String? _$preferredUsername(User v) => v.preferredUsername;
  static const Field<User, String> _f$preferredUsername = Field(
    'preferredUsername',
    _$preferredUsername,
    key: r'preferred_username',
    opt: true,
  );
  static DateTime _$createdAt(User v) => v.createdAt;
  static const Field<User, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(User v) => v.updatedAt;
  static const Field<User, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );

  @override
  final MappableFields<User> fields = const {
    #id: _f$id,
    #name: _f$name,
    #email: _f$email,
    #pictureUrl: _f$pictureUrl,
    #googleId: _f$googleId,
    #googleName: _f$googleName,
    #googleUsername: _f$googleUsername,
    #googleEmail: _f$googleEmail,
    #googlePictureUrl: _f$googlePictureUrl,
    #googleUpdatedAt: _f$googleUpdatedAt,
    #githubId: _f$githubId,
    #githubName: _f$githubName,
    #githubUsername: _f$githubUsername,
    #githubEmail: _f$githubEmail,
    #githubPictureUrl: _f$githubPictureUrl,
    #githubUpdatedAt: _f$githubUpdatedAt,
    #emailVerified: _f$emailVerified,
    #passwordHash: _f$passwordHash,
    #refreshCounter: _f$refreshCounter,
    #preferredName: _f$preferredName,
    #preferredEmail: _f$preferredEmail,
    #preferredPictureUrl: _f$preferredPictureUrl,
    #preferredUsername: _f$preferredUsername,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static User _instantiate(DecodingData data) {
    return User(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      email: data.dec(_f$email),
      pictureUrl: data.dec(_f$pictureUrl),
      googleId: data.dec(_f$googleId),
      googleName: data.dec(_f$googleName),
      googleUsername: data.dec(_f$googleUsername),
      googleEmail: data.dec(_f$googleEmail),
      googlePictureUrl: data.dec(_f$googlePictureUrl),
      googleUpdatedAt: data.dec(_f$googleUpdatedAt),
      githubId: data.dec(_f$githubId),
      githubName: data.dec(_f$githubName),
      githubUsername: data.dec(_f$githubUsername),
      githubEmail: data.dec(_f$githubEmail),
      githubPictureUrl: data.dec(_f$githubPictureUrl),
      githubUpdatedAt: data.dec(_f$githubUpdatedAt),
      emailVerified: data.dec(_f$emailVerified),
      passwordHash: data.dec(_f$passwordHash),
      refreshCounter: data.dec(_f$refreshCounter),
      preferredName: data.dec(_f$preferredName),
      preferredEmail: data.dec(_f$preferredEmail),
      preferredPictureUrl: data.dec(_f$preferredPictureUrl),
      preferredUsername: data.dec(_f$preferredUsername),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static User fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<User>(map);
  }

  static User fromJson(String json) {
    return ensureInitialized().decodeJson<User>(json);
  }
}

mixin UserMappable {
  String toJson() {
    return UserMapper.ensureInitialized().encodeJson<User>(this as User);
  }

  Map<String, dynamic> toMap() {
    return UserMapper.ensureInitialized().encodeMap<User>(this as User);
  }

  UserCopyWith<User, User, User> get copyWith =>
      _UserCopyWithImpl<User, User>(this as User, $identity, $identity);
  @override
  String toString() {
    return UserMapper.ensureInitialized().stringifyValue(this as User);
  }

  @override
  bool operator ==(Object other) {
    return UserMapper.ensureInitialized().equalsValue(this as User, other);
  }

  @override
  int get hashCode {
    return UserMapper.ensureInitialized().hashValue(this as User);
  }
}

extension UserValueCopy<$R, $Out> on ObjectCopyWith<$R, User, $Out> {
  UserCopyWith<$R, User, $Out> get $asUser =>
      $base.as((v, t, t2) => _UserCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserCopyWith<$R, $In extends User, $Out>
    implements UserBaseCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    String? name,
    String? email,
    Uri? pictureUrl,
    String? googleId,
    String? googleName,
    String? googleUsername,
    String? googleEmail,
    Uri? googlePictureUrl,
    DateTime? googleUpdatedAt,
    String? githubId,
    String? githubName,
    String? githubUsername,
    String? githubEmail,
    Uri? githubPictureUrl,
    DateTime? githubUpdatedAt,
    bool? emailVerified,
    String? passwordHash,
    int? refreshCounter,
    String? preferredName,
    String? preferredEmail,
    Uri? preferredPictureUrl,
    String? preferredUsername,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  UserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, User, $Out>
    implements UserCopyWith<$R, User, $Out> {
  _UserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<User> $mapper = UserMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? name,
    String? email,
    Object? pictureUrl = $none,
    Object? googleId = $none,
    Object? googleName = $none,
    Object? googleUsername = $none,
    Object? googleEmail = $none,
    Object? googlePictureUrl = $none,
    Object? googleUpdatedAt = $none,
    Object? githubId = $none,
    Object? githubName = $none,
    Object? githubUsername = $none,
    Object? githubEmail = $none,
    Object? githubPictureUrl = $none,
    Object? githubUpdatedAt = $none,
    bool? emailVerified,
    Object? passwordHash = $none,
    int? refreshCounter,
    String? preferredName,
    String? preferredEmail,
    Object? preferredPictureUrl = $none,
    Object? preferredUsername = $none,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (email != null) #email: email,
      if (pictureUrl != $none) #pictureUrl: pictureUrl,
      if (googleId != $none) #googleId: googleId,
      if (googleName != $none) #googleName: googleName,
      if (googleUsername != $none) #googleUsername: googleUsername,
      if (googleEmail != $none) #googleEmail: googleEmail,
      if (googlePictureUrl != $none) #googlePictureUrl: googlePictureUrl,
      if (googleUpdatedAt != $none) #googleUpdatedAt: googleUpdatedAt,
      if (githubId != $none) #githubId: githubId,
      if (githubName != $none) #githubName: githubName,
      if (githubUsername != $none) #githubUsername: githubUsername,
      if (githubEmail != $none) #githubEmail: githubEmail,
      if (githubPictureUrl != $none) #githubPictureUrl: githubPictureUrl,
      if (githubUpdatedAt != $none) #githubUpdatedAt: githubUpdatedAt,
      if (emailVerified != null) #emailVerified: emailVerified,
      if (passwordHash != $none) #passwordHash: passwordHash,
      if (refreshCounter != null) #refreshCounter: refreshCounter,
      if (preferredName != null) #preferredName: preferredName,
      if (preferredEmail != null) #preferredEmail: preferredEmail,
      if (preferredPictureUrl != $none)
        #preferredPictureUrl: preferredPictureUrl,
      if (preferredUsername != $none) #preferredUsername: preferredUsername,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  User $make(CopyWithData data) => User(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    email: data.get(#email, or: $value.email),
    pictureUrl: data.get(#pictureUrl, or: $value.pictureUrl),
    googleId: data.get(#googleId, or: $value.googleId),
    googleName: data.get(#googleName, or: $value.googleName),
    googleUsername: data.get(#googleUsername, or: $value.googleUsername),
    googleEmail: data.get(#googleEmail, or: $value.googleEmail),
    googlePictureUrl: data.get(#googlePictureUrl, or: $value.googlePictureUrl),
    googleUpdatedAt: data.get(#googleUpdatedAt, or: $value.googleUpdatedAt),
    githubId: data.get(#githubId, or: $value.githubId),
    githubName: data.get(#githubName, or: $value.githubName),
    githubUsername: data.get(#githubUsername, or: $value.githubUsername),
    githubEmail: data.get(#githubEmail, or: $value.githubEmail),
    githubPictureUrl: data.get(#githubPictureUrl, or: $value.githubPictureUrl),
    githubUpdatedAt: data.get(#githubUpdatedAt, or: $value.githubUpdatedAt),
    emailVerified: data.get(#emailVerified, or: $value.emailVerified),
    passwordHash: data.get(#passwordHash, or: $value.passwordHash),
    refreshCounter: data.get(#refreshCounter, or: $value.refreshCounter),
    preferredName: data.get(#preferredName, or: $value.preferredName),
    preferredEmail: data.get(#preferredEmail, or: $value.preferredEmail),
    preferredPictureUrl: data.get(
      #preferredPictureUrl,
      or: $value.preferredPictureUrl,
    ),
    preferredUsername: data.get(
      #preferredUsername,
      or: $value.preferredUsername,
    ),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  UserCopyWith<$R2, User, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UserBaseMapper extends ClassMapperBase<UserBase> {
  UserBaseMapper._();

  static UserBaseMapper? _instance;
  static UserBaseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserBaseMapper._());
      UserMapper.ensureInitialized();
      UserUpdateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserBase';

  static String _$name(UserBase v) => v.name;
  static const Field<UserBase, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static String _$email(UserBase v) => v.email;
  static const Field<UserBase, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
    def: "",
  );
  static Uri? _$pictureUrl(UserBase v) => v.pictureUrl;
  static const Field<UserBase, Uri> _f$pictureUrl = Field(
    'pictureUrl',
    _$pictureUrl,
    key: r'picture_url',
    opt: true,
  );
  static String? _$googleId(UserBase v) => v.googleId;
  static const Field<UserBase, String> _f$googleId = Field(
    'googleId',
    _$googleId,
    key: r'google_id',
    opt: true,
  );
  static String? _$googleName(UserBase v) => v.googleName;
  static const Field<UserBase, String> _f$googleName = Field(
    'googleName',
    _$googleName,
    key: r'google_name',
    opt: true,
  );
  static String? _$googleUsername(UserBase v) => v.googleUsername;
  static const Field<UserBase, String> _f$googleUsername = Field(
    'googleUsername',
    _$googleUsername,
    key: r'google_username',
    opt: true,
  );
  static String? _$googleEmail(UserBase v) => v.googleEmail;
  static const Field<UserBase, String> _f$googleEmail = Field(
    'googleEmail',
    _$googleEmail,
    key: r'google_email',
    opt: true,
  );
  static Uri? _$googlePictureUrl(UserBase v) => v.googlePictureUrl;
  static const Field<UserBase, Uri> _f$googlePictureUrl = Field(
    'googlePictureUrl',
    _$googlePictureUrl,
    key: r'google_picture_url',
    opt: true,
  );
  static DateTime? _$googleUpdatedAt(UserBase v) => v.googleUpdatedAt;
  static const Field<UserBase, DateTime> _f$googleUpdatedAt = Field(
    'googleUpdatedAt',
    _$googleUpdatedAt,
    key: r'google_updated_at',
    opt: true,
  );
  static String? _$githubId(UserBase v) => v.githubId;
  static const Field<UserBase, String> _f$githubId = Field(
    'githubId',
    _$githubId,
    key: r'github_id',
    opt: true,
  );
  static String? _$githubName(UserBase v) => v.githubName;
  static const Field<UserBase, String> _f$githubName = Field(
    'githubName',
    _$githubName,
    key: r'github_name',
    opt: true,
  );
  static String? _$githubUsername(UserBase v) => v.githubUsername;
  static const Field<UserBase, String> _f$githubUsername = Field(
    'githubUsername',
    _$githubUsername,
    key: r'github_username',
    opt: true,
  );
  static String? _$githubEmail(UserBase v) => v.githubEmail;
  static const Field<UserBase, String> _f$githubEmail = Field(
    'githubEmail',
    _$githubEmail,
    key: r'github_email',
    opt: true,
  );
  static Uri? _$githubPictureUrl(UserBase v) => v.githubPictureUrl;
  static const Field<UserBase, Uri> _f$githubPictureUrl = Field(
    'githubPictureUrl',
    _$githubPictureUrl,
    key: r'github_picture_url',
    opt: true,
  );
  static DateTime? _$githubUpdatedAt(UserBase v) => v.githubUpdatedAt;
  static const Field<UserBase, DateTime> _f$githubUpdatedAt = Field(
    'githubUpdatedAt',
    _$githubUpdatedAt,
    key: r'github_updated_at',
    opt: true,
  );

  @override
  final MappableFields<UserBase> fields = const {
    #name: _f$name,
    #email: _f$email,
    #pictureUrl: _f$pictureUrl,
    #googleId: _f$googleId,
    #googleName: _f$googleName,
    #googleUsername: _f$googleUsername,
    #googleEmail: _f$googleEmail,
    #googlePictureUrl: _f$googlePictureUrl,
    #googleUpdatedAt: _f$googleUpdatedAt,
    #githubId: _f$githubId,
    #githubName: _f$githubName,
    #githubUsername: _f$githubUsername,
    #githubEmail: _f$githubEmail,
    #githubPictureUrl: _f$githubPictureUrl,
    #githubUpdatedAt: _f$githubUpdatedAt,
  };

  static UserBase _instantiate(DecodingData data) {
    return UserBase(
      name: data.dec(_f$name),
      email: data.dec(_f$email),
      pictureUrl: data.dec(_f$pictureUrl),
      googleId: data.dec(_f$googleId),
      googleName: data.dec(_f$googleName),
      googleUsername: data.dec(_f$googleUsername),
      googleEmail: data.dec(_f$googleEmail),
      googlePictureUrl: data.dec(_f$googlePictureUrl),
      googleUpdatedAt: data.dec(_f$googleUpdatedAt),
      githubId: data.dec(_f$githubId),
      githubName: data.dec(_f$githubName),
      githubUsername: data.dec(_f$githubUsername),
      githubEmail: data.dec(_f$githubEmail),
      githubPictureUrl: data.dec(_f$githubPictureUrl),
      githubUpdatedAt: data.dec(_f$githubUpdatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserBase fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserBase>(map);
  }

  static UserBase fromJson(String json) {
    return ensureInitialized().decodeJson<UserBase>(json);
  }
}

mixin UserBaseMappable {
  String toJson() {
    return UserBaseMapper.ensureInitialized().encodeJson<UserBase>(
      this as UserBase,
    );
  }

  Map<String, dynamic> toMap() {
    return UserBaseMapper.ensureInitialized().encodeMap<UserBase>(
      this as UserBase,
    );
  }

  UserBaseCopyWith<UserBase, UserBase, UserBase> get copyWith =>
      _UserBaseCopyWithImpl<UserBase, UserBase>(
        this as UserBase,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserBaseMapper.ensureInitialized().stringifyValue(this as UserBase);
  }

  @override
  bool operator ==(Object other) {
    return UserBaseMapper.ensureInitialized().equalsValue(
      this as UserBase,
      other,
    );
  }

  @override
  int get hashCode {
    return UserBaseMapper.ensureInitialized().hashValue(this as UserBase);
  }
}

extension UserBaseValueCopy<$R, $Out> on ObjectCopyWith<$R, UserBase, $Out> {
  UserBaseCopyWith<$R, UserBase, $Out> get $asUserBase =>
      $base.as((v, t, t2) => _UserBaseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserBaseCopyWith<$R, $In extends UserBase, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? name,
    String? email,
    Uri? pictureUrl,
    String? googleId,
    String? googleName,
    String? googleUsername,
    String? googleEmail,
    Uri? googlePictureUrl,
    DateTime? googleUpdatedAt,
    String? githubId,
    String? githubName,
    String? githubUsername,
    String? githubEmail,
    Uri? githubPictureUrl,
    DateTime? githubUpdatedAt,
  });
  UserBaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserBaseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserBase, $Out>
    implements UserBaseCopyWith<$R, UserBase, $Out> {
  _UserBaseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserBase> $mapper =
      UserBaseMapper.ensureInitialized();
  @override
  $R call({
    String? name,
    String? email,
    Object? pictureUrl = $none,
    Object? googleId = $none,
    Object? googleName = $none,
    Object? googleUsername = $none,
    Object? googleEmail = $none,
    Object? googlePictureUrl = $none,
    Object? googleUpdatedAt = $none,
    Object? githubId = $none,
    Object? githubName = $none,
    Object? githubUsername = $none,
    Object? githubEmail = $none,
    Object? githubPictureUrl = $none,
    Object? githubUpdatedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (email != null) #email: email,
      if (pictureUrl != $none) #pictureUrl: pictureUrl,
      if (googleId != $none) #googleId: googleId,
      if (googleName != $none) #googleName: googleName,
      if (googleUsername != $none) #googleUsername: googleUsername,
      if (googleEmail != $none) #googleEmail: googleEmail,
      if (googlePictureUrl != $none) #googlePictureUrl: googlePictureUrl,
      if (googleUpdatedAt != $none) #googleUpdatedAt: googleUpdatedAt,
      if (githubId != $none) #githubId: githubId,
      if (githubName != $none) #githubName: githubName,
      if (githubUsername != $none) #githubUsername: githubUsername,
      if (githubEmail != $none) #githubEmail: githubEmail,
      if (githubPictureUrl != $none) #githubPictureUrl: githubPictureUrl,
      if (githubUpdatedAt != $none) #githubUpdatedAt: githubUpdatedAt,
    }),
  );
  @override
  UserBase $make(CopyWithData data) => UserBase(
    name: data.get(#name, or: $value.name),
    email: data.get(#email, or: $value.email),
    pictureUrl: data.get(#pictureUrl, or: $value.pictureUrl),
    googleId: data.get(#googleId, or: $value.googleId),
    googleName: data.get(#googleName, or: $value.googleName),
    googleUsername: data.get(#googleUsername, or: $value.googleUsername),
    googleEmail: data.get(#googleEmail, or: $value.googleEmail),
    googlePictureUrl: data.get(#googlePictureUrl, or: $value.googlePictureUrl),
    googleUpdatedAt: data.get(#googleUpdatedAt, or: $value.googleUpdatedAt),
    githubId: data.get(#githubId, or: $value.githubId),
    githubName: data.get(#githubName, or: $value.githubName),
    githubUsername: data.get(#githubUsername, or: $value.githubUsername),
    githubEmail: data.get(#githubEmail, or: $value.githubEmail),
    githubPictureUrl: data.get(#githubPictureUrl, or: $value.githubPictureUrl),
    githubUpdatedAt: data.get(#githubUpdatedAt, or: $value.githubUpdatedAt),
  );

  @override
  UserBaseCopyWith<$R2, UserBase, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserBaseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OrganizationMapper extends ClassMapperBase<Organization> {
  OrganizationMapper._();

  static OrganizationMapper? _instance;
  static OrganizationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrganizationMapper._());
      OrganizationCreateMapper.ensureInitialized();
      OrganizationReadMapper.ensureInitialized();
      PaymentStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Organization';

  static String _$id(Organization v) => v.id;
  static const Field<Organization, String> _f$id = Field('id', _$id);
  static String _$name(Organization v) => v.name;
  static const Field<Organization, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static FiatCurrency _$currency(Organization v) => v.currency;
  static const Field<Organization, FiatCurrency> _f$currency = Field(
    'currency',
    _$currency,
    hook: FiatCurrencyHook(),
  );
  static String? _$timezone(Organization v) => v.timezone;
  static const Field<Organization, String> _f$timezone = Field(
    'timezone',
    _$timezone,
    opt: true,
  );
  static Map<String, String> _$externalKeys(Organization v) => v.externalKeys;
  static const Field<Organization, Map<String, String>> _f$externalKeys = Field(
    'externalKeys',
    _$externalKeys,
    key: r'external_keys',
    opt: true,
    def: const {},
  );
  static String _$createdBy(Organization v) => v.createdBy;
  static const Field<Organization, String> _f$createdBy = Field(
    'createdBy',
    _$createdBy,
    key: r'created_by',
  );
  static String _$owner(Organization v) => v.owner;
  static const Field<Organization, String> _f$owner = Field('owner', _$owner);
  static String? _$stripeId(Organization v) => v.stripeId;
  static const Field<Organization, String> _f$stripeId = Field(
    'stripeId',
    _$stripeId,
    key: r'stripe_id',
    opt: true,
  );
  static String? _$pricePlanId(Organization v) => v.pricePlanId;
  static const Field<Organization, String> _f$pricePlanId = Field(
    'pricePlanId',
    _$pricePlanId,
    key: r'price_plan_id',
    opt: true,
  );
  static PaymentState _$paymentState(Organization v) => v.paymentState;
  static const Field<Organization, PaymentState> _f$paymentState = Field(
    'paymentState',
    _$paymentState,
    key: r'payment_state',
  );
  static DateTime? _$lastSubscriptionPaymentAt(Organization v) =>
      v.lastSubscriptionPaymentAt;
  static const Field<Organization, DateTime> _f$lastSubscriptionPaymentAt =
      Field(
        'lastSubscriptionPaymentAt',
        _$lastSubscriptionPaymentAt,
        key: r'last_subscription_payment_at',
        opt: true,
      );
  static DateTime _$quotaResetAt(Organization v) => v.quotaResetAt;
  static const Field<Organization, DateTime> _f$quotaResetAt = Field(
    'quotaResetAt',
    _$quotaResetAt,
    key: r'quota_reset_at',
  );
  static double _$credit(Organization v) => v.credit;
  static const Field<Organization, double> _f$credit = Field(
    'credit',
    _$credit,
  );
  static double _$creditGrant(Organization v) => v.creditGrant;
  static const Field<Organization, double> _f$creditGrant = Field(
    'creditGrant',
    _$creditGrant,
    key: r'credit_grant',
  );
  static double? _$llmTokensQuotaMtok(Organization v) => v.llmTokensQuotaMtok;
  static const Field<Organization, double> _f$llmTokensQuotaMtok = Field(
    'llmTokensQuotaMtok',
    _$llmTokensQuotaMtok,
    key: r'llm_tokens_quota_mtok',
    opt: true,
  );
  static double _$llmTokensUsageMtok(Organization v) => v.llmTokensUsageMtok;
  static const Field<Organization, double> _f$llmTokensUsageMtok = Field(
    'llmTokensUsageMtok',
    _$llmTokensUsageMtok,
    key: r'llm_tokens_usage_mtok',
  );
  static double? _$embeddingTokensQuotaMtok(Organization v) =>
      v.embeddingTokensQuotaMtok;
  static const Field<Organization, double> _f$embeddingTokensQuotaMtok = Field(
    'embeddingTokensQuotaMtok',
    _$embeddingTokensQuotaMtok,
    key: r'embedding_tokens_quota_mtok',
    opt: true,
  );
  static double _$embeddingTokensUsageMtok(Organization v) =>
      v.embeddingTokensUsageMtok;
  static const Field<Organization, double> _f$embeddingTokensUsageMtok = Field(
    'embeddingTokensUsageMtok',
    _$embeddingTokensUsageMtok,
    key: r'embedding_tokens_usage_mtok',
  );
  static double? _$rerankerQuotaKsearch(Organization v) =>
      v.rerankerQuotaKsearch;
  static const Field<Organization, double> _f$rerankerQuotaKsearch = Field(
    'rerankerQuotaKsearch',
    _$rerankerQuotaKsearch,
    key: r'reranker_quota_ksearch',
    opt: true,
  );
  static double _$rerankerUsageKsearch(Organization v) =>
      v.rerankerUsageKsearch;
  static const Field<Organization, double> _f$rerankerUsageKsearch = Field(
    'rerankerUsageKsearch',
    _$rerankerUsageKsearch,
    key: r'reranker_usage_ksearch',
  );
  static double? _$dbQuotaGib(Organization v) => v.dbQuotaGib;
  static const Field<Organization, double> _f$dbQuotaGib = Field(
    'dbQuotaGib',
    _$dbQuotaGib,
    key: r'db_quota_gib',
    opt: true,
  );
  static double _$dbUsageGib(Organization v) => v.dbUsageGib;
  static const Field<Organization, double> _f$dbUsageGib = Field(
    'dbUsageGib',
    _$dbUsageGib,
    key: r'db_usage_gib',
  );
  static DateTime _$dbUsageUpdatedAt(Organization v) => v.dbUsageUpdatedAt;
  static const Field<Organization, DateTime> _f$dbUsageUpdatedAt = Field(
    'dbUsageUpdatedAt',
    _$dbUsageUpdatedAt,
    key: r'db_usage_updated_at',
  );
  static double? _$fileQuotaGib(Organization v) => v.fileQuotaGib;
  static const Field<Organization, double> _f$fileQuotaGib = Field(
    'fileQuotaGib',
    _$fileQuotaGib,
    key: r'file_quota_gib',
    opt: true,
  );
  static double _$fileUsageGib(Organization v) => v.fileUsageGib;
  static const Field<Organization, double> _f$fileUsageGib = Field(
    'fileUsageGib',
    _$fileUsageGib,
    key: r'file_usage_gib',
  );
  static DateTime _$fileUsageUpdatedAt(Organization v) => v.fileUsageUpdatedAt;
  static const Field<Organization, DateTime> _f$fileUsageUpdatedAt = Field(
    'fileUsageUpdatedAt',
    _$fileUsageUpdatedAt,
    key: r'file_usage_updated_at',
  );
  static double? _$egressQuotaGib(Organization v) => v.egressQuotaGib;
  static const Field<Organization, double> _f$egressQuotaGib = Field(
    'egressQuotaGib',
    _$egressQuotaGib,
    key: r'egress_quota_gib',
    opt: true,
  );
  static double _$egressUsageGib(Organization v) => v.egressUsageGib;
  static const Field<Organization, double> _f$egressUsageGib = Field(
    'egressUsageGib',
    _$egressUsageGib,
    key: r'egress_usage_gib',
  );
  static bool _$active(Organization v) => v.active;
  static const Field<Organization, bool> _f$active = Field('active', _$active);
  static Map<String, Map<String, double?>> _$quotas(Organization v) => v.quotas;
  static const Field<Organization, Map<String, Map<String, double?>>>
  _f$quotas = Field('quotas', _$quotas);
  static DateTime _$createdAt(Organization v) => v.createdAt;
  static const Field<Organization, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(Organization v) => v.updatedAt;
  static const Field<Organization, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );

  @override
  final MappableFields<Organization> fields = const {
    #id: _f$id,
    #name: _f$name,
    #currency: _f$currency,
    #timezone: _f$timezone,
    #externalKeys: _f$externalKeys,
    #createdBy: _f$createdBy,
    #owner: _f$owner,
    #stripeId: _f$stripeId,
    #pricePlanId: _f$pricePlanId,
    #paymentState: _f$paymentState,
    #lastSubscriptionPaymentAt: _f$lastSubscriptionPaymentAt,
    #quotaResetAt: _f$quotaResetAt,
    #credit: _f$credit,
    #creditGrant: _f$creditGrant,
    #llmTokensQuotaMtok: _f$llmTokensQuotaMtok,
    #llmTokensUsageMtok: _f$llmTokensUsageMtok,
    #embeddingTokensQuotaMtok: _f$embeddingTokensQuotaMtok,
    #embeddingTokensUsageMtok: _f$embeddingTokensUsageMtok,
    #rerankerQuotaKsearch: _f$rerankerQuotaKsearch,
    #rerankerUsageKsearch: _f$rerankerUsageKsearch,
    #dbQuotaGib: _f$dbQuotaGib,
    #dbUsageGib: _f$dbUsageGib,
    #dbUsageUpdatedAt: _f$dbUsageUpdatedAt,
    #fileQuotaGib: _f$fileQuotaGib,
    #fileUsageGib: _f$fileUsageGib,
    #fileUsageUpdatedAt: _f$fileUsageUpdatedAt,
    #egressQuotaGib: _f$egressQuotaGib,
    #egressUsageGib: _f$egressUsageGib,
    #active: _f$active,
    #quotas: _f$quotas,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static Organization _instantiate(DecodingData data) {
    return Organization(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      currency: data.dec(_f$currency),
      timezone: data.dec(_f$timezone),
      externalKeys: data.dec(_f$externalKeys),
      createdBy: data.dec(_f$createdBy),
      owner: data.dec(_f$owner),
      stripeId: data.dec(_f$stripeId),
      pricePlanId: data.dec(_f$pricePlanId),
      paymentState: data.dec(_f$paymentState),
      lastSubscriptionPaymentAt: data.dec(_f$lastSubscriptionPaymentAt),
      quotaResetAt: data.dec(_f$quotaResetAt),
      credit: data.dec(_f$credit),
      creditGrant: data.dec(_f$creditGrant),
      llmTokensQuotaMtok: data.dec(_f$llmTokensQuotaMtok),
      llmTokensUsageMtok: data.dec(_f$llmTokensUsageMtok),
      embeddingTokensQuotaMtok: data.dec(_f$embeddingTokensQuotaMtok),
      embeddingTokensUsageMtok: data.dec(_f$embeddingTokensUsageMtok),
      rerankerQuotaKsearch: data.dec(_f$rerankerQuotaKsearch),
      rerankerUsageKsearch: data.dec(_f$rerankerUsageKsearch),
      dbQuotaGib: data.dec(_f$dbQuotaGib),
      dbUsageGib: data.dec(_f$dbUsageGib),
      dbUsageUpdatedAt: data.dec(_f$dbUsageUpdatedAt),
      fileQuotaGib: data.dec(_f$fileQuotaGib),
      fileUsageGib: data.dec(_f$fileUsageGib),
      fileUsageUpdatedAt: data.dec(_f$fileUsageUpdatedAt),
      egressQuotaGib: data.dec(_f$egressQuotaGib),
      egressUsageGib: data.dec(_f$egressUsageGib),
      active: data.dec(_f$active),
      quotas: data.dec(_f$quotas),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Organization fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Organization>(map);
  }

  static Organization fromJson(String json) {
    return ensureInitialized().decodeJson<Organization>(json);
  }
}

mixin OrganizationMappable {
  String toJson() {
    return OrganizationMapper.ensureInitialized().encodeJson<Organization>(
      this as Organization,
    );
  }

  Map<String, dynamic> toMap() {
    return OrganizationMapper.ensureInitialized().encodeMap<Organization>(
      this as Organization,
    );
  }

  OrganizationCopyWith<Organization, Organization, Organization> get copyWith =>
      _OrganizationCopyWithImpl<Organization, Organization>(
        this as Organization,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OrganizationMapper.ensureInitialized().stringifyValue(
      this as Organization,
    );
  }

  @override
  bool operator ==(Object other) {
    return OrganizationMapper.ensureInitialized().equalsValue(
      this as Organization,
      other,
    );
  }

  @override
  int get hashCode {
    return OrganizationMapper.ensureInitialized().hashValue(
      this as Organization,
    );
  }
}

extension OrganizationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Organization, $Out> {
  OrganizationCopyWith<$R, Organization, $Out> get $asOrganization =>
      $base.as((v, t, t2) => _OrganizationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OrganizationCopyWith<$R, $In extends Organization, $Out>
    implements OrganizationCreateCopyWith<$R, $In, $Out> {
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>?>
  get externalKeys;
  MapCopyWith<
    $R,
    String,
    Map<String, double?>,
    ObjectCopyWith<$R, Map<String, double?>, Map<String, double?>>?
  >
  get quotas;
  @override
  $R call({
    String? id,
    String? name,
    FiatCurrency? currency,
    String? timezone,
    Map<String, String>? externalKeys,
    String? createdBy,
    String? owner,
    String? stripeId,
    String? pricePlanId,
    PaymentState? paymentState,
    DateTime? lastSubscriptionPaymentAt,
    DateTime? quotaResetAt,
    double? credit,
    double? creditGrant,
    double? llmTokensQuotaMtok,
    double? llmTokensUsageMtok,
    double? embeddingTokensQuotaMtok,
    double? embeddingTokensUsageMtok,
    double? rerankerQuotaKsearch,
    double? rerankerUsageKsearch,
    double? dbQuotaGib,
    double? dbUsageGib,
    DateTime? dbUsageUpdatedAt,
    double? fileQuotaGib,
    double? fileUsageGib,
    DateTime? fileUsageUpdatedAt,
    double? egressQuotaGib,
    double? egressUsageGib,
    bool? active,
    Map<String, Map<String, double?>>? quotas,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  OrganizationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrganizationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Organization, $Out>
    implements OrganizationCopyWith<$R, Organization, $Out> {
  _OrganizationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Organization> $mapper =
      OrganizationMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>?>
  get externalKeys => MapCopyWith(
    $value.externalKeys,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(externalKeys: v),
  );
  @override
  MapCopyWith<
    $R,
    String,
    Map<String, double?>,
    ObjectCopyWith<$R, Map<String, double?>, Map<String, double?>>?
  >
  get quotas => MapCopyWith(
    $value.quotas,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(quotas: v),
  );
  @override
  $R call({
    String? id,
    String? name,
    FiatCurrency? currency,
    Object? timezone = $none,
    Map<String, String>? externalKeys,
    String? createdBy,
    String? owner,
    Object? stripeId = $none,
    Object? pricePlanId = $none,
    PaymentState? paymentState,
    Object? lastSubscriptionPaymentAt = $none,
    DateTime? quotaResetAt,
    double? credit,
    double? creditGrant,
    Object? llmTokensQuotaMtok = $none,
    double? llmTokensUsageMtok,
    Object? embeddingTokensQuotaMtok = $none,
    double? embeddingTokensUsageMtok,
    Object? rerankerQuotaKsearch = $none,
    double? rerankerUsageKsearch,
    Object? dbQuotaGib = $none,
    double? dbUsageGib,
    DateTime? dbUsageUpdatedAt,
    Object? fileQuotaGib = $none,
    double? fileUsageGib,
    DateTime? fileUsageUpdatedAt,
    Object? egressQuotaGib = $none,
    double? egressUsageGib,
    bool? active,
    Map<String, Map<String, double?>>? quotas,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (currency != null) #currency: currency,
      if (timezone != $none) #timezone: timezone,
      if (externalKeys != null) #externalKeys: externalKeys,
      if (createdBy != null) #createdBy: createdBy,
      if (owner != null) #owner: owner,
      if (stripeId != $none) #stripeId: stripeId,
      if (pricePlanId != $none) #pricePlanId: pricePlanId,
      if (paymentState != null) #paymentState: paymentState,
      if (lastSubscriptionPaymentAt != $none)
        #lastSubscriptionPaymentAt: lastSubscriptionPaymentAt,
      if (quotaResetAt != null) #quotaResetAt: quotaResetAt,
      if (credit != null) #credit: credit,
      if (creditGrant != null) #creditGrant: creditGrant,
      if (llmTokensQuotaMtok != $none) #llmTokensQuotaMtok: llmTokensQuotaMtok,
      if (llmTokensUsageMtok != null) #llmTokensUsageMtok: llmTokensUsageMtok,
      if (embeddingTokensQuotaMtok != $none)
        #embeddingTokensQuotaMtok: embeddingTokensQuotaMtok,
      if (embeddingTokensUsageMtok != null)
        #embeddingTokensUsageMtok: embeddingTokensUsageMtok,
      if (rerankerQuotaKsearch != $none)
        #rerankerQuotaKsearch: rerankerQuotaKsearch,
      if (rerankerUsageKsearch != null)
        #rerankerUsageKsearch: rerankerUsageKsearch,
      if (dbQuotaGib != $none) #dbQuotaGib: dbQuotaGib,
      if (dbUsageGib != null) #dbUsageGib: dbUsageGib,
      if (dbUsageUpdatedAt != null) #dbUsageUpdatedAt: dbUsageUpdatedAt,
      if (fileQuotaGib != $none) #fileQuotaGib: fileQuotaGib,
      if (fileUsageGib != null) #fileUsageGib: fileUsageGib,
      if (fileUsageUpdatedAt != null) #fileUsageUpdatedAt: fileUsageUpdatedAt,
      if (egressQuotaGib != $none) #egressQuotaGib: egressQuotaGib,
      if (egressUsageGib != null) #egressUsageGib: egressUsageGib,
      if (active != null) #active: active,
      if (quotas != null) #quotas: quotas,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  Organization $make(CopyWithData data) => Organization(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    currency: data.get(#currency, or: $value.currency),
    timezone: data.get(#timezone, or: $value.timezone),
    externalKeys: data.get(#externalKeys, or: $value.externalKeys),
    createdBy: data.get(#createdBy, or: $value.createdBy),
    owner: data.get(#owner, or: $value.owner),
    stripeId: data.get(#stripeId, or: $value.stripeId),
    pricePlanId: data.get(#pricePlanId, or: $value.pricePlanId),
    paymentState: data.get(#paymentState, or: $value.paymentState),
    lastSubscriptionPaymentAt: data.get(
      #lastSubscriptionPaymentAt,
      or: $value.lastSubscriptionPaymentAt,
    ),
    quotaResetAt: data.get(#quotaResetAt, or: $value.quotaResetAt),
    credit: data.get(#credit, or: $value.credit),
    creditGrant: data.get(#creditGrant, or: $value.creditGrant),
    llmTokensQuotaMtok: data.get(
      #llmTokensQuotaMtok,
      or: $value.llmTokensQuotaMtok,
    ),
    llmTokensUsageMtok: data.get(
      #llmTokensUsageMtok,
      or: $value.llmTokensUsageMtok,
    ),
    embeddingTokensQuotaMtok: data.get(
      #embeddingTokensQuotaMtok,
      or: $value.embeddingTokensQuotaMtok,
    ),
    embeddingTokensUsageMtok: data.get(
      #embeddingTokensUsageMtok,
      or: $value.embeddingTokensUsageMtok,
    ),
    rerankerQuotaKsearch: data.get(
      #rerankerQuotaKsearch,
      or: $value.rerankerQuotaKsearch,
    ),
    rerankerUsageKsearch: data.get(
      #rerankerUsageKsearch,
      or: $value.rerankerUsageKsearch,
    ),
    dbQuotaGib: data.get(#dbQuotaGib, or: $value.dbQuotaGib),
    dbUsageGib: data.get(#dbUsageGib, or: $value.dbUsageGib),
    dbUsageUpdatedAt: data.get(#dbUsageUpdatedAt, or: $value.dbUsageUpdatedAt),
    fileQuotaGib: data.get(#fileQuotaGib, or: $value.fileQuotaGib),
    fileUsageGib: data.get(#fileUsageGib, or: $value.fileUsageGib),
    fileUsageUpdatedAt: data.get(
      #fileUsageUpdatedAt,
      or: $value.fileUsageUpdatedAt,
    ),
    egressQuotaGib: data.get(#egressQuotaGib, or: $value.egressQuotaGib),
    egressUsageGib: data.get(#egressUsageGib, or: $value.egressUsageGib),
    active: data.get(#active, or: $value.active),
    quotas: data.get(#quotas, or: $value.quotas),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  OrganizationCopyWith<$R2, Organization, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OrganizationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OrganizationCreateMapper extends ClassMapperBase<OrganizationCreate> {
  OrganizationCreateMapper._();

  static OrganizationCreateMapper? _instance;
  static OrganizationCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrganizationCreateMapper._());
      OrganizationUpdateMapper.ensureInitialized();
      OrganizationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrganizationCreate';

  static String _$name(OrganizationCreate v) => v.name;
  static const Field<OrganizationCreate, String> _f$name = Field(
    'name',
    _$name,
  );
  static FiatCurrency _$currency(OrganizationCreate v) => v.currency;
  static const Field<OrganizationCreate, FiatCurrency> _f$currency = Field(
    'currency',
    _$currency,
    hook: FiatCurrencyHook(),
  );
  static String? _$timezone(OrganizationCreate v) => v.timezone;
  static const Field<OrganizationCreate, String> _f$timezone = Field(
    'timezone',
    _$timezone,
    opt: true,
  );
  static Map<String, String> _$externalKeys(OrganizationCreate v) =>
      v.externalKeys;
  static const Field<OrganizationCreate, Map<String, String>> _f$externalKeys =
      Field(
        'externalKeys',
        _$externalKeys,
        key: r'external_keys',
        opt: true,
        def: const {},
      );

  @override
  final MappableFields<OrganizationCreate> fields = const {
    #name: _f$name,
    #currency: _f$currency,
    #timezone: _f$timezone,
    #externalKeys: _f$externalKeys,
  };

  static OrganizationCreate _instantiate(DecodingData data) {
    return OrganizationCreate(
      name: data.dec(_f$name),
      currency: data.dec(_f$currency),
      timezone: data.dec(_f$timezone),
      externalKeys: data.dec(_f$externalKeys),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static OrganizationCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrganizationCreate>(map);
  }

  static OrganizationCreate fromJson(String json) {
    return ensureInitialized().decodeJson<OrganizationCreate>(json);
  }
}

mixin OrganizationCreateMappable {
  String toJson() {
    return OrganizationCreateMapper.ensureInitialized()
        .encodeJson<OrganizationCreate>(this as OrganizationCreate);
  }

  Map<String, dynamic> toMap() {
    return OrganizationCreateMapper.ensureInitialized()
        .encodeMap<OrganizationCreate>(this as OrganizationCreate);
  }

  OrganizationCreateCopyWith<
    OrganizationCreate,
    OrganizationCreate,
    OrganizationCreate
  >
  get copyWith =>
      _OrganizationCreateCopyWithImpl<OrganizationCreate, OrganizationCreate>(
        this as OrganizationCreate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OrganizationCreateMapper.ensureInitialized().stringifyValue(
      this as OrganizationCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return OrganizationCreateMapper.ensureInitialized().equalsValue(
      this as OrganizationCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return OrganizationCreateMapper.ensureInitialized().hashValue(
      this as OrganizationCreate,
    );
  }
}

extension OrganizationCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrganizationCreate, $Out> {
  OrganizationCreateCopyWith<$R, OrganizationCreate, $Out>
  get $asOrganizationCreate => $base.as(
    (v, t, t2) => _OrganizationCreateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class OrganizationCreateCopyWith<
  $R,
  $In extends OrganizationCreate,
  $Out
>
    implements OrganizationUpdateCopyWith<$R, $In, $Out> {
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>?>
  get externalKeys;
  @override
  $R call({
    String? name,
    FiatCurrency? currency,
    String? timezone,
    Map<String, String>? externalKeys,
  });
  OrganizationCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _OrganizationCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrganizationCreate, $Out>
    implements OrganizationCreateCopyWith<$R, OrganizationCreate, $Out> {
  _OrganizationCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrganizationCreate> $mapper =
      OrganizationCreateMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>?>
  get externalKeys => MapCopyWith(
    $value.externalKeys,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(externalKeys: v),
  );
  @override
  $R call({
    String? name,
    FiatCurrency? currency,
    Object? timezone = $none,
    Map<String, String>? externalKeys,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (currency != null) #currency: currency,
      if (timezone != $none) #timezone: timezone,
      if (externalKeys != null) #externalKeys: externalKeys,
    }),
  );
  @override
  OrganizationCreate $make(CopyWithData data) => OrganizationCreate(
    name: data.get(#name, or: $value.name),
    currency: data.get(#currency, or: $value.currency),
    timezone: data.get(#timezone, or: $value.timezone),
    externalKeys: data.get(#externalKeys, or: $value.externalKeys),
  );

  @override
  OrganizationCreateCopyWith<$R2, OrganizationCreate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OrganizationCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OrganizationUpdateMapper extends ClassMapperBase<OrganizationUpdate> {
  OrganizationUpdateMapper._();

  static OrganizationUpdateMapper? _instance;
  static OrganizationUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrganizationUpdateMapper._());
      OrganizationCreateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrganizationUpdate';

  static String _$name(OrganizationUpdate v) => v.name;
  static const Field<OrganizationUpdate, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static FiatCurrency _$currency(OrganizationUpdate v) => v.currency;
  static const Field<OrganizationUpdate, FiatCurrency> _f$currency = Field(
    'currency',
    _$currency,
    hook: FiatCurrencyHook(),
  );
  static String? _$timezone(OrganizationUpdate v) => v.timezone;
  static const Field<OrganizationUpdate, String> _f$timezone = Field(
    'timezone',
    _$timezone,
    opt: true,
  );
  static Map<String, String> _$externalKeys(OrganizationUpdate v) =>
      v.externalKeys;
  static const Field<OrganizationUpdate, Map<String, String>> _f$externalKeys =
      Field(
        'externalKeys',
        _$externalKeys,
        key: r'external_keys',
        opt: true,
        def: const {},
      );

  @override
  final MappableFields<OrganizationUpdate> fields = const {
    #name: _f$name,
    #currency: _f$currency,
    #timezone: _f$timezone,
    #externalKeys: _f$externalKeys,
  };

  static OrganizationUpdate _instantiate(DecodingData data) {
    return OrganizationUpdate(
      name: data.dec(_f$name),
      currency: data.dec(_f$currency),
      timezone: data.dec(_f$timezone),
      externalKeys: data.dec(_f$externalKeys),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static OrganizationUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrganizationUpdate>(map);
  }

  static OrganizationUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<OrganizationUpdate>(json);
  }
}

mixin OrganizationUpdateMappable {
  String toJson() {
    return OrganizationUpdateMapper.ensureInitialized()
        .encodeJson<OrganizationUpdate>(this as OrganizationUpdate);
  }

  Map<String, dynamic> toMap() {
    return OrganizationUpdateMapper.ensureInitialized()
        .encodeMap<OrganizationUpdate>(this as OrganizationUpdate);
  }

  OrganizationUpdateCopyWith<
    OrganizationUpdate,
    OrganizationUpdate,
    OrganizationUpdate
  >
  get copyWith =>
      _OrganizationUpdateCopyWithImpl<OrganizationUpdate, OrganizationUpdate>(
        this as OrganizationUpdate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OrganizationUpdateMapper.ensureInitialized().stringifyValue(
      this as OrganizationUpdate,
    );
  }

  @override
  bool operator ==(Object other) {
    return OrganizationUpdateMapper.ensureInitialized().equalsValue(
      this as OrganizationUpdate,
      other,
    );
  }

  @override
  int get hashCode {
    return OrganizationUpdateMapper.ensureInitialized().hashValue(
      this as OrganizationUpdate,
    );
  }
}

extension OrganizationUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrganizationUpdate, $Out> {
  OrganizationUpdateCopyWith<$R, OrganizationUpdate, $Out>
  get $asOrganizationUpdate => $base.as(
    (v, t, t2) => _OrganizationUpdateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class OrganizationUpdateCopyWith<
  $R,
  $In extends OrganizationUpdate,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>?>
  get externalKeys;
  $R call({
    String? name,
    FiatCurrency? currency,
    String? timezone,
    Map<String, String>? externalKeys,
  });
  OrganizationUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _OrganizationUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrganizationUpdate, $Out>
    implements OrganizationUpdateCopyWith<$R, OrganizationUpdate, $Out> {
  _OrganizationUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrganizationUpdate> $mapper =
      OrganizationUpdateMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>?>
  get externalKeys => MapCopyWith(
    $value.externalKeys,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(externalKeys: v),
  );
  @override
  $R call({
    String? name,
    FiatCurrency? currency,
    Object? timezone = $none,
    Map<String, String>? externalKeys,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (currency != null) #currency: currency,
      if (timezone != $none) #timezone: timezone,
      if (externalKeys != null) #externalKeys: externalKeys,
    }),
  );
  @override
  OrganizationUpdate $make(CopyWithData data) => OrganizationUpdate(
    name: data.get(#name, or: $value.name),
    currency: data.get(#currency, or: $value.currency),
    timezone: data.get(#timezone, or: $value.timezone),
    externalKeys: data.get(#externalKeys, or: $value.externalKeys),
  );

  @override
  OrganizationUpdateCopyWith<$R2, OrganizationUpdate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OrganizationUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectMemberUpdateMapper extends ClassMapperBase<ProjectMemberUpdate> {
  ProjectMemberUpdateMapper._();

  static ProjectMemberUpdateMapper? _instance;
  static ProjectMemberUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectMemberUpdateMapper._());
      ProjectMemberCreateMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectMemberUpdate';

  static Role _$role(ProjectMemberUpdate v) => v.role;
  static const Field<ProjectMemberUpdate, Role> _f$role = Field('role', _$role);

  @override
  final MappableFields<ProjectMemberUpdate> fields = const {#role: _f$role};

  static ProjectMemberUpdate _instantiate(DecodingData data) {
    return ProjectMemberUpdate(role: data.dec(_f$role));
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectMemberUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectMemberUpdate>(map);
  }

  static ProjectMemberUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectMemberUpdate>(json);
  }
}

mixin ProjectMemberUpdateMappable {
  String toJson() {
    return ProjectMemberUpdateMapper.ensureInitialized()
        .encodeJson<ProjectMemberUpdate>(this as ProjectMemberUpdate);
  }

  Map<String, dynamic> toMap() {
    return ProjectMemberUpdateMapper.ensureInitialized()
        .encodeMap<ProjectMemberUpdate>(this as ProjectMemberUpdate);
  }

  ProjectMemberUpdateCopyWith<
    ProjectMemberUpdate,
    ProjectMemberUpdate,
    ProjectMemberUpdate
  >
  get copyWith =>
      _ProjectMemberUpdateCopyWithImpl<
        ProjectMemberUpdate,
        ProjectMemberUpdate
      >(this as ProjectMemberUpdate, $identity, $identity);
  @override
  String toString() {
    return ProjectMemberUpdateMapper.ensureInitialized().stringifyValue(
      this as ProjectMemberUpdate,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectMemberUpdateMapper.ensureInitialized().equalsValue(
      this as ProjectMemberUpdate,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectMemberUpdateMapper.ensureInitialized().hashValue(
      this as ProjectMemberUpdate,
    );
  }
}

extension ProjectMemberUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectMemberUpdate, $Out> {
  ProjectMemberUpdateCopyWith<$R, ProjectMemberUpdate, $Out>
  get $asProjectMemberUpdate => $base.as(
    (v, t, t2) => _ProjectMemberUpdateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ProjectMemberUpdateCopyWith<
  $R,
  $In extends ProjectMemberUpdate,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Role? role});
  ProjectMemberUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ProjectMemberUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectMemberUpdate, $Out>
    implements ProjectMemberUpdateCopyWith<$R, ProjectMemberUpdate, $Out> {
  _ProjectMemberUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectMemberUpdate> $mapper =
      ProjectMemberUpdateMapper.ensureInitialized();
  @override
  $R call({Role? role}) =>
      $apply(FieldCopyWithData({if (role != null) #role: role}));
  @override
  ProjectMemberUpdate $make(CopyWithData data) =>
      ProjectMemberUpdate(role: data.get(#role, or: $value.role));

  @override
  ProjectMemberUpdateCopyWith<$R2, ProjectMemberUpdate, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProjectMemberUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectMemberCreateMapper extends ClassMapperBase<ProjectMemberCreate> {
  ProjectMemberCreateMapper._();

  static ProjectMemberCreateMapper? _instance;
  static ProjectMemberCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectMemberCreateMapper._());
      ProjectMemberUpdateMapper.ensureInitialized();
      ProjectMemberMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectMemberCreate';

  static String _$userId(ProjectMemberCreate v) => v.userId;
  static const Field<ProjectMemberCreate, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static String _$projectId(ProjectMemberCreate v) => v.projectId;
  static const Field<ProjectMemberCreate, String> _f$projectId = Field(
    'projectId',
    _$projectId,
    key: r'project_id',
  );
  static Role _$role(ProjectMemberCreate v) => v.role;
  static const Field<ProjectMemberCreate, Role> _f$role = Field('role', _$role);

  @override
  final MappableFields<ProjectMemberCreate> fields = const {
    #userId: _f$userId,
    #projectId: _f$projectId,
    #role: _f$role,
  };

  static ProjectMemberCreate _instantiate(DecodingData data) {
    return ProjectMemberCreate(
      userId: data.dec(_f$userId),
      projectId: data.dec(_f$projectId),
      role: data.dec(_f$role),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectMemberCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectMemberCreate>(map);
  }

  static ProjectMemberCreate fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectMemberCreate>(json);
  }
}

mixin ProjectMemberCreateMappable {
  String toJson() {
    return ProjectMemberCreateMapper.ensureInitialized()
        .encodeJson<ProjectMemberCreate>(this as ProjectMemberCreate);
  }

  Map<String, dynamic> toMap() {
    return ProjectMemberCreateMapper.ensureInitialized()
        .encodeMap<ProjectMemberCreate>(this as ProjectMemberCreate);
  }

  ProjectMemberCreateCopyWith<
    ProjectMemberCreate,
    ProjectMemberCreate,
    ProjectMemberCreate
  >
  get copyWith =>
      _ProjectMemberCreateCopyWithImpl<
        ProjectMemberCreate,
        ProjectMemberCreate
      >(this as ProjectMemberCreate, $identity, $identity);
  @override
  String toString() {
    return ProjectMemberCreateMapper.ensureInitialized().stringifyValue(
      this as ProjectMemberCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectMemberCreateMapper.ensureInitialized().equalsValue(
      this as ProjectMemberCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectMemberCreateMapper.ensureInitialized().hashValue(
      this as ProjectMemberCreate,
    );
  }
}

extension ProjectMemberCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectMemberCreate, $Out> {
  ProjectMemberCreateCopyWith<$R, ProjectMemberCreate, $Out>
  get $asProjectMemberCreate => $base.as(
    (v, t, t2) => _ProjectMemberCreateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ProjectMemberCreateCopyWith<
  $R,
  $In extends ProjectMemberCreate,
  $Out
>
    implements ProjectMemberUpdateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? userId, String? projectId, Role? role});
  ProjectMemberCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ProjectMemberCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectMemberCreate, $Out>
    implements ProjectMemberCreateCopyWith<$R, ProjectMemberCreate, $Out> {
  _ProjectMemberCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectMemberCreate> $mapper =
      ProjectMemberCreateMapper.ensureInitialized();
  @override
  $R call({String? userId, String? projectId, Role? role}) => $apply(
    FieldCopyWithData({
      if (userId != null) #userId: userId,
      if (projectId != null) #projectId: projectId,
      if (role != null) #role: role,
    }),
  );
  @override
  ProjectMemberCreate $make(CopyWithData data) => ProjectMemberCreate(
    userId: data.get(#userId, or: $value.userId),
    projectId: data.get(#projectId, or: $value.projectId),
    role: data.get(#role, or: $value.role),
  );

  @override
  ProjectMemberCreateCopyWith<$R2, ProjectMemberCreate, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProjectMemberCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectMemberMapper extends ClassMapperBase<ProjectMember> {
  ProjectMemberMapper._();

  static ProjectMemberMapper? _instance;
  static ProjectMemberMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectMemberMapper._());
      ProjectMemberCreateMapper.ensureInitialized();
      ProjectMemberReadMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectMember';

  static String _$userId(ProjectMember v) => v.userId;
  static const Field<ProjectMember, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static String _$projectId(ProjectMember v) => v.projectId;
  static const Field<ProjectMember, String> _f$projectId = Field(
    'projectId',
    _$projectId,
    key: r'project_id',
  );
  static Role _$role(ProjectMember v) => v.role;
  static const Field<ProjectMember, Role> _f$role = Field('role', _$role);
  static DateTime _$createdAt(ProjectMember v) => v.createdAt;
  static const Field<ProjectMember, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(ProjectMember v) => v.updatedAt;
  static const Field<ProjectMember, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );

  @override
  final MappableFields<ProjectMember> fields = const {
    #userId: _f$userId,
    #projectId: _f$projectId,
    #role: _f$role,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static ProjectMember _instantiate(DecodingData data) {
    return ProjectMember(
      userId: data.dec(_f$userId),
      projectId: data.dec(_f$projectId),
      role: data.dec(_f$role),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectMember fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectMember>(map);
  }

  static ProjectMember fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectMember>(json);
  }
}

mixin ProjectMemberMappable {
  String toJson() {
    return ProjectMemberMapper.ensureInitialized().encodeJson<ProjectMember>(
      this as ProjectMember,
    );
  }

  Map<String, dynamic> toMap() {
    return ProjectMemberMapper.ensureInitialized().encodeMap<ProjectMember>(
      this as ProjectMember,
    );
  }

  ProjectMemberCopyWith<ProjectMember, ProjectMember, ProjectMember>
  get copyWith => _ProjectMemberCopyWithImpl<ProjectMember, ProjectMember>(
    this as ProjectMember,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ProjectMemberMapper.ensureInitialized().stringifyValue(
      this as ProjectMember,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectMemberMapper.ensureInitialized().equalsValue(
      this as ProjectMember,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectMemberMapper.ensureInitialized().hashValue(
      this as ProjectMember,
    );
  }
}

extension ProjectMemberValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectMember, $Out> {
  ProjectMemberCopyWith<$R, ProjectMember, $Out> get $asProjectMember =>
      $base.as((v, t, t2) => _ProjectMemberCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectMemberCopyWith<$R, $In extends ProjectMember, $Out>
    implements ProjectMemberCreateCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? userId,
    String? projectId,
    Role? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  ProjectMemberCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProjectMemberCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectMember, $Out>
    implements ProjectMemberCopyWith<$R, ProjectMember, $Out> {
  _ProjectMemberCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectMember> $mapper =
      ProjectMemberMapper.ensureInitialized();
  @override
  $R call({
    String? userId,
    String? projectId,
    Role? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (userId != null) #userId: userId,
      if (projectId != null) #projectId: projectId,
      if (role != null) #role: role,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  ProjectMember $make(CopyWithData data) => ProjectMember(
    userId: data.get(#userId, or: $value.userId),
    projectId: data.get(#projectId, or: $value.projectId),
    role: data.get(#role, or: $value.role),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  ProjectMemberCopyWith<$R2, ProjectMember, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProjectMemberCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectMemberReadMapper extends ClassMapperBase<ProjectMemberRead> {
  ProjectMemberReadMapper._();

  static ProjectMemberReadMapper? _instance;
  static ProjectMemberReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectMemberReadMapper._());
      ProjectMemberMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
      UserMapper.ensureInitialized();
      ProjectMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectMemberRead';

  static String _$userId(ProjectMemberRead v) => v.userId;
  static const Field<ProjectMemberRead, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static String _$projectId(ProjectMemberRead v) => v.projectId;
  static const Field<ProjectMemberRead, String> _f$projectId = Field(
    'projectId',
    _$projectId,
    key: r'project_id',
  );
  static Role _$role(ProjectMemberRead v) => v.role;
  static const Field<ProjectMemberRead, Role> _f$role = Field('role', _$role);
  static DateTime _$createdAt(ProjectMemberRead v) => v.createdAt;
  static const Field<ProjectMemberRead, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(ProjectMemberRead v) => v.updatedAt;
  static const Field<ProjectMemberRead, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static User _$user(ProjectMemberRead v) => v.user;
  static const Field<ProjectMemberRead, User> _f$user = Field('user', _$user);
  static Project _$project(ProjectMemberRead v) => v.project;
  static const Field<ProjectMemberRead, Project> _f$project = Field(
    'project',
    _$project,
  );

  @override
  final MappableFields<ProjectMemberRead> fields = const {
    #userId: _f$userId,
    #projectId: _f$projectId,
    #role: _f$role,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #user: _f$user,
    #project: _f$project,
  };

  static ProjectMemberRead _instantiate(DecodingData data) {
    return ProjectMemberRead(
      userId: data.dec(_f$userId),
      projectId: data.dec(_f$projectId),
      role: data.dec(_f$role),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      user: data.dec(_f$user),
      project: data.dec(_f$project),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectMemberRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectMemberRead>(map);
  }

  static ProjectMemberRead fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectMemberRead>(json);
  }
}

mixin ProjectMemberReadMappable {
  String toJson() {
    return ProjectMemberReadMapper.ensureInitialized()
        .encodeJson<ProjectMemberRead>(this as ProjectMemberRead);
  }

  Map<String, dynamic> toMap() {
    return ProjectMemberReadMapper.ensureInitialized()
        .encodeMap<ProjectMemberRead>(this as ProjectMemberRead);
  }

  ProjectMemberReadCopyWith<
    ProjectMemberRead,
    ProjectMemberRead,
    ProjectMemberRead
  >
  get copyWith =>
      _ProjectMemberReadCopyWithImpl<ProjectMemberRead, ProjectMemberRead>(
        this as ProjectMemberRead,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProjectMemberReadMapper.ensureInitialized().stringifyValue(
      this as ProjectMemberRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectMemberReadMapper.ensureInitialized().equalsValue(
      this as ProjectMemberRead,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectMemberReadMapper.ensureInitialized().hashValue(
      this as ProjectMemberRead,
    );
  }
}

extension ProjectMemberReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectMemberRead, $Out> {
  ProjectMemberReadCopyWith<$R, ProjectMemberRead, $Out>
  get $asProjectMemberRead => $base.as(
    (v, t, t2) => _ProjectMemberReadCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ProjectMemberReadCopyWith<
  $R,
  $In extends ProjectMemberRead,
  $Out
>
    implements ProjectMemberCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User> get user;
  ProjectCopyWith<$R, Project, Project> get project;
  @override
  $R call({
    String? userId,
    String? projectId,
    Role? role,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    Project? project,
  });
  ProjectMemberReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ProjectMemberReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectMemberRead, $Out>
    implements ProjectMemberReadCopyWith<$R, ProjectMemberRead, $Out> {
  _ProjectMemberReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectMemberRead> $mapper =
      ProjectMemberReadMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  ProjectCopyWith<$R, Project, Project> get project =>
      $value.project.copyWith.$chain((v) => call(project: v));
  @override
  $R call({
    String? userId,
    String? projectId,
    Role? role,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    Project? project,
  }) => $apply(
    FieldCopyWithData({
      if (userId != null) #userId: userId,
      if (projectId != null) #projectId: projectId,
      if (role != null) #role: role,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (user != null) #user: user,
      if (project != null) #project: project,
    }),
  );
  @override
  ProjectMemberRead $make(CopyWithData data) => ProjectMemberRead(
    userId: data.get(#userId, or: $value.userId),
    projectId: data.get(#projectId, or: $value.projectId),
    role: data.get(#role, or: $value.role),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    user: data.get(#user, or: $value.user),
    project: data.get(#project, or: $value.project),
  );

  @override
  ProjectMemberReadCopyWith<$R2, ProjectMemberRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProjectMemberReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectMapper extends ClassMapperBase<Project> {
  ProjectMapper._();

  static ProjectMapper? _instance;
  static ProjectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectMapper._());
      ProjectCreateMapper.ensureInitialized();
      ProjectReadMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      SanitizedMultilineStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Project';

  static String _$id(Project v) => v.id;
  static const Field<Project, String> _f$id = Field('id', _$id);
  static String _$organizationId(Project v) => v.organizationId;
  static const Field<Project, String> _f$organizationId = Field(
    'organizationId',
    _$organizationId,
    key: r'organization_id',
  );
  static SanitizedNonEmptyString _$name(Project v) => v.name;
  static const Field<Project, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedMultilineString _$description(Project v) => v.description;
  static const Field<Project, SanitizedMultilineString> _f$description = Field(
    'description',
    _$description,
    opt: true,
    hook: SanitizedMultilineStringHook(),
  );
  static List<String> _$tags(Project v) => v.tags;
  static const Field<Project, List<String>> _f$tags = Field(
    'tags',
    _$tags,
    opt: true,
  );
  static String? _$profilePictureUrl(Project v) => v.profilePictureUrl;
  static const Field<Project, String> _f$profilePictureUrl = Field(
    'profilePictureUrl',
    _$profilePictureUrl,
    key: r'profile_picture_url',
    opt: true,
  );
  static String? _$coverPictureUrl(Project v) => v.coverPictureUrl;
  static const Field<Project, String> _f$coverPictureUrl = Field(
    'coverPictureUrl',
    _$coverPictureUrl,
    key: r'cover_picture_url',
    opt: true,
  );
  static String _$createdBy(Project v) => v.createdBy;
  static const Field<Project, String> _f$createdBy = Field(
    'createdBy',
    _$createdBy,
    key: r'created_by',
  );
  static String _$owner(Project v) => v.owner;
  static const Field<Project, String> _f$owner = Field('owner', _$owner);
  static DateTime _$createdAt(Project v) => v.createdAt;
  static const Field<Project, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(Project v) => v.updatedAt;
  static const Field<Project, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );

  @override
  final MappableFields<Project> fields = const {
    #id: _f$id,
    #organizationId: _f$organizationId,
    #name: _f$name,
    #description: _f$description,
    #tags: _f$tags,
    #profilePictureUrl: _f$profilePictureUrl,
    #coverPictureUrl: _f$coverPictureUrl,
    #createdBy: _f$createdBy,
    #owner: _f$owner,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static Project _instantiate(DecodingData data) {
    return Project(
      id: data.dec(_f$id),
      organizationId: data.dec(_f$organizationId),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      tags: data.dec(_f$tags),
      profilePictureUrl: data.dec(_f$profilePictureUrl),
      coverPictureUrl: data.dec(_f$coverPictureUrl),
      createdBy: data.dec(_f$createdBy),
      owner: data.dec(_f$owner),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Project fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Project>(map);
  }

  static Project fromJson(String json) {
    return ensureInitialized().decodeJson<Project>(json);
  }
}

mixin ProjectMappable {
  String toJson() {
    return ProjectMapper.ensureInitialized().encodeJson<Project>(
      this as Project,
    );
  }

  Map<String, dynamic> toMap() {
    return ProjectMapper.ensureInitialized().encodeMap<Project>(
      this as Project,
    );
  }

  ProjectCopyWith<Project, Project, Project> get copyWith =>
      _ProjectCopyWithImpl<Project, Project>(
        this as Project,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProjectMapper.ensureInitialized().stringifyValue(this as Project);
  }

  @override
  bool operator ==(Object other) {
    return ProjectMapper.ensureInitialized().equalsValue(
      this as Project,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectMapper.ensureInitialized().hashValue(this as Project);
  }
}

extension ProjectValueCopy<$R, $Out> on ObjectCopyWith<$R, Project, $Out> {
  ProjectCopyWith<$R, Project, $Out> get $asProject =>
      $base.as((v, t, t2) => _ProjectCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectCopyWith<$R, $In extends Project, $Out>
    implements ProjectCreateCopyWith<$R, $In, $Out> {
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  SanitizedMultilineStringCopyWith<
    $R,
    SanitizedMultilineString,
    SanitizedMultilineString
  >
  get description;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get tags;
  @override
  $R call({
    String? id,
    String? organizationId,
    SanitizedNonEmptyString? name,
    SanitizedMultilineString? description,
    List<String>? tags,
    String? profilePictureUrl,
    String? coverPictureUrl,
    String? createdBy,
    String? owner,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  ProjectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProjectCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Project, $Out>
    implements ProjectCopyWith<$R, Project, $Out> {
  _ProjectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Project> $mapper =
      ProjectMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  SanitizedMultilineStringCopyWith<
    $R,
    SanitizedMultilineString,
    SanitizedMultilineString
  >
  get description => ($value.description as SanitizedMultilineString).copyWith
      .$chain((v) => call(description: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get tags =>
      ListCopyWith(
        $value.tags,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(tags: v),
      );
  @override
  $R call({
    String? id,
    String? organizationId,
    SanitizedNonEmptyString? name,
    Object? description = $none,
    Object? tags = $none,
    Object? profilePictureUrl = $none,
    Object? coverPictureUrl = $none,
    String? createdBy,
    String? owner,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (organizationId != null) #organizationId: organizationId,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (tags != $none) #tags: tags,
      if (profilePictureUrl != $none) #profilePictureUrl: profilePictureUrl,
      if (coverPictureUrl != $none) #coverPictureUrl: coverPictureUrl,
      if (createdBy != null) #createdBy: createdBy,
      if (owner != null) #owner: owner,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  Project $make(CopyWithData data) => Project(
    id: data.get(#id, or: $value.id),
    organizationId: data.get(#organizationId, or: $value.organizationId),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    tags: data.get(#tags, or: $value.tags),
    profilePictureUrl: data.get(
      #profilePictureUrl,
      or: $value.profilePictureUrl,
    ),
    coverPictureUrl: data.get(#coverPictureUrl, or: $value.coverPictureUrl),
    createdBy: data.get(#createdBy, or: $value.createdBy),
    owner: data.get(#owner, or: $value.owner),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  ProjectCopyWith<$R2, Project, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProjectCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectCreateMapper extends ClassMapperBase<ProjectCreate> {
  ProjectCreateMapper._();

  static ProjectCreateMapper? _instance;
  static ProjectCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectCreateMapper._());
      ProjectUpdateMapper.ensureInitialized();
      ProjectMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      SanitizedMultilineStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectCreate';

  static String _$organizationId(ProjectCreate v) => v.organizationId;
  static const Field<ProjectCreate, String> _f$organizationId = Field(
    'organizationId',
    _$organizationId,
    key: r'organization_id',
  );
  static SanitizedNonEmptyString _$name(ProjectCreate v) => v.name;
  static const Field<ProjectCreate, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedMultilineString _$description(ProjectCreate v) =>
      v.description;
  static const Field<ProjectCreate, SanitizedMultilineString> _f$description =
      Field(
        'description',
        _$description,
        opt: true,
        hook: SanitizedMultilineStringHook(),
      );
  static List<String> _$tags(ProjectCreate v) => v.tags;
  static const Field<ProjectCreate, List<String>> _f$tags = Field(
    'tags',
    _$tags,
    opt: true,
  );
  static String? _$profilePictureUrl(ProjectCreate v) => v.profilePictureUrl;
  static const Field<ProjectCreate, String> _f$profilePictureUrl = Field(
    'profilePictureUrl',
    _$profilePictureUrl,
    key: r'profile_picture_url',
    opt: true,
  );
  static String? _$coverPictureUrl(ProjectCreate v) => v.coverPictureUrl;
  static const Field<ProjectCreate, String> _f$coverPictureUrl = Field(
    'coverPictureUrl',
    _$coverPictureUrl,
    key: r'cover_picture_url',
    opt: true,
  );

  @override
  final MappableFields<ProjectCreate> fields = const {
    #organizationId: _f$organizationId,
    #name: _f$name,
    #description: _f$description,
    #tags: _f$tags,
    #profilePictureUrl: _f$profilePictureUrl,
    #coverPictureUrl: _f$coverPictureUrl,
  };

  static ProjectCreate _instantiate(DecodingData data) {
    return ProjectCreate(
      organizationId: data.dec(_f$organizationId),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      tags: data.dec(_f$tags),
      profilePictureUrl: data.dec(_f$profilePictureUrl),
      coverPictureUrl: data.dec(_f$coverPictureUrl),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectCreate>(map);
  }

  static ProjectCreate fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectCreate>(json);
  }
}

mixin ProjectCreateMappable {
  String toJson() {
    return ProjectCreateMapper.ensureInitialized().encodeJson<ProjectCreate>(
      this as ProjectCreate,
    );
  }

  Map<String, dynamic> toMap() {
    return ProjectCreateMapper.ensureInitialized().encodeMap<ProjectCreate>(
      this as ProjectCreate,
    );
  }

  ProjectCreateCopyWith<ProjectCreate, ProjectCreate, ProjectCreate>
  get copyWith => _ProjectCreateCopyWithImpl<ProjectCreate, ProjectCreate>(
    this as ProjectCreate,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ProjectCreateMapper.ensureInitialized().stringifyValue(
      this as ProjectCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectCreateMapper.ensureInitialized().equalsValue(
      this as ProjectCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectCreateMapper.ensureInitialized().hashValue(
      this as ProjectCreate,
    );
  }
}

extension ProjectCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectCreate, $Out> {
  ProjectCreateCopyWith<$R, ProjectCreate, $Out> get $asProjectCreate =>
      $base.as((v, t, t2) => _ProjectCreateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectCreateCopyWith<$R, $In extends ProjectCreate, $Out>
    implements ProjectUpdateCopyWith<$R, $In, $Out> {
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  SanitizedMultilineStringCopyWith<
    $R,
    SanitizedMultilineString,
    SanitizedMultilineString
  >
  get description;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get tags;
  @override
  $R call({
    String? organizationId,
    SanitizedNonEmptyString? name,
    SanitizedMultilineString? description,
    List<String>? tags,
    String? profilePictureUrl,
    String? coverPictureUrl,
  });
  ProjectCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProjectCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectCreate, $Out>
    implements ProjectCreateCopyWith<$R, ProjectCreate, $Out> {
  _ProjectCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectCreate> $mapper =
      ProjectCreateMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  SanitizedMultilineStringCopyWith<
    $R,
    SanitizedMultilineString,
    SanitizedMultilineString
  >
  get description => ($value.description as SanitizedMultilineString).copyWith
      .$chain((v) => call(description: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get tags =>
      ListCopyWith(
        $value.tags,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(tags: v),
      );
  @override
  $R call({
    String? organizationId,
    SanitizedNonEmptyString? name,
    Object? description = $none,
    Object? tags = $none,
    Object? profilePictureUrl = $none,
    Object? coverPictureUrl = $none,
  }) => $apply(
    FieldCopyWithData({
      if (organizationId != null) #organizationId: organizationId,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (tags != $none) #tags: tags,
      if (profilePictureUrl != $none) #profilePictureUrl: profilePictureUrl,
      if (coverPictureUrl != $none) #coverPictureUrl: coverPictureUrl,
    }),
  );
  @override
  ProjectCreate $make(CopyWithData data) => ProjectCreate(
    organizationId: data.get(#organizationId, or: $value.organizationId),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    tags: data.get(#tags, or: $value.tags),
    profilePictureUrl: data.get(
      #profilePictureUrl,
      or: $value.profilePictureUrl,
    ),
    coverPictureUrl: data.get(#coverPictureUrl, or: $value.coverPictureUrl),
  );

  @override
  ProjectCreateCopyWith<$R2, ProjectCreate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProjectCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectUpdateMapper extends ClassMapperBase<ProjectUpdate> {
  ProjectUpdateMapper._();

  static ProjectUpdateMapper? _instance;
  static ProjectUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectUpdateMapper._());
      ProjectCreateMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      SanitizedMultilineStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectUpdate';

  static SanitizedNonEmptyString _$name(ProjectUpdate v) => v.name;
  static const Field<ProjectUpdate, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedMultilineString _$description(ProjectUpdate v) =>
      v.description;
  static const Field<ProjectUpdate, SanitizedMultilineString> _f$description =
      Field(
        'description',
        _$description,
        opt: true,
        hook: SanitizedMultilineStringHook(),
      );
  static List<String> _$tags(ProjectUpdate v) => v.tags;
  static const Field<ProjectUpdate, List<String>> _f$tags = Field(
    'tags',
    _$tags,
    opt: true,
  );
  static String? _$profilePictureUrl(ProjectUpdate v) => v.profilePictureUrl;
  static const Field<ProjectUpdate, String> _f$profilePictureUrl = Field(
    'profilePictureUrl',
    _$profilePictureUrl,
    key: r'profile_picture_url',
    opt: true,
  );
  static String? _$coverPictureUrl(ProjectUpdate v) => v.coverPictureUrl;
  static const Field<ProjectUpdate, String> _f$coverPictureUrl = Field(
    'coverPictureUrl',
    _$coverPictureUrl,
    key: r'cover_picture_url',
    opt: true,
  );

  @override
  final MappableFields<ProjectUpdate> fields = const {
    #name: _f$name,
    #description: _f$description,
    #tags: _f$tags,
    #profilePictureUrl: _f$profilePictureUrl,
    #coverPictureUrl: _f$coverPictureUrl,
  };

  static ProjectUpdate _instantiate(DecodingData data) {
    return ProjectUpdate(
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      tags: data.dec(_f$tags),
      profilePictureUrl: data.dec(_f$profilePictureUrl),
      coverPictureUrl: data.dec(_f$coverPictureUrl),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectUpdate>(map);
  }

  static ProjectUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectUpdate>(json);
  }
}

mixin ProjectUpdateMappable {
  String toJson() {
    return ProjectUpdateMapper.ensureInitialized().encodeJson<ProjectUpdate>(
      this as ProjectUpdate,
    );
  }

  Map<String, dynamic> toMap() {
    return ProjectUpdateMapper.ensureInitialized().encodeMap<ProjectUpdate>(
      this as ProjectUpdate,
    );
  }

  ProjectUpdateCopyWith<ProjectUpdate, ProjectUpdate, ProjectUpdate>
  get copyWith => _ProjectUpdateCopyWithImpl<ProjectUpdate, ProjectUpdate>(
    this as ProjectUpdate,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ProjectUpdateMapper.ensureInitialized().stringifyValue(
      this as ProjectUpdate,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectUpdateMapper.ensureInitialized().equalsValue(
      this as ProjectUpdate,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectUpdateMapper.ensureInitialized().hashValue(
      this as ProjectUpdate,
    );
  }
}

extension ProjectUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectUpdate, $Out> {
  ProjectUpdateCopyWith<$R, ProjectUpdate, $Out> get $asProjectUpdate =>
      $base.as((v, t, t2) => _ProjectUpdateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectUpdateCopyWith<$R, $In extends ProjectUpdate, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  SanitizedMultilineStringCopyWith<
    $R,
    SanitizedMultilineString,
    SanitizedMultilineString
  >
  get description;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get tags;
  $R call({
    SanitizedNonEmptyString? name,
    SanitizedMultilineString? description,
    List<String>? tags,
    String? profilePictureUrl,
    String? coverPictureUrl,
  });
  ProjectUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProjectUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectUpdate, $Out>
    implements ProjectUpdateCopyWith<$R, ProjectUpdate, $Out> {
  _ProjectUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectUpdate> $mapper =
      ProjectUpdateMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  SanitizedMultilineStringCopyWith<
    $R,
    SanitizedMultilineString,
    SanitizedMultilineString
  >
  get description => ($value.description as SanitizedMultilineString).copyWith
      .$chain((v) => call(description: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>?> get tags =>
      ListCopyWith(
        $value.tags,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(tags: v),
      );
  @override
  $R call({
    SanitizedNonEmptyString? name,
    Object? description = $none,
    Object? tags = $none,
    Object? profilePictureUrl = $none,
    Object? coverPictureUrl = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (tags != $none) #tags: tags,
      if (profilePictureUrl != $none) #profilePictureUrl: profilePictureUrl,
      if (coverPictureUrl != $none) #coverPictureUrl: coverPictureUrl,
    }),
  );
  @override
  ProjectUpdate $make(CopyWithData data) => ProjectUpdate(
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    tags: data.get(#tags, or: $value.tags),
    profilePictureUrl: data.get(
      #profilePictureUrl,
      or: $value.profilePictureUrl,
    ),
    coverPictureUrl: data.get(#coverPictureUrl, or: $value.coverPictureUrl),
  );

  @override
  ProjectUpdateCopyWith<$R2, ProjectUpdate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProjectUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UserUpdateMapper extends ClassMapperBase<UserUpdate> {
  UserUpdateMapper._();

  static UserUpdateMapper? _instance;
  static UserUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserUpdateMapper._());
      UserBaseMapper.ensureInitialized();
      UserCreateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserUpdate';

  static String _$name(UserUpdate v) => v.name;
  static const Field<UserUpdate, String> _f$name = Field('name', _$name);
  static String _$email(UserUpdate v) => v.email;
  static const Field<UserUpdate, String> _f$email = Field('email', _$email);
  static String _$password(UserUpdate v) => v.password;
  static const Field<UserUpdate, String> _f$password = Field(
    'password',
    _$password,
  );
  static Uri? _$pictureUrl(UserUpdate v) => v.pictureUrl;
  static const Field<UserUpdate, Uri> _f$pictureUrl = Field(
    'pictureUrl',
    _$pictureUrl,
    key: r'picture_url',
    opt: true,
  );
  static String? _$googleId(UserUpdate v) => v.googleId;
  static const Field<UserUpdate, String> _f$googleId = Field(
    'googleId',
    _$googleId,
    key: r'google_id',
    opt: true,
  );
  static String? _$googleName(UserUpdate v) => v.googleName;
  static const Field<UserUpdate, String> _f$googleName = Field(
    'googleName',
    _$googleName,
    key: r'google_name',
    opt: true,
  );
  static String? _$googleUsername(UserUpdate v) => v.googleUsername;
  static const Field<UserUpdate, String> _f$googleUsername = Field(
    'googleUsername',
    _$googleUsername,
    key: r'google_username',
    opt: true,
  );
  static String? _$googleEmail(UserUpdate v) => v.googleEmail;
  static const Field<UserUpdate, String> _f$googleEmail = Field(
    'googleEmail',
    _$googleEmail,
    key: r'google_email',
    opt: true,
  );
  static Uri? _$googlePictureUrl(UserUpdate v) => v.googlePictureUrl;
  static const Field<UserUpdate, Uri> _f$googlePictureUrl = Field(
    'googlePictureUrl',
    _$googlePictureUrl,
    key: r'google_picture_url',
    opt: true,
  );
  static DateTime? _$googleUpdatedAt(UserUpdate v) => v.googleUpdatedAt;
  static const Field<UserUpdate, DateTime> _f$googleUpdatedAt = Field(
    'googleUpdatedAt',
    _$googleUpdatedAt,
    key: r'google_updated_at',
    opt: true,
  );
  static String? _$githubId(UserUpdate v) => v.githubId;
  static const Field<UserUpdate, String> _f$githubId = Field(
    'githubId',
    _$githubId,
    key: r'github_id',
    opt: true,
  );
  static String? _$githubName(UserUpdate v) => v.githubName;
  static const Field<UserUpdate, String> _f$githubName = Field(
    'githubName',
    _$githubName,
    key: r'github_name',
    opt: true,
  );
  static String? _$githubUsername(UserUpdate v) => v.githubUsername;
  static const Field<UserUpdate, String> _f$githubUsername = Field(
    'githubUsername',
    _$githubUsername,
    key: r'github_username',
    opt: true,
  );
  static String? _$githubEmail(UserUpdate v) => v.githubEmail;
  static const Field<UserUpdate, String> _f$githubEmail = Field(
    'githubEmail',
    _$githubEmail,
    key: r'github_email',
    opt: true,
  );
  static Uri? _$githubPictureUrl(UserUpdate v) => v.githubPictureUrl;
  static const Field<UserUpdate, Uri> _f$githubPictureUrl = Field(
    'githubPictureUrl',
    _$githubPictureUrl,
    key: r'github_picture_url',
    opt: true,
  );
  static DateTime? _$githubUpdatedAt(UserUpdate v) => v.githubUpdatedAt;
  static const Field<UserUpdate, DateTime> _f$githubUpdatedAt = Field(
    'githubUpdatedAt',
    _$githubUpdatedAt,
    key: r'github_updated_at',
    opt: true,
  );

  @override
  final MappableFields<UserUpdate> fields = const {
    #name: _f$name,
    #email: _f$email,
    #password: _f$password,
    #pictureUrl: _f$pictureUrl,
    #googleId: _f$googleId,
    #googleName: _f$googleName,
    #googleUsername: _f$googleUsername,
    #googleEmail: _f$googleEmail,
    #googlePictureUrl: _f$googlePictureUrl,
    #googleUpdatedAt: _f$googleUpdatedAt,
    #githubId: _f$githubId,
    #githubName: _f$githubName,
    #githubUsername: _f$githubUsername,
    #githubEmail: _f$githubEmail,
    #githubPictureUrl: _f$githubPictureUrl,
    #githubUpdatedAt: _f$githubUpdatedAt,
  };

  static UserUpdate _instantiate(DecodingData data) {
    return UserUpdate(
      name: data.dec(_f$name),
      email: data.dec(_f$email),
      password: data.dec(_f$password),
      pictureUrl: data.dec(_f$pictureUrl),
      googleId: data.dec(_f$googleId),
      googleName: data.dec(_f$googleName),
      googleUsername: data.dec(_f$googleUsername),
      googleEmail: data.dec(_f$googleEmail),
      googlePictureUrl: data.dec(_f$googlePictureUrl),
      googleUpdatedAt: data.dec(_f$googleUpdatedAt),
      githubId: data.dec(_f$githubId),
      githubName: data.dec(_f$githubName),
      githubUsername: data.dec(_f$githubUsername),
      githubEmail: data.dec(_f$githubEmail),
      githubPictureUrl: data.dec(_f$githubPictureUrl),
      githubUpdatedAt: data.dec(_f$githubUpdatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserUpdate>(map);
  }

  static UserUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<UserUpdate>(json);
  }
}

mixin UserUpdateMappable {
  String toJson() {
    return UserUpdateMapper.ensureInitialized().encodeJson<UserUpdate>(
      this as UserUpdate,
    );
  }

  Map<String, dynamic> toMap() {
    return UserUpdateMapper.ensureInitialized().encodeMap<UserUpdate>(
      this as UserUpdate,
    );
  }

  UserUpdateCopyWith<UserUpdate, UserUpdate, UserUpdate> get copyWith =>
      _UserUpdateCopyWithImpl<UserUpdate, UserUpdate>(
        this as UserUpdate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserUpdateMapper.ensureInitialized().stringifyValue(
      this as UserUpdate,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserUpdateMapper.ensureInitialized().equalsValue(
      this as UserUpdate,
      other,
    );
  }

  @override
  int get hashCode {
    return UserUpdateMapper.ensureInitialized().hashValue(this as UserUpdate);
  }
}

extension UserUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserUpdate, $Out> {
  UserUpdateCopyWith<$R, UserUpdate, $Out> get $asUserUpdate =>
      $base.as((v, t, t2) => _UserUpdateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserUpdateCopyWith<$R, $In extends UserUpdate, $Out>
    implements UserBaseCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? name,
    String? email,
    String? password,
    Uri? pictureUrl,
    String? googleId,
    String? googleName,
    String? googleUsername,
    String? googleEmail,
    Uri? googlePictureUrl,
    DateTime? googleUpdatedAt,
    String? githubId,
    String? githubName,
    String? githubUsername,
    String? githubEmail,
    Uri? githubPictureUrl,
    DateTime? githubUpdatedAt,
  });
  UserUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserUpdate, $Out>
    implements UserUpdateCopyWith<$R, UserUpdate, $Out> {
  _UserUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserUpdate> $mapper =
      UserUpdateMapper.ensureInitialized();
  @override
  $R call({
    String? name,
    String? email,
    String? password,
    Object? pictureUrl = $none,
    Object? googleId = $none,
    Object? googleName = $none,
    Object? googleUsername = $none,
    Object? googleEmail = $none,
    Object? googlePictureUrl = $none,
    Object? googleUpdatedAt = $none,
    Object? githubId = $none,
    Object? githubName = $none,
    Object? githubUsername = $none,
    Object? githubEmail = $none,
    Object? githubPictureUrl = $none,
    Object? githubUpdatedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (email != null) #email: email,
      if (password != null) #password: password,
      if (pictureUrl != $none) #pictureUrl: pictureUrl,
      if (googleId != $none) #googleId: googleId,
      if (googleName != $none) #googleName: googleName,
      if (googleUsername != $none) #googleUsername: googleUsername,
      if (googleEmail != $none) #googleEmail: googleEmail,
      if (googlePictureUrl != $none) #googlePictureUrl: googlePictureUrl,
      if (googleUpdatedAt != $none) #googleUpdatedAt: googleUpdatedAt,
      if (githubId != $none) #githubId: githubId,
      if (githubName != $none) #githubName: githubName,
      if (githubUsername != $none) #githubUsername: githubUsername,
      if (githubEmail != $none) #githubEmail: githubEmail,
      if (githubPictureUrl != $none) #githubPictureUrl: githubPictureUrl,
      if (githubUpdatedAt != $none) #githubUpdatedAt: githubUpdatedAt,
    }),
  );
  @override
  UserUpdate $make(CopyWithData data) => UserUpdate(
    name: data.get(#name, or: $value.name),
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
    pictureUrl: data.get(#pictureUrl, or: $value.pictureUrl),
    googleId: data.get(#googleId, or: $value.googleId),
    googleName: data.get(#googleName, or: $value.googleName),
    googleUsername: data.get(#googleUsername, or: $value.googleUsername),
    googleEmail: data.get(#googleEmail, or: $value.googleEmail),
    googlePictureUrl: data.get(#googlePictureUrl, or: $value.googlePictureUrl),
    googleUpdatedAt: data.get(#googleUpdatedAt, or: $value.googleUpdatedAt),
    githubId: data.get(#githubId, or: $value.githubId),
    githubName: data.get(#githubName, or: $value.githubName),
    githubUsername: data.get(#githubUsername, or: $value.githubUsername),
    githubEmail: data.get(#githubEmail, or: $value.githubEmail),
    githubPictureUrl: data.get(#githubPictureUrl, or: $value.githubPictureUrl),
    githubUpdatedAt: data.get(#githubUpdatedAt, or: $value.githubUpdatedAt),
  );

  @override
  UserUpdateCopyWith<$R2, UserUpdate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UserCreateMapper extends ClassMapperBase<UserCreate> {
  UserCreateMapper._();

  static UserCreateMapper? _instance;
  static UserCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserCreateMapper._());
      UserUpdateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserCreate';

  static String _$id(UserCreate v) => v.id;
  static const Field<UserCreate, String> _f$id = Field('id', _$id);
  static String _$name(UserCreate v) => v.name;
  static const Field<UserCreate, String> _f$name = Field('name', _$name);
  static String _$email(UserCreate v) => v.email;
  static const Field<UserCreate, String> _f$email = Field('email', _$email);
  static String _$password(UserCreate v) => v.password;
  static const Field<UserCreate, String> _f$password = Field(
    'password',
    _$password,
  );
  static Uri? _$pictureUrl(UserCreate v) => v.pictureUrl;
  static const Field<UserCreate, Uri> _f$pictureUrl = Field(
    'pictureUrl',
    _$pictureUrl,
    key: r'picture_url',
    opt: true,
  );
  static String? _$googleId(UserCreate v) => v.googleId;
  static const Field<UserCreate, String> _f$googleId = Field(
    'googleId',
    _$googleId,
    key: r'google_id',
    opt: true,
  );
  static String? _$googleName(UserCreate v) => v.googleName;
  static const Field<UserCreate, String> _f$googleName = Field(
    'googleName',
    _$googleName,
    key: r'google_name',
    opt: true,
  );
  static String? _$googleUsername(UserCreate v) => v.googleUsername;
  static const Field<UserCreate, String> _f$googleUsername = Field(
    'googleUsername',
    _$googleUsername,
    key: r'google_username',
    opt: true,
  );
  static String? _$googleEmail(UserCreate v) => v.googleEmail;
  static const Field<UserCreate, String> _f$googleEmail = Field(
    'googleEmail',
    _$googleEmail,
    key: r'google_email',
    opt: true,
  );
  static Uri? _$googlePictureUrl(UserCreate v) => v.googlePictureUrl;
  static const Field<UserCreate, Uri> _f$googlePictureUrl = Field(
    'googlePictureUrl',
    _$googlePictureUrl,
    key: r'google_picture_url',
    opt: true,
  );
  static DateTime? _$googleUpdatedAt(UserCreate v) => v.googleUpdatedAt;
  static const Field<UserCreate, DateTime> _f$googleUpdatedAt = Field(
    'googleUpdatedAt',
    _$googleUpdatedAt,
    key: r'google_updated_at',
    opt: true,
  );
  static String? _$githubId(UserCreate v) => v.githubId;
  static const Field<UserCreate, String> _f$githubId = Field(
    'githubId',
    _$githubId,
    key: r'github_id',
    opt: true,
  );
  static String? _$githubName(UserCreate v) => v.githubName;
  static const Field<UserCreate, String> _f$githubName = Field(
    'githubName',
    _$githubName,
    key: r'github_name',
    opt: true,
  );
  static String? _$githubUsername(UserCreate v) => v.githubUsername;
  static const Field<UserCreate, String> _f$githubUsername = Field(
    'githubUsername',
    _$githubUsername,
    key: r'github_username',
    opt: true,
  );
  static String? _$githubEmail(UserCreate v) => v.githubEmail;
  static const Field<UserCreate, String> _f$githubEmail = Field(
    'githubEmail',
    _$githubEmail,
    key: r'github_email',
    opt: true,
  );
  static Uri? _$githubPictureUrl(UserCreate v) => v.githubPictureUrl;
  static const Field<UserCreate, Uri> _f$githubPictureUrl = Field(
    'githubPictureUrl',
    _$githubPictureUrl,
    key: r'github_picture_url',
    opt: true,
  );
  static DateTime? _$githubUpdatedAt(UserCreate v) => v.githubUpdatedAt;
  static const Field<UserCreate, DateTime> _f$githubUpdatedAt = Field(
    'githubUpdatedAt',
    _$githubUpdatedAt,
    key: r'github_updated_at',
    opt: true,
  );

  @override
  final MappableFields<UserCreate> fields = const {
    #id: _f$id,
    #name: _f$name,
    #email: _f$email,
    #password: _f$password,
    #pictureUrl: _f$pictureUrl,
    #googleId: _f$googleId,
    #googleName: _f$googleName,
    #googleUsername: _f$googleUsername,
    #googleEmail: _f$googleEmail,
    #googlePictureUrl: _f$googlePictureUrl,
    #googleUpdatedAt: _f$googleUpdatedAt,
    #githubId: _f$githubId,
    #githubName: _f$githubName,
    #githubUsername: _f$githubUsername,
    #githubEmail: _f$githubEmail,
    #githubPictureUrl: _f$githubPictureUrl,
    #githubUpdatedAt: _f$githubUpdatedAt,
  };

  static UserCreate _instantiate(DecodingData data) {
    return UserCreate(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      email: data.dec(_f$email),
      password: data.dec(_f$password),
      pictureUrl: data.dec(_f$pictureUrl),
      googleId: data.dec(_f$googleId),
      googleName: data.dec(_f$googleName),
      googleUsername: data.dec(_f$googleUsername),
      googleEmail: data.dec(_f$googleEmail),
      googlePictureUrl: data.dec(_f$googlePictureUrl),
      googleUpdatedAt: data.dec(_f$googleUpdatedAt),
      githubId: data.dec(_f$githubId),
      githubName: data.dec(_f$githubName),
      githubUsername: data.dec(_f$githubUsername),
      githubEmail: data.dec(_f$githubEmail),
      githubPictureUrl: data.dec(_f$githubPictureUrl),
      githubUpdatedAt: data.dec(_f$githubUpdatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserCreate>(map);
  }

  static UserCreate fromJson(String json) {
    return ensureInitialized().decodeJson<UserCreate>(json);
  }
}

mixin UserCreateMappable {
  String toJson() {
    return UserCreateMapper.ensureInitialized().encodeJson<UserCreate>(
      this as UserCreate,
    );
  }

  Map<String, dynamic> toMap() {
    return UserCreateMapper.ensureInitialized().encodeMap<UserCreate>(
      this as UserCreate,
    );
  }

  UserCreateCopyWith<UserCreate, UserCreate, UserCreate> get copyWith =>
      _UserCreateCopyWithImpl<UserCreate, UserCreate>(
        this as UserCreate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserCreateMapper.ensureInitialized().stringifyValue(
      this as UserCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserCreateMapper.ensureInitialized().equalsValue(
      this as UserCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return UserCreateMapper.ensureInitialized().hashValue(this as UserCreate);
  }
}

extension UserCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserCreate, $Out> {
  UserCreateCopyWith<$R, UserCreate, $Out> get $asUserCreate =>
      $base.as((v, t, t2) => _UserCreateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserCreateCopyWith<$R, $In extends UserCreate, $Out>
    implements UserUpdateCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    String? name,
    String? email,
    String? password,
    Uri? pictureUrl,
    String? googleId,
    String? googleName,
    String? googleUsername,
    String? googleEmail,
    Uri? googlePictureUrl,
    DateTime? googleUpdatedAt,
    String? githubId,
    String? githubName,
    String? githubUsername,
    String? githubEmail,
    Uri? githubPictureUrl,
    DateTime? githubUpdatedAt,
  });
  UserCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserCreate, $Out>
    implements UserCreateCopyWith<$R, UserCreate, $Out> {
  _UserCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserCreate> $mapper =
      UserCreateMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? name,
    String? email,
    String? password,
    Object? pictureUrl = $none,
    Object? googleId = $none,
    Object? googleName = $none,
    Object? googleUsername = $none,
    Object? googleEmail = $none,
    Object? googlePictureUrl = $none,
    Object? googleUpdatedAt = $none,
    Object? githubId = $none,
    Object? githubName = $none,
    Object? githubUsername = $none,
    Object? githubEmail = $none,
    Object? githubPictureUrl = $none,
    Object? githubUpdatedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (email != null) #email: email,
      if (password != null) #password: password,
      if (pictureUrl != $none) #pictureUrl: pictureUrl,
      if (googleId != $none) #googleId: googleId,
      if (googleName != $none) #googleName: googleName,
      if (googleUsername != $none) #googleUsername: googleUsername,
      if (googleEmail != $none) #googleEmail: googleEmail,
      if (googlePictureUrl != $none) #googlePictureUrl: googlePictureUrl,
      if (googleUpdatedAt != $none) #googleUpdatedAt: googleUpdatedAt,
      if (githubId != $none) #githubId: githubId,
      if (githubName != $none) #githubName: githubName,
      if (githubUsername != $none) #githubUsername: githubUsername,
      if (githubEmail != $none) #githubEmail: githubEmail,
      if (githubPictureUrl != $none) #githubPictureUrl: githubPictureUrl,
      if (githubUpdatedAt != $none) #githubUpdatedAt: githubUpdatedAt,
    }),
  );
  @override
  UserCreate $make(CopyWithData data) => UserCreate(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
    pictureUrl: data.get(#pictureUrl, or: $value.pictureUrl),
    googleId: data.get(#googleId, or: $value.googleId),
    googleName: data.get(#googleName, or: $value.googleName),
    googleUsername: data.get(#googleUsername, or: $value.googleUsername),
    googleEmail: data.get(#googleEmail, or: $value.googleEmail),
    googlePictureUrl: data.get(#googlePictureUrl, or: $value.googlePictureUrl),
    googleUpdatedAt: data.get(#googleUpdatedAt, or: $value.googleUpdatedAt),
    githubId: data.get(#githubId, or: $value.githubId),
    githubName: data.get(#githubName, or: $value.githubName),
    githubUsername: data.get(#githubUsername, or: $value.githubUsername),
    githubEmail: data.get(#githubEmail, or: $value.githubEmail),
    githubPictureUrl: data.get(#githubPictureUrl, or: $value.githubPictureUrl),
    githubUpdatedAt: data.get(#githubUpdatedAt, or: $value.githubUpdatedAt),
  );

  @override
  UserCreateCopyWith<$R2, UserCreate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UserAuthMapper extends ClassMapperBase<UserAuth> {
  UserAuthMapper._();

  static UserAuthMapper? _instance;
  static UserAuthMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserAuthMapper._());
      UserMapper.ensureInitialized();
      UserReadMapper.ensureInitialized();
      OrgMemberMapper.ensureInitialized();
      ProjectMemberMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserAuth';

  static String _$id(UserAuth v) => v.id;
  static const Field<UserAuth, String> _f$id = Field('id', _$id);
  static String _$name(UserAuth v) => v.name;
  static const Field<UserAuth, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static String _$email(UserAuth v) => v.email;
  static const Field<UserAuth, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
    def: "",
  );
  static Uri? _$pictureUrl(UserAuth v) => v.pictureUrl;
  static const Field<UserAuth, Uri> _f$pictureUrl = Field(
    'pictureUrl',
    _$pictureUrl,
    key: r'picture_url',
    opt: true,
  );
  static String? _$googleId(UserAuth v) => v.googleId;
  static const Field<UserAuth, String> _f$googleId = Field(
    'googleId',
    _$googleId,
    key: r'google_id',
    opt: true,
  );
  static String? _$googleName(UserAuth v) => v.googleName;
  static const Field<UserAuth, String> _f$googleName = Field(
    'googleName',
    _$googleName,
    key: r'google_name',
    opt: true,
  );
  static String? _$googleUsername(UserAuth v) => v.googleUsername;
  static const Field<UserAuth, String> _f$googleUsername = Field(
    'googleUsername',
    _$googleUsername,
    key: r'google_username',
    opt: true,
  );
  static String? _$googleEmail(UserAuth v) => v.googleEmail;
  static const Field<UserAuth, String> _f$googleEmail = Field(
    'googleEmail',
    _$googleEmail,
    key: r'google_email',
    opt: true,
  );
  static Uri? _$googlePictureUrl(UserAuth v) => v.googlePictureUrl;
  static const Field<UserAuth, Uri> _f$googlePictureUrl = Field(
    'googlePictureUrl',
    _$googlePictureUrl,
    key: r'google_picture_url',
    opt: true,
  );
  static DateTime? _$googleUpdatedAt(UserAuth v) => v.googleUpdatedAt;
  static const Field<UserAuth, DateTime> _f$googleUpdatedAt = Field(
    'googleUpdatedAt',
    _$googleUpdatedAt,
    key: r'google_updated_at',
    opt: true,
  );
  static String? _$githubId(UserAuth v) => v.githubId;
  static const Field<UserAuth, String> _f$githubId = Field(
    'githubId',
    _$githubId,
    key: r'github_id',
    opt: true,
  );
  static String? _$githubName(UserAuth v) => v.githubName;
  static const Field<UserAuth, String> _f$githubName = Field(
    'githubName',
    _$githubName,
    key: r'github_name',
    opt: true,
  );
  static String? _$githubUsername(UserAuth v) => v.githubUsername;
  static const Field<UserAuth, String> _f$githubUsername = Field(
    'githubUsername',
    _$githubUsername,
    key: r'github_username',
    opt: true,
  );
  static String? _$githubEmail(UserAuth v) => v.githubEmail;
  static const Field<UserAuth, String> _f$githubEmail = Field(
    'githubEmail',
    _$githubEmail,
    key: r'github_email',
    opt: true,
  );
  static Uri? _$githubPictureUrl(UserAuth v) => v.githubPictureUrl;
  static const Field<UserAuth, Uri> _f$githubPictureUrl = Field(
    'githubPictureUrl',
    _$githubPictureUrl,
    key: r'github_picture_url',
    opt: true,
  );
  static DateTime? _$githubUpdatedAt(UserAuth v) => v.githubUpdatedAt;
  static const Field<UserAuth, DateTime> _f$githubUpdatedAt = Field(
    'githubUpdatedAt',
    _$githubUpdatedAt,
    key: r'github_updated_at',
    opt: true,
  );
  static bool _$emailVerified(UserAuth v) => v.emailVerified;
  static const Field<UserAuth, bool> _f$emailVerified = Field(
    'emailVerified',
    _$emailVerified,
    key: r'email_verified',
  );
  static String? _$passwordHash(UserAuth v) => v.passwordHash;
  static const Field<UserAuth, String> _f$passwordHash = Field(
    'passwordHash',
    _$passwordHash,
    key: r'password_hash',
    opt: true,
  );
  static int _$refreshCounter(UserAuth v) => v.refreshCounter;
  static const Field<UserAuth, int> _f$refreshCounter = Field(
    'refreshCounter',
    _$refreshCounter,
    key: r'refresh_counter',
    opt: true,
    def: 0,
  );
  static String _$preferredName(UserAuth v) => v.preferredName;
  static const Field<UserAuth, String> _f$preferredName = Field(
    'preferredName',
    _$preferredName,
    key: r'preferred_name',
  );
  static String _$preferredEmail(UserAuth v) => v.preferredEmail;
  static const Field<UserAuth, String> _f$preferredEmail = Field(
    'preferredEmail',
    _$preferredEmail,
    key: r'preferred_email',
  );
  static Uri? _$preferredPictureUrl(UserAuth v) => v.preferredPictureUrl;
  static const Field<UserAuth, Uri> _f$preferredPictureUrl = Field(
    'preferredPictureUrl',
    _$preferredPictureUrl,
    key: r'preferred_picture_url',
    opt: true,
  );
  static String? _$preferredUsername(UserAuth v) => v.preferredUsername;
  static const Field<UserAuth, String> _f$preferredUsername = Field(
    'preferredUsername',
    _$preferredUsername,
    key: r'preferred_username',
    opt: true,
  );
  static DateTime _$createdAt(UserAuth v) => v.createdAt;
  static const Field<UserAuth, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(UserAuth v) => v.updatedAt;
  static const Field<UserAuth, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static List<OrgMember> _$orgMemberships(UserAuth v) => v.orgMemberships;
  static const Field<UserAuth, List<OrgMember>> _f$orgMemberships = Field(
    'orgMemberships',
    _$orgMemberships,
    key: r'org_memberships',
  );
  static List<ProjectMember> _$projMemberships(UserAuth v) => v.projMemberships;
  static const Field<UserAuth, List<ProjectMember>> _f$projMemberships = Field(
    'projMemberships',
    _$projMemberships,
    key: r'proj_memberships',
  );

  @override
  final MappableFields<UserAuth> fields = const {
    #id: _f$id,
    #name: _f$name,
    #email: _f$email,
    #pictureUrl: _f$pictureUrl,
    #googleId: _f$googleId,
    #googleName: _f$googleName,
    #googleUsername: _f$googleUsername,
    #googleEmail: _f$googleEmail,
    #googlePictureUrl: _f$googlePictureUrl,
    #googleUpdatedAt: _f$googleUpdatedAt,
    #githubId: _f$githubId,
    #githubName: _f$githubName,
    #githubUsername: _f$githubUsername,
    #githubEmail: _f$githubEmail,
    #githubPictureUrl: _f$githubPictureUrl,
    #githubUpdatedAt: _f$githubUpdatedAt,
    #emailVerified: _f$emailVerified,
    #passwordHash: _f$passwordHash,
    #refreshCounter: _f$refreshCounter,
    #preferredName: _f$preferredName,
    #preferredEmail: _f$preferredEmail,
    #preferredPictureUrl: _f$preferredPictureUrl,
    #preferredUsername: _f$preferredUsername,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #orgMemberships: _f$orgMemberships,
    #projMemberships: _f$projMemberships,
  };

  static UserAuth _instantiate(DecodingData data) {
    return UserAuth(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      email: data.dec(_f$email),
      pictureUrl: data.dec(_f$pictureUrl),
      googleId: data.dec(_f$googleId),
      googleName: data.dec(_f$googleName),
      googleUsername: data.dec(_f$googleUsername),
      googleEmail: data.dec(_f$googleEmail),
      googlePictureUrl: data.dec(_f$googlePictureUrl),
      googleUpdatedAt: data.dec(_f$googleUpdatedAt),
      githubId: data.dec(_f$githubId),
      githubName: data.dec(_f$githubName),
      githubUsername: data.dec(_f$githubUsername),
      githubEmail: data.dec(_f$githubEmail),
      githubPictureUrl: data.dec(_f$githubPictureUrl),
      githubUpdatedAt: data.dec(_f$githubUpdatedAt),
      emailVerified: data.dec(_f$emailVerified),
      passwordHash: data.dec(_f$passwordHash),
      refreshCounter: data.dec(_f$refreshCounter),
      preferredName: data.dec(_f$preferredName),
      preferredEmail: data.dec(_f$preferredEmail),
      preferredPictureUrl: data.dec(_f$preferredPictureUrl),
      preferredUsername: data.dec(_f$preferredUsername),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      orgMemberships: data.dec(_f$orgMemberships),
      projMemberships: data.dec(_f$projMemberships),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserAuth fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserAuth>(map);
  }

  static UserAuth fromJson(String json) {
    return ensureInitialized().decodeJson<UserAuth>(json);
  }
}

mixin UserAuthMappable {
  String toJson() {
    return UserAuthMapper.ensureInitialized().encodeJson<UserAuth>(
      this as UserAuth,
    );
  }

  Map<String, dynamic> toMap() {
    return UserAuthMapper.ensureInitialized().encodeMap<UserAuth>(
      this as UserAuth,
    );
  }

  UserAuthCopyWith<UserAuth, UserAuth, UserAuth> get copyWith =>
      _UserAuthCopyWithImpl<UserAuth, UserAuth>(
        this as UserAuth,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserAuthMapper.ensureInitialized().stringifyValue(this as UserAuth);
  }

  @override
  bool operator ==(Object other) {
    return UserAuthMapper.ensureInitialized().equalsValue(
      this as UserAuth,
      other,
    );
  }

  @override
  int get hashCode {
    return UserAuthMapper.ensureInitialized().hashValue(this as UserAuth);
  }
}

extension UserAuthValueCopy<$R, $Out> on ObjectCopyWith<$R, UserAuth, $Out> {
  UserAuthCopyWith<$R, UserAuth, $Out> get $asUserAuth =>
      $base.as((v, t, t2) => _UserAuthCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserAuthCopyWith<$R, $In extends UserAuth, $Out>
    implements UserCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, OrgMember, OrgMemberCopyWith<$R, OrgMember, OrgMember>>
  get orgMemberships;
  ListCopyWith<
    $R,
    ProjectMember,
    ProjectMemberCopyWith<$R, ProjectMember, ProjectMember>
  >
  get projMemberships;
  @override
  $R call({
    String? id,
    String? name,
    String? email,
    Uri? pictureUrl,
    String? googleId,
    String? googleName,
    String? googleUsername,
    String? googleEmail,
    Uri? googlePictureUrl,
    DateTime? googleUpdatedAt,
    String? githubId,
    String? githubName,
    String? githubUsername,
    String? githubEmail,
    Uri? githubPictureUrl,
    DateTime? githubUpdatedAt,
    bool? emailVerified,
    String? passwordHash,
    int? refreshCounter,
    String? preferredName,
    String? preferredEmail,
    Uri? preferredPictureUrl,
    String? preferredUsername,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<OrgMember>? orgMemberships,
    List<ProjectMember>? projMemberships,
  });
  UserAuthCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserAuthCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserAuth, $Out>
    implements UserAuthCopyWith<$R, UserAuth, $Out> {
  _UserAuthCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserAuth> $mapper =
      UserAuthMapper.ensureInitialized();
  @override
  ListCopyWith<$R, OrgMember, OrgMemberCopyWith<$R, OrgMember, OrgMember>>
  get orgMemberships => ListCopyWith(
    $value.orgMemberships,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(orgMemberships: v),
  );
  @override
  ListCopyWith<
    $R,
    ProjectMember,
    ProjectMemberCopyWith<$R, ProjectMember, ProjectMember>
  >
  get projMemberships => ListCopyWith(
    $value.projMemberships,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(projMemberships: v),
  );
  @override
  $R call({
    String? id,
    String? name,
    String? email,
    Object? pictureUrl = $none,
    Object? googleId = $none,
    Object? googleName = $none,
    Object? googleUsername = $none,
    Object? googleEmail = $none,
    Object? googlePictureUrl = $none,
    Object? googleUpdatedAt = $none,
    Object? githubId = $none,
    Object? githubName = $none,
    Object? githubUsername = $none,
    Object? githubEmail = $none,
    Object? githubPictureUrl = $none,
    Object? githubUpdatedAt = $none,
    bool? emailVerified,
    Object? passwordHash = $none,
    int? refreshCounter,
    String? preferredName,
    String? preferredEmail,
    Object? preferredPictureUrl = $none,
    Object? preferredUsername = $none,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<OrgMember>? orgMemberships,
    List<ProjectMember>? projMemberships,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (email != null) #email: email,
      if (pictureUrl != $none) #pictureUrl: pictureUrl,
      if (googleId != $none) #googleId: googleId,
      if (googleName != $none) #googleName: googleName,
      if (googleUsername != $none) #googleUsername: googleUsername,
      if (googleEmail != $none) #googleEmail: googleEmail,
      if (googlePictureUrl != $none) #googlePictureUrl: googlePictureUrl,
      if (googleUpdatedAt != $none) #googleUpdatedAt: googleUpdatedAt,
      if (githubId != $none) #githubId: githubId,
      if (githubName != $none) #githubName: githubName,
      if (githubUsername != $none) #githubUsername: githubUsername,
      if (githubEmail != $none) #githubEmail: githubEmail,
      if (githubPictureUrl != $none) #githubPictureUrl: githubPictureUrl,
      if (githubUpdatedAt != $none) #githubUpdatedAt: githubUpdatedAt,
      if (emailVerified != null) #emailVerified: emailVerified,
      if (passwordHash != $none) #passwordHash: passwordHash,
      if (refreshCounter != null) #refreshCounter: refreshCounter,
      if (preferredName != null) #preferredName: preferredName,
      if (preferredEmail != null) #preferredEmail: preferredEmail,
      if (preferredPictureUrl != $none)
        #preferredPictureUrl: preferredPictureUrl,
      if (preferredUsername != $none) #preferredUsername: preferredUsername,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (orgMemberships != null) #orgMemberships: orgMemberships,
      if (projMemberships != null) #projMemberships: projMemberships,
    }),
  );
  @override
  UserAuth $make(CopyWithData data) => UserAuth(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    email: data.get(#email, or: $value.email),
    pictureUrl: data.get(#pictureUrl, or: $value.pictureUrl),
    googleId: data.get(#googleId, or: $value.googleId),
    googleName: data.get(#googleName, or: $value.googleName),
    googleUsername: data.get(#googleUsername, or: $value.googleUsername),
    googleEmail: data.get(#googleEmail, or: $value.googleEmail),
    googlePictureUrl: data.get(#googlePictureUrl, or: $value.googlePictureUrl),
    googleUpdatedAt: data.get(#googleUpdatedAt, or: $value.googleUpdatedAt),
    githubId: data.get(#githubId, or: $value.githubId),
    githubName: data.get(#githubName, or: $value.githubName),
    githubUsername: data.get(#githubUsername, or: $value.githubUsername),
    githubEmail: data.get(#githubEmail, or: $value.githubEmail),
    githubPictureUrl: data.get(#githubPictureUrl, or: $value.githubPictureUrl),
    githubUpdatedAt: data.get(#githubUpdatedAt, or: $value.githubUpdatedAt),
    emailVerified: data.get(#emailVerified, or: $value.emailVerified),
    passwordHash: data.get(#passwordHash, or: $value.passwordHash),
    refreshCounter: data.get(#refreshCounter, or: $value.refreshCounter),
    preferredName: data.get(#preferredName, or: $value.preferredName),
    preferredEmail: data.get(#preferredEmail, or: $value.preferredEmail),
    preferredPictureUrl: data.get(
      #preferredPictureUrl,
      or: $value.preferredPictureUrl,
    ),
    preferredUsername: data.get(
      #preferredUsername,
      or: $value.preferredUsername,
    ),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    orgMemberships: data.get(#orgMemberships, or: $value.orgMemberships),
    projMemberships: data.get(#projMemberships, or: $value.projMemberships),
  );

  @override
  UserAuthCopyWith<$R2, UserAuth, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserAuthCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UserReadMapper extends ClassMapperBase<UserRead> {
  UserReadMapper._();

  static UserReadMapper? _instance;
  static UserReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserReadMapper._());
      UserAuthMapper.ensureInitialized();
      UserReadObscuredMapper.ensureInitialized();
      OrgMemberMapper.ensureInitialized();
      ProjectMemberMapper.ensureInitialized();
      OrganizationMapper.ensureInitialized();
      ProjectMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserRead';

  static String _$id(UserRead v) => v.id;
  static const Field<UserRead, String> _f$id = Field('id', _$id);
  static String _$name(UserRead v) => v.name;
  static const Field<UserRead, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static String _$email(UserRead v) => v.email;
  static const Field<UserRead, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
    def: "",
  );
  static Uri? _$pictureUrl(UserRead v) => v.pictureUrl;
  static const Field<UserRead, Uri> _f$pictureUrl = Field(
    'pictureUrl',
    _$pictureUrl,
    key: r'picture_url',
    opt: true,
  );
  static String? _$googleId(UserRead v) => v.googleId;
  static const Field<UserRead, String> _f$googleId = Field(
    'googleId',
    _$googleId,
    key: r'google_id',
    opt: true,
  );
  static String? _$googleName(UserRead v) => v.googleName;
  static const Field<UserRead, String> _f$googleName = Field(
    'googleName',
    _$googleName,
    key: r'google_name',
    opt: true,
  );
  static String? _$googleUsername(UserRead v) => v.googleUsername;
  static const Field<UserRead, String> _f$googleUsername = Field(
    'googleUsername',
    _$googleUsername,
    key: r'google_username',
    opt: true,
  );
  static String? _$googleEmail(UserRead v) => v.googleEmail;
  static const Field<UserRead, String> _f$googleEmail = Field(
    'googleEmail',
    _$googleEmail,
    key: r'google_email',
    opt: true,
  );
  static Uri? _$googlePictureUrl(UserRead v) => v.googlePictureUrl;
  static const Field<UserRead, Uri> _f$googlePictureUrl = Field(
    'googlePictureUrl',
    _$googlePictureUrl,
    key: r'google_picture_url',
    opt: true,
  );
  static DateTime? _$googleUpdatedAt(UserRead v) => v.googleUpdatedAt;
  static const Field<UserRead, DateTime> _f$googleUpdatedAt = Field(
    'googleUpdatedAt',
    _$googleUpdatedAt,
    key: r'google_updated_at',
    opt: true,
  );
  static String? _$githubId(UserRead v) => v.githubId;
  static const Field<UserRead, String> _f$githubId = Field(
    'githubId',
    _$githubId,
    key: r'github_id',
    opt: true,
  );
  static String? _$githubName(UserRead v) => v.githubName;
  static const Field<UserRead, String> _f$githubName = Field(
    'githubName',
    _$githubName,
    key: r'github_name',
    opt: true,
  );
  static String? _$githubUsername(UserRead v) => v.githubUsername;
  static const Field<UserRead, String> _f$githubUsername = Field(
    'githubUsername',
    _$githubUsername,
    key: r'github_username',
    opt: true,
  );
  static String? _$githubEmail(UserRead v) => v.githubEmail;
  static const Field<UserRead, String> _f$githubEmail = Field(
    'githubEmail',
    _$githubEmail,
    key: r'github_email',
    opt: true,
  );
  static Uri? _$githubPictureUrl(UserRead v) => v.githubPictureUrl;
  static const Field<UserRead, Uri> _f$githubPictureUrl = Field(
    'githubPictureUrl',
    _$githubPictureUrl,
    key: r'github_picture_url',
    opt: true,
  );
  static DateTime? _$githubUpdatedAt(UserRead v) => v.githubUpdatedAt;
  static const Field<UserRead, DateTime> _f$githubUpdatedAt = Field(
    'githubUpdatedAt',
    _$githubUpdatedAt,
    key: r'github_updated_at',
    opt: true,
  );
  static bool _$emailVerified(UserRead v) => v.emailVerified;
  static const Field<UserRead, bool> _f$emailVerified = Field(
    'emailVerified',
    _$emailVerified,
    key: r'email_verified',
  );
  static String? _$passwordHash(UserRead v) => v.passwordHash;
  static const Field<UserRead, String> _f$passwordHash = Field(
    'passwordHash',
    _$passwordHash,
    key: r'password_hash',
    opt: true,
  );
  static int _$refreshCounter(UserRead v) => v.refreshCounter;
  static const Field<UserRead, int> _f$refreshCounter = Field(
    'refreshCounter',
    _$refreshCounter,
    key: r'refresh_counter',
    opt: true,
    def: 0,
  );
  static String _$preferredName(UserRead v) => v.preferredName;
  static const Field<UserRead, String> _f$preferredName = Field(
    'preferredName',
    _$preferredName,
    key: r'preferred_name',
  );
  static String _$preferredEmail(UserRead v) => v.preferredEmail;
  static const Field<UserRead, String> _f$preferredEmail = Field(
    'preferredEmail',
    _$preferredEmail,
    key: r'preferred_email',
  );
  static Uri? _$preferredPictureUrl(UserRead v) => v.preferredPictureUrl;
  static const Field<UserRead, Uri> _f$preferredPictureUrl = Field(
    'preferredPictureUrl',
    _$preferredPictureUrl,
    key: r'preferred_picture_url',
    opt: true,
  );
  static String? _$preferredUsername(UserRead v) => v.preferredUsername;
  static const Field<UserRead, String> _f$preferredUsername = Field(
    'preferredUsername',
    _$preferredUsername,
    key: r'preferred_username',
    opt: true,
  );
  static DateTime _$createdAt(UserRead v) => v.createdAt;
  static const Field<UserRead, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(UserRead v) => v.updatedAt;
  static const Field<UserRead, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static List<OrgMember> _$orgMemberships(UserRead v) => v.orgMemberships;
  static const Field<UserRead, List<OrgMember>> _f$orgMemberships = Field(
    'orgMemberships',
    _$orgMemberships,
    key: r'org_memberships',
  );
  static List<ProjectMember> _$projMemberships(UserRead v) => v.projMemberships;
  static const Field<UserRead, List<ProjectMember>> _f$projMemberships = Field(
    'projMemberships',
    _$projMemberships,
    key: r'proj_memberships',
  );
  static List<Organization> _$organizations(UserRead v) => v.organizations;
  static const Field<UserRead, List<Organization>> _f$organizations = Field(
    'organizations',
    _$organizations,
  );
  static List<Project> _$projects(UserRead v) => v.projects;
  static const Field<UserRead, List<Project>> _f$projects = Field(
    'projects',
    _$projects,
  );

  @override
  final MappableFields<UserRead> fields = const {
    #id: _f$id,
    #name: _f$name,
    #email: _f$email,
    #pictureUrl: _f$pictureUrl,
    #googleId: _f$googleId,
    #googleName: _f$googleName,
    #googleUsername: _f$googleUsername,
    #googleEmail: _f$googleEmail,
    #googlePictureUrl: _f$googlePictureUrl,
    #googleUpdatedAt: _f$googleUpdatedAt,
    #githubId: _f$githubId,
    #githubName: _f$githubName,
    #githubUsername: _f$githubUsername,
    #githubEmail: _f$githubEmail,
    #githubPictureUrl: _f$githubPictureUrl,
    #githubUpdatedAt: _f$githubUpdatedAt,
    #emailVerified: _f$emailVerified,
    #passwordHash: _f$passwordHash,
    #refreshCounter: _f$refreshCounter,
    #preferredName: _f$preferredName,
    #preferredEmail: _f$preferredEmail,
    #preferredPictureUrl: _f$preferredPictureUrl,
    #preferredUsername: _f$preferredUsername,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #orgMemberships: _f$orgMemberships,
    #projMemberships: _f$projMemberships,
    #organizations: _f$organizations,
    #projects: _f$projects,
  };

  static UserRead _instantiate(DecodingData data) {
    return UserRead(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      email: data.dec(_f$email),
      pictureUrl: data.dec(_f$pictureUrl),
      googleId: data.dec(_f$googleId),
      googleName: data.dec(_f$googleName),
      googleUsername: data.dec(_f$googleUsername),
      googleEmail: data.dec(_f$googleEmail),
      googlePictureUrl: data.dec(_f$googlePictureUrl),
      googleUpdatedAt: data.dec(_f$googleUpdatedAt),
      githubId: data.dec(_f$githubId),
      githubName: data.dec(_f$githubName),
      githubUsername: data.dec(_f$githubUsername),
      githubEmail: data.dec(_f$githubEmail),
      githubPictureUrl: data.dec(_f$githubPictureUrl),
      githubUpdatedAt: data.dec(_f$githubUpdatedAt),
      emailVerified: data.dec(_f$emailVerified),
      passwordHash: data.dec(_f$passwordHash),
      refreshCounter: data.dec(_f$refreshCounter),
      preferredName: data.dec(_f$preferredName),
      preferredEmail: data.dec(_f$preferredEmail),
      preferredPictureUrl: data.dec(_f$preferredPictureUrl),
      preferredUsername: data.dec(_f$preferredUsername),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      orgMemberships: data.dec(_f$orgMemberships),
      projMemberships: data.dec(_f$projMemberships),
      organizations: data.dec(_f$organizations),
      projects: data.dec(_f$projects),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserRead>(map);
  }

  static UserRead fromJson(String json) {
    return ensureInitialized().decodeJson<UserRead>(json);
  }
}

mixin UserReadMappable {
  String toJson() {
    return UserReadMapper.ensureInitialized().encodeJson<UserRead>(
      this as UserRead,
    );
  }

  Map<String, dynamic> toMap() {
    return UserReadMapper.ensureInitialized().encodeMap<UserRead>(
      this as UserRead,
    );
  }

  UserReadCopyWith<UserRead, UserRead, UserRead> get copyWith =>
      _UserReadCopyWithImpl<UserRead, UserRead>(
        this as UserRead,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserReadMapper.ensureInitialized().stringifyValue(this as UserRead);
  }

  @override
  bool operator ==(Object other) {
    return UserReadMapper.ensureInitialized().equalsValue(
      this as UserRead,
      other,
    );
  }

  @override
  int get hashCode {
    return UserReadMapper.ensureInitialized().hashValue(this as UserRead);
  }
}

extension UserReadValueCopy<$R, $Out> on ObjectCopyWith<$R, UserRead, $Out> {
  UserReadCopyWith<$R, UserRead, $Out> get $asUserRead =>
      $base.as((v, t, t2) => _UserReadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserReadCopyWith<$R, $In extends UserRead, $Out>
    implements UserAuthCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, OrgMember, OrgMemberCopyWith<$R, OrgMember, OrgMember>>
  get orgMemberships;
  @override
  ListCopyWith<
    $R,
    ProjectMember,
    ProjectMemberCopyWith<$R, ProjectMember, ProjectMember>
  >
  get projMemberships;
  ListCopyWith<
    $R,
    Organization,
    OrganizationCopyWith<$R, Organization, Organization>
  >
  get organizations;
  ListCopyWith<$R, Project, ProjectCopyWith<$R, Project, Project>> get projects;
  @override
  $R call({
    String? id,
    String? name,
    String? email,
    Uri? pictureUrl,
    String? googleId,
    String? googleName,
    String? googleUsername,
    String? googleEmail,
    Uri? googlePictureUrl,
    DateTime? googleUpdatedAt,
    String? githubId,
    String? githubName,
    String? githubUsername,
    String? githubEmail,
    Uri? githubPictureUrl,
    DateTime? githubUpdatedAt,
    bool? emailVerified,
    String? passwordHash,
    int? refreshCounter,
    String? preferredName,
    String? preferredEmail,
    Uri? preferredPictureUrl,
    String? preferredUsername,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<OrgMember>? orgMemberships,
    List<ProjectMember>? projMemberships,
    List<Organization>? organizations,
    List<Project>? projects,
  });
  UserReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserRead, $Out>
    implements UserReadCopyWith<$R, UserRead, $Out> {
  _UserReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserRead> $mapper =
      UserReadMapper.ensureInitialized();
  @override
  ListCopyWith<$R, OrgMember, OrgMemberCopyWith<$R, OrgMember, OrgMember>>
  get orgMemberships => ListCopyWith(
    $value.orgMemberships,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(orgMemberships: v),
  );
  @override
  ListCopyWith<
    $R,
    ProjectMember,
    ProjectMemberCopyWith<$R, ProjectMember, ProjectMember>
  >
  get projMemberships => ListCopyWith(
    $value.projMemberships,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(projMemberships: v),
  );
  @override
  ListCopyWith<
    $R,
    Organization,
    OrganizationCopyWith<$R, Organization, Organization>
  >
  get organizations => ListCopyWith(
    $value.organizations,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(organizations: v),
  );
  @override
  ListCopyWith<$R, Project, ProjectCopyWith<$R, Project, Project>>
  get projects => ListCopyWith(
    $value.projects,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(projects: v),
  );
  @override
  $R call({
    String? id,
    String? name,
    String? email,
    Object? pictureUrl = $none,
    Object? googleId = $none,
    Object? googleName = $none,
    Object? googleUsername = $none,
    Object? googleEmail = $none,
    Object? googlePictureUrl = $none,
    Object? googleUpdatedAt = $none,
    Object? githubId = $none,
    Object? githubName = $none,
    Object? githubUsername = $none,
    Object? githubEmail = $none,
    Object? githubPictureUrl = $none,
    Object? githubUpdatedAt = $none,
    bool? emailVerified,
    Object? passwordHash = $none,
    int? refreshCounter,
    String? preferredName,
    String? preferredEmail,
    Object? preferredPictureUrl = $none,
    Object? preferredUsername = $none,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<OrgMember>? orgMemberships,
    List<ProjectMember>? projMemberships,
    List<Organization>? organizations,
    List<Project>? projects,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (email != null) #email: email,
      if (pictureUrl != $none) #pictureUrl: pictureUrl,
      if (googleId != $none) #googleId: googleId,
      if (googleName != $none) #googleName: googleName,
      if (googleUsername != $none) #googleUsername: googleUsername,
      if (googleEmail != $none) #googleEmail: googleEmail,
      if (googlePictureUrl != $none) #googlePictureUrl: googlePictureUrl,
      if (googleUpdatedAt != $none) #googleUpdatedAt: googleUpdatedAt,
      if (githubId != $none) #githubId: githubId,
      if (githubName != $none) #githubName: githubName,
      if (githubUsername != $none) #githubUsername: githubUsername,
      if (githubEmail != $none) #githubEmail: githubEmail,
      if (githubPictureUrl != $none) #githubPictureUrl: githubPictureUrl,
      if (githubUpdatedAt != $none) #githubUpdatedAt: githubUpdatedAt,
      if (emailVerified != null) #emailVerified: emailVerified,
      if (passwordHash != $none) #passwordHash: passwordHash,
      if (refreshCounter != null) #refreshCounter: refreshCounter,
      if (preferredName != null) #preferredName: preferredName,
      if (preferredEmail != null) #preferredEmail: preferredEmail,
      if (preferredPictureUrl != $none)
        #preferredPictureUrl: preferredPictureUrl,
      if (preferredUsername != $none) #preferredUsername: preferredUsername,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (orgMemberships != null) #orgMemberships: orgMemberships,
      if (projMemberships != null) #projMemberships: projMemberships,
      if (organizations != null) #organizations: organizations,
      if (projects != null) #projects: projects,
    }),
  );
  @override
  UserRead $make(CopyWithData data) => UserRead(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    email: data.get(#email, or: $value.email),
    pictureUrl: data.get(#pictureUrl, or: $value.pictureUrl),
    googleId: data.get(#googleId, or: $value.googleId),
    googleName: data.get(#googleName, or: $value.googleName),
    googleUsername: data.get(#googleUsername, or: $value.googleUsername),
    googleEmail: data.get(#googleEmail, or: $value.googleEmail),
    googlePictureUrl: data.get(#googlePictureUrl, or: $value.googlePictureUrl),
    googleUpdatedAt: data.get(#googleUpdatedAt, or: $value.googleUpdatedAt),
    githubId: data.get(#githubId, or: $value.githubId),
    githubName: data.get(#githubName, or: $value.githubName),
    githubUsername: data.get(#githubUsername, or: $value.githubUsername),
    githubEmail: data.get(#githubEmail, or: $value.githubEmail),
    githubPictureUrl: data.get(#githubPictureUrl, or: $value.githubPictureUrl),
    githubUpdatedAt: data.get(#githubUpdatedAt, or: $value.githubUpdatedAt),
    emailVerified: data.get(#emailVerified, or: $value.emailVerified),
    passwordHash: data.get(#passwordHash, or: $value.passwordHash),
    refreshCounter: data.get(#refreshCounter, or: $value.refreshCounter),
    preferredName: data.get(#preferredName, or: $value.preferredName),
    preferredEmail: data.get(#preferredEmail, or: $value.preferredEmail),
    preferredPictureUrl: data.get(
      #preferredPictureUrl,
      or: $value.preferredPictureUrl,
    ),
    preferredUsername: data.get(
      #preferredUsername,
      or: $value.preferredUsername,
    ),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    orgMemberships: data.get(#orgMemberships, or: $value.orgMemberships),
    projMemberships: data.get(#projMemberships, or: $value.projMemberships),
    organizations: data.get(#organizations, or: $value.organizations),
    projects: data.get(#projects, or: $value.projects),
  );

  @override
  UserReadCopyWith<$R2, UserRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UserReadObscuredMapper extends ClassMapperBase<UserReadObscured> {
  UserReadObscuredMapper._();

  static UserReadObscuredMapper? _instance;
  static UserReadObscuredMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserReadObscuredMapper._());
      UserReadMapper.ensureInitialized();
      OrgMemberMapper.ensureInitialized();
      ProjectMemberMapper.ensureInitialized();
      OrganizationMapper.ensureInitialized();
      ProjectMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserReadObscured';

  static String _$id(UserReadObscured v) => v.id;
  static const Field<UserReadObscured, String> _f$id = Field('id', _$id);
  static String _$name(UserReadObscured v) => v.name;
  static const Field<UserReadObscured, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static String _$email(UserReadObscured v) => v.email;
  static const Field<UserReadObscured, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
    def: "",
  );
  static Uri? _$pictureUrl(UserReadObscured v) => v.pictureUrl;
  static const Field<UserReadObscured, Uri> _f$pictureUrl = Field(
    'pictureUrl',
    _$pictureUrl,
    key: r'picture_url',
    opt: true,
  );
  static String? _$googleId(UserReadObscured v) => v.googleId;
  static const Field<UserReadObscured, String> _f$googleId = Field(
    'googleId',
    _$googleId,
    key: r'google_id',
    opt: true,
  );
  static String? _$googleName(UserReadObscured v) => v.googleName;
  static const Field<UserReadObscured, String> _f$googleName = Field(
    'googleName',
    _$googleName,
    key: r'google_name',
    opt: true,
  );
  static String? _$googleUsername(UserReadObscured v) => v.googleUsername;
  static const Field<UserReadObscured, String> _f$googleUsername = Field(
    'googleUsername',
    _$googleUsername,
    key: r'google_username',
    opt: true,
  );
  static String? _$googleEmail(UserReadObscured v) => v.googleEmail;
  static const Field<UserReadObscured, String> _f$googleEmail = Field(
    'googleEmail',
    _$googleEmail,
    key: r'google_email',
    opt: true,
  );
  static Uri? _$googlePictureUrl(UserReadObscured v) => v.googlePictureUrl;
  static const Field<UserReadObscured, Uri> _f$googlePictureUrl = Field(
    'googlePictureUrl',
    _$googlePictureUrl,
    key: r'google_picture_url',
    opt: true,
  );
  static DateTime? _$googleUpdatedAt(UserReadObscured v) => v.googleUpdatedAt;
  static const Field<UserReadObscured, DateTime> _f$googleUpdatedAt = Field(
    'googleUpdatedAt',
    _$googleUpdatedAt,
    key: r'google_updated_at',
    opt: true,
  );
  static String? _$githubId(UserReadObscured v) => v.githubId;
  static const Field<UserReadObscured, String> _f$githubId = Field(
    'githubId',
    _$githubId,
    key: r'github_id',
    opt: true,
  );
  static String? _$githubName(UserReadObscured v) => v.githubName;
  static const Field<UserReadObscured, String> _f$githubName = Field(
    'githubName',
    _$githubName,
    key: r'github_name',
    opt: true,
  );
  static String? _$githubUsername(UserReadObscured v) => v.githubUsername;
  static const Field<UserReadObscured, String> _f$githubUsername = Field(
    'githubUsername',
    _$githubUsername,
    key: r'github_username',
    opt: true,
  );
  static String? _$githubEmail(UserReadObscured v) => v.githubEmail;
  static const Field<UserReadObscured, String> _f$githubEmail = Field(
    'githubEmail',
    _$githubEmail,
    key: r'github_email',
    opt: true,
  );
  static Uri? _$githubPictureUrl(UserReadObscured v) => v.githubPictureUrl;
  static const Field<UserReadObscured, Uri> _f$githubPictureUrl = Field(
    'githubPictureUrl',
    _$githubPictureUrl,
    key: r'github_picture_url',
    opt: true,
  );
  static DateTime? _$githubUpdatedAt(UserReadObscured v) => v.githubUpdatedAt;
  static const Field<UserReadObscured, DateTime> _f$githubUpdatedAt = Field(
    'githubUpdatedAt',
    _$githubUpdatedAt,
    key: r'github_updated_at',
    opt: true,
  );
  static bool _$emailVerified(UserReadObscured v) => v.emailVerified;
  static const Field<UserReadObscured, bool> _f$emailVerified = Field(
    'emailVerified',
    _$emailVerified,
    key: r'email_verified',
  );
  static String? _$passwordHash(UserReadObscured v) => v.passwordHash;
  static const Field<UserReadObscured, String> _f$passwordHash = Field(
    'passwordHash',
    _$passwordHash,
    key: r'password_hash',
    opt: true,
  );
  static int _$refreshCounter(UserReadObscured v) => v.refreshCounter;
  static const Field<UserReadObscured, int> _f$refreshCounter = Field(
    'refreshCounter',
    _$refreshCounter,
    key: r'refresh_counter',
    opt: true,
    def: 0,
  );
  static String _$preferredName(UserReadObscured v) => v.preferredName;
  static const Field<UserReadObscured, String> _f$preferredName = Field(
    'preferredName',
    _$preferredName,
    key: r'preferred_name',
  );
  static String _$preferredEmail(UserReadObscured v) => v.preferredEmail;
  static const Field<UserReadObscured, String> _f$preferredEmail = Field(
    'preferredEmail',
    _$preferredEmail,
    key: r'preferred_email',
  );
  static Uri? _$preferredPictureUrl(UserReadObscured v) =>
      v.preferredPictureUrl;
  static const Field<UserReadObscured, Uri> _f$preferredPictureUrl = Field(
    'preferredPictureUrl',
    _$preferredPictureUrl,
    key: r'preferred_picture_url',
    opt: true,
  );
  static String? _$preferredUsername(UserReadObscured v) => v.preferredUsername;
  static const Field<UserReadObscured, String> _f$preferredUsername = Field(
    'preferredUsername',
    _$preferredUsername,
    key: r'preferred_username',
    opt: true,
  );
  static DateTime _$createdAt(UserReadObscured v) => v.createdAt;
  static const Field<UserReadObscured, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(UserReadObscured v) => v.updatedAt;
  static const Field<UserReadObscured, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static List<OrgMember> _$orgMemberships(UserReadObscured v) =>
      v.orgMemberships;
  static const Field<UserReadObscured, List<OrgMember>> _f$orgMemberships =
      Field('orgMemberships', _$orgMemberships, key: r'org_memberships');
  static List<ProjectMember> _$projMemberships(UserReadObscured v) =>
      v.projMemberships;
  static const Field<UserReadObscured, List<ProjectMember>> _f$projMemberships =
      Field('projMemberships', _$projMemberships, key: r'proj_memberships');
  static List<Organization> _$organizations(UserReadObscured v) =>
      v.organizations;
  static const Field<UserReadObscured, List<Organization>> _f$organizations =
      Field('organizations', _$organizations);
  static List<Project> _$projects(UserReadObscured v) => v.projects;
  static const Field<UserReadObscured, List<Project>> _f$projects = Field(
    'projects',
    _$projects,
  );

  @override
  final MappableFields<UserReadObscured> fields = const {
    #id: _f$id,
    #name: _f$name,
    #email: _f$email,
    #pictureUrl: _f$pictureUrl,
    #googleId: _f$googleId,
    #googleName: _f$googleName,
    #googleUsername: _f$googleUsername,
    #googleEmail: _f$googleEmail,
    #googlePictureUrl: _f$googlePictureUrl,
    #googleUpdatedAt: _f$googleUpdatedAt,
    #githubId: _f$githubId,
    #githubName: _f$githubName,
    #githubUsername: _f$githubUsername,
    #githubEmail: _f$githubEmail,
    #githubPictureUrl: _f$githubPictureUrl,
    #githubUpdatedAt: _f$githubUpdatedAt,
    #emailVerified: _f$emailVerified,
    #passwordHash: _f$passwordHash,
    #refreshCounter: _f$refreshCounter,
    #preferredName: _f$preferredName,
    #preferredEmail: _f$preferredEmail,
    #preferredPictureUrl: _f$preferredPictureUrl,
    #preferredUsername: _f$preferredUsername,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #orgMemberships: _f$orgMemberships,
    #projMemberships: _f$projMemberships,
    #organizations: _f$organizations,
    #projects: _f$projects,
  };

  static UserReadObscured _instantiate(DecodingData data) {
    return UserReadObscured(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      email: data.dec(_f$email),
      pictureUrl: data.dec(_f$pictureUrl),
      googleId: data.dec(_f$googleId),
      googleName: data.dec(_f$googleName),
      googleUsername: data.dec(_f$googleUsername),
      googleEmail: data.dec(_f$googleEmail),
      googlePictureUrl: data.dec(_f$googlePictureUrl),
      googleUpdatedAt: data.dec(_f$googleUpdatedAt),
      githubId: data.dec(_f$githubId),
      githubName: data.dec(_f$githubName),
      githubUsername: data.dec(_f$githubUsername),
      githubEmail: data.dec(_f$githubEmail),
      githubPictureUrl: data.dec(_f$githubPictureUrl),
      githubUpdatedAt: data.dec(_f$githubUpdatedAt),
      emailVerified: data.dec(_f$emailVerified),
      passwordHash: data.dec(_f$passwordHash),
      refreshCounter: data.dec(_f$refreshCounter),
      preferredName: data.dec(_f$preferredName),
      preferredEmail: data.dec(_f$preferredEmail),
      preferredPictureUrl: data.dec(_f$preferredPictureUrl),
      preferredUsername: data.dec(_f$preferredUsername),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      orgMemberships: data.dec(_f$orgMemberships),
      projMemberships: data.dec(_f$projMemberships),
      organizations: data.dec(_f$organizations),
      projects: data.dec(_f$projects),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserReadObscured fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserReadObscured>(map);
  }

  static UserReadObscured fromJson(String json) {
    return ensureInitialized().decodeJson<UserReadObscured>(json);
  }
}

mixin UserReadObscuredMappable {
  String toJson() {
    return UserReadObscuredMapper.ensureInitialized()
        .encodeJson<UserReadObscured>(this as UserReadObscured);
  }

  Map<String, dynamic> toMap() {
    return UserReadObscuredMapper.ensureInitialized()
        .encodeMap<UserReadObscured>(this as UserReadObscured);
  }

  UserReadObscuredCopyWith<UserReadObscured, UserReadObscured, UserReadObscured>
  get copyWith =>
      _UserReadObscuredCopyWithImpl<UserReadObscured, UserReadObscured>(
        this as UserReadObscured,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserReadObscuredMapper.ensureInitialized().stringifyValue(
      this as UserReadObscured,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserReadObscuredMapper.ensureInitialized().equalsValue(
      this as UserReadObscured,
      other,
    );
  }

  @override
  int get hashCode {
    return UserReadObscuredMapper.ensureInitialized().hashValue(
      this as UserReadObscured,
    );
  }
}

extension UserReadObscuredValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserReadObscured, $Out> {
  UserReadObscuredCopyWith<$R, UserReadObscured, $Out>
  get $asUserReadObscured =>
      $base.as((v, t, t2) => _UserReadObscuredCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserReadObscuredCopyWith<$R, $In extends UserReadObscured, $Out>
    implements UserReadCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, OrgMember, OrgMemberCopyWith<$R, OrgMember, OrgMember>>
  get orgMemberships;
  @override
  ListCopyWith<
    $R,
    ProjectMember,
    ProjectMemberCopyWith<$R, ProjectMember, ProjectMember>
  >
  get projMemberships;
  @override
  ListCopyWith<
    $R,
    Organization,
    OrganizationCopyWith<$R, Organization, Organization>
  >
  get organizations;
  @override
  ListCopyWith<$R, Project, ProjectCopyWith<$R, Project, Project>> get projects;
  @override
  $R call({
    String? id,
    String? name,
    String? email,
    Uri? pictureUrl,
    String? googleId,
    String? googleName,
    String? googleUsername,
    String? googleEmail,
    Uri? googlePictureUrl,
    DateTime? googleUpdatedAt,
    String? githubId,
    String? githubName,
    String? githubUsername,
    String? githubEmail,
    Uri? githubPictureUrl,
    DateTime? githubUpdatedAt,
    bool? emailVerified,
    String? passwordHash,
    int? refreshCounter,
    String? preferredName,
    String? preferredEmail,
    Uri? preferredPictureUrl,
    String? preferredUsername,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<OrgMember>? orgMemberships,
    List<ProjectMember>? projMemberships,
    List<Organization>? organizations,
    List<Project>? projects,
  });
  UserReadObscuredCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _UserReadObscuredCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserReadObscured, $Out>
    implements UserReadObscuredCopyWith<$R, UserReadObscured, $Out> {
  _UserReadObscuredCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserReadObscured> $mapper =
      UserReadObscuredMapper.ensureInitialized();
  @override
  ListCopyWith<$R, OrgMember, OrgMemberCopyWith<$R, OrgMember, OrgMember>>
  get orgMemberships => ListCopyWith(
    $value.orgMemberships,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(orgMemberships: v),
  );
  @override
  ListCopyWith<
    $R,
    ProjectMember,
    ProjectMemberCopyWith<$R, ProjectMember, ProjectMember>
  >
  get projMemberships => ListCopyWith(
    $value.projMemberships,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(projMemberships: v),
  );
  @override
  ListCopyWith<
    $R,
    Organization,
    OrganizationCopyWith<$R, Organization, Organization>
  >
  get organizations => ListCopyWith(
    $value.organizations,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(organizations: v),
  );
  @override
  ListCopyWith<$R, Project, ProjectCopyWith<$R, Project, Project>>
  get projects => ListCopyWith(
    $value.projects,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(projects: v),
  );
  @override
  $R call({
    String? id,
    String? name,
    String? email,
    Object? pictureUrl = $none,
    Object? googleId = $none,
    Object? googleName = $none,
    Object? googleUsername = $none,
    Object? googleEmail = $none,
    Object? googlePictureUrl = $none,
    Object? googleUpdatedAt = $none,
    Object? githubId = $none,
    Object? githubName = $none,
    Object? githubUsername = $none,
    Object? githubEmail = $none,
    Object? githubPictureUrl = $none,
    Object? githubUpdatedAt = $none,
    bool? emailVerified,
    Object? passwordHash = $none,
    int? refreshCounter,
    String? preferredName,
    String? preferredEmail,
    Object? preferredPictureUrl = $none,
    Object? preferredUsername = $none,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<OrgMember>? orgMemberships,
    List<ProjectMember>? projMemberships,
    List<Organization>? organizations,
    List<Project>? projects,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (email != null) #email: email,
      if (pictureUrl != $none) #pictureUrl: pictureUrl,
      if (googleId != $none) #googleId: googleId,
      if (googleName != $none) #googleName: googleName,
      if (googleUsername != $none) #googleUsername: googleUsername,
      if (googleEmail != $none) #googleEmail: googleEmail,
      if (googlePictureUrl != $none) #googlePictureUrl: googlePictureUrl,
      if (googleUpdatedAt != $none) #googleUpdatedAt: googleUpdatedAt,
      if (githubId != $none) #githubId: githubId,
      if (githubName != $none) #githubName: githubName,
      if (githubUsername != $none) #githubUsername: githubUsername,
      if (githubEmail != $none) #githubEmail: githubEmail,
      if (githubPictureUrl != $none) #githubPictureUrl: githubPictureUrl,
      if (githubUpdatedAt != $none) #githubUpdatedAt: githubUpdatedAt,
      if (emailVerified != null) #emailVerified: emailVerified,
      if (passwordHash != $none) #passwordHash: passwordHash,
      if (refreshCounter != null) #refreshCounter: refreshCounter,
      if (preferredName != null) #preferredName: preferredName,
      if (preferredEmail != null) #preferredEmail: preferredEmail,
      if (preferredPictureUrl != $none)
        #preferredPictureUrl: preferredPictureUrl,
      if (preferredUsername != $none) #preferredUsername: preferredUsername,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (orgMemberships != null) #orgMemberships: orgMemberships,
      if (projMemberships != null) #projMemberships: projMemberships,
      if (organizations != null) #organizations: organizations,
      if (projects != null) #projects: projects,
    }),
  );
  @override
  UserReadObscured $make(CopyWithData data) => UserReadObscured(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    email: data.get(#email, or: $value.email),
    pictureUrl: data.get(#pictureUrl, or: $value.pictureUrl),
    googleId: data.get(#googleId, or: $value.googleId),
    googleName: data.get(#googleName, or: $value.googleName),
    googleUsername: data.get(#googleUsername, or: $value.googleUsername),
    googleEmail: data.get(#googleEmail, or: $value.googleEmail),
    googlePictureUrl: data.get(#googlePictureUrl, or: $value.googlePictureUrl),
    googleUpdatedAt: data.get(#googleUpdatedAt, or: $value.googleUpdatedAt),
    githubId: data.get(#githubId, or: $value.githubId),
    githubName: data.get(#githubName, or: $value.githubName),
    githubUsername: data.get(#githubUsername, or: $value.githubUsername),
    githubEmail: data.get(#githubEmail, or: $value.githubEmail),
    githubPictureUrl: data.get(#githubPictureUrl, or: $value.githubPictureUrl),
    githubUpdatedAt: data.get(#githubUpdatedAt, or: $value.githubUpdatedAt),
    emailVerified: data.get(#emailVerified, or: $value.emailVerified),
    passwordHash: data.get(#passwordHash, or: $value.passwordHash),
    refreshCounter: data.get(#refreshCounter, or: $value.refreshCounter),
    preferredName: data.get(#preferredName, or: $value.preferredName),
    preferredEmail: data.get(#preferredEmail, or: $value.preferredEmail),
    preferredPictureUrl: data.get(
      #preferredPictureUrl,
      or: $value.preferredPictureUrl,
    ),
    preferredUsername: data.get(
      #preferredUsername,
      or: $value.preferredUsername,
    ),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    orgMemberships: data.get(#orgMemberships, or: $value.orgMemberships),
    projMemberships: data.get(#projMemberships, or: $value.projMemberships),
    organizations: data.get(#organizations, or: $value.organizations),
    projects: data.get(#projects, or: $value.projects),
  );

  @override
  UserReadObscuredCopyWith<$R2, UserReadObscured, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserReadObscuredCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OrganizationReadMapper extends ClassMapperBase<OrganizationRead> {
  OrganizationReadMapper._();

  static OrganizationReadMapper? _instance;
  static OrganizationReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrganizationReadMapper._());
      OrganizationMapper.ensureInitialized();
      PaymentStateMapper.ensureInitialized();
      PricePlanMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OrganizationRead';

  static String _$id(OrganizationRead v) => v.id;
  static const Field<OrganizationRead, String> _f$id = Field('id', _$id);
  static String _$name(OrganizationRead v) => v.name;
  static const Field<OrganizationRead, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
    def: "",
  );
  static FiatCurrency _$currency(OrganizationRead v) => v.currency;
  static const Field<OrganizationRead, FiatCurrency> _f$currency = Field(
    'currency',
    _$currency,
    hook: FiatCurrencyHook(),
  );
  static String? _$timezone(OrganizationRead v) => v.timezone;
  static const Field<OrganizationRead, String> _f$timezone = Field(
    'timezone',
    _$timezone,
    opt: true,
  );
  static Map<String, String> _$externalKeys(OrganizationRead v) =>
      v.externalKeys;
  static const Field<OrganizationRead, Map<String, String>> _f$externalKeys =
      Field(
        'externalKeys',
        _$externalKeys,
        key: r'external_keys',
        opt: true,
        def: const {},
      );
  static String _$createdBy(OrganizationRead v) => v.createdBy;
  static const Field<OrganizationRead, String> _f$createdBy = Field(
    'createdBy',
    _$createdBy,
    key: r'created_by',
  );
  static String _$owner(OrganizationRead v) => v.owner;
  static const Field<OrganizationRead, String> _f$owner = Field(
    'owner',
    _$owner,
  );
  static String? _$stripeId(OrganizationRead v) => v.stripeId;
  static const Field<OrganizationRead, String> _f$stripeId = Field(
    'stripeId',
    _$stripeId,
    key: r'stripe_id',
    opt: true,
  );
  static String? _$pricePlanId(OrganizationRead v) => v.pricePlanId;
  static const Field<OrganizationRead, String> _f$pricePlanId = Field(
    'pricePlanId',
    _$pricePlanId,
    key: r'price_plan_id',
    opt: true,
  );
  static PaymentState _$paymentState(OrganizationRead v) => v.paymentState;
  static const Field<OrganizationRead, PaymentState> _f$paymentState = Field(
    'paymentState',
    _$paymentState,
    key: r'payment_state',
  );
  static DateTime? _$lastSubscriptionPaymentAt(OrganizationRead v) =>
      v.lastSubscriptionPaymentAt;
  static const Field<OrganizationRead, DateTime> _f$lastSubscriptionPaymentAt =
      Field(
        'lastSubscriptionPaymentAt',
        _$lastSubscriptionPaymentAt,
        key: r'last_subscription_payment_at',
        opt: true,
      );
  static DateTime _$quotaResetAt(OrganizationRead v) => v.quotaResetAt;
  static const Field<OrganizationRead, DateTime> _f$quotaResetAt = Field(
    'quotaResetAt',
    _$quotaResetAt,
    key: r'quota_reset_at',
  );
  static double _$credit(OrganizationRead v) => v.credit;
  static const Field<OrganizationRead, double> _f$credit = Field(
    'credit',
    _$credit,
  );
  static double _$creditGrant(OrganizationRead v) => v.creditGrant;
  static const Field<OrganizationRead, double> _f$creditGrant = Field(
    'creditGrant',
    _$creditGrant,
    key: r'credit_grant',
  );
  static double? _$llmTokensQuotaMtok(OrganizationRead v) =>
      v.llmTokensQuotaMtok;
  static const Field<OrganizationRead, double> _f$llmTokensQuotaMtok = Field(
    'llmTokensQuotaMtok',
    _$llmTokensQuotaMtok,
    key: r'llm_tokens_quota_mtok',
    opt: true,
  );
  static double _$llmTokensUsageMtok(OrganizationRead v) =>
      v.llmTokensUsageMtok;
  static const Field<OrganizationRead, double> _f$llmTokensUsageMtok = Field(
    'llmTokensUsageMtok',
    _$llmTokensUsageMtok,
    key: r'llm_tokens_usage_mtok',
  );
  static double? _$embeddingTokensQuotaMtok(OrganizationRead v) =>
      v.embeddingTokensQuotaMtok;
  static const Field<OrganizationRead, double> _f$embeddingTokensQuotaMtok =
      Field(
        'embeddingTokensQuotaMtok',
        _$embeddingTokensQuotaMtok,
        key: r'embedding_tokens_quota_mtok',
        opt: true,
      );
  static double _$embeddingTokensUsageMtok(OrganizationRead v) =>
      v.embeddingTokensUsageMtok;
  static const Field<OrganizationRead, double> _f$embeddingTokensUsageMtok =
      Field(
        'embeddingTokensUsageMtok',
        _$embeddingTokensUsageMtok,
        key: r'embedding_tokens_usage_mtok',
      );
  static double? _$rerankerQuotaKsearch(OrganizationRead v) =>
      v.rerankerQuotaKsearch;
  static const Field<OrganizationRead, double> _f$rerankerQuotaKsearch = Field(
    'rerankerQuotaKsearch',
    _$rerankerQuotaKsearch,
    key: r'reranker_quota_ksearch',
    opt: true,
  );
  static double _$rerankerUsageKsearch(OrganizationRead v) =>
      v.rerankerUsageKsearch;
  static const Field<OrganizationRead, double> _f$rerankerUsageKsearch = Field(
    'rerankerUsageKsearch',
    _$rerankerUsageKsearch,
    key: r'reranker_usage_ksearch',
  );
  static double? _$dbQuotaGib(OrganizationRead v) => v.dbQuotaGib;
  static const Field<OrganizationRead, double> _f$dbQuotaGib = Field(
    'dbQuotaGib',
    _$dbQuotaGib,
    key: r'db_quota_gib',
    opt: true,
  );
  static double _$dbUsageGib(OrganizationRead v) => v.dbUsageGib;
  static const Field<OrganizationRead, double> _f$dbUsageGib = Field(
    'dbUsageGib',
    _$dbUsageGib,
    key: r'db_usage_gib',
  );
  static DateTime _$dbUsageUpdatedAt(OrganizationRead v) => v.dbUsageUpdatedAt;
  static const Field<OrganizationRead, DateTime> _f$dbUsageUpdatedAt = Field(
    'dbUsageUpdatedAt',
    _$dbUsageUpdatedAt,
    key: r'db_usage_updated_at',
  );
  static double? _$fileQuotaGib(OrganizationRead v) => v.fileQuotaGib;
  static const Field<OrganizationRead, double> _f$fileQuotaGib = Field(
    'fileQuotaGib',
    _$fileQuotaGib,
    key: r'file_quota_gib',
    opt: true,
  );
  static double _$fileUsageGib(OrganizationRead v) => v.fileUsageGib;
  static const Field<OrganizationRead, double> _f$fileUsageGib = Field(
    'fileUsageGib',
    _$fileUsageGib,
    key: r'file_usage_gib',
  );
  static DateTime _$fileUsageUpdatedAt(OrganizationRead v) =>
      v.fileUsageUpdatedAt;
  static const Field<OrganizationRead, DateTime> _f$fileUsageUpdatedAt = Field(
    'fileUsageUpdatedAt',
    _$fileUsageUpdatedAt,
    key: r'file_usage_updated_at',
  );
  static double? _$egressQuotaGib(OrganizationRead v) => v.egressQuotaGib;
  static const Field<OrganizationRead, double> _f$egressQuotaGib = Field(
    'egressQuotaGib',
    _$egressQuotaGib,
    key: r'egress_quota_gib',
    opt: true,
  );
  static double _$egressUsageGib(OrganizationRead v) => v.egressUsageGib;
  static const Field<OrganizationRead, double> _f$egressUsageGib = Field(
    'egressUsageGib',
    _$egressUsageGib,
    key: r'egress_usage_gib',
  );
  static bool _$active(OrganizationRead v) => v.active;
  static const Field<OrganizationRead, bool> _f$active = Field(
    'active',
    _$active,
  );
  static Map<String, Map<String, double?>> _$quotas(OrganizationRead v) =>
      v.quotas;
  static const Field<OrganizationRead, Map<String, Map<String, double?>>>
  _f$quotas = Field('quotas', _$quotas);
  static DateTime _$createdAt(OrganizationRead v) => v.createdAt;
  static const Field<OrganizationRead, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(OrganizationRead v) => v.updatedAt;
  static const Field<OrganizationRead, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static PricePlan? _$pricePlan(OrganizationRead v) => v.pricePlan;
  static const Field<OrganizationRead, PricePlan> _f$pricePlan = Field(
    'pricePlan',
    _$pricePlan,
    key: r'price_plan',
    opt: true,
  );

  @override
  final MappableFields<OrganizationRead> fields = const {
    #id: _f$id,
    #name: _f$name,
    #currency: _f$currency,
    #timezone: _f$timezone,
    #externalKeys: _f$externalKeys,
    #createdBy: _f$createdBy,
    #owner: _f$owner,
    #stripeId: _f$stripeId,
    #pricePlanId: _f$pricePlanId,
    #paymentState: _f$paymentState,
    #lastSubscriptionPaymentAt: _f$lastSubscriptionPaymentAt,
    #quotaResetAt: _f$quotaResetAt,
    #credit: _f$credit,
    #creditGrant: _f$creditGrant,
    #llmTokensQuotaMtok: _f$llmTokensQuotaMtok,
    #llmTokensUsageMtok: _f$llmTokensUsageMtok,
    #embeddingTokensQuotaMtok: _f$embeddingTokensQuotaMtok,
    #embeddingTokensUsageMtok: _f$embeddingTokensUsageMtok,
    #rerankerQuotaKsearch: _f$rerankerQuotaKsearch,
    #rerankerUsageKsearch: _f$rerankerUsageKsearch,
    #dbQuotaGib: _f$dbQuotaGib,
    #dbUsageGib: _f$dbUsageGib,
    #dbUsageUpdatedAt: _f$dbUsageUpdatedAt,
    #fileQuotaGib: _f$fileQuotaGib,
    #fileUsageGib: _f$fileUsageGib,
    #fileUsageUpdatedAt: _f$fileUsageUpdatedAt,
    #egressQuotaGib: _f$egressQuotaGib,
    #egressUsageGib: _f$egressUsageGib,
    #active: _f$active,
    #quotas: _f$quotas,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #pricePlan: _f$pricePlan,
  };

  static OrganizationRead _instantiate(DecodingData data) {
    return OrganizationRead(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      currency: data.dec(_f$currency),
      timezone: data.dec(_f$timezone),
      externalKeys: data.dec(_f$externalKeys),
      createdBy: data.dec(_f$createdBy),
      owner: data.dec(_f$owner),
      stripeId: data.dec(_f$stripeId),
      pricePlanId: data.dec(_f$pricePlanId),
      paymentState: data.dec(_f$paymentState),
      lastSubscriptionPaymentAt: data.dec(_f$lastSubscriptionPaymentAt),
      quotaResetAt: data.dec(_f$quotaResetAt),
      credit: data.dec(_f$credit),
      creditGrant: data.dec(_f$creditGrant),
      llmTokensQuotaMtok: data.dec(_f$llmTokensQuotaMtok),
      llmTokensUsageMtok: data.dec(_f$llmTokensUsageMtok),
      embeddingTokensQuotaMtok: data.dec(_f$embeddingTokensQuotaMtok),
      embeddingTokensUsageMtok: data.dec(_f$embeddingTokensUsageMtok),
      rerankerQuotaKsearch: data.dec(_f$rerankerQuotaKsearch),
      rerankerUsageKsearch: data.dec(_f$rerankerUsageKsearch),
      dbQuotaGib: data.dec(_f$dbQuotaGib),
      dbUsageGib: data.dec(_f$dbUsageGib),
      dbUsageUpdatedAt: data.dec(_f$dbUsageUpdatedAt),
      fileQuotaGib: data.dec(_f$fileQuotaGib),
      fileUsageGib: data.dec(_f$fileUsageGib),
      fileUsageUpdatedAt: data.dec(_f$fileUsageUpdatedAt),
      egressQuotaGib: data.dec(_f$egressQuotaGib),
      egressUsageGib: data.dec(_f$egressUsageGib),
      active: data.dec(_f$active),
      quotas: data.dec(_f$quotas),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      pricePlan: data.dec(_f$pricePlan),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static OrganizationRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrganizationRead>(map);
  }

  static OrganizationRead fromJson(String json) {
    return ensureInitialized().decodeJson<OrganizationRead>(json);
  }
}

mixin OrganizationReadMappable {
  String toJson() {
    return OrganizationReadMapper.ensureInitialized()
        .encodeJson<OrganizationRead>(this as OrganizationRead);
  }

  Map<String, dynamic> toMap() {
    return OrganizationReadMapper.ensureInitialized()
        .encodeMap<OrganizationRead>(this as OrganizationRead);
  }

  OrganizationReadCopyWith<OrganizationRead, OrganizationRead, OrganizationRead>
  get copyWith =>
      _OrganizationReadCopyWithImpl<OrganizationRead, OrganizationRead>(
        this as OrganizationRead,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OrganizationReadMapper.ensureInitialized().stringifyValue(
      this as OrganizationRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return OrganizationReadMapper.ensureInitialized().equalsValue(
      this as OrganizationRead,
      other,
    );
  }

  @override
  int get hashCode {
    return OrganizationReadMapper.ensureInitialized().hashValue(
      this as OrganizationRead,
    );
  }
}

extension OrganizationReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrganizationRead, $Out> {
  OrganizationReadCopyWith<$R, OrganizationRead, $Out>
  get $asOrganizationRead =>
      $base.as((v, t, t2) => _OrganizationReadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OrganizationReadCopyWith<$R, $In extends OrganizationRead, $Out>
    implements OrganizationCopyWith<$R, $In, $Out> {
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get externalKeys;
  @override
  MapCopyWith<
    $R,
    String,
    Map<String, double?>,
    ObjectCopyWith<$R, Map<String, double?>, Map<String, double?>>
  >
  get quotas;
  PricePlanCopyWith<$R, PricePlan, PricePlan>? get pricePlan;
  @override
  $R call({
    String? id,
    String? name,
    FiatCurrency? currency,
    String? timezone,
    Map<String, String>? externalKeys,
    String? createdBy,
    String? owner,
    String? stripeId,
    String? pricePlanId,
    PaymentState? paymentState,
    DateTime? lastSubscriptionPaymentAt,
    DateTime? quotaResetAt,
    double? credit,
    double? creditGrant,
    double? llmTokensQuotaMtok,
    double? llmTokensUsageMtok,
    double? embeddingTokensQuotaMtok,
    double? embeddingTokensUsageMtok,
    double? rerankerQuotaKsearch,
    double? rerankerUsageKsearch,
    double? dbQuotaGib,
    double? dbUsageGib,
    DateTime? dbUsageUpdatedAt,
    double? fileQuotaGib,
    double? fileUsageGib,
    DateTime? fileUsageUpdatedAt,
    double? egressQuotaGib,
    double? egressUsageGib,
    bool? active,
    Map<String, Map<String, double?>>? quotas,
    DateTime? createdAt,
    DateTime? updatedAt,
    PricePlan? pricePlan,
  });
  OrganizationReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _OrganizationReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrganizationRead, $Out>
    implements OrganizationReadCopyWith<$R, OrganizationRead, $Out> {
  _OrganizationReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrganizationRead> $mapper =
      OrganizationReadMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get externalKeys => MapCopyWith(
    $value.externalKeys,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(externalKeys: v),
  );
  @override
  MapCopyWith<
    $R,
    String,
    Map<String, double?>,
    ObjectCopyWith<$R, Map<String, double?>, Map<String, double?>>
  >
  get quotas => MapCopyWith(
    $value.quotas,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(quotas: v),
  );
  @override
  PricePlanCopyWith<$R, PricePlan, PricePlan>? get pricePlan =>
      $value.pricePlan?.copyWith.$chain((v) => call(pricePlan: v));
  @override
  $R call({
    String? id,
    String? name,
    FiatCurrency? currency,
    Object? timezone = $none,
    Map<String, String>? externalKeys,
    String? createdBy,
    String? owner,
    Object? stripeId = $none,
    Object? pricePlanId = $none,
    PaymentState? paymentState,
    Object? lastSubscriptionPaymentAt = $none,
    DateTime? quotaResetAt,
    double? credit,
    double? creditGrant,
    Object? llmTokensQuotaMtok = $none,
    double? llmTokensUsageMtok,
    Object? embeddingTokensQuotaMtok = $none,
    double? embeddingTokensUsageMtok,
    Object? rerankerQuotaKsearch = $none,
    double? rerankerUsageKsearch,
    Object? dbQuotaGib = $none,
    double? dbUsageGib,
    DateTime? dbUsageUpdatedAt,
    Object? fileQuotaGib = $none,
    double? fileUsageGib,
    DateTime? fileUsageUpdatedAt,
    Object? egressQuotaGib = $none,
    double? egressUsageGib,
    bool? active,
    Map<String, Map<String, double?>>? quotas,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? pricePlan = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (currency != null) #currency: currency,
      if (timezone != $none) #timezone: timezone,
      if (externalKeys != null) #externalKeys: externalKeys,
      if (createdBy != null) #createdBy: createdBy,
      if (owner != null) #owner: owner,
      if (stripeId != $none) #stripeId: stripeId,
      if (pricePlanId != $none) #pricePlanId: pricePlanId,
      if (paymentState != null) #paymentState: paymentState,
      if (lastSubscriptionPaymentAt != $none)
        #lastSubscriptionPaymentAt: lastSubscriptionPaymentAt,
      if (quotaResetAt != null) #quotaResetAt: quotaResetAt,
      if (credit != null) #credit: credit,
      if (creditGrant != null) #creditGrant: creditGrant,
      if (llmTokensQuotaMtok != $none) #llmTokensQuotaMtok: llmTokensQuotaMtok,
      if (llmTokensUsageMtok != null) #llmTokensUsageMtok: llmTokensUsageMtok,
      if (embeddingTokensQuotaMtok != $none)
        #embeddingTokensQuotaMtok: embeddingTokensQuotaMtok,
      if (embeddingTokensUsageMtok != null)
        #embeddingTokensUsageMtok: embeddingTokensUsageMtok,
      if (rerankerQuotaKsearch != $none)
        #rerankerQuotaKsearch: rerankerQuotaKsearch,
      if (rerankerUsageKsearch != null)
        #rerankerUsageKsearch: rerankerUsageKsearch,
      if (dbQuotaGib != $none) #dbQuotaGib: dbQuotaGib,
      if (dbUsageGib != null) #dbUsageGib: dbUsageGib,
      if (dbUsageUpdatedAt != null) #dbUsageUpdatedAt: dbUsageUpdatedAt,
      if (fileQuotaGib != $none) #fileQuotaGib: fileQuotaGib,
      if (fileUsageGib != null) #fileUsageGib: fileUsageGib,
      if (fileUsageUpdatedAt != null) #fileUsageUpdatedAt: fileUsageUpdatedAt,
      if (egressQuotaGib != $none) #egressQuotaGib: egressQuotaGib,
      if (egressUsageGib != null) #egressUsageGib: egressUsageGib,
      if (active != null) #active: active,
      if (quotas != null) #quotas: quotas,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (pricePlan != $none) #pricePlan: pricePlan,
    }),
  );
  @override
  OrganizationRead $make(CopyWithData data) => OrganizationRead(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    currency: data.get(#currency, or: $value.currency),
    timezone: data.get(#timezone, or: $value.timezone),
    externalKeys: data.get(#externalKeys, or: $value.externalKeys),
    createdBy: data.get(#createdBy, or: $value.createdBy),
    owner: data.get(#owner, or: $value.owner),
    stripeId: data.get(#stripeId, or: $value.stripeId),
    pricePlanId: data.get(#pricePlanId, or: $value.pricePlanId),
    paymentState: data.get(#paymentState, or: $value.paymentState),
    lastSubscriptionPaymentAt: data.get(
      #lastSubscriptionPaymentAt,
      or: $value.lastSubscriptionPaymentAt,
    ),
    quotaResetAt: data.get(#quotaResetAt, or: $value.quotaResetAt),
    credit: data.get(#credit, or: $value.credit),
    creditGrant: data.get(#creditGrant, or: $value.creditGrant),
    llmTokensQuotaMtok: data.get(
      #llmTokensQuotaMtok,
      or: $value.llmTokensQuotaMtok,
    ),
    llmTokensUsageMtok: data.get(
      #llmTokensUsageMtok,
      or: $value.llmTokensUsageMtok,
    ),
    embeddingTokensQuotaMtok: data.get(
      #embeddingTokensQuotaMtok,
      or: $value.embeddingTokensQuotaMtok,
    ),
    embeddingTokensUsageMtok: data.get(
      #embeddingTokensUsageMtok,
      or: $value.embeddingTokensUsageMtok,
    ),
    rerankerQuotaKsearch: data.get(
      #rerankerQuotaKsearch,
      or: $value.rerankerQuotaKsearch,
    ),
    rerankerUsageKsearch: data.get(
      #rerankerUsageKsearch,
      or: $value.rerankerUsageKsearch,
    ),
    dbQuotaGib: data.get(#dbQuotaGib, or: $value.dbQuotaGib),
    dbUsageGib: data.get(#dbUsageGib, or: $value.dbUsageGib),
    dbUsageUpdatedAt: data.get(#dbUsageUpdatedAt, or: $value.dbUsageUpdatedAt),
    fileQuotaGib: data.get(#fileQuotaGib, or: $value.fileQuotaGib),
    fileUsageGib: data.get(#fileUsageGib, or: $value.fileUsageGib),
    fileUsageUpdatedAt: data.get(
      #fileUsageUpdatedAt,
      or: $value.fileUsageUpdatedAt,
    ),
    egressQuotaGib: data.get(#egressQuotaGib, or: $value.egressQuotaGib),
    egressUsageGib: data.get(#egressUsageGib, or: $value.egressUsageGib),
    active: data.get(#active, or: $value.active),
    quotas: data.get(#quotas, or: $value.quotas),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    pricePlan: data.get(#pricePlan, or: $value.pricePlan),
  );

  @override
  OrganizationReadCopyWith<$R2, OrganizationRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OrganizationReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectReadMapper extends ClassMapperBase<ProjectRead> {
  ProjectReadMapper._();

  static ProjectReadMapper? _instance;
  static ProjectReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectReadMapper._());
      ProjectMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      SanitizedMultilineStringMapper.ensureInitialized();
      OrganizationMapper.ensureInitialized();
      TableMetaResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectRead';

  static String _$id(ProjectRead v) => v.id;
  static const Field<ProjectRead, String> _f$id = Field('id', _$id);
  static String _$organizationId(ProjectRead v) => v.organizationId;
  static const Field<ProjectRead, String> _f$organizationId = Field(
    'organizationId',
    _$organizationId,
    key: r'organization_id',
  );
  static SanitizedNonEmptyString _$name(ProjectRead v) => v.name;
  static const Field<ProjectRead, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedMultilineString _$description(ProjectRead v) => v.description;
  static const Field<ProjectRead, SanitizedMultilineString> _f$description =
      Field(
        'description',
        _$description,
        opt: true,
        hook: SanitizedMultilineStringHook(),
      );
  static List<String> _$tags(ProjectRead v) => v.tags;
  static const Field<ProjectRead, List<String>> _f$tags = Field(
    'tags',
    _$tags,
    opt: true,
  );
  static String? _$profilePictureUrl(ProjectRead v) => v.profilePictureUrl;
  static const Field<ProjectRead, String> _f$profilePictureUrl = Field(
    'profilePictureUrl',
    _$profilePictureUrl,
    key: r'profile_picture_url',
    opt: true,
  );
  static String? _$coverPictureUrl(ProjectRead v) => v.coverPictureUrl;
  static const Field<ProjectRead, String> _f$coverPictureUrl = Field(
    'coverPictureUrl',
    _$coverPictureUrl,
    key: r'cover_picture_url',
    opt: true,
  );
  static String _$createdBy(ProjectRead v) => v.createdBy;
  static const Field<ProjectRead, String> _f$createdBy = Field(
    'createdBy',
    _$createdBy,
    key: r'created_by',
  );
  static String _$owner(ProjectRead v) => v.owner;
  static const Field<ProjectRead, String> _f$owner = Field('owner', _$owner);
  static DateTime _$createdAt(ProjectRead v) => v.createdAt;
  static const Field<ProjectRead, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(ProjectRead v) => v.updatedAt;
  static const Field<ProjectRead, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static Organization? _$organization(ProjectRead v) => v.organization;
  static const Field<ProjectRead, Organization> _f$organization = Field(
    'organization',
    _$organization,
    opt: true,
  );
  static List<TableMetaResponse>? _$chatAgents(ProjectRead v) => v.chatAgents;
  static const Field<ProjectRead, List<TableMetaResponse>> _f$chatAgents =
      Field('chatAgents', _$chatAgents, key: r'chat_agents', opt: true);

  @override
  final MappableFields<ProjectRead> fields = const {
    #id: _f$id,
    #organizationId: _f$organizationId,
    #name: _f$name,
    #description: _f$description,
    #tags: _f$tags,
    #profilePictureUrl: _f$profilePictureUrl,
    #coverPictureUrl: _f$coverPictureUrl,
    #createdBy: _f$createdBy,
    #owner: _f$owner,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #organization: _f$organization,
    #chatAgents: _f$chatAgents,
  };

  static ProjectRead _instantiate(DecodingData data) {
    return ProjectRead(
      id: data.dec(_f$id),
      organizationId: data.dec(_f$organizationId),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      tags: data.dec(_f$tags),
      profilePictureUrl: data.dec(_f$profilePictureUrl),
      coverPictureUrl: data.dec(_f$coverPictureUrl),
      createdBy: data.dec(_f$createdBy),
      owner: data.dec(_f$owner),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      organization: data.dec(_f$organization),
      chatAgents: data.dec(_f$chatAgents),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectRead>(map);
  }

  static ProjectRead fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectRead>(json);
  }
}

mixin ProjectReadMappable {
  String toJson() {
    return ProjectReadMapper.ensureInitialized().encodeJson<ProjectRead>(
      this as ProjectRead,
    );
  }

  Map<String, dynamic> toMap() {
    return ProjectReadMapper.ensureInitialized().encodeMap<ProjectRead>(
      this as ProjectRead,
    );
  }

  ProjectReadCopyWith<ProjectRead, ProjectRead, ProjectRead> get copyWith =>
      _ProjectReadCopyWithImpl<ProjectRead, ProjectRead>(
        this as ProjectRead,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProjectReadMapper.ensureInitialized().stringifyValue(
      this as ProjectRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectReadMapper.ensureInitialized().equalsValue(
      this as ProjectRead,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectReadMapper.ensureInitialized().hashValue(this as ProjectRead);
  }
}

extension ProjectReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectRead, $Out> {
  ProjectReadCopyWith<$R, ProjectRead, $Out> get $asProjectRead =>
      $base.as((v, t, t2) => _ProjectReadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectReadCopyWith<$R, $In extends ProjectRead, $Out>
    implements ProjectCopyWith<$R, $In, $Out> {
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  SanitizedMultilineStringCopyWith<
    $R,
    SanitizedMultilineString,
    SanitizedMultilineString
  >
  get description;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags;
  OrganizationCopyWith<$R, Organization, Organization>? get organization;
  ListCopyWith<
    $R,
    TableMetaResponse,
    TableMetaResponseCopyWith<$R, TableMetaResponse, TableMetaResponse>
  >?
  get chatAgents;
  @override
  $R call({
    String? id,
    String? organizationId,
    SanitizedNonEmptyString? name,
    SanitizedMultilineString? description,
    List<String>? tags,
    String? profilePictureUrl,
    String? coverPictureUrl,
    String? createdBy,
    String? owner,
    DateTime? createdAt,
    DateTime? updatedAt,
    Organization? organization,
    List<TableMetaResponse>? chatAgents,
  });
  ProjectReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProjectReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectRead, $Out>
    implements ProjectReadCopyWith<$R, ProjectRead, $Out> {
  _ProjectReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectRead> $mapper =
      ProjectReadMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  SanitizedMultilineStringCopyWith<
    $R,
    SanitizedMultilineString,
    SanitizedMultilineString
  >
  get description => ($value.description as SanitizedMultilineString).copyWith
      .$chain((v) => call(description: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags =>
      ListCopyWith(
        $value.tags,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(tags: v),
      );
  @override
  OrganizationCopyWith<$R, Organization, Organization>? get organization =>
      $value.organization?.copyWith.$chain((v) => call(organization: v));
  @override
  ListCopyWith<
    $R,
    TableMetaResponse,
    TableMetaResponseCopyWith<$R, TableMetaResponse, TableMetaResponse>
  >?
  get chatAgents => $value.chatAgents != null
      ? ListCopyWith(
          $value.chatAgents!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(chatAgents: v),
        )
      : null;
  @override
  $R call({
    String? id,
    String? organizationId,
    SanitizedNonEmptyString? name,
    Object? description = $none,
    Object? tags = $none,
    Object? profilePictureUrl = $none,
    Object? coverPictureUrl = $none,
    String? createdBy,
    String? owner,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? organization = $none,
    Object? chatAgents = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (organizationId != null) #organizationId: organizationId,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (tags != $none) #tags: tags,
      if (profilePictureUrl != $none) #profilePictureUrl: profilePictureUrl,
      if (coverPictureUrl != $none) #coverPictureUrl: coverPictureUrl,
      if (createdBy != null) #createdBy: createdBy,
      if (owner != null) #owner: owner,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (organization != $none) #organization: organization,
      if (chatAgents != $none) #chatAgents: chatAgents,
    }),
  );
  @override
  ProjectRead $make(CopyWithData data) => ProjectRead(
    id: data.get(#id, or: $value.id),
    organizationId: data.get(#organizationId, or: $value.organizationId),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    tags: data.get(#tags, or: $value.tags),
    profilePictureUrl: data.get(
      #profilePictureUrl,
      or: $value.profilePictureUrl,
    ),
    coverPictureUrl: data.get(#coverPictureUrl, or: $value.coverPictureUrl),
    createdBy: data.get(#createdBy, or: $value.createdBy),
    owner: data.get(#owner, or: $value.owner),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    organization: data.get(#organization, or: $value.organization),
    chatAgents: data.get(#chatAgents, or: $value.chatAgents),
  );

  @override
  ProjectReadCopyWith<$R2, ProjectRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProjectReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VerificationCodeUpdateMapper
    extends ClassMapperBase<VerificationCodeUpdate> {
  VerificationCodeUpdateMapper._();

  static VerificationCodeUpdateMapper? _instance;
  static VerificationCodeUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VerificationCodeUpdateMapper._());
      VerificationCodeCreateMapper.ensureInitialized();
      SanitizedStringMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VerificationCodeUpdate';

  static SanitizedString _$name(VerificationCodeUpdate v) => v.name;
  static const Field<VerificationCodeUpdate, SanitizedString> _f$name = Field(
    'name',
    _$name,
    opt: true,
    hook: SanitizedStringHook(),
  );
  static SanitizedNonEmptyString? _$role(VerificationCodeUpdate v) => v.role;
  static const Field<VerificationCodeUpdate, SanitizedNonEmptyString> _f$role =
      Field('role', _$role, opt: true, hook: SanitizedNonEmptyStringHook());

  @override
  final MappableFields<VerificationCodeUpdate> fields = const {
    #name: _f$name,
    #role: _f$role,
  };

  static VerificationCodeUpdate _instantiate(DecodingData data) {
    return VerificationCodeUpdate(
      name: data.dec(_f$name),
      role: data.dec(_f$role),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VerificationCodeUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VerificationCodeUpdate>(map);
  }

  static VerificationCodeUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<VerificationCodeUpdate>(json);
  }
}

mixin VerificationCodeUpdateMappable {
  String toJson() {
    return VerificationCodeUpdateMapper.ensureInitialized()
        .encodeJson<VerificationCodeUpdate>(this as VerificationCodeUpdate);
  }

  Map<String, dynamic> toMap() {
    return VerificationCodeUpdateMapper.ensureInitialized()
        .encodeMap<VerificationCodeUpdate>(this as VerificationCodeUpdate);
  }

  VerificationCodeUpdateCopyWith<
    VerificationCodeUpdate,
    VerificationCodeUpdate,
    VerificationCodeUpdate
  >
  get copyWith =>
      _VerificationCodeUpdateCopyWithImpl<
        VerificationCodeUpdate,
        VerificationCodeUpdate
      >(this as VerificationCodeUpdate, $identity, $identity);
  @override
  String toString() {
    return VerificationCodeUpdateMapper.ensureInitialized().stringifyValue(
      this as VerificationCodeUpdate,
    );
  }

  @override
  bool operator ==(Object other) {
    return VerificationCodeUpdateMapper.ensureInitialized().equalsValue(
      this as VerificationCodeUpdate,
      other,
    );
  }

  @override
  int get hashCode {
    return VerificationCodeUpdateMapper.ensureInitialized().hashValue(
      this as VerificationCodeUpdate,
    );
  }
}

extension VerificationCodeUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VerificationCodeUpdate, $Out> {
  VerificationCodeUpdateCopyWith<$R, VerificationCodeUpdate, $Out>
  get $asVerificationCodeUpdate => $base.as(
    (v, t, t2) => _VerificationCodeUpdateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VerificationCodeUpdateCopyWith<
  $R,
  $In extends VerificationCodeUpdate,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  SanitizedStringCopyWith<$R, SanitizedString, SanitizedString> get name;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get role;
  $R call({SanitizedString? name, SanitizedNonEmptyString? role});
  VerificationCodeUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VerificationCodeUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VerificationCodeUpdate, $Out>
    implements
        VerificationCodeUpdateCopyWith<$R, VerificationCodeUpdate, $Out> {
  _VerificationCodeUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VerificationCodeUpdate> $mapper =
      VerificationCodeUpdateMapper.ensureInitialized();
  @override
  SanitizedStringCopyWith<$R, SanitizedString, SanitizedString> get name =>
      ($value.name as SanitizedString).copyWith.$chain((v) => call(name: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get role => $value.role?.copyWith.$chain((v) => call(role: v));
  @override
  $R call({Object? name = $none, Object? role = $none}) => $apply(
    FieldCopyWithData({
      if (name != $none) #name: name,
      if (role != $none) #role: role,
    }),
  );
  @override
  VerificationCodeUpdate $make(CopyWithData data) => VerificationCodeUpdate(
    name: data.get(#name, or: $value.name),
    role: data.get(#role, or: $value.role),
  );

  @override
  VerificationCodeUpdateCopyWith<$R2, VerificationCodeUpdate, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VerificationCodeUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VerificationCodeCreateMapper
    extends ClassMapperBase<VerificationCodeCreate> {
  VerificationCodeCreateMapper._();

  static VerificationCodeCreateMapper? _instance;
  static VerificationCodeCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VerificationCodeCreateMapper._());
      VerificationCodeUpdateMapper.ensureInitialized();
      VerificationCodeMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      SanitizedStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VerificationCodeCreate';

  static SanitizedNonEmptyString _$userEmail(VerificationCodeCreate v) =>
      v.userEmail;
  static const Field<VerificationCodeCreate, SanitizedNonEmptyString>
  _f$userEmail = Field(
    'userEmail',
    _$userEmail,
    key: r'user_email',
    hook: SanitizedNonEmptyStringHook(),
  );
  static DateTime _$expiry(VerificationCodeCreate v) => v.expiry;
  static const Field<VerificationCodeCreate, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static SanitizedNonEmptyString? _$organizationId(VerificationCodeCreate v) =>
      v.organizationId;
  static const Field<VerificationCodeCreate, SanitizedNonEmptyString>
  _f$organizationId = Field(
    'organizationId',
    _$organizationId,
    key: r'organization_id',
    opt: true,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedNonEmptyString? _$projectId(VerificationCodeCreate v) =>
      v.projectId;
  static const Field<VerificationCodeCreate, SanitizedNonEmptyString>
  _f$projectId = Field(
    'projectId',
    _$projectId,
    key: r'project_id',
    opt: true,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedString _$name(VerificationCodeCreate v) => v.name;
  static const Field<VerificationCodeCreate, SanitizedString> _f$name = Field(
    'name',
    _$name,
    opt: true,
    hook: SanitizedStringHook(),
  );
  static SanitizedNonEmptyString? _$role(VerificationCodeCreate v) => v.role;
  static const Field<VerificationCodeCreate, SanitizedNonEmptyString> _f$role =
      Field('role', _$role, opt: true, hook: SanitizedNonEmptyStringHook());

  @override
  final MappableFields<VerificationCodeCreate> fields = const {
    #userEmail: _f$userEmail,
    #expiry: _f$expiry,
    #organizationId: _f$organizationId,
    #projectId: _f$projectId,
    #name: _f$name,
    #role: _f$role,
  };

  static VerificationCodeCreate _instantiate(DecodingData data) {
    return VerificationCodeCreate(
      userEmail: data.dec(_f$userEmail),
      expiry: data.dec(_f$expiry),
      organizationId: data.dec(_f$organizationId),
      projectId: data.dec(_f$projectId),
      name: data.dec(_f$name),
      role: data.dec(_f$role),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VerificationCodeCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VerificationCodeCreate>(map);
  }

  static VerificationCodeCreate fromJson(String json) {
    return ensureInitialized().decodeJson<VerificationCodeCreate>(json);
  }
}

mixin VerificationCodeCreateMappable {
  String toJson() {
    return VerificationCodeCreateMapper.ensureInitialized()
        .encodeJson<VerificationCodeCreate>(this as VerificationCodeCreate);
  }

  Map<String, dynamic> toMap() {
    return VerificationCodeCreateMapper.ensureInitialized()
        .encodeMap<VerificationCodeCreate>(this as VerificationCodeCreate);
  }

  VerificationCodeCreateCopyWith<
    VerificationCodeCreate,
    VerificationCodeCreate,
    VerificationCodeCreate
  >
  get copyWith =>
      _VerificationCodeCreateCopyWithImpl<
        VerificationCodeCreate,
        VerificationCodeCreate
      >(this as VerificationCodeCreate, $identity, $identity);
  @override
  String toString() {
    return VerificationCodeCreateMapper.ensureInitialized().stringifyValue(
      this as VerificationCodeCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return VerificationCodeCreateMapper.ensureInitialized().equalsValue(
      this as VerificationCodeCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return VerificationCodeCreateMapper.ensureInitialized().hashValue(
      this as VerificationCodeCreate,
    );
  }
}

extension VerificationCodeCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VerificationCodeCreate, $Out> {
  VerificationCodeCreateCopyWith<$R, VerificationCodeCreate, $Out>
  get $asVerificationCodeCreate => $base.as(
    (v, t, t2) => _VerificationCodeCreateCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VerificationCodeCreateCopyWith<
  $R,
  $In extends VerificationCodeCreate,
  $Out
>
    implements VerificationCodeUpdateCopyWith<$R, $In, $Out> {
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get userEmail;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get organizationId;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId;
  SanitizedStringCopyWith<$R, SanitizedString, SanitizedString> get name;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get role;
  @override
  $R call({
    SanitizedNonEmptyString? userEmail,
    DateTime? expiry,
    SanitizedNonEmptyString? organizationId,
    SanitizedNonEmptyString? projectId,
    SanitizedString? name,
    SanitizedNonEmptyString? role,
  });
  VerificationCodeCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VerificationCodeCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VerificationCodeCreate, $Out>
    implements
        VerificationCodeCreateCopyWith<$R, VerificationCodeCreate, $Out> {
  _VerificationCodeCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VerificationCodeCreate> $mapper =
      VerificationCodeCreateMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get userEmail => $value.userEmail.copyWith.$chain((v) => call(userEmail: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get organizationId =>
      $value.organizationId?.copyWith.$chain((v) => call(organizationId: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId => $value.projectId?.copyWith.$chain((v) => call(projectId: v));
  @override
  SanitizedStringCopyWith<$R, SanitizedString, SanitizedString> get name =>
      ($value.name as SanitizedString).copyWith.$chain((v) => call(name: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get role => $value.role?.copyWith.$chain((v) => call(role: v));
  @override
  $R call({
    SanitizedNonEmptyString? userEmail,
    DateTime? expiry,
    Object? organizationId = $none,
    Object? projectId = $none,
    Object? name = $none,
    Object? role = $none,
  }) => $apply(
    FieldCopyWithData({
      if (userEmail != null) #userEmail: userEmail,
      if (expiry != null) #expiry: expiry,
      if (organizationId != $none) #organizationId: organizationId,
      if (projectId != $none) #projectId: projectId,
      if (name != $none) #name: name,
      if (role != $none) #role: role,
    }),
  );
  @override
  VerificationCodeCreate $make(CopyWithData data) => VerificationCodeCreate(
    userEmail: data.get(#userEmail, or: $value.userEmail),
    expiry: data.get(#expiry, or: $value.expiry),
    organizationId: data.get(#organizationId, or: $value.organizationId),
    projectId: data.get(#projectId, or: $value.projectId),
    name: data.get(#name, or: $value.name),
    role: data.get(#role, or: $value.role),
  );

  @override
  VerificationCodeCreateCopyWith<$R2, VerificationCodeCreate, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VerificationCodeCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VerificationCodeMapper extends ClassMapperBase<VerificationCode> {
  VerificationCodeMapper._();

  static VerificationCodeMapper? _instance;
  static VerificationCodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VerificationCodeMapper._());
      VerificationCodeCreateMapper.ensureInitialized();
      VerificationCodeReadMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      SanitizedStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VerificationCode';

  static String _$id(VerificationCode v) => v.id;
  static const Field<VerificationCode, String> _f$id = Field('id', _$id);
  static SanitizedNonEmptyString _$userEmail(VerificationCode v) => v.userEmail;
  static const Field<VerificationCode, SanitizedNonEmptyString> _f$userEmail =
      Field(
        'userEmail',
        _$userEmail,
        key: r'user_email',
        hook: SanitizedNonEmptyStringHook(),
      );
  static DateTime _$expiry(VerificationCode v) => v.expiry;
  static const Field<VerificationCode, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static SanitizedNonEmptyString? _$organizationId(VerificationCode v) =>
      v.organizationId;
  static const Field<VerificationCode, SanitizedNonEmptyString>
  _f$organizationId = Field(
    'organizationId',
    _$organizationId,
    key: r'organization_id',
    opt: true,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedNonEmptyString? _$projectId(VerificationCode v) =>
      v.projectId;
  static const Field<VerificationCode, SanitizedNonEmptyString> _f$projectId =
      Field(
        'projectId',
        _$projectId,
        key: r'project_id',
        opt: true,
        hook: SanitizedNonEmptyStringHook(),
      );
  static SanitizedString _$name(VerificationCode v) => v.name;
  static const Field<VerificationCode, SanitizedString> _f$name = Field(
    'name',
    _$name,
    opt: true,
    hook: SanitizedStringHook(),
  );
  static SanitizedNonEmptyString? _$role(VerificationCode v) => v.role;
  static const Field<VerificationCode, SanitizedNonEmptyString> _f$role = Field(
    'role',
    _$role,
    opt: true,
    hook: SanitizedNonEmptyStringHook(),
  );
  static DateTime _$createdAt(VerificationCode v) => v.createdAt;
  static const Field<VerificationCode, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(VerificationCode v) => v.updatedAt;
  static const Field<VerificationCode, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );

  @override
  final MappableFields<VerificationCode> fields = const {
    #id: _f$id,
    #userEmail: _f$userEmail,
    #expiry: _f$expiry,
    #organizationId: _f$organizationId,
    #projectId: _f$projectId,
    #name: _f$name,
    #role: _f$role,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static VerificationCode _instantiate(DecodingData data) {
    return VerificationCode(
      id: data.dec(_f$id),
      userEmail: data.dec(_f$userEmail),
      expiry: data.dec(_f$expiry),
      organizationId: data.dec(_f$organizationId),
      projectId: data.dec(_f$projectId),
      name: data.dec(_f$name),
      role: data.dec(_f$role),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VerificationCode fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VerificationCode>(map);
  }

  static VerificationCode fromJson(String json) {
    return ensureInitialized().decodeJson<VerificationCode>(json);
  }
}

mixin VerificationCodeMappable {
  String toJson() {
    return VerificationCodeMapper.ensureInitialized()
        .encodeJson<VerificationCode>(this as VerificationCode);
  }

  Map<String, dynamic> toMap() {
    return VerificationCodeMapper.ensureInitialized()
        .encodeMap<VerificationCode>(this as VerificationCode);
  }

  VerificationCodeCopyWith<VerificationCode, VerificationCode, VerificationCode>
  get copyWith =>
      _VerificationCodeCopyWithImpl<VerificationCode, VerificationCode>(
        this as VerificationCode,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return VerificationCodeMapper.ensureInitialized().stringifyValue(
      this as VerificationCode,
    );
  }

  @override
  bool operator ==(Object other) {
    return VerificationCodeMapper.ensureInitialized().equalsValue(
      this as VerificationCode,
      other,
    );
  }

  @override
  int get hashCode {
    return VerificationCodeMapper.ensureInitialized().hashValue(
      this as VerificationCode,
    );
  }
}

extension VerificationCodeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VerificationCode, $Out> {
  VerificationCodeCopyWith<$R, VerificationCode, $Out>
  get $asVerificationCode =>
      $base.as((v, t, t2) => _VerificationCodeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VerificationCodeCopyWith<$R, $In extends VerificationCode, $Out>
    implements VerificationCodeCreateCopyWith<$R, $In, $Out> {
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get userEmail;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get organizationId;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId;
  SanitizedStringCopyWith<$R, SanitizedString, SanitizedString> get name;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get role;
  @override
  $R call({
    String? id,
    SanitizedNonEmptyString? userEmail,
    DateTime? expiry,
    SanitizedNonEmptyString? organizationId,
    SanitizedNonEmptyString? projectId,
    SanitizedString? name,
    SanitizedNonEmptyString? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  VerificationCodeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VerificationCodeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VerificationCode, $Out>
    implements VerificationCodeCopyWith<$R, VerificationCode, $Out> {
  _VerificationCodeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VerificationCode> $mapper =
      VerificationCodeMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get userEmail => $value.userEmail.copyWith.$chain((v) => call(userEmail: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get organizationId =>
      $value.organizationId?.copyWith.$chain((v) => call(organizationId: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId => $value.projectId?.copyWith.$chain((v) => call(projectId: v));
  @override
  SanitizedStringCopyWith<$R, SanitizedString, SanitizedString> get name =>
      ($value.name as SanitizedString).copyWith.$chain((v) => call(name: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get role => $value.role?.copyWith.$chain((v) => call(role: v));
  @override
  $R call({
    String? id,
    SanitizedNonEmptyString? userEmail,
    DateTime? expiry,
    Object? organizationId = $none,
    Object? projectId = $none,
    Object? name = $none,
    Object? role = $none,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (userEmail != null) #userEmail: userEmail,
      if (expiry != null) #expiry: expiry,
      if (organizationId != $none) #organizationId: organizationId,
      if (projectId != $none) #projectId: projectId,
      if (name != $none) #name: name,
      if (role != $none) #role: role,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  VerificationCode $make(CopyWithData data) => VerificationCode(
    id: data.get(#id, or: $value.id),
    userEmail: data.get(#userEmail, or: $value.userEmail),
    expiry: data.get(#expiry, or: $value.expiry),
    organizationId: data.get(#organizationId, or: $value.organizationId),
    projectId: data.get(#projectId, or: $value.projectId),
    name: data.get(#name, or: $value.name),
    role: data.get(#role, or: $value.role),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  VerificationCodeCopyWith<$R2, VerificationCode, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _VerificationCodeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VerificationCodeReadMapper extends ClassMapperBase<VerificationCodeRead> {
  VerificationCodeReadMapper._();

  static VerificationCodeReadMapper? _instance;
  static VerificationCodeReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VerificationCodeReadMapper._());
      VerificationCodeMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
      SanitizedStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VerificationCodeRead';

  static String _$id(VerificationCodeRead v) => v.id;
  static const Field<VerificationCodeRead, String> _f$id = Field('id', _$id);
  static SanitizedNonEmptyString _$userEmail(VerificationCodeRead v) =>
      v.userEmail;
  static const Field<VerificationCodeRead, SanitizedNonEmptyString>
  _f$userEmail = Field(
    'userEmail',
    _$userEmail,
    key: r'user_email',
    hook: SanitizedNonEmptyStringHook(),
  );
  static DateTime _$expiry(VerificationCodeRead v) => v.expiry;
  static const Field<VerificationCodeRead, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static SanitizedNonEmptyString? _$organizationId(VerificationCodeRead v) =>
      v.organizationId;
  static const Field<VerificationCodeRead, SanitizedNonEmptyString>
  _f$organizationId = Field(
    'organizationId',
    _$organizationId,
    key: r'organization_id',
    opt: true,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedNonEmptyString? _$projectId(VerificationCodeRead v) =>
      v.projectId;
  static const Field<VerificationCodeRead, SanitizedNonEmptyString>
  _f$projectId = Field(
    'projectId',
    _$projectId,
    key: r'project_id',
    opt: true,
    hook: SanitizedNonEmptyStringHook(),
  );
  static SanitizedString _$name(VerificationCodeRead v) => v.name;
  static const Field<VerificationCodeRead, SanitizedString> _f$name = Field(
    'name',
    _$name,
    opt: true,
    hook: SanitizedStringHook(),
  );
  static SanitizedNonEmptyString? _$role(VerificationCodeRead v) => v.role;
  static const Field<VerificationCodeRead, SanitizedNonEmptyString> _f$role =
      Field('role', _$role, opt: true, hook: SanitizedNonEmptyStringHook());
  static DateTime _$createdAt(VerificationCodeRead v) => v.createdAt;
  static const Field<VerificationCodeRead, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(VerificationCodeRead v) => v.updatedAt;
  static const Field<VerificationCodeRead, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );

  @override
  final MappableFields<VerificationCodeRead> fields = const {
    #id: _f$id,
    #userEmail: _f$userEmail,
    #expiry: _f$expiry,
    #organizationId: _f$organizationId,
    #projectId: _f$projectId,
    #name: _f$name,
    #role: _f$role,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static VerificationCodeRead _instantiate(DecodingData data) {
    return VerificationCodeRead(
      id: data.dec(_f$id),
      userEmail: data.dec(_f$userEmail),
      expiry: data.dec(_f$expiry),
      organizationId: data.dec(_f$organizationId),
      projectId: data.dec(_f$projectId),
      name: data.dec(_f$name),
      role: data.dec(_f$role),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VerificationCodeRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VerificationCodeRead>(map);
  }

  static VerificationCodeRead fromJson(String json) {
    return ensureInitialized().decodeJson<VerificationCodeRead>(json);
  }
}

mixin VerificationCodeReadMappable {
  String toJson() {
    return VerificationCodeReadMapper.ensureInitialized()
        .encodeJson<VerificationCodeRead>(this as VerificationCodeRead);
  }

  Map<String, dynamic> toMap() {
    return VerificationCodeReadMapper.ensureInitialized()
        .encodeMap<VerificationCodeRead>(this as VerificationCodeRead);
  }

  VerificationCodeReadCopyWith<
    VerificationCodeRead,
    VerificationCodeRead,
    VerificationCodeRead
  >
  get copyWith =>
      _VerificationCodeReadCopyWithImpl<
        VerificationCodeRead,
        VerificationCodeRead
      >(this as VerificationCodeRead, $identity, $identity);
  @override
  String toString() {
    return VerificationCodeReadMapper.ensureInitialized().stringifyValue(
      this as VerificationCodeRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return VerificationCodeReadMapper.ensureInitialized().equalsValue(
      this as VerificationCodeRead,
      other,
    );
  }

  @override
  int get hashCode {
    return VerificationCodeReadMapper.ensureInitialized().hashValue(
      this as VerificationCodeRead,
    );
  }
}

extension VerificationCodeReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VerificationCodeRead, $Out> {
  VerificationCodeReadCopyWith<$R, VerificationCodeRead, $Out>
  get $asVerificationCodeRead => $base.as(
    (v, t, t2) => _VerificationCodeReadCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VerificationCodeReadCopyWith<
  $R,
  $In extends VerificationCodeRead,
  $Out
>
    implements VerificationCodeCopyWith<$R, $In, $Out> {
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get userEmail;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get organizationId;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId;
  SanitizedStringCopyWith<$R, SanitizedString, SanitizedString> get name;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get role;
  @override
  $R call({
    String? id,
    SanitizedNonEmptyString? userEmail,
    DateTime? expiry,
    SanitizedNonEmptyString? organizationId,
    SanitizedNonEmptyString? projectId,
    SanitizedString? name,
    SanitizedNonEmptyString? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  VerificationCodeReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VerificationCodeReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VerificationCodeRead, $Out>
    implements VerificationCodeReadCopyWith<$R, VerificationCodeRead, $Out> {
  _VerificationCodeReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VerificationCodeRead> $mapper =
      VerificationCodeReadMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get userEmail => $value.userEmail.copyWith.$chain((v) => call(userEmail: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get organizationId =>
      $value.organizationId?.copyWith.$chain((v) => call(organizationId: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId => $value.projectId?.copyWith.$chain((v) => call(projectId: v));
  @override
  SanitizedStringCopyWith<$R, SanitizedString, SanitizedString> get name =>
      ($value.name as SanitizedString).copyWith.$chain((v) => call(name: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get role => $value.role?.copyWith.$chain((v) => call(role: v));
  @override
  $R call({
    String? id,
    SanitizedNonEmptyString? userEmail,
    DateTime? expiry,
    Object? organizationId = $none,
    Object? projectId = $none,
    Object? name = $none,
    Object? role = $none,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (userEmail != null) #userEmail: userEmail,
      if (expiry != null) #expiry: expiry,
      if (organizationId != $none) #organizationId: organizationId,
      if (projectId != $none) #projectId: projectId,
      if (name != $none) #name: name,
      if (role != $none) #role: role,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  VerificationCodeRead $make(CopyWithData data) => VerificationCodeRead(
    id: data.get(#id, or: $value.id),
    userEmail: data.get(#userEmail, or: $value.userEmail),
    expiry: data.get(#expiry, or: $value.expiry),
    organizationId: data.get(#organizationId, or: $value.organizationId),
    projectId: data.get(#projectId, or: $value.projectId),
    name: data.get(#name, or: $value.name),
    role: data.get(#role, or: $value.role),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  VerificationCodeReadCopyWith<$R2, VerificationCodeRead, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VerificationCodeReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectKeyUpdateMapper extends ClassMapperBase<ProjectKeyUpdate> {
  ProjectKeyUpdateMapper._();

  static ProjectKeyUpdateMapper? _instance;
  static ProjectKeyUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectKeyUpdateMapper._());
      ProjectKeyCreateMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectKeyUpdate';

  static SanitizedNonEmptyString _$name(ProjectKeyUpdate v) => v.name;
  static const Field<ProjectKeyUpdate, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static DateTime? _$expiry(ProjectKeyUpdate v) => v.expiry;
  static const Field<ProjectKeyUpdate, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
    opt: true,
  );

  @override
  final MappableFields<ProjectKeyUpdate> fields = const {
    #name: _f$name,
    #expiry: _f$expiry,
  };

  static ProjectKeyUpdate _instantiate(DecodingData data) {
    return ProjectKeyUpdate(
      name: data.dec(_f$name),
      expiry: data.dec(_f$expiry),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectKeyUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectKeyUpdate>(map);
  }

  static ProjectKeyUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectKeyUpdate>(json);
  }
}

mixin ProjectKeyUpdateMappable {
  String toJson() {
    return ProjectKeyUpdateMapper.ensureInitialized()
        .encodeJson<ProjectKeyUpdate>(this as ProjectKeyUpdate);
  }

  Map<String, dynamic> toMap() {
    return ProjectKeyUpdateMapper.ensureInitialized()
        .encodeMap<ProjectKeyUpdate>(this as ProjectKeyUpdate);
  }

  ProjectKeyUpdateCopyWith<ProjectKeyUpdate, ProjectKeyUpdate, ProjectKeyUpdate>
  get copyWith =>
      _ProjectKeyUpdateCopyWithImpl<ProjectKeyUpdate, ProjectKeyUpdate>(
        this as ProjectKeyUpdate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProjectKeyUpdateMapper.ensureInitialized().stringifyValue(
      this as ProjectKeyUpdate,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectKeyUpdateMapper.ensureInitialized().equalsValue(
      this as ProjectKeyUpdate,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectKeyUpdateMapper.ensureInitialized().hashValue(
      this as ProjectKeyUpdate,
    );
  }
}

extension ProjectKeyUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectKeyUpdate, $Out> {
  ProjectKeyUpdateCopyWith<$R, ProjectKeyUpdate, $Out>
  get $asProjectKeyUpdate =>
      $base.as((v, t, t2) => _ProjectKeyUpdateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectKeyUpdateCopyWith<$R, $In extends ProjectKeyUpdate, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  $R call({SanitizedNonEmptyString? name, DateTime? expiry});
  ProjectKeyUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ProjectKeyUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectKeyUpdate, $Out>
    implements ProjectKeyUpdateCopyWith<$R, ProjectKeyUpdate, $Out> {
  _ProjectKeyUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectKeyUpdate> $mapper =
      ProjectKeyUpdateMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  $R call({SanitizedNonEmptyString? name, Object? expiry = $none}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (expiry != $none) #expiry: expiry,
    }),
  );
  @override
  ProjectKeyUpdate $make(CopyWithData data) => ProjectKeyUpdate(
    name: data.get(#name, or: $value.name),
    expiry: data.get(#expiry, or: $value.expiry),
  );

  @override
  ProjectKeyUpdateCopyWith<$R2, ProjectKeyUpdate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProjectKeyUpdateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectKeyCreateMapper extends ClassMapperBase<ProjectKeyCreate> {
  ProjectKeyCreateMapper._();

  static ProjectKeyCreateMapper? _instance;
  static ProjectKeyCreateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectKeyCreateMapper._());
      ProjectKeyUpdateMapper.ensureInitialized();
      ProjectKeyMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectKeyCreate';

  static SanitizedNonEmptyString _$name(ProjectKeyCreate v) => v.name;
  static const Field<ProjectKeyCreate, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static DateTime? _$expiry(ProjectKeyCreate v) => v.expiry;
  static const Field<ProjectKeyCreate, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
    opt: true,
  );
  static SanitizedNonEmptyString? _$projectId(ProjectKeyCreate v) =>
      v.projectId;
  static const Field<ProjectKeyCreate, SanitizedNonEmptyString> _f$projectId =
      Field(
        'projectId',
        _$projectId,
        key: r'project_id',
        opt: true,
        hook: SanitizedNonEmptyStringHook(),
      );

  @override
  final MappableFields<ProjectKeyCreate> fields = const {
    #name: _f$name,
    #expiry: _f$expiry,
    #projectId: _f$projectId,
  };

  static ProjectKeyCreate _instantiate(DecodingData data) {
    return ProjectKeyCreate(
      name: data.dec(_f$name),
      expiry: data.dec(_f$expiry),
      projectId: data.dec(_f$projectId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectKeyCreate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectKeyCreate>(map);
  }

  static ProjectKeyCreate fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectKeyCreate>(json);
  }
}

mixin ProjectKeyCreateMappable {
  String toJson() {
    return ProjectKeyCreateMapper.ensureInitialized()
        .encodeJson<ProjectKeyCreate>(this as ProjectKeyCreate);
  }

  Map<String, dynamic> toMap() {
    return ProjectKeyCreateMapper.ensureInitialized()
        .encodeMap<ProjectKeyCreate>(this as ProjectKeyCreate);
  }

  ProjectKeyCreateCopyWith<ProjectKeyCreate, ProjectKeyCreate, ProjectKeyCreate>
  get copyWith =>
      _ProjectKeyCreateCopyWithImpl<ProjectKeyCreate, ProjectKeyCreate>(
        this as ProjectKeyCreate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProjectKeyCreateMapper.ensureInitialized().stringifyValue(
      this as ProjectKeyCreate,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectKeyCreateMapper.ensureInitialized().equalsValue(
      this as ProjectKeyCreate,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectKeyCreateMapper.ensureInitialized().hashValue(
      this as ProjectKeyCreate,
    );
  }
}

extension ProjectKeyCreateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectKeyCreate, $Out> {
  ProjectKeyCreateCopyWith<$R, ProjectKeyCreate, $Out>
  get $asProjectKeyCreate =>
      $base.as((v, t, t2) => _ProjectKeyCreateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectKeyCreateCopyWith<$R, $In extends ProjectKeyCreate, $Out>
    implements ProjectKeyUpdateCopyWith<$R, $In, $Out> {
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId;
  @override
  $R call({
    SanitizedNonEmptyString? name,
    DateTime? expiry,
    SanitizedNonEmptyString? projectId,
  });
  ProjectKeyCreateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ProjectKeyCreateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectKeyCreate, $Out>
    implements ProjectKeyCreateCopyWith<$R, ProjectKeyCreate, $Out> {
  _ProjectKeyCreateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectKeyCreate> $mapper =
      ProjectKeyCreateMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId => $value.projectId?.copyWith.$chain((v) => call(projectId: v));
  @override
  $R call({
    SanitizedNonEmptyString? name,
    Object? expiry = $none,
    Object? projectId = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (expiry != $none) #expiry: expiry,
      if (projectId != $none) #projectId: projectId,
    }),
  );
  @override
  ProjectKeyCreate $make(CopyWithData data) => ProjectKeyCreate(
    name: data.get(#name, or: $value.name),
    expiry: data.get(#expiry, or: $value.expiry),
    projectId: data.get(#projectId, or: $value.projectId),
  );

  @override
  ProjectKeyCreateCopyWith<$R2, ProjectKeyCreate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProjectKeyCreateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectKeyMapper extends ClassMapperBase<ProjectKey> {
  ProjectKeyMapper._();

  static ProjectKeyMapper? _instance;
  static ProjectKeyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectKeyMapper._());
      ProjectKeyCreateMapper.ensureInitialized();
      ProjectKeyReadMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectKey';

  static SanitizedNonEmptyString _$name(ProjectKey v) => v.name;
  static const Field<ProjectKey, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static DateTime? _$expiry(ProjectKey v) => v.expiry;
  static const Field<ProjectKey, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
    opt: true,
  );
  static SanitizedNonEmptyString? _$projectId(ProjectKey v) => v.projectId;
  static const Field<ProjectKey, SanitizedNonEmptyString> _f$projectId = Field(
    'projectId',
    _$projectId,
    key: r'project_id',
    opt: true,
    hook: SanitizedNonEmptyStringHook(),
  );
  static String _$id(ProjectKey v) => v.id;
  static const Field<ProjectKey, String> _f$id = Field('id', _$id);
  static String _$userId(ProjectKey v) => v.userId;
  static const Field<ProjectKey, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static DateTime _$createdAt(ProjectKey v) => v.createdAt;
  static const Field<ProjectKey, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(ProjectKey v) => v.updatedAt;
  static const Field<ProjectKey, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );

  @override
  final MappableFields<ProjectKey> fields = const {
    #name: _f$name,
    #expiry: _f$expiry,
    #projectId: _f$projectId,
    #id: _f$id,
    #userId: _f$userId,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static ProjectKey _instantiate(DecodingData data) {
    return ProjectKey(
      name: data.dec(_f$name),
      expiry: data.dec(_f$expiry),
      projectId: data.dec(_f$projectId),
      id: data.dec(_f$id),
      userId: data.dec(_f$userId),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectKey fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectKey>(map);
  }

  static ProjectKey fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectKey>(json);
  }
}

mixin ProjectKeyMappable {
  String toJson() {
    return ProjectKeyMapper.ensureInitialized().encodeJson<ProjectKey>(
      this as ProjectKey,
    );
  }

  Map<String, dynamic> toMap() {
    return ProjectKeyMapper.ensureInitialized().encodeMap<ProjectKey>(
      this as ProjectKey,
    );
  }

  ProjectKeyCopyWith<ProjectKey, ProjectKey, ProjectKey> get copyWith =>
      _ProjectKeyCopyWithImpl<ProjectKey, ProjectKey>(
        this as ProjectKey,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProjectKeyMapper.ensureInitialized().stringifyValue(
      this as ProjectKey,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectKeyMapper.ensureInitialized().equalsValue(
      this as ProjectKey,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectKeyMapper.ensureInitialized().hashValue(this as ProjectKey);
  }
}

extension ProjectKeyValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectKey, $Out> {
  ProjectKeyCopyWith<$R, ProjectKey, $Out> get $asProjectKey =>
      $base.as((v, t, t2) => _ProjectKeyCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectKeyCopyWith<$R, $In extends ProjectKey, $Out>
    implements ProjectKeyCreateCopyWith<$R, $In, $Out> {
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId;
  @override
  $R call({
    SanitizedNonEmptyString? name,
    DateTime? expiry,
    SanitizedNonEmptyString? projectId,
    String? id,
    String? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  ProjectKeyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProjectKeyCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectKey, $Out>
    implements ProjectKeyCopyWith<$R, ProjectKey, $Out> {
  _ProjectKeyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectKey> $mapper =
      ProjectKeyMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId => $value.projectId?.copyWith.$chain((v) => call(projectId: v));
  @override
  $R call({
    SanitizedNonEmptyString? name,
    Object? expiry = $none,
    Object? projectId = $none,
    String? id,
    String? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (expiry != $none) #expiry: expiry,
      if (projectId != $none) #projectId: projectId,
      if (id != null) #id: id,
      if (userId != null) #userId: userId,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  ProjectKey $make(CopyWithData data) => ProjectKey(
    name: data.get(#name, or: $value.name),
    expiry: data.get(#expiry, or: $value.expiry),
    projectId: data.get(#projectId, or: $value.projectId),
    id: data.get(#id, or: $value.id),
    userId: data.get(#userId, or: $value.userId),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  ProjectKeyCopyWith<$R2, ProjectKey, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProjectKeyCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProjectKeyReadMapper extends ClassMapperBase<ProjectKeyRead> {
  ProjectKeyReadMapper._();

  static ProjectKeyReadMapper? _instance;
  static ProjectKeyReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectKeyReadMapper._());
      ProjectKeyMapper.ensureInitialized();
      SanitizedNonEmptyStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectKeyRead';

  static SanitizedNonEmptyString _$name(ProjectKeyRead v) => v.name;
  static const Field<ProjectKeyRead, SanitizedNonEmptyString> _f$name = Field(
    'name',
    _$name,
    hook: SanitizedNonEmptyStringHook(),
  );
  static DateTime? _$expiry(ProjectKeyRead v) => v.expiry;
  static const Field<ProjectKeyRead, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
    opt: true,
  );
  static SanitizedNonEmptyString? _$projectId(ProjectKeyRead v) => v.projectId;
  static const Field<ProjectKeyRead, SanitizedNonEmptyString> _f$projectId =
      Field(
        'projectId',
        _$projectId,
        key: r'project_id',
        opt: true,
        hook: SanitizedNonEmptyStringHook(),
      );
  static String _$id(ProjectKeyRead v) => v.id;
  static const Field<ProjectKeyRead, String> _f$id = Field('id', _$id);
  static String _$userId(ProjectKeyRead v) => v.userId;
  static const Field<ProjectKeyRead, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static DateTime _$createdAt(ProjectKeyRead v) => v.createdAt;
  static const Field<ProjectKeyRead, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime _$updatedAt(ProjectKeyRead v) => v.updatedAt;
  static const Field<ProjectKeyRead, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );

  @override
  final MappableFields<ProjectKeyRead> fields = const {
    #name: _f$name,
    #expiry: _f$expiry,
    #projectId: _f$projectId,
    #id: _f$id,
    #userId: _f$userId,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static ProjectKeyRead _instantiate(DecodingData data) {
    return ProjectKeyRead(
      name: data.dec(_f$name),
      expiry: data.dec(_f$expiry),
      projectId: data.dec(_f$projectId),
      id: data.dec(_f$id),
      userId: data.dec(_f$userId),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectKeyRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectKeyRead>(map);
  }

  static ProjectKeyRead fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectKeyRead>(json);
  }
}

mixin ProjectKeyReadMappable {
  String toJson() {
    return ProjectKeyReadMapper.ensureInitialized().encodeJson<ProjectKeyRead>(
      this as ProjectKeyRead,
    );
  }

  Map<String, dynamic> toMap() {
    return ProjectKeyReadMapper.ensureInitialized().encodeMap<ProjectKeyRead>(
      this as ProjectKeyRead,
    );
  }

  ProjectKeyReadCopyWith<ProjectKeyRead, ProjectKeyRead, ProjectKeyRead>
  get copyWith => _ProjectKeyReadCopyWithImpl<ProjectKeyRead, ProjectKeyRead>(
    this as ProjectKeyRead,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ProjectKeyReadMapper.ensureInitialized().stringifyValue(
      this as ProjectKeyRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProjectKeyReadMapper.ensureInitialized().equalsValue(
      this as ProjectKeyRead,
      other,
    );
  }

  @override
  int get hashCode {
    return ProjectKeyReadMapper.ensureInitialized().hashValue(
      this as ProjectKeyRead,
    );
  }
}

extension ProjectKeyReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectKeyRead, $Out> {
  ProjectKeyReadCopyWith<$R, ProjectKeyRead, $Out> get $asProjectKeyRead =>
      $base.as((v, t, t2) => _ProjectKeyReadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProjectKeyReadCopyWith<$R, $In extends ProjectKeyRead, $Out>
    implements ProjectKeyCopyWith<$R, $In, $Out> {
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name;
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId;
  @override
  $R call({
    SanitizedNonEmptyString? name,
    DateTime? expiry,
    SanitizedNonEmptyString? projectId,
    String? id,
    String? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  ProjectKeyReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ProjectKeyReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectKeyRead, $Out>
    implements ProjectKeyReadCopyWith<$R, ProjectKeyRead, $Out> {
  _ProjectKeyReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectKeyRead> $mapper =
      ProjectKeyReadMapper.ensureInitialized();
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get name => $value.name.copyWith.$chain((v) => call(name: v));
  @override
  SanitizedNonEmptyStringCopyWith<
    $R,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >?
  get projectId => $value.projectId?.copyWith.$chain((v) => call(projectId: v));
  @override
  $R call({
    SanitizedNonEmptyString? name,
    Object? expiry = $none,
    Object? projectId = $none,
    String? id,
    String? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (expiry != $none) #expiry: expiry,
      if (projectId != $none) #projectId: projectId,
      if (id != null) #id: id,
      if (userId != null) #userId: userId,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != null) #updatedAt: updatedAt,
    }),
  );
  @override
  ProjectKeyRead $make(CopyWithData data) => ProjectKeyRead(
    name: data.get(#name, or: $value.name),
    expiry: data.get(#expiry, or: $value.expiry),
    projectId: data.get(#projectId, or: $value.projectId),
    id: data.get(#id, or: $value.id),
    userId: data.get(#userId, or: $value.userId),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  ProjectKeyReadCopyWith<$R2, ProjectKeyRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProjectKeyReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

