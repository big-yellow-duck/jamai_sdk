import 'package:dart_mappable/dart_mappable.dart';
import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/gen_tables.dart';
import 'package:sealed_currencies/sealed_currencies.dart';

part 'db.mapper.dart';

/// Table base mixin
mixin TableBaseMixin {
  DatetimeUTC get createdAt;
  DatetimeUTC get updatedAt;

  bool allowed(
    String filterId, {
    String allowListAttr = "allowedOrgs",
    String blockListAttr = "blockedOrgs",
  }) {
    final allowList = _getListProperty(allowListAttr);
    final blockList = _getListProperty(blockListAttr);
    // Allow list
    final allowed = allowList.isEmpty || allowList.contains(filterId);
    if (blockList.isEmpty) {
      // No block list, just allow list
      return allowed;
    } else {
      // Block list
      return allowed && !blockList.contains(filterId);
    }
  }

  List<String> _getListProperty(String attr) {
    // This is a helper to get list properties dynamically
    // In practice, subclasses should override or provide access
    switch (attr) {
      case "allowedOrgs":
        return (this as dynamic).allowedOrgs ?? [];
      case "blockedOrgs":
        return (this as dynamic).blockedOrgs ?? [];
      default:
        return [];
    }
  }
}

/// Price tier model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class PriceTier with PriceTierMappable {
  final double unitCost;
  final double? upTo;

  const PriceTier({required this.unitCost, this.upTo});

  factory PriceTier.nullTier() {
    return const PriceTier(unitCost: 0.0, upTo: 0.0);
  }

  factory PriceTier.unlimited({double unitCost = 0.0}) {
    return PriceTier(unitCost: unitCost, upTo: null);
  }

  factory PriceTier.fromJson(String json) => PriceTierMapper.fromJson(json);
  factory PriceTier.fromMap(Map<String, dynamic> map) =>
      PriceTierMapper.fromMap(map);
}

/// Product model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class Product with ProductMappable {
  final String name;
  final PriceTier included;
  final List<PriceTier> tiers;
  final String unit;

  const Product({
    required this.name,
    required this.included,
    required this.tiers,
    required this.unit,
  });

  factory Product.nullProduct(String name, String unit) {
    return Product(
      name: name,
      included: PriceTier.nullTier(),
      tiers: [],
      unit: unit,
    );
  }

  factory Product.unlimited(String name, String unit, {double unitCost = 0.0}) {
    return Product(
      name: name,
      included: PriceTier.unlimited(unitCost: unitCost),
      tiers: [],
      unit: unit,
    );
  }

  factory Product.fromJson(String json) => ProductMapper.fromJson(json);
  factory Product.fromMap(Map<String, dynamic> map) =>
      ProductMapper.fromMap(map);
}

/// Products collection
@MappableClass(caseStyle: CaseStyle.snakeCase)
class Products with ProductsMappable {
  final Product llmTokens;
  final Product embeddingTokens;
  final Product rerankerSearches;
  final Product dbStorage;
  final Product fileStorage;
  final Product egress;

  const Products({
    required this.llmTokens,

    required this.embeddingTokens,
    required this.rerankerSearches,
    required this.dbStorage,
    required this.fileStorage,
    required this.egress,
  });

  factory Products.nullProducts() {
    return Products(
      llmTokens: Product.nullProduct("LLM tokens", "Million Tokens"),
      embeddingTokens: Product.nullProduct(
        "Embedding tokens",
        "Million Tokens",
      ),
      rerankerSearches: Product.nullProduct(
        "Reranker searches",
        "Thousand Searches",
      ),
      dbStorage: Product.nullProduct("Database storage", "GiB"),
      fileStorage: Product.nullProduct("File storage", "GiB"),
      egress: Product.nullProduct("Egress bandwidth", "GiB"),
    );
  }

  factory Products.unlimited({double unitCost = 0.0}) {
    return Products(
      llmTokens: Product.unlimited(
        "LLM tokens",
        "Million Tokens",
        unitCost: unitCost,
      ),
      embeddingTokens: Product.unlimited(
        "Embedding tokens",
        "Million Tokens",
        unitCost: unitCost,
      ),
      rerankerSearches: Product.unlimited(
        "Reranker searches",
        "Thousand Searches",
        unitCost: unitCost,
      ),
      dbStorage: Product.unlimited(
        "Database storage",
        "GiB",
        unitCost: unitCost,
      ),
      fileStorage: Product.unlimited("File storage", "GiB", unitCost: unitCost),
      egress: Product.unlimited("Egress bandwidth", "GiB", unitCost: unitCost),
    );
  }

  factory Products.fromJson(String json) => ProductsMapper.fromJson(json);
  factory Products.fromMap(Map<String, dynamic> map) =>
      ProductsMapper.fromMap(map);
}

/// Product type enum
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum ProductType {
  credit("credit"),
  creditGrant("credit_grant"),
  llmTokens("llm_tokens"),
  embeddingTokens("embedding_tokens"),
  rerankerSearches("reranker_searches"),
  dbStorage("db_storage"),
  fileStorage("file_storage"),
  egress("egress");

  const ProductType(this.value);
  final String value;

  String get quotaColumn {
    switch (this) {
      case ProductType.credit:
        return "credit";
      case ProductType.creditGrant:
        return "credit_grant";
      case ProductType.llmTokens:
        return "llm_tokens_quota_mtok";
      case ProductType.embeddingTokens:
        return "embedding_tokens_quota_mtok";
      case ProductType.rerankerSearches:
        return "reranker_quota_ksearch";
      case ProductType.dbStorage:
        return "db_quota_gib";
      case ProductType.fileStorage:
        return "file_quota_gib";
      case ProductType.egress:
        return "egress_quota_gib";
    }
  }

  String get usageColumn {
    switch (this) {
      case ProductType.credit:
        return "credit";
      case ProductType.creditGrant:
        return "credit_grant";
      case ProductType.llmTokens:
        return "llm_tokens_usage_mtok";
      case ProductType.embeddingTokens:
        return "embedding_tokens_usage_mtok";
      case ProductType.rerankerSearches:
        return "reranker_usage_ksearch";
      case ProductType.dbStorage:
        return "db_usage_gib";
      case ProductType.fileStorage:
        return "file_usage_gib";
      case ProductType.egress:
        return "egress_usage_gib";
    }
  }

  static List<ProductType> excludeCredits() {
    return ProductType.values
        .where((p) => !p.value.startsWith("credit"))
        .toList();
  }
}

