import 'package:dart_mappable/dart_mappable.dart';
import 'package:jamai_sdk/types/gen_tables.dart';

part "conversations.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MetaResponse with MetaResponseMappable {
  final Map<String, dynamic>? meta;
  final List<ColumnSchema> cols;
  final String title;
  final String? createdBy;
  final DateTime updatedAt;
  final int numRows;
  final String version;

  MetaResponse({
    this.meta,
    required List<ColumnSchema> cols,
    required this.title,
    required this.createdBy,
    required this.updatedAt,
    this.numRows = -1,
    required this.version,
  }) : cols = cols.where((c) => !c.id.endsWith('_')).toList();

  factory MetaResponse.fromJson(String json) => MetaResponseMapper.fromJson(json);
  factory MetaResponse.fromMap(Map<String, dynamic> map) => MetaResponseMapper.fromMap(map);
}

/// Agent meta response
@MappableClass(caseStyle: CaseStyle.snakeCase)
class AgentMetaResponse with AgentMetaResponseMappable {
  final String agentId;
  final Map<String, dynamic>? meta;
  final List<ColumnSchema> cols;
  final String title;
  final String? createdBy;
  final DateTime updatedAt;
  final int numRows;
  final String version;

  AgentMetaResponse({
    required this.agentId,
    this.meta,
    required List<ColumnSchema> cols,
    required this.title,
    required this.createdBy,
    required this.updatedAt,
    this.numRows = -1,
    required this.version,
  }) : cols = cols.where((c) => !c.id.endsWith('_')).toList();

  /// Creates an instance from TableMetaResponse
  factory AgentMetaResponse.fromTableMeta(TableMetaResponse meta) {
    return AgentMetaResponse(
      agentId: meta.id,
      meta: meta.meta,
      cols: meta.cols,
      title: meta.title,
      createdBy: meta.createdBy,
      updatedAt: meta.updatedAt,
      numRows: meta.numRows,
      version: meta.version,
    );
  }

  factory AgentMetaResponse.fromJson(String json) => AgentMetaResponseMapper.fromJson(json);
  factory AgentMetaResponse.fromMap(Map<String, dynamic> map) => AgentMetaResponseMapper.fromMap(map);
}

/// Conversation meta response
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ConversationMetaResponse with ConversationMetaResponseMappable {
  final String conversationId;
  final String? parentId;
  final Map<String, dynamic>? meta;
  final List<ColumnSchema> cols;
  final String title;
  final String? createdBy;
  final DateTime updatedAt;
  final int numRows;
  final String version;

  ConversationMetaResponse({
    required this.conversationId,
    this.parentId,
    this.meta,
    required List<ColumnSchema> cols,
    required this.title,
    required this.createdBy,
    required this.updatedAt,
    this.numRows = -1,
    required this.version,
  }) : cols = cols.where((c) => !c.id.endsWith('_')).toList();

  /// Creates an instance from TableMetaResponse
  factory ConversationMetaResponse.fromTableMeta(TableMetaResponse meta) {
    return ConversationMetaResponse(
      conversationId: meta.id,
      parentId: meta.parentId,
      meta: meta.meta,
      cols: meta.cols,
      title: meta.title,
      createdBy: meta.createdBy,
      updatedAt: meta.updatedAt,
      numRows: meta.numRows,
      version: meta.version,
    );
  }

  factory ConversationMetaResponse.fromJson(String json) => ConversationMetaResponseMapper.fromJson(json);
  factory ConversationMetaResponse.fromMap(Map<String, dynamic> map) => ConversationMetaResponseMapper.fromMap(map);
}

/// Base message class
@MappableClass(caseStyle: CaseStyle.snakeCase)
class MessageBase with MessageBaseMappable {
  final Map<String, dynamic> data;

  const MessageBase({required this.data});

  factory MessageBase.fromJson(String json) => MessageBaseMapper.fromJson(json);
  factory MessageBase.fromMap(Map<String, dynamic> map) => MessageBaseMapper.fromMap(map);
}

/// Request to create a new conversation
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ConversationCreateRequest with ConversationCreateRequestMappable {
  final String agentId;
  final String? title;
  final Map<String, dynamic> data;

  const ConversationCreateRequest({
    required this.agentId,
    this.title,
    required this.data,
  });

  factory ConversationCreateRequest.fromJson(String json) => ConversationCreateRequestMapper.fromJson(json);
  factory ConversationCreateRequest.fromMap(Map<String, dynamic> map) => ConversationCreateRequestMapper.fromMap(map);
}

/// Request to add a message
@MappableClass(caseStyle: CaseStyle.snakeCase)
class MessageAddRequest with MessageAddRequestMappable {
  final String conversationId;
  final Map<String, dynamic> data;
const MessageAddRequest({
  required this.conversationId,
  required this.data,
});

factory MessageAddRequest.fromJson(String json) => MessageAddRequestMapper.fromJson(json);
factory MessageAddRequest.fromMap(Map<String, dynamic> map) => MessageAddRequestMapper.fromMap(map);
}


/// Request to update a single message in a conversation
@MappableClass(caseStyle: CaseStyle.snakeCase)
class MessageUpdateRequest with MessageUpdateRequestMappable {
  final String conversationId;
  final String rowId;
  final Map<String, dynamic> data;
const MessageUpdateRequest({
  required this.conversationId,
  required this.rowId,
  required this.data,
});

factory MessageUpdateRequest.fromJson(String json) => MessageUpdateRequestMapper.fromJson(json);
factory MessageUpdateRequest.fromMap(Map<String, dynamic> map) => MessageUpdateRequestMapper.fromMap(map);
}


/// Request to regenerate messages in a conversation
@MappableClass(caseStyle: CaseStyle.snakeCase)
class MessagesRegenRequest with MessagesRegenRequestMappable {
  final String conversationId;
  final String rowId;
const MessagesRegenRequest({
  required this.conversationId,
  required this.rowId,
});

factory MessagesRegenRequest.fromJson(String json) => MessagesRegenRequestMapper.fromJson(json);
factory MessagesRegenRequest.fromMap(Map<String, dynamic> map) => MessagesRegenRequestMapper.fromMap(map);
}