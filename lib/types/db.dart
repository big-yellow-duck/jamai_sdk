import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/gen_tables.dart';
import 'package:sealed_currencies/sealed_currencies.dart';

/// Base model mixin for database models
mixin BaseModelMixin {
  Map<String, dynamic> get meta => {};

  /// Create a meta field from JSON
  static Map<String, dynamic> _metaFromJson(Map<String, dynamic> json) {
    return json['meta'] as Map<String, dynamic>? ?? {};
  }
}

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

  /// Parse datetime fields from JSON
  static DatetimeUTC _parseDateTime(String? dateTimeStr) {
    return DatetimeUTC.parse(dateTimeStr ?? '');
  }
}

/// Price tier model
class PriceTier {
  final double unitCost;
  final double? upTo;

  const PriceTier({required this.unitCost, this.upTo});

  factory PriceTier.nullTier() {
    return const PriceTier(unitCost: 0.0, upTo: 0.0);
  }

  factory PriceTier.unlimited({double unitCost = 0.0}) {
    return PriceTier(unitCost: unitCost, upTo: null);
  }

  factory PriceTier.fromJson(Map<String, dynamic> json) {
    return PriceTier(
      unitCost: (json['unit_cost'] as num?)?.toDouble() ?? 0.0,
      upTo: (json['up_to'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'unit_cost': unitCost, 'up_to': upTo};
  }
}

/// Product model
class Product {
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

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'] as String? ?? '',
      included: PriceTier.fromJson(
        json['included'] as Map<String, dynamic>? ?? {},
      ),
      tiers:
          (json['tiers'] as List<dynamic>?)
              ?.map((t) => PriceTier.fromJson(t as Map<String, dynamic>))
              .toList() ??
          [],
      unit: json['unit'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'included': included.toJson(),
      'tiers': tiers.map((t) => t.toJson()).toList(),
      'unit': unit,
    };
  }
}

/// Products collection
class Products {
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

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      llmTokens: Product.fromJson(
        json['llm_tokens'] as Map<String, dynamic>? ?? {},
      ),
      embeddingTokens: Product.fromJson(
        json['embedding_tokens'] as Map<String, dynamic>? ?? {},
      ),
      rerankerSearches: Product.fromJson(
        json['reranker_searches'] as Map<String, dynamic>? ?? {},
      ),
      dbStorage: Product.fromJson(
        json['db_storage'] as Map<String, dynamic>? ?? {},
      ),
      fileStorage: Product.fromJson(
        json['file_storage'] as Map<String, dynamic>? ?? {},
      ),
      egress: Product.fromJson(json['egress'] as Map<String, dynamic>? ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'llm_tokens': llmTokens.toJson(),
      'embedding_tokens': embeddingTokens.toJson(),
      'reranker_searches': rerankerSearches.toJson(),
      'db_storage': dbStorage.toJson(),
      'file_storage': fileStorage.toJson(),
      'egress': egress.toJson(),
    };
  }
}

/// Product type enum
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
class PricePlanUpdate with BaseModelMixin {
  final String stripePriceIdLive;
  final String stripePriceIdTest;
  final String name;
  final double flatCost;
  final double creditGrant;
  final int? maxUsers;
  final Products products;
  final List<String> allowedOrgs;

  PricePlanUpdate({
    this.stripePriceIdLive = "",
    this.stripePriceIdTest = "",
    this.name = "",
    this.flatCost = 0.0,
    this.creditGrant = 0.0,
    this.maxUsers,
    Products? products,
    this.allowedOrgs = const [],
  }) : products = products ?? Products.nullProducts();

  factory PricePlanUpdate.fromJson(Map<String, dynamic> json) {
    return PricePlanUpdate(
      stripePriceIdLive: json['stripe_price_id_live'] as String? ?? '',
      stripePriceIdTest: json['stripe_price_id_test'] as String? ?? '',
      name: json['name'] as String? ?? '',
      flatCost: (json['flat_cost'] as num?)?.toDouble() ?? 0.0,
      creditGrant: (json['credit_grant'] as num?)?.toDouble() ?? 0.0,
      maxUsers: json['max_users'] as int?,
      products: json['products'] != null
          ? Products.fromJson(json['products'] as Map<String, dynamic>)
          : Products.nullProducts(),
      allowedOrgs:
          (json['allowed_orgs'] as List<dynamic>?)?.cast<String>() ?? [],
    );
  }