/// Price plan update model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class PricePlanUpdate with PricePlanUpdateMappable {
  @MappableField(hook: SanitizedNonEmptyStringHook())
  final SanitizedNonEmptyString stripePriceIdLive;
  @MappableField(hook: SanitizedNonEmptyStringHook())
  final SanitizedNonEmptyString stripePriceIdTest;
  @MappableField(hook: SanitizedNonEmptyStringHook())
  final SanitizedNonEmptyString name;
  final double flatCost;
  final double creditGrant;
  final int? maxUsers;
  final Products products;
  final List<String> allowedOrgs;

  factory PricePlanUpdate({
    required SanitizedNonEmptyString stripePriceIdLive,
    required SanitizedNonEmptyString stripePriceIdTest,
    required SanitizedNonEmptyString name,
    double flatCost = 0.0,
    double creditGrant = 0.0,
    int? maxUsers,
    Products? products,
    List<String> allowedOrgs = const [],
  }) {
    return PricePlanUpdate._(
      stripePriceIdLive: stripePriceIdLive,
      stripePriceIdTest: stripePriceIdTest,
      name: name,
      flatCost: flatCost,
      creditGrant: creditGrant,
      maxUsers: maxUsers,
      products: products ?? Products.nullProducts(),
      allowedOrgs: allowedOrgs,
    );
  }
  PricePlanUpdate._({
    required this.stripePriceIdLive,
    required this.stripePriceIdTest,
    required this.name,
    this.flatCost = 0.0,
    this.creditGrant = 0.0,
    this.maxUsers,
    required this.products,
    this.allowedOrgs = const [],
  });

  factory PricePlanUpdate.free({
    String stripePriceIdLive = "price_123",
    String stripePriceIdTest = "price_1RT2CqCcpbd72IcYEvy6U3GR",
  }) {
    return PricePlanUpdate(
      name: SanitizedNonEmptyString("Free plan"),
      stripePriceIdLive: SanitizedNonEmptyString(stripePriceIdLive),
      stripePriceIdTest: SanitizedNonEmptyString(stripePriceIdTest),
      flatCost: 0.0,
      creditGrant: 0.0,
      maxUsers: 2, // For ease of testing
      products: Products(
        llmTokens: Product(
          name: "LLM tokens",
          included: const PriceTier(unitCost: 0.5, upTo: 0.75),
          tiers: [],
          unit: "Million Tokens",
        ),
        embeddingTokens: Product(
          name: "Embedding tokens",
          included: const PriceTier(unitCost: 0.5, upTo: 0.75),
          tiers: [],
          unit: "Million Tokens",
        ),
        rerankerSearches: Product(
          name: "Reranker searches",
          included: const PriceTier(unitCost: 0.5, upTo: 0.75),
          tiers: [],
          unit: "Thousand Searches",
        ),
        dbStorage: Product(
          name: "Database storage",
          included: const PriceTier(unitCost: 0.5, upTo: 0.75),
          tiers: [],
          unit: "GiB",
        ),
        fileStorage: Product(
          name: "File storage",
          included: const PriceTier(unitCost: 0.5, upTo: 0.75),
          tiers: [],
          unit: "GiB",
        ),
        egress: Product(
          name: "Egress bandwidth",
          included: const PriceTier(unitCost: 0.5, upTo: 0.75),
          tiers: [],
          unit: "GiB",
        ),
      ),
    );
  }

  factory PricePlanUpdate.fromJson(String json) =>
      PricePlanUpdateMapper.fromJson(json);
  factory PricePlanUpdate.fromMap(Map<String, dynamic> map) =>
      PricePlanUpdateMapper.fromMap(map);
}

/// Price plan create model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class PricePlanCreate extends PricePlanUpdate with PricePlanCreateMappable {
  final String id;

  PricePlanCreate({
    required this.id,
    required super.name,
    required super.stripePriceIdLive,
    required super.stripePriceIdTest,
    required super.flatCost,
    required super.creditGrant,
    required super.maxUsers,
    required super.products,
    super.allowedOrgs = const [],
  }) : super._();

  factory PricePlanCreate.fromJson(String json) =>
      PricePlanCreateMapper.fromJson(json);
  factory PricePlanCreate.fromMap(Map<String, dynamic> map) =>
      PricePlanCreateMapper.fromMap(map);
}

/// Price plan model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class PricePlan extends PricePlanCreate with PricePlanMappable {
  final bool isPrivate;
  final String stripePriceId;

  PricePlan({
    required super.id,
    required super.name,
    required super.stripePriceIdLive,
    required super.stripePriceIdTest,
    required super.flatCost,
    required super.creditGrant,
    required super.maxUsers,
    required super.products,
    super.allowedOrgs,
    required this.isPrivate,
    required this.stripePriceId,
  });

  factory PricePlan.fromJson(String json) => PricePlanMapper.fromJson(json);
  factory PricePlan.fromMap(Map<String, dynamic> map) =>
      PricePlanMapper.fromMap(map);
}

/// Price plan read model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class PricePlanRead extends PricePlan with PricePlanReadMappable {
  PricePlanRead({
    required super.id,
    required super.name,
    required super.stripePriceIdLive,
    required super.stripePriceIdTest,
    required super.flatCost,
    required super.creditGrant,
    required super.maxUsers,
    required super.products,
    super.allowedOrgs,
    required super.isPrivate,
    required super.stripePriceId,
  });

  factory PricePlanRead.fromJson(String json) =>
      PricePlanReadMapper.fromJson(json);
  factory PricePlanRead.fromMap(Map<String, dynamic> map) =>
      PricePlanReadMapper.fromMap(map);
}

/// On-prem provider enum
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum OnPremProvider {
  vllm("vllm"),
  vllmAmd("vllm_amd"),
  ollama("ollama"),
  infinity("infinity"),
  infinityCpu("infinity_cpu");

  const OnPremProvider(this.value);
  final String value;

  static List<String> list() =>
      OnPremProvider.values.map((e) => e.value).toList();
}

/// Cloud provider enum
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum CloudProvider {
  anthropic("anthropic"),
  azure("azure"),
  azureAi("azure_ai"),
  bedrock("bedrock"),
  cerebras("cerebras"),
  cohere("cohere"),
  deepseek("deepseek"),
  ellm("ellm"),
  fireworksAi("fireworks_ai"),
  gemini("gemini"),
  groq("groq"),
  hyperbolic("hyperbolic"),
  infinityCloud("infinity_cloud"),
  jinaAi("jina_ai"),
  openai("openai"),
  openrouter("openrouter"),
  sagemaker("sagemaker"),
  sambanova("sambanova"),
  togetherAi("together_ai"),
  voyage("voyage");

  const CloudProvider(this.value);
  final String value;

  static List<String> list() =>
      CloudProvider.values.map((e) => e.value).toList();
}

