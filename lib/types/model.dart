import 'package:dart_mappable/dart_mappable.dart';
import 'package:jamai_sdk/types/db.dart';
part "model.mapper.dart";

/// Response for model info list
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ModelInfoListResponse with ModelInfoListResponseMappable {
  final String object;
  final List<ModelInfoRead> data;

  ModelInfoListResponse({
    this.object = "models.info",
    required List<ModelInfoRead> data,
  }) : data = List<ModelInfoRead>.from(data)
         ..sort((a, b) => _sortKey(a).compareTo(_sortKey(b)));

  static String _sortKey(ModelInfoRead x) {
    final prefix = x.id.startsWith("ellm") ? "0" : "1";
    return "${prefix}_${x.name}";
  }

  factory ModelInfoListResponse.fromJson(String json) =>
      ModelInfoListResponseMapper.fromJson(json);
  factory ModelInfoListResponse.fromMap(Map<String, dynamic> map) =>
      ModelInfoListResponseMapper.fromMap(map);
}

/// Base model price class
@MappableClass(caseStyle: CaseStyle.snakeCase)
abstract class ModelPrice with ModelPriceMappable {
  final String id;
  final String name;

  ModelPrice({required this.id, required this.name});
}

/// LLM model price
@MappableClass(caseStyle: CaseStyle.snakeCase)
class LLMModelPrice extends ModelPrice with LLMModelPriceMappable {
  final double llmInputCostPerMtoken;
  final double llmOutputCostPerMtoken;

  LLMModelPrice({
    required super.id,
    required super.name,
    required this.llmInputCostPerMtoken,
    required this.llmOutputCostPerMtoken,
  });
}

/// Embedding model price
@MappableClass(caseStyle: CaseStyle.snakeCase)
class EmbeddingModelPrice extends ModelPrice with EmbeddingModelPriceMappable {
  final double embeddingCostPerMtoken;

  EmbeddingModelPrice({
    required super.id,
    required super.name,
    required this.embeddingCostPerMtoken,
  });
}

/// Reranking model price
@MappableClass(caseStyle: CaseStyle.snakeCase)
class RerankingModelPrice extends ModelPrice with RerankingModelPriceMappable {
  final double rerankingCostPerKsearch;

  RerankingModelPrice({
    required super.id,
    required super.name,
    required this.rerankingCostPerKsearch,
  });
}

/// Model price response
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ModelPriceResponse with ModelPriceResponseMappable {
  final String object;
  final List<LLMModelPrice> llmModels;
  final List<EmbeddingModelPrice> embedModels;
  final List<RerankingModelPrice> rerankModels;

  const ModelPriceResponse({
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
      throw ArgumentError(
        "Invalid model ID: $modelId. Available models: ${modelMap.keys}",
      );
    }
    return model;
  }

  factory ModelPriceResponse.fromJson(String json) =>
      ModelPriceResponseMapper.fromJson(json);
  factory ModelPriceResponse.fromMap(Map<String, dynamic> map) =>
      ModelPriceResponseMapper.fromMap(map);
}