  factory PricePlanUpdate.free({
    String stripePriceIdLive = "price_123",
    String stripePriceIdTest = "price_1RT2CqCcpbd72IcYEvy6U3GR",
  }) {
    return PricePlanUpdate(
      name: "Free plan",
      stripePriceIdLive: stripePriceIdLive,
      stripePriceIdTest: stripePriceIdTest,
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

  Map<String, dynamic> toJson() {
    return {
      'stripe_price_id_live': stripePriceIdLive,
      'stripe_price_id_test': stripePriceIdTest,
      'name': name,
      'flat_cost': flatCost,
      'credit_grant': creditGrant,
      'max_users': maxUsers,
      'products': products.toJson(),
      'allowed_orgs': allowedOrgs,
      'meta': meta,
    };
  }
}

/// Price plan create model
class PricePlanCreate extends PricePlanUpdate {
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
    Map<String, dynamic> meta = const {},
  });

  factory PricePlanCreate.fromJson(Map<String, dynamic> json) {
    return PricePlanCreate(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      stripePriceIdLive: json['stripe_price_id_live'] as String? ?? '',
      stripePriceIdTest: json['stripe_price_id_test'] as String? ?? '',
      flatCost: (json['flat_cost'] as num?)?.toDouble() ?? 0.0,
      creditGrant: (json['credit_grant'] as num?)?.toDouble() ?? 0.0,
      maxUsers: json['max_users'] as int?,
      products: json['products'] != null
          ? Products.fromJson(json['products'] as Map<String, dynamic>)
          : Products.nullProducts(),
      allowedOrgs:
          (json['allowed_orgs'] as List<dynamic>?)?.cast<String>() ?? [],
      meta: BaseModelMixin._metaFromJson(json),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'id': id};
  }
}

/// Price plan model
class PricePlan extends PricePlanCreate with TableBaseMixin {
  final bool isPrivate;
  final String stripePriceId;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

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
    super.meta,
    required this.isPrivate,
    required this.stripePriceId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PricePlan.fromJson(Map<String, dynamic> json) {
    return PricePlan(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      stripePriceIdLive: json['stripe_price_id_live'] as String? ?? '',
      stripePriceIdTest: json['stripe_price_id_test'] as String? ?? '',
      flatCost: (json['flat_cost'] as num?)?.toDouble() ?? 0.0,
      creditGrant: (json['credit_grant'] as num?)?.toDouble() ?? 0.0,
      maxUsers: json['max_users'] as int?,
      products: json['products'] != null
          ? Products.fromJson(json['products'] as Map<String, dynamic>)
          : Products.nullProducts(),
      allowedOrgs:
          (json['allowed_orgs'] as List<dynamic>?)?.cast<String>() ?? [],
      meta: BaseModelMixin._metaFromJson(json),
      isPrivate: json['is_private'] as bool? ?? false,
      stripePriceId: json['stripe_price_id'] as String? ?? '',
      createdAt: TableBaseMixin._parseDateTime(json['created_at'] as String?),
      updatedAt: TableBaseMixin._parseDateTime(json['updated_at'] as String?),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'is_private': isPrivate,
      'stripe_price_id': stripePriceId,
    };
  }
}

/// Price plan read model
class PricePlanRead extends PricePlan {
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
    super.meta,
    required super.isPrivate,
    required super.stripePriceId,
    required super.createdAt,
    required super.updatedAt,
  });

  factory PricePlanRead.fromJson(Map<String, dynamic> json) {
    return PricePlanRead(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      stripePriceIdLive: json['stripe_price_id_live'] as String? ?? '',
      stripePriceIdTest: json['stripe_price_id_test'] as String? ?? '',
      flatCost: (json['flat_cost'] as num?)?.toDouble() ?? 0.0,
      creditGrant: (json['credit_grant'] as num?)?.toDouble() ?? 0.0,
      maxUsers: json['max_users'] as int?,
      products: json['products'] != null
          ? Products.fromJson(json['products'] as Map<String, dynamic>)
          : Products.nullProducts(),
      allowedOrgs:
          (json['allowed_orgs'] as List<dynamic>?)?.cast<String>() ?? [],
      meta: BaseModelMixin._metaFromJson(json),
      isPrivate: json['is_private'] as bool? ?? false,
      stripePriceId: json['stripe_price_id'] as String? ?? '',
      createdAt: TableBaseMixin._parseDateTime(json['created_at'] as String?),
      updatedAt: TableBaseMixin._parseDateTime(json['updated_at'] as String?),
    );
  }
}