/// Model provider enum
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum ModelProvider {
  anthropic("anthropic"),
  cohere("cohere"),
  deepseek("deepseek"),
  gemini("gemini"),
  jinaAi("jina_ai"),
  openai("openai");

  const ModelProvider(this.value);
  final String value;

  static List<String> list() =>
      ModelProvider.values.map((e) => e.value).toList();
}

/// Deployment status enum
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum DeploymentStatus {
  active("active");

  const DeploymentStatus(this.value);
  final String value;
}

/// Deployment update model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class DeploymentUpdate with DeploymentUpdateMappable {
  final String name;
  final String routingId;
  final String apiBase;
  final String provider;
  final int weight;
  final DatetimeUTC cooldownUntil;

  const DeploymentUpdate({
    this.name = "",
    this.routingId = "",
    this.apiBase = "",
    this.provider = "",
    this.weight = 1,
    required this.cooldownUntil,
  });

  factory DeploymentUpdate.fromJson(String json) =>
      DeploymentUpdateMapper.fromJson(json);
  factory DeploymentUpdate.fromMap(Map<String, dynamic> map) =>
      DeploymentUpdateMapper.fromMap(map);
}

/// Deployment create model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class DeploymentCreate extends DeploymentUpdate with DeploymentCreateMappable {
  final String modelId;

  const DeploymentCreate({
    required this.modelId,
    required super.name,
    required super.routingId,
    super.apiBase = "",
    required super.provider,
    super.weight = 1,
    required super.cooldownUntil,
  });

  factory DeploymentCreate.fromJson(String json) =>
      DeploymentCreateMapper.fromJson(json);
  factory DeploymentCreate.fromMap(Map<String, dynamic> map) =>
      DeploymentCreateMapper.fromMap(map);
}

/// Deployment model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class Deployment extends DeploymentCreate
    with TableBaseMixin, DeploymentMappable {
  final String id;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const Deployment({
    required this.id,
    required super.modelId,
    required super.name,
    required super.routingId,
    super.apiBase,
    required super.provider,
    super.weight,
    required super.cooldownUntil,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Deployment.fromJson(String json) => DeploymentMapper.fromJson(json);
  factory Deployment.fromMap(Map<String, dynamic> map) =>
      DeploymentMapper.fromMap(map);
}

/// Deployment read model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class DeploymentRead extends Deployment with DeploymentReadMappable {
  final ModelConfig model;

  DeploymentRead({
    required super.id,
    required super.modelId,
    required super.name,
    required super.routingId,
    super.apiBase,
    required super.provider,
    super.weight,
    required super.cooldownUntil,
    required super.createdAt,
    required super.updatedAt,
    required this.model,
  });

  /// Status of the deployment. Will always be "ACTIVE".
  String get status => DeploymentStatus.active.value;

  factory DeploymentRead.fromJson(String json) =>
      DeploymentReadMapper.fromJson(json);
  factory DeploymentRead.fromMap(Map<String, dynamic> map) =>
      DeploymentReadMapper.fromMap(map);
}

/// Model type enum
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum ModelType {
  completion("completion"),
  llm("llm"),
  embed("embed"),
  rerank("rerank");

  const ModelType(this.value);
  final String value;
}

/// Model capability enum
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum ModelCapability {
  completion("completion"),
  chat("chat"),
  tool("tool"),
  image("image"),
  audio("audio"),
  embed("embed"),
  rerank("rerank"),
  reasoning("reasoning");

  const ModelCapability(this.value);
  final String value;
}

/// Model info model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ModelInfo with ModelInfoMappable {
  final String id;
  final ModelType type;
  final String name;
  final String ownedBy;
  final List<ModelCapability> capabilities;
  final int contextLength;
  final LanguageCodeList languages;
  final int? maxOutputTokens;

  const ModelInfo({
    required this.id,
    this.type = ModelType.llm,
    this.name = "",
    this.ownedBy = "",
    this.capabilities = const [],
    this.contextLength = 4096,
    this.languages = const ["en"],
    this.maxOutputTokens,
  });

  Set<String> get capabilitiesSet => capabilities.map((c) => c.value).toSet();

  void validateId() {
    if (id.split("/").length < 2) {
      throw ArgumentError(
        "Model `id` must follow the format: `{provider}/{model_id}`.",
      );
    }
  }

  factory ModelInfo.fromJson(String json) => ModelInfoMapper.fromJson(json);
  factory ModelInfo.fromMap(Map<String, dynamic> map) =>
      ModelInfoMapper.fromMap(map);
}

