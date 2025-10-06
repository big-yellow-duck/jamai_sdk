import 'common.dart';

class BaseUsageData {
  final String id;
  final String orgId;
  final String projId;
  final String userId;
  final DateTime timestamp;
  final double cost;

  BaseUsageData({
    String? id,
    required this.orgId,
    required this.projId,
    required this.userId,
    DateTime? timestamp,
    required this.cost,
  })  : id = id ?? uuid7Str(),
        timestamp = timestamp ?? DateTime.now().toUtc();

  List<dynamic> asList() {
    return [id, orgId, projId, userId, timestamp, cost];
  }
}

class LlmUsageData extends BaseUsageData {
  final String model;
  final int inputToken;
  final int outputToken;
  final double inputCost;
  final double outputCost;

  LlmUsageData({
    super.id,
    required super.orgId,
    required super.projId,
    required super.userId,
    super.timestamp,
    required super.cost,
    required this.model,
    required this.inputToken,
    required this.outputToken,
    required this.inputCost,
    required this.outputCost,
  });

  @override
  List<dynamic> asList() {
    return super.asList() + [model, inputToken, outputToken, inputCost, outputCost];
  }
}

class EmbedUsageData extends BaseUsageData {
  final String model;
  final int token;

  EmbedUsageData({
    super.id,
    required super.orgId,
    required super.projId,
    required super.userId,
    super.timestamp,
    required super.cost,
    required this.model,
    required this.token,
  });

  @override
  List<dynamic> asList() {
    return super.asList() + [model, token];
  }
}

class RerankUsageData extends BaseUsageData {
  final String model;
  final int numberOfSearch;

  RerankUsageData({
    super.id,
    required super.orgId,
    required super.projId,
    required super.userId,
    super.timestamp,
    required super.cost,
    required this.model,
    required this.numberOfSearch,
  });

  @override
  List<dynamic> asList() {
    return super.asList() + [model, numberOfSearch];
  }
}

class EgressUsageData extends BaseUsageData {
  final double amountGib;

  EgressUsageData({
    super.id,
    required super.orgId,
    required super.projId,
    required super.userId,
    super.timestamp,
    required super.cost,
    required this.amountGib,
  });

  @override
  List<dynamic> asList() {
    return super.asList() + [amountGib];
  }
}

class FileStorageUsageData extends BaseUsageData {
  final double amountGib;
  final double snapshotGib;

  FileStorageUsageData({
    super.id,
    required super.orgId,
    required super.projId,
    required super.userId,
    super.timestamp,
    required super.cost,
    required this.amountGib,
    required this.snapshotGib,
  });

  @override
  List<dynamic> asList() {
    return super.asList() + [amountGib, snapshotGib];
  }
}

class DBStorageUsageData extends BaseUsageData {
  final double amountGib;
  final double snapshotGib;

  DBStorageUsageData({
    super.id,
    required super.orgId,
    required super.projId,
    required super.userId,
    super.timestamp,
    required super.cost,
    required this.amountGib,
    required this.snapshotGib,
  });

  @override
  List<dynamic> asList() {
    return super.asList() + [amountGib, snapshotGib];
  }
}

class UsageData {
  final List<LlmUsageData> llmUsage;
  final List<EmbedUsageData> embedUsage;
  final List<RerankUsageData> rerankUsage;
  final List<EgressUsageData> egressUsage;
  final List<FileStorageUsageData> fileStorageUsage;
  final List<DBStorageUsageData> dbStorageUsage;

  UsageData({
    this.llmUsage = const [],
    this.embedUsage = const [],
    this.rerankUsage = const [],
    this.egressUsage = const [],
    this.fileStorageUsage = const [],
    this.dbStorageUsage = const [],
  });

  Map<String, List<List<dynamic>>> asListByType() {
    return {
      "llm_usage": llmUsage.map((usage) => usage.asList()).toList(),
      "embed_usage": embedUsage.map((usage) => usage.asList()).toList(),
      "rerank_usage": rerankUsage.map((usage) => usage.asList()).toList(),
      "egress_usage": egressUsage.map((usage) => usage.asList()).toList(),
      "file_storage_usage": fileStorageUsage.map((usage) => usage.asList()).toList(),
      "db_storage_usage": dbStorageUsage.map((usage) => usage.asList()).toList(),
    };
  }

  int get totalUsageEvents {
    return llmUsage.length +
        embedUsage.length +
        rerankUsage.length +
        egressUsage.length +
        fileStorageUsage.length +
        dbStorageUsage.length;
  }

  UsageData operator +(UsageData other) {
    return UsageData(
      llmUsage: llmUsage + other.llmUsage,
      embedUsage: embedUsage + other.embedUsage,
      rerankUsage: rerankUsage + other.rerankUsage,
      egressUsage: egressUsage + other.egressUsage,
      fileStorageUsage: fileStorageUsage + other.fileStorageUsage,
      dbStorageUsage: dbStorageUsage + other.dbStorageUsage,
    );
  }
}