/// On-prem provider enum
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
enum DeploymentStatus {
  active("active");

  const DeploymentStatus(this.value);
  final String value;
}

/// Deployment update model
class DeploymentUpdate with BaseModelMixin {
  @override
  final Map<String, dynamic> meta;
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
    this.meta = const {},
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'routing_id': routingId,
      'api_base': apiBase,
      'provider': provider,
      'weight': weight,
      'cooldown_until': cooldownUntil.toIso8601String(),
      'meta': meta,
    };
  }
}

/// Deployment create model
class DeploymentCreate extends DeploymentUpdate {
  final String modelId;

  const DeploymentCreate({
    required this.modelId,
    required super.name,
    required super.routingId,
    super.apiBase = "",
    required super.provider,
    super.weight = 1,
    required super.cooldownUntil,
    super.meta = const {},
  });

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'model_id': modelId};
  }
}

/// Deployment model
class Deployment extends DeploymentCreate with TableBaseMixin {
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
    super.meta,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'id': id};
  }
}

/// Deployment read model
class DeploymentRead extends Deployment {
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
    super.meta,
    required super.createdAt,
    required super.updatedAt,
    required this.model,
  });

  /// Status of the deployment. Will always be "ACTIVE".
  String get status => DeploymentStatus.active.value;

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'model': model.toJson(), 'status': status};
  }
}

/// Model type enum
enum ModelType {
  completion("completion"),
  llm("llm"),
  embed("embed"),
  rerank("rerank");

  const ModelType(this.value);
  final String value;
}

/// Model capability enum
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
class ModelInfo with BaseModelMixin {
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

  static ModelInfo? fromJson(Map<String, dynamic> json) {
    // Implementation needed
    return null;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type.value,
      'name': name,
      'owned_by': ownedBy,
      'capabilities': capabilities.map((c) => c.value).toList(),
      'context_length': contextLength,
      'languages': languages,
      'max_output_tokens': maxOutputTokens,
      'meta': meta,
    };
  }

  Set<String> get capabilitiesSet => capabilities.map((c) => c.value).toSet();

  void validateId() {
    if (id.split("/").length < 2) {
      throw ArgumentError(
        "Model `id` must follow the format: `{provider}/{model_id}`.",
      );
    }
  }
}

/// Model info read model
class ModelInfoRead extends ModelInfo with TableBaseMixin {
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

  factory ModelInfoRead.fromJson(Map<String, dynamic> json) {
    return ModelInfoRead(
      id: json['id'] ?? '',
      type: ModelType.values.firstWhere(
        (e) => e.value == json['type'],
        orElse: () => ModelType.llm,
      ),
      name: json['name'] ?? '',
      ownedBy: json['owned_by'] ?? '',
      capabilities:
          (json['capabilities'] as List<dynamic>?)
              ?.map(
                (c) => ModelCapability.values.firstWhere(
                  (e) => e.value == c,
                  orElse: () => ModelCapability.completion,
                ),
              )
              .toList() ??
          [],
      contextLength: json['context_length'] ?? 4096,
      languages:
          (json['languages'] as List<dynamic>?)?.cast<String>() ?? const ["en"],
      maxOutputTokens: json['max_output_tokens'],
      createdAt: DatetimeUTC.parse(json['created_at'] ?? ''),
      updatedAt: DatetimeUTC.parse(json['updated_at'] ?? ''),
    );
  }
}