/// Model info read model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ModelInfoRead extends ModelInfo
    with TableBaseMixin, ModelInfoReadMappable {
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const ModelInfoRead({
    required super.id,
    super.type,
    super.name,
    super.ownedBy,
    super.capabilities,
    super.contextLength,
    super.languages,
    super.maxOutputTokens,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ModelInfoRead.fromJson(String json) =>
      ModelInfoReadMapper.fromJson(json);
  factory ModelInfoRead.fromMap(Map<String, dynamic> map) =>
      ModelInfoReadMapper.fromMap(map);
}

/// Model config update model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ModelConfigUpdate extends ModelInfo with ModelConfigUpdateMappable {
  final double timeout;
  final int priority;
  final List<String> allowedOrgs;
  final List<String> blockedOrgs;
  final double llmInputCostPerMtoken;
  final double llmOutputCostPerMtoken;
  final int? embeddingSize;
  final int? embeddingDimensions;
  final String? embeddingTransformQuery;
  final double embeddingCostPerMtoken;
  final double rerankingCostPerKsearch;

  const ModelConfigUpdate({
    required super.id,
    super.type,
    super.name,
    super.ownedBy,
    super.capabilities,
    super.contextLength,
    super.languages,
    super.maxOutputTokens,
    this.timeout = 108000.0, // 30 * 60 * 60
    this.priority = 0,
    this.allowedOrgs = const [],
    this.blockedOrgs = const [],
    this.llmInputCostPerMtoken = -1.0,
    this.llmOutputCostPerMtoken = -1.0,
    this.embeddingSize,
    this.embeddingDimensions,
    this.embeddingTransformQuery,
    this.embeddingCostPerMtoken = -1.0,
    this.rerankingCostPerKsearch = -1.0,
  });

  int get finalEmbeddingSize {
    final embedSize = embeddingDimensions ?? embeddingSize;
    if (embedSize == null) {
      throw ArgumentError(
        'Both `embedding_dimensions` and `embedding_size` are null for embedding model "$id".',
      );
    }
    return embedSize;
  }

  factory ModelConfigUpdate.fromJson(String json) =>
      ModelConfigUpdateMapper.fromJson(json);
  factory ModelConfigUpdate.fromMap(Map<String, dynamic> map) =>
      ModelConfigUpdateMapper.fromMap(map);
}

/// Model config create model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ModelConfigCreate extends ModelConfigUpdate
    with ModelConfigCreateMappable {
  const ModelConfigCreate({
    required super.id,
    required super.type,
    required super.name,
    required super.ownedBy,
    required super.capabilities,
    required super.contextLength,
    super.languages,
    super.maxOutputTokens,
    super.timeout,
    super.priority,
    super.allowedOrgs,
    super.blockedOrgs,
    super.llmInputCostPerMtoken,
    super.llmOutputCostPerMtoken,
    super.embeddingSize,
    super.embeddingDimensions,
    super.embeddingTransformQuery,
    super.embeddingCostPerMtoken,
    super.rerankingCostPerKsearch,
  });

  factory ModelConfigCreate.fromJson(String json) =>
      ModelConfigCreateMapper.fromJson(json);
  factory ModelConfigCreate.fromMap(Map<String, dynamic> map) =>
      ModelConfigCreateMapper.fromMap(map);
}

/// Model config model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ModelConfig extends ModelConfigCreate
    with TableBaseMixin, ModelConfigMappable {
  final bool isPrivate;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const ModelConfig({
    required super.id,
    required super.type,
    required super.name,
    required super.ownedBy,
    required super.capabilities,
    required super.contextLength,
    super.languages,
    super.maxOutputTokens,
    super.timeout,
    super.priority,
    super.allowedOrgs,
    super.blockedOrgs,
    super.llmInputCostPerMtoken,
    super.llmOutputCostPerMtoken,
    super.embeddingSize,
    super.embeddingDimensions,
    super.embeddingTransformQuery,
    super.embeddingCostPerMtoken,
    super.rerankingCostPerKsearch,
    required this.isPrivate,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ModelConfig.fromJson(String json) => ModelConfigMapper.fromJson(json);
  factory ModelConfig.fromMap(Map<String, dynamic> map) =>
      ModelConfigMapper.fromMap(map);
}

/// Model config read model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ModelConfigRead extends ModelConfig with ModelConfigReadMappable {
  final List<Deployment> deployments;
  final bool isActive;

  ModelConfigRead({
    required super.id,
    required super.type,
    required super.name,
    required super.ownedBy,
    required super.capabilities,
    required super.contextLength,
    super.languages,
    super.maxOutputTokens,
    super.timeout,
    super.priority,
    super.allowedOrgs,
    super.blockedOrgs,
    super.llmInputCostPerMtoken,
    super.llmOutputCostPerMtoken,
    super.embeddingSize,
    super.embeddingDimensions,
    super.embeddingTransformQuery,
    super.embeddingCostPerMtoken,
    super.rerankingCostPerKsearch,
    required super.isPrivate,
    required super.createdAt,
    required super.updatedAt,
    required this.deployments,
    required this.isActive,
  });

  factory ModelConfigRead.fromJson(String json) =>
      ModelConfigReadMapper.fromJson(json);
  factory ModelConfigRead.fromMap(Map<String, dynamic> map) =>
      ModelConfigReadMapper.fromMap(map);
}

/// Role enum
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum Role {
  admin("ADMIN"),
  member("MEMBER"),
  guest("GUEST");

  const Role(this.value);
  final String value;

  RankedRole get rank => RankedRole.values.firstWhere((r) => r.name == name);
}

/// Ranked role enum
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum RankedRole {
  guest(0),
  member(1),
  admin(2);

  const RankedRole(this.rank);
  final int rank;

  static int getRank(String role) {
    try {
      return RankedRole.values.firstWhere((r) => r.name == role).rank;
    } catch (e) {
      return -1;
    }
  }
}

/// Org member update model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class OrgMemberUpdate with OrgMemberUpdateMappable {
  final Role role;

  const OrgMemberUpdate({required this.role});

  factory OrgMemberUpdate.fromJson(String json) =>
      OrgMemberUpdateMapper.fromJson(json);
  factory OrgMemberUpdate.fromMap(Map<String, dynamic> map) =>
      OrgMemberUpdateMapper.fromMap(map);
}

/// Org member create model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class OrgMemberCreate extends OrgMemberUpdate with OrgMemberCreateMappable {
  final String userId;
  final String organizationId;

  const OrgMemberCreate({
    required this.userId,
    required this.organizationId,
    required super.role,
  });

  factory OrgMemberCreate.fromJson(String json) =>
      OrgMemberCreateMapper.fromJson(json);
  factory OrgMemberCreate.fromMap(Map<String, dynamic> map) =>
      OrgMemberCreateMapper.fromMap(map);
}

/// Org member model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class OrgMember extends OrgMemberCreate with TableBaseMixin, OrgMemberMappable {
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const OrgMember({
    required super.userId,
    required super.organizationId,
    required super.role,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrgMember.fromJson(String json) => OrgMemberMapper.fromJson(json);
  factory OrgMember.fromMap(Map<String, dynamic> map) =>
      OrgMemberMapper.fromMap(map);
}

/// Org member read model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class OrgMemberRead extends OrgMember with OrgMemberReadMappable {
  final User user;
  final Organization organization;

  OrgMemberRead({
    required super.userId,
    required super.organizationId,
    required super.role,
    required super.createdAt,
    required super.updatedAt,
    required this.user,
    required this.organization,
  });

  factory OrgMemberRead.fromJson(String json) =>
      OrgMemberReadMapper.fromJson(json);
  factory OrgMemberRead.fromMap(Map<String, dynamic> map) =>
      OrgMemberReadMapper.fromMap(map);
}

/// Project member update model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectMemberUpdate with ProjectMemberUpdateMappable {
  final Role role;

  const ProjectMemberUpdate({required this.role});

  factory ProjectMemberUpdate.fromJson(String json) =>
      ProjectMemberUpdateMapper.fromJson(json);
  factory ProjectMemberUpdate.fromMap(Map<String, dynamic> map) =>
      ProjectMemberUpdateMapper.fromMap(map);
}

/// Project member create model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectMemberCreate extends ProjectMemberUpdate
    with ProjectMemberCreateMappable {
  final String userId;
  final String projectId;

  const ProjectMemberCreate({
    required this.userId,
    required this.projectId,
    required super.role,
  });

  factory ProjectMemberCreate.fromJson(String json) =>
      ProjectMemberCreateMapper.fromJson(json);
  factory ProjectMemberCreate.fromMap(Map<String, dynamic> map) =>
      ProjectMemberCreateMapper.fromMap(map);
}

