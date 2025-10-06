import 'package:jamai_sdk/types/db.dart';

/// Response for model info list
class ModelInfoListResponse {
  final String object;
  final List<ModelInfoRead> data;

  ModelInfoListResponse({
    this.object = "models.info",
    required List<ModelInfoRead> data,
  }) : data = List<ModelInfoRead>.from(data)..sort((a, b) => _sortKey(a).compareTo(_sortKey(b)));

  static String _sortKey(ModelInfoRead x) {
    final prefix = x.id.startsWith("ellm") ? "0" : "1";
    return "${prefix}_${x.name}";
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'data': data.map((d) => d.toJson()).toList(),
    };
  }
}

/// Base model price class
abstract class _ModelPrice {
  final String id;
  final String name;

  _ModelPrice({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toJson();
}

/// LLM model price
class LLMModelPrice extends _ModelPrice {
  final double llmInputCostPerMtoken;
  final double llmOutputCostPerMtoken;

  LLMModelPrice({
    required super.id,
    required super.name,
    required this.llmInputCostPerMtoken,
    required this.llmOutputCostPerMtoken,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'llm_input_cost_per_mtoken': llmInputCostPerMtoken,
      'llm_output_cost_per_mtoken': llmOutputCostPerMtoken,
    };
  }
}

/// Embedding model price
class EmbeddingModelPrice extends _ModelPrice {
  final double embeddingCostPerMtoken;

  EmbeddingModelPrice({
    required super.id,
    required super.name,
    required this.embeddingCostPerMtoken,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'embedding_cost_per_mtoken': embeddingCostPerMtoken,
    };
  }
}

/// Reranking model price
class RerankingModelPrice extends _ModelPrice {
  final double rerankingCostPerKsearch;

  RerankingModelPrice({
    required super.id,
    required super.name,
    required this.rerankingCostPerKsearch,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'reranking_cost_per_ksearch': rerankingCostPerKsearch,
    };
  }
}

/// Model price response
class ModelPrice {
  final String object;
  final List<LLMModelPrice> llmModels;
  final List<EmbeddingModelPrice> embedModels;
  final List<RerankingModelPrice> rerankModels;

  ModelPrice({
    this.object = "prices.models",
    this.llmModels = const [],
    this.embedModels = const [],
    this.rerankModels = const [],
  });

  /// Build and cache a dictionary of models for faster lookups
  Map<String, dynamic> get modelMap {
    final cache = <String, dynamic>{};
    for (final model in llmModels) {
      cache[model.id] = model;
    }
    for (final model in embedModels) {
      cache[model.id] = model;
    }
    for (final model in rerankModels) {
      cache[model.id] = model;
    }
    return cache;
  }

  /// Retrieve the price information for a specific model by its ID
  dynamic get(String modelId) {
    final model = modelMap[modelId];
    if (model == null) {
      throw ArgumentError("Invalid model ID: $modelId. Available models: ${modelMap.keys}");
    }
    return model;
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'llm_models': llmModels.map((m) => m.toJson()).toList(),
      'embed_models': embedModels.map((m) => m.toJson()).toList(),
      'rerank_models': rerankModels.map((m) => m.toJson()).toList(),
    };
  }
}