/// Model config update model
class ModelConfigUpdate extends ModelInfo {
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

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'timeout': timeout,
      'priority': priority,
      'allowed_orgs': allowedOrgs,
      'blocked_orgs': blockedOrgs,
      'llm_input_cost_per_mtoken': llmInputCostPerMtoken,
      'llm_output_cost_per_mtoken': llmOutputCostPerMtoken,
      'embedding_size': embeddingSize,
      'embedding_dimensions': embeddingDimensions,
      'embedding_transform_query': embeddingTransformQuery,
      'embedding_cost_per_mtoken': embeddingCostPerMtoken,
      'reranking_cost_per_ksearch': rerankingCostPerKsearch,
    };
  }
}

/// Model config create model
class ModelConfigCreate extends ModelConfigUpdate {
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
}

/// Model config model
class ModelConfig extends ModelConfigCreate with TableBaseMixin {
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
}

/// Model config read model
class ModelConfigRead extends ModelConfig {
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
}

/// Role enum
enum Role {
  admin("ADMIN"),
  member("MEMBER"),
  guest("GUEST");

  const Role(this.value);
  final String value;

  RankedRole get rank => RankedRole.values.firstWhere((r) => r.name == name);
}

/// Ranked role enum
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
class OrgMemberUpdate with BaseModelMixin {
  @override
  final Map<String, dynamic> meta;
  final Role role;

  const OrgMemberUpdate({required this.role, this.meta = const {}});

  Map<String, dynamic> toJson() {
    return {'role': role.value, 'meta': meta};
  }
}

/// Org member create model
class OrgMemberCreate extends OrgMemberUpdate {
  final String userId;
  final String organizationId;

  const OrgMemberCreate({
    required this.userId,
    required this.organizationId,
    required super.role,
    super.meta,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'user_id': userId,
      'organization_id': organizationId,
    };
  }
}

/// Org member model
class OrgMember extends OrgMemberCreate with TableBaseMixin {
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const OrgMember({
    required super.userId,
    required super.organizationId,
    required super.role,
    super.meta,
    required this.createdAt,
    required this.updatedAt,
  });
}

/// Org member read model
class OrgMemberRead extends OrgMember {
  final User user;
  final Organization organization;

  OrgMemberRead({
    required super.userId,
    required super.organizationId,
    required super.role,
    super.meta,
    required super.createdAt,
    required super.updatedAt,
    required this.user,
    required this.organization,
  });
}

/// Project member update model
class ProjectMemberUpdate with BaseModelMixin {
  @override
  final Map<String, dynamic> meta;
  final Role role;

  const ProjectMemberUpdate({required this.role, this.meta = const {}});

  Map<String, dynamic> toJson() {
    return {'role': role.value, 'meta': meta};
  }
}

/// Project member create model
class ProjectMemberCreate extends ProjectMemberUpdate {
  final String userId;
  final String projectId;

  const ProjectMemberCreate({
    required this.userId,
    required this.projectId,
    required super.role,
    super.meta,
  });

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'user_id': userId, 'project_id': projectId};
  }
}

/// Project member model
class ProjectMember extends ProjectMemberCreate with TableBaseMixin {
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const ProjectMember({
    required super.userId,
    required super.projectId,
    required super.role,
    super.meta,
    required this.createdAt,
    required this.updatedAt,
  });
}

/// Project member read model
class ProjectMemberRead extends ProjectMember {
  final User user;
  final Project project;

  ProjectMemberRead({
    required super.userId,
    required super.projectId,
    required super.role,
    super.meta,
    required super.createdAt,
    required super.updatedAt,
    required this.user,
    required this.project,
  });
}

/// User base model
class UserBase with BaseModelMixin {
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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'picture_url': pictureUrl?.toString(),
      'google_id': googleId,
      'google_name': googleName,
      'google_username': googleUsername,
      'google_email': googleEmail,
      'google_picture_url': googlePictureUrl?.toString(),
      'google_updated_at': googleUpdatedAt?.toIso8601String(),
      'github_id': githubId,
      'github_name': githubName,
      'github_username': githubUsername,
      'github_email': githubEmail,
      'github_picture_url': githubPictureUrl?.toString(),
      'github_updated_at': githubUpdatedAt?.toIso8601String(),
      'meta': meta,
    };
  }
}