/// Project member model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectMember extends ProjectMemberCreate
    with TableBaseMixin, ProjectMemberMappable {
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const ProjectMember({
    required super.userId,
    required super.projectId,
    required super.role,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProjectMember.fromJson(String json) =>
      ProjectMemberMapper.fromJson(json);
  factory ProjectMember.fromMap(Map<String, dynamic> map) =>
      ProjectMemberMapper.fromMap(map);
}

/// Project member read model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectMemberRead extends ProjectMember with ProjectMemberReadMappable {
  final User user;
  final Project project;

  ProjectMemberRead({
    required super.userId,
    required super.projectId,
    required super.role,
    required super.createdAt,
    required super.updatedAt,
    required this.user,
    required this.project,
  });

  factory ProjectMemberRead.fromJson(String json) =>
      ProjectMemberReadMapper.fromJson(json);
  factory ProjectMemberRead.fromMap(Map<String, dynamic> map) =>
      ProjectMemberReadMapper.fromMap(map);
}

/// User base model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserBase with UserBaseMappable {
  final String name;
  final String email;
  final Uri? pictureUrl;
  final String? googleId;
  final String? googleName;
  final String? googleUsername;
  final String? googleEmail;
  final Uri? googlePictureUrl;
  final DatetimeUTC? googleUpdatedAt;
  final String? githubId;
  final String? githubName;
  final String? githubUsername;
  final String? githubEmail;
  final Uri? githubPictureUrl;
  final DatetimeUTC? githubUpdatedAt;

  const UserBase({
    this.name = "",
    this.email = "",
    this.pictureUrl,
    this.googleId,
    this.googleName,
    this.googleUsername,
    this.googleEmail,
    this.googlePictureUrl,
    this.googleUpdatedAt,
    this.githubId,
    this.githubName,
    this.githubUsername,
    this.githubEmail,
    this.githubPictureUrl,
    this.githubUpdatedAt,
  });

  factory UserBase.fromJson(String json) => UserBaseMapper.fromJson(json);
  factory UserBase.fromMap(Map<String, dynamic> map) =>
      UserBaseMapper.fromMap(map);
}

/// User update model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserUpdate extends UserBase with UserUpdateMappable {
  final String password;

  const UserUpdate({
    required super.name,
    required super.email,
    required this.password,
    super.pictureUrl,
    super.googleId,
    super.googleName,
    super.googleUsername,
    super.googleEmail,
    super.googlePictureUrl,
    super.googleUpdatedAt,
    super.githubId,
    super.githubName,
    super.githubUsername,
    super.githubEmail,
    super.githubPictureUrl,
    super.githubUpdatedAt,
  });

  factory UserUpdate.fromJson(String json) => UserUpdateMapper.fromJson(json);
  factory UserUpdate.fromMap(Map<String, dynamic> map) =>
      UserUpdateMapper.fromMap(map);
}

/// User create model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserCreate extends UserUpdate with UserCreateMappable {
  final String id;

  const UserCreate({
    required this.id,
    required super.name,
    required super.email,
    required super.password,
    super.pictureUrl,
    super.googleId,
    super.googleName,
    super.googleUsername,
    super.googleEmail,
    super.googlePictureUrl,
    super.googleUpdatedAt,
    super.githubId,
    super.githubName,
    super.githubUsername,
    super.githubEmail,
    super.githubPictureUrl,
    super.githubUpdatedAt,
  });

  factory UserCreate.fromJson(String json) => UserCreateMapper.fromJson(json);
  factory UserCreate.fromMap(Map<String, dynamic> map) =>
      UserCreateMapper.fromMap(map);
}

/// User model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class User extends UserBase with TableBaseMixin, UserMappable {
  final String id;
  final bool emailVerified;
  final String? passwordHash;
  final int refreshCounter;
  final String preferredName;
  final String preferredEmail;
  final Uri? preferredPictureUrl;
  final String? preferredUsername;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const User({
    required this.id,
    super.name,
    super.email,
    super.pictureUrl,
    super.googleId,
    super.googleName,
    super.googleUsername,
    super.googleEmail,
    super.googlePictureUrl,
    super.googleUpdatedAt,
    super.githubId,
    super.githubName,
    super.githubUsername,
    super.githubEmail,
    super.githubPictureUrl,
    super.githubUpdatedAt,
    required this.emailVerified,
    this.passwordHash,
    this.refreshCounter = 0,
    required this.preferredName,
    required this.preferredEmail,
    this.preferredPictureUrl,
    this.preferredUsername,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(String json) => UserMapper.fromJson(json);
  factory User.fromMap(Map<String, dynamic> map) => UserMapper.fromMap(map);
}

/// User auth model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserAuth extends User with UserAuthMappable {
  final List<OrgMember> orgMemberships;
  final List<ProjectMember> projMemberships;

  UserAuth({
    required super.id,
    super.name,
    super.email,
    super.pictureUrl,
    super.googleId,
    super.googleName,
    super.googleUsername,
    super.googleEmail,
    super.googlePictureUrl,
    super.googleUpdatedAt,
    super.githubId,
    super.githubName,
    super.githubUsername,
    super.githubEmail,
    super.githubPictureUrl,
    super.githubUpdatedAt,
    required super.emailVerified,
    super.passwordHash,
    super.refreshCounter,
    required super.preferredName,
    required super.preferredEmail,
    super.preferredPictureUrl,
    super.preferredUsername,
    required super.createdAt,
    required super.updatedAt,
    required this.orgMemberships,
    required this.projMemberships,
  });

  factory UserAuth.fromJson(String json) => UserAuthMapper.fromJson(json);
  factory UserAuth.fromMap(Map<String, dynamic> map) =>
      UserAuthMapper.fromMap(map);
}

/// User read model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserRead extends UserAuth with UserReadMappable {
  final List<Organization> organizations;
  final List<Project> projects;

  UserRead({
    required super.id,
    super.name,
    super.email,
    super.pictureUrl,
    super.googleId,
    super.googleName,
    super.googleUsername,
    super.googleEmail,
    super.googlePictureUrl,
    super.googleUpdatedAt,
    super.githubId,
    super.githubName,
    super.githubUsername,
    super.githubEmail,
    super.githubPictureUrl,
    super.githubUpdatedAt,
    required super.emailVerified,
    super.passwordHash,
    super.refreshCounter,
    required super.preferredName,
    required super.preferredEmail,
    super.preferredPictureUrl,
    super.preferredUsername,
    required super.createdAt,
    required super.updatedAt,
    required super.orgMemberships,
    required super.projMemberships,
    required this.organizations,
    required this.projects,
  });

  factory UserRead.fromJson(String json) => UserReadMapper.fromJson(json);
  factory UserRead.fromMap(Map<String, dynamic> map) =>
      UserReadMapper.fromMap(map);
}

/// User read obscured model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserReadObscured extends UserRead with UserReadObscuredMappable {
  UserReadObscured({
    required super.id,
    super.name,
    super.email,
    super.pictureUrl,
    super.googleId,
    super.googleName,
    super.googleUsername,
    super.googleEmail,
    super.googlePictureUrl,
    super.googleUpdatedAt,
    super.githubId,
    super.githubName,
    super.githubUsername,
    super.githubEmail,
    super.githubPictureUrl,
    super.githubUpdatedAt,
    required super.emailVerified,
    String? passwordHash,
    super.refreshCounter,
    required super.preferredName,
    required super.preferredEmail,
    super.preferredPictureUrl,
    super.preferredUsername,
    required super.createdAt,
    required super.updatedAt,
    required super.orgMemberships,
    required super.projMemberships,
    required super.organizations,
    required super.projects,
  }) : super(passwordHash: _obscurePasswordHash(passwordHash));

  static String? _obscurePasswordHash(String? value) {
    return value != null ? "***" : null;
  }

  factory UserReadObscured.fromJson(String json) =>
      UserReadObscuredMapper.fromJson(json);
  factory UserReadObscured.fromMap(Map<String, dynamic> map) =>
      UserReadObscuredMapper.fromMap(map);
}

/// Payment state enum
@MappableEnum(caseStyle: CaseStyle.upperCase)
enum PaymentState {
  none("NONE"),
  success("SUCCESS"),
  processing("PROCESSING"),
  failed("FAILED");

  const PaymentState(this.value);
  final String value;
}

/// Organization update model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class OrganizationUpdate with OrganizationUpdateMappable {
  final String name;
  @MappableField(hook: FiatCurrencyHook())
  final FiatCurrency currency;
  final String? timezone;
  final Map<String, String> externalKeys;
  
  
  const OrganizationUpdate({
    this.name = "",
    required this.currency,
    this.timezone,
    this.externalKeys = const {},
  });

  void validateCurrency() {
    if (currency.code != "USD") {
      throw ArgumentError("Currently only USD is supported.");
    }
  }

  factory OrganizationUpdate.fromJson(String json) =>
      OrganizationUpdateMapper.fromJson(json);
  factory OrganizationUpdate.fromMap(Map<String, dynamic> map) =>
      OrganizationUpdateMapper.fromMap(map);
}

/// Organization create model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class OrganizationCreate extends OrganizationUpdate
    with OrganizationCreateMappable {
  const OrganizationCreate({
    required super.name,
    required super.currency,
    super.timezone,
    super.externalKeys,
  });

  factory OrganizationCreate.fromJson(String json) =>
      OrganizationCreateMapper.fromJson(json);
  factory OrganizationCreate.fromMap(Map<String, dynamic> map) =>
      OrganizationCreateMapper.fromMap(map);
}