/// User update model
class UserUpdate extends UserBase {
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

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'password': password};
  }
}

/// User create model
class UserCreate extends UserUpdate {
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

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'id': id};
  }
}

/// User model
class User extends UserBase with TableBaseMixin {
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

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'id': id,
      'email_verified': emailVerified,
      'password_hash': passwordHash,
      'refresh_counter': refreshCounter,
      'preferred_name': preferredName,
      'preferred_email': preferredEmail,
      'preferred_picture_url': preferredPictureUrl?.toString(),
      'preferred_username': preferredUsername,
    };
  }
}

/// User auth model
class UserAuth extends User {
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

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'org_memberships': orgMemberships.map((m) => m.toJson()).toList(),
      'proj_memberships': projMemberships.map((m) => m.toJson()).toList(),
    };
  }
}

/// User read model
class UserRead extends UserAuth {
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

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'organizations': organizations.map((o) => o.toJson()).toList(),
      'projects': projects.map((p) => p.toJson()).toList(),
    };
  }
}

/// User read obscured model
class UserReadObscured extends UserRead {
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

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'password_hash': _obscurePasswordHash(passwordHash),
    };
  }
}

/// Payment state enum
enum PaymentState {
  none("NONE"),
  success("SUCCESS"),
  processing("PROCESSING"),
  failed("FAILED");

  const PaymentState(this.value);
  final String value;
}

/// Organization update model
class OrganizationUpdate with BaseModelMixin {
  final String name;
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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'currency': currency.code,
      'timezone': timezone?.toString(),
      'external_keys': externalKeys,
      'meta': meta,
    };
  }
}

/// Organization create model
class OrganizationCreate extends OrganizationUpdate {
  const OrganizationCreate({
    required super.name,
    required super.currency,
    super.timezone,
    super.externalKeys,
  });
}

/// Organization model
class Organization extends OrganizationCreate with TableBaseMixin {
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

  factory Organization.fromJson(Map<String, dynamic> json) {
    return Organization(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      currency: FiatCurrency.fromCode(json['currency'] as String? ?? 'USD'),
      timezone: json['timezone'] as String?,
      externalKeys:
          (json['external_keys'] as Map<String, dynamic>?)
              ?.cast<String, String>() ??
          {},
      createdBy: json['created_by'] as String? ?? '',
      owner: json['owner'] as String? ?? '',
      stripeId: json['stripe_id'] as String?,
      pricePlanId: json['price_plan_id'] as String?,
      paymentState: PaymentState.values.firstWhere(
        (e) => e.value == json['payment_state'],
        orElse: () => PaymentState.none,
      ),
      lastSubscriptionPaymentAt: json['last_subscription_payment_at'] != null
          ? DatetimeUTC.parse(json['last_subscription_payment_at'] as String)
          : null,
      quotaResetAt: TableBaseMixin._parseDateTime(
        json['quota_reset_at'] as String?,
      ),
      credit: (json['credit'] as num?)?.toDouble() ?? 0.0,
      creditGrant: (json['credit_grant'] as num?)?.toDouble() ?? 0.0,
      llmTokensQuotaMtok: (json['llm_tokens_quota_mtok'] as num?)?.toDouble(),
      llmTokensUsageMtok:
          (json['llm_tokens_usage_mtok'] as num?)?.toDouble() ?? 0.0,
      embeddingTokensQuotaMtok: (json['embedding_tokens_quota_mtok'] as num?)
          ?.toDouble(),
      embeddingTokensUsageMtok:
          (json['embedding_tokens_usage_mtok'] as num?)?.toDouble() ?? 0.0,
      rerankerQuotaKsearch: (json['reranker_quota_ksearch'] as num?)
          ?.toDouble(),
      rerankerUsageKsearch:
          (json['reranker_usage_ksearch'] as num?)?.toDouble() ?? 0.0,
      dbQuotaGib: (json['db_quota_gib'] as num?)?.toDouble(),
      dbUsageGib: (json['db_usage_gib'] as num?)?.toDouble() ?? 0.0,
      dbUsageUpdatedAt: TableBaseMixin._parseDateTime(
        json['db_usage_updated_at'] as String?,
      ),
      fileQuotaGib: (json['file_quota_gib'] as num?)?.toDouble(),
      fileUsageGib: (json['file_usage_gib'] as num?)?.toDouble() ?? 0.0,
      fileUsageUpdatedAt: TableBaseMixin._parseDateTime(
        json['file_usage_updated_at'] as String?,
      ),
      egressQuotaGib: (json['egress_quota_gib'] as num?)?.toDouble(),
      egressUsageGib: (json['egress_usage_gib'] as num?)?.toDouble() ?? 0.0,
      active: json['active'] as bool? ?? false,
      quotas:
          (json['quotas'] as Map<String, dynamic>?)
              ?.cast<String, Map<String, double?>>() ??
          {},
      createdAt: TableBaseMixin._parseDateTime(json['created_at'] as String?),
      updatedAt: TableBaseMixin._parseDateTime(json['updated_at'] as String?),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'id': id,
      'created_by': createdBy,
      'owner': owner,
      'stripe_id': stripeId,
      'price_plan_id': pricePlanId,
      'payment_state': paymentState.value,
      'last_subscription_payment_at': lastSubscriptionPaymentAt
          ?.toIso8601String(),
      'quota_reset_at': quotaResetAt.toIso8601String(),
      'credit': credit,
      'credit_grant': creditGrant,
      'llm_tokens_quota_mtok': llmTokensQuotaMtok,
      'llm_tokens_usage_mtok': llmTokensUsageMtok,
      'embedding_tokens_quota_mtok': embeddingTokensQuotaMtok,
      'embedding_tokens_usage_mtok': embeddingTokensUsageMtok,
      'reranker_quota_ksearch': rerankerQuotaKsearch,
      'reranker_usage_ksearch': rerankerUsageKsearch,
      'db_quota_gib': dbQuotaGib,
      'db_usage_gib': dbUsageGib,
      'db_usage_updated_at': dbUsageUpdatedAt.toIso8601String(),
      'file_quota_gib': fileQuotaGib,
      'file_usage_gib': fileUsageGib,
      'file_usage_updated_at': fileUsageUpdatedAt.toIso8601String(),
      'egress_quota_gib': egressQuotaGib,
      'egress_usage_gib': egressUsageGib,
      'active': active,
      'quotas': quotas,
    };
  }
}

/// Organization read model
class OrganizationRead extends Organization {
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

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'price_plan': pricePlan?.toJson()};
  }
}

/// Project update model
class ProjectUpdate with BaseModelMixin {
  @override
  final Map<String, dynamic> meta;
  final String? name;
  final Map<String, dynamic>? quotas;

  const ProjectUpdate({this.name, Map<String, dynamic>? meta, this.quotas})
    : meta = meta ?? const {};

  Map<String, dynamic> toJson() {
    return {'name': name, 'meta': meta, 'quotas': quotas};
  }
}

/// Project create model
class ProjectCreate extends ProjectUpdate {
  final String organizationId;

  const ProjectCreate({
    required this.organizationId,
    required String super.name,
    Map<String, dynamic> super.meta = const {},
    super.quotas,
  });

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'organization_id': organizationId};
  }
}

/// Project model
class Project extends ProjectCreate with TableBaseMixin {
  final String id;
  final String createdBy;
  final String owner;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const Project({
    required this.id,
    required super.organizationId,
    required super.name,
    super.meta,
    super.quotas,
    required this.createdBy,
    required this.owner,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'id': id,
      'created_by': createdBy,
      'owner': owner,
    };
  }
}

/// Project read model
class ProjectRead extends Project {
  final Organization? organization;
  final List<TableMetaResponse>? chatAgents;

  ProjectRead({
    required super.id,
    required super.name,
    super.meta,
    super.quotas,
    required super.organizationId,
    required super.createdBy,
    required super.owner,
    required super.createdAt,
    required super.updatedAt,
    this.organization,
    this.chatAgents,
  });