/// Organization model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class Organization extends OrganizationCreate
    with TableBaseMixin, OrganizationMappable {
  final String id;
  final String createdBy;
  final String owner;
  final String? stripeId;
  final String? pricePlanId;
  final PaymentState paymentState;
  final DatetimeUTC? lastSubscriptionPaymentAt;
  final DatetimeUTC quotaResetAt;
  final double credit;
  final double creditGrant;
  final double? llmTokensQuotaMtok;
  final double llmTokensUsageMtok;
  final double? embeddingTokensQuotaMtok;
  final double embeddingTokensUsageMtok;
  final double? rerankerQuotaKsearch;
  final double rerankerUsageKsearch;
  final double? dbQuotaGib;
  final double dbUsageGib;
  final DatetimeUTC dbUsageUpdatedAt;
  final double? fileQuotaGib;
  final double fileUsageGib;
  final DatetimeUTC fileUsageUpdatedAt;
  final double? egressQuotaGib;
  final double egressUsageGib;
  final bool active;
  final Map<String, Map<String, double?>> quotas;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const Organization({
    required this.id,
    super.name = "",
    required super.currency,
    super.timezone,
    super.externalKeys,
    required this.createdBy,
    required this.owner,
    this.stripeId,
    this.pricePlanId,
    required this.paymentState,
    this.lastSubscriptionPaymentAt,
    required this.quotaResetAt,
    required this.credit,
    required this.creditGrant,
    this.llmTokensQuotaMtok,
    required this.llmTokensUsageMtok,
    this.embeddingTokensQuotaMtok,
    required this.embeddingTokensUsageMtok,
    this.rerankerQuotaKsearch,
    required this.rerankerUsageKsearch,
    this.dbQuotaGib,
    required this.dbUsageGib,
    required this.dbUsageUpdatedAt,
    this.fileQuotaGib,
    required this.fileUsageGib,
    required this.fileUsageUpdatedAt,
    this.egressQuotaGib,
    required this.egressUsageGib,
    required this.active,
    required this.quotas,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Organization.fromJson(String json) =>
      OrganizationMapper.fromJson(json);
  factory Organization.fromMap(Map<String, dynamic> map) =>
      OrganizationMapper.fromMap(map);
}

/// Organization read model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class OrganizationRead extends Organization with OrganizationReadMappable {
  final PricePlan? pricePlan;

  OrganizationRead({
    required super.id,
    String name = "",
    required super.currency,
    super.timezone,
    super.externalKeys,
    required super.createdBy,
    required super.owner,
    super.stripeId,
    super.pricePlanId,
    required super.paymentState,
    super.lastSubscriptionPaymentAt,
    required super.quotaResetAt,
    required super.credit,
    required super.creditGrant,
    super.llmTokensQuotaMtok,
    required super.llmTokensUsageMtok,
    super.embeddingTokensQuotaMtok,
    required super.embeddingTokensUsageMtok,
    super.rerankerQuotaKsearch,
    required super.rerankerUsageKsearch,
    super.dbQuotaGib,
    required super.dbUsageGib,
    required super.dbUsageUpdatedAt,
    super.fileQuotaGib,
    required super.fileUsageGib,
    required super.fileUsageUpdatedAt,
    super.egressQuotaGib,
    required super.egressUsageGib,
    required super.active,
    required super.quotas,
    required super.createdAt,
    required super.updatedAt,
    this.pricePlan,
  });

  factory OrganizationRead.fromJson(String json) =>
      OrganizationReadMapper.fromJson(json);
  factory OrganizationRead.fromMap(Map<String, dynamic> map) =>
      OrganizationReadMapper.fromMap(map);
}

/// Project update model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectUpdate with ProjectUpdateMappable {
  @MappableField(hook: SanitizedNonEmptyStringHook())
  final SanitizedNonEmptyString name;
  @MappableField(hook: SanitizedMultilineStringHook())
  final SanitizedMultilineString description;
  final List<String> tags;
  final String? profilePictureUrl;
  final String? coverPictureUrl;

  factory ProjectUpdate({
    required SanitizedNonEmptyString name,
    SanitizedMultilineString? description,
    List<String>? tags,
    String? profilePictureUrl,
    String? coverPictureUrl,
  }) {
    final descriptionValue = description ?? SanitizedMultilineString('');
    return ProjectUpdate._(
      name: name,
      description: descriptionValue,
      tags: tags ?? [],
      profilePictureUrl: profilePictureUrl,
      coverPictureUrl: coverPictureUrl,
    );
  }

  const ProjectUpdate._({
    required this.name,
    required this.description,
    this.tags = const [],
    this.profilePictureUrl,
    this.coverPictureUrl,
  });

  factory ProjectUpdate.fromJson(String json) =>
      ProjectUpdateMapper.fromJson(json);
  factory ProjectUpdate.fromMap(Map<String, dynamic> map) =>
      ProjectUpdateMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectCreate extends ProjectUpdate with ProjectCreateMappable {
  final String organizationId;

  const ProjectCreate._({
    required this.organizationId,
    required super.name,
    required super.description,
    super.tags,
    super.profilePictureUrl,
    super.coverPictureUrl,
  }) : super._();

  factory ProjectCreate({
    required String organizationId,
    required SanitizedNonEmptyString name,
    SanitizedMultilineString? description,
    List<String>? tags,
    String? profilePictureUrl,
    String? coverPictureUrl,
  }) {
    final parent = ProjectUpdate(
      name: name,
      description: description,
      tags: tags,
      profilePictureUrl: profilePictureUrl,
      coverPictureUrl: coverPictureUrl,
    );

    return ProjectCreate._(
      organizationId: organizationId,
      name: parent.name,
      description: parent.description,
      tags: parent.tags,
      profilePictureUrl: parent.profilePictureUrl,
      coverPictureUrl: parent.coverPictureUrl,
    );
  }

  factory ProjectCreate.fromJson(String json) =>
      ProjectCreateMapper.fromJson(json);
  factory ProjectCreate.fromMap(Map<String, dynamic> map) =>
      ProjectCreateMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Project extends ProjectCreate with TableBaseMixin, ProjectMappable {
  final String id;
  final String createdBy;
  final String owner;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  // 1. Private Named Constructor:
  // This constructor can call the parent's private constructor (ProjectCreate._)
  const Project._({
    required this.id,
    required super.organizationId,
    required super.name,
    required super.description, // must be required here
    super.tags,
    super.profilePictureUrl,
    super.coverPictureUrl,
    required this.createdBy,
    required this.owner,
    required this.createdAt,
    required this.updatedAt,
  }) : super._(); // Calls the private ProjectCreate._ constructor

  // 2. Public Factory Constructor:
  // This constructor calls the parent's public factory constructor (ProjectCreate)
  factory Project({
    required String id,
    required String organizationId,
    required SanitizedNonEmptyString name,
    SanitizedMultilineString? description,
    List<String>? tags,
    String? profilePictureUrl,
    String? coverPictureUrl,
    required String createdBy,
    required String owner,
    required DatetimeUTC createdAt,
    required DatetimeUTC updatedAt,
  }) {
    // A. Use the parent's public factory to handle its fields and logic
    final parent = ProjectCreate(
      organizationId: organizationId,
      name: name,
      description: description,
      tags: tags,
      profilePictureUrl: profilePictureUrl,
      coverPictureUrl: coverPictureUrl,
    );

    // B. Use the private constructor to build the final Project instance
    return Project._(
      id: id,
      organizationId: parent.organizationId,
      name: parent.name,
      description: parent.description,
      tags: parent.tags,
      profilePictureUrl: parent.profilePictureUrl,
      coverPictureUrl: parent.coverPictureUrl,
      createdBy: createdBy,
      owner: owner,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory Project.fromJson(String json) => ProjectMapper.fromJson(json);
  factory Project.fromMap(Map<String, dynamic> map) =>
      ProjectMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectRead extends Project with ProjectReadMappable {
  final Organization? organization;
  final List<TableMetaResponse>? chatAgents;

  // 1. Private Named Constructor:
  // This generative constructor is used internally and can call the parent's private constructor (Project._)
  const ProjectRead._({
    required super.id,
    required super.organizationId,
    required super.name,
    required super.description, // Inherited field needed for Project._
    super.tags, // Inherited field needed for Project._
    super.profilePictureUrl, // Inherited field needed for Project._
    super.coverPictureUrl, // Inherited field needed for Project._
    required super.createdBy,
    required super.owner,
    required super.createdAt,
    required super.updatedAt,
    this.organization,
    this.chatAgents,
  }) : super._(); // Calls the private Project._ constructor

  // 2. Public Factory Constructor:
  // This is the public entry point, calling the parent's public factory constructor (Project)
  factory ProjectRead({
    required String id,
    required String organizationId,
    required SanitizedNonEmptyString name,
    SanitizedMultilineString? description, // Passed to parent
    List<String>? tags, // Passed to parent
    String? profilePictureUrl, // Passed to parent
    String? coverPictureUrl, // Passed to parent
    required String createdBy,
    required String owner,
    required DatetimeUTC createdAt,
    required DatetimeUTC updatedAt,
    Organization? organization,
    List<TableMetaResponse>? chatAgents,
  }) {
    // A. Use the parent's public factory to handle its fields and complex initialization (Project -> ProjectCreate -> ProjectUpdate)
    final parent = Project(
      id: id,
      organizationId: organizationId,
      name: name,
      description: description,
      tags: tags,
      profilePictureUrl: profilePictureUrl,
      coverPictureUrl: coverPictureUrl,
      createdBy: createdBy,
      owner: owner,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );

    // B. Use the private constructor to build the final ProjectRead instance
    return ProjectRead._(
      id: parent.id,
      organizationId: parent.organizationId,
      name: parent.name,
      description: parent.description,
      tags: parent.tags,
      profilePictureUrl: parent.profilePictureUrl,
      coverPictureUrl: parent.coverPictureUrl,
      createdBy: parent.createdBy,
      owner: parent.owner,
      createdAt: parent.createdAt,
      updatedAt: parent.updatedAt,
      organization: organization,
      chatAgents: chatAgents,
    );
  }

  factory ProjectRead.fromJson(String json) => ProjectReadMapper.fromJson(json);
  factory ProjectRead.fromMap(Map<String, dynamic> map) =>
      ProjectReadMapper.fromMap(map);
}

/// Verification code update model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class VerificationCodeUpdate with VerificationCodeUpdateMappable {
  @MappableField(hook: SanitizedStringHook())
  final SanitizedString name;
  @MappableField(hook: SanitizedNonEmptyStringHook())
  final SanitizedNonEmptyString? role;

  factory VerificationCodeUpdate({
    SanitizedString? name,
    SanitizedNonEmptyString? role,
  }) {
    return VerificationCodeUpdate._(
      name: name ?? SanitizedString(''),
      role: role,
    );
  }
  const VerificationCodeUpdate._({required this.name, this.role});

  factory VerificationCodeUpdate.fromJson(String json) =>
      VerificationCodeUpdateMapper.fromJson(json);
  factory VerificationCodeUpdate.fromMap(Map<String, dynamic> map) =>
      VerificationCodeUpdateMapper.fromMap(map);
}

/// Verification code create model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class VerificationCodeCreate extends VerificationCodeUpdate
    with VerificationCodeCreateMappable {
  @MappableField(hook: SanitizedNonEmptyStringHook())
  final SanitizedNonEmptyString userEmail;
  final DatetimeUTC expiry;
  @MappableField(hook: SanitizedNonEmptyStringHook())
  final SanitizedNonEmptyString? organizationId;
  @MappableField(hook: SanitizedNonEmptyStringHook())
  final SanitizedNonEmptyString? projectId;

  factory VerificationCodeCreate({
    required SanitizedNonEmptyString userEmail,
    required DatetimeUTC expiry,
    SanitizedNonEmptyString? organizationId,
    SanitizedNonEmptyString? projectId,
    SanitizedString? name,
    SanitizedNonEmptyString? role,
  }) {
    final parent = VerificationCodeUpdate(name: name, role: role);

    return VerificationCodeCreate._(
      userEmail: userEmail,
      expiry: expiry,
      organizationId: organizationId,
      projectId: projectId,
      name: parent.name,
      role: parent.role,
    );
  }
  const VerificationCodeCreate._({
    required super.name,
    super.role,
    required this.userEmail,
    required this.expiry,
    this.organizationId,
    this.projectId,
  }) : super._();

  factory VerificationCodeCreate.fromJson(String json) =>
      VerificationCodeCreateMapper.fromJson(json);
  factory VerificationCodeCreate.fromMap(Map<String, dynamic> map) =>
      VerificationCodeCreateMapper.fromMap(map);
}

/// Verification code model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class VerificationCode extends VerificationCodeCreate
    with TableBaseMixin, VerificationCodeMappable {
  final String id;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  factory VerificationCode({
    required String id,
    required SanitizedNonEmptyString userEmail,
    required DatetimeUTC expiry,
    SanitizedNonEmptyString? organizationId,
    SanitizedNonEmptyString? projectId,
    SanitizedString? name,
    SanitizedNonEmptyString? role,
    required DatetimeUTC createdAt,
    required DatetimeUTC updatedAt,
  }) {
    final parent = VerificationCodeCreate(
      userEmail: userEmail,
      expiry: expiry,
      organizationId: organizationId,
      projectId: projectId,
      name: name,
      role: role,
    );

    return VerificationCode._(
      id: id,
      name: parent.name,
      role: parent.role,
      userEmail: parent.userEmail,
      expiry: parent.expiry,
      organizationId: parent.organizationId,
      projectId: parent.projectId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
  const VerificationCode._({
    required super.name,
    super.role,
    required super.userEmail,
    required super.expiry,
    super.organizationId,
    super.projectId,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  factory VerificationCode.fromJson(String json) =>
      VerificationCodeMapper.fromJson(json);
  factory VerificationCode.fromMap(Map<String, dynamic> map) =>
      VerificationCodeMapper.fromMap(map);
}

/// Verification code read model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class VerificationCodeRead extends VerificationCode
    with VerificationCodeReadMappable {
  factory VerificationCodeRead({
    required String id,
    required SanitizedNonEmptyString userEmail,
    required DatetimeUTC expiry,
    SanitizedNonEmptyString? organizationId,
    SanitizedNonEmptyString? projectId,
    SanitizedString? name,
    SanitizedNonEmptyString? role,
    required DatetimeUTC createdAt,
    required DatetimeUTC updatedAt,
  }) {
    final parent = VerificationCodeCreate(
      userEmail: userEmail,
      expiry: expiry,
      organizationId: organizationId,
      projectId: projectId,
      name: name,
      role: role,
    );

    return VerificationCodeRead._(
      name: parent.name,
      role: parent.role,
      userEmail: parent.userEmail,
      expiry: parent.expiry,
      organizationId: parent.organizationId,
      projectId: parent.projectId,
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
  VerificationCodeRead._({
    required super.name,
    super.role,
    required super.userEmail,
    required super.expiry,
    super.organizationId,
    super.projectId,
    required super.id,
    required super.createdAt,
    required super.updatedAt,
  }) : super._();

  factory VerificationCodeRead.fromJson(String json) =>
      VerificationCodeReadMapper.fromJson(json);
  factory VerificationCodeRead.fromMap(Map<String, dynamic> map) =>
      VerificationCodeReadMapper.fromMap(map);
}

/// Project key update model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectKeyUpdate with ProjectKeyUpdateMappable {
  @MappableField(hook: SanitizedNonEmptyStringHook())
  final SanitizedNonEmptyString name;
  final DatetimeUTC? expiry;

  const ProjectKeyUpdate({required this.name, this.expiry});

  factory ProjectKeyUpdate.fromJson(String json) =>
      ProjectKeyUpdateMapper.fromJson(json);
  factory ProjectKeyUpdate.fromMap(Map<String, dynamic> map) =>
      ProjectKeyUpdateMapper.fromMap(map);
}

/// Project key create model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectKeyCreate extends ProjectKeyUpdate with ProjectKeyCreateMappable {
  @MappableField(hook: SanitizedNonEmptyStringHook())
  final SanitizedNonEmptyString? projectId;

  const ProjectKeyCreate({required super.name, super.expiry, this.projectId});

  factory ProjectKeyCreate.fromJson(String json) =>
      ProjectKeyCreateMapper.fromJson(json);
  factory ProjectKeyCreate.fromMap(Map<String, dynamic> map) =>
      ProjectKeyCreateMapper.fromMap(map);
}

/// Project key model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectKey extends ProjectKeyCreate
    with TableBaseMixin, ProjectKeyMappable {
  final String id;
  final String userId;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const ProjectKey({
    required super.name,
    super.expiry,
    super.projectId,
    required this.id,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProjectKey.fromJson(String json) => ProjectKeyMapper.fromJson(json);
  factory ProjectKey.fromMap(Map<String, dynamic> map) =>
      ProjectKeyMapper.fromMap(map);
}

/// Project key read model
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProjectKeyRead extends ProjectKey with ProjectKeyReadMappable {
  const ProjectKeyRead({
    required super.name,
    super.expiry,
    super.projectId,
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.updatedAt,
  });

  factory ProjectKeyRead.fromJson(String json) =>
      ProjectKeyReadMapper.fromJson(json);
  factory ProjectKeyRead.fromMap(Map<String, dynamic> map) =>
      ProjectKeyReadMapper.fromMap(map);
}