  factory ProjectRead.fromJson(Map<String, dynamic> json) {
    return ProjectRead(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      meta: json['meta'] ?? const {},
      quotas: json['quotas'],
      organizationId: json['organization_id'] ?? '',
      createdBy: json['created_by'] ?? '',
      owner: json['owner'] ?? '',
      createdAt: DatetimeUTC.parse(json['created_at'] ?? ''),
      updatedAt: DatetimeUTC.parse(json['updated_at'] ?? ''),
      organization: json['organization'] != null
          ? Organization.fromJson(json['organization'])
          : null,
      chatAgents: json['chat_agents'] != null
          ? (json['chat_agents'] as List)
                .map(
                  (e) => TableMetaResponse.fromJson(e as Map<String, dynamic>),
                )
                .toList()
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'organization': organization?.toJson(),
      'chat_agents': chatAgents?.map((agent) => agent.toJson()).toList(),
    };
  }
}

/// Verification code update model
class VerificationCodeUpdate with BaseModelMixin {
  @override
  final Map<String, dynamic> meta;
  final String name;
  final String? role;

  const VerificationCodeUpdate({
    this.name = "",
    this.role,
    this.meta = const {},
  });

  Map<String, dynamic> toJson() {
    return {'name': name, 'role': role, 'meta': meta};
  }
}

/// Verification code create model
class VerificationCodeCreate extends VerificationCodeUpdate {
  final String userEmail;
  final DatetimeUTC expiry;
  final String? organizationId;
  final String? projectId;

  const VerificationCodeCreate({
    super.name,
    super.role,
    super.meta,
    required this.userEmail,
    required this.expiry,
    this.organizationId,
    this.projectId,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'user_email': userEmail,
      'expiry': expiry.toIso8601String(),
      'organization_id': organizationId,
      'project_id': projectId,
    };
  }
}

/// Verification code model
class VerificationCode extends VerificationCodeCreate with TableBaseMixin {
  final String id;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const VerificationCode({
    super.name,
    super.role,
    super.meta,
    required super.userEmail,
    required super.expiry,
    super.organizationId,
    super.projectId,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'id': id};
  }
}

/// Verification code read model
class VerificationCodeRead extends VerificationCode {
  VerificationCodeRead({
    super.name,
    super.role,
    super.meta,
    required super.userEmail,
    required super.expiry,
    super.organizationId,
    super.projectId,
    required super.id,
    required super.createdAt,
    required super.updatedAt,
  });

  factory VerificationCodeRead.fromJson(Map<String, dynamic> json) {
    return VerificationCodeRead(
      name: json['name'] as String? ?? '',
      role: json['role'] as String?,
      meta: BaseModelMixin._metaFromJson(json),
      userEmail: json['user_email'] as String? ?? '',
      expiry: DatetimeUTC.parse(json['expiry'] as String? ?? ''),
      organizationId: json['organization_id'] as String?,
      projectId: json['project_id'] as String?,
      id: json['id'] as String? ?? '',
      createdAt: TableBaseMixin._parseDateTime(json['created_at'] as String?),
      updatedAt: TableBaseMixin._parseDateTime(json['updated_at'] as String?),
    );
  }
}

/// Project key update model
class ProjectKeyUpdate with BaseModelMixin {
  final String name;
  final DatetimeUTC? expiry;

  const ProjectKeyUpdate({this.name = "", this.expiry});

  Map<String, dynamic> toJson() {
    return {'name': name, 'expiry': expiry?.toIso8601String(), 'meta': meta};
  }
}

/// Project key create model
class ProjectKeyCreate extends ProjectKeyUpdate {
  final String? projectId;

  const ProjectKeyCreate({required super.name, super.expiry, this.projectId});

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'project_id': projectId};
  }
}

/// Project key model
class ProjectKey extends ProjectKeyCreate with TableBaseMixin {
  final String id;
  final String userId;
  @override
  final DatetimeUTC createdAt;
  @override
  final DatetimeUTC updatedAt;

  const ProjectKey({
    super.name = "",
    super.expiry,
    super.projectId,
    required this.id,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'id': id, 'user_id': userId};
  }
}

/// Project key read model
class ProjectKeyRead extends ProjectKey {
  ProjectKeyRead({
    String name = "",
    super.expiry,
    super.projectId,
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.updatedAt,
  });
}
