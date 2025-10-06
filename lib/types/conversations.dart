import 'package:jamai_sdk/types/gen_tables.dart';

/// Base meta response class
class _MetaResponse {
  final Map<String, dynamic>? meta;
  final List<ColumnSchema> cols;
  final String title;
  final String? createdBy;
  final DateTime updatedAt;
  final int numRows;
  final String version;

  _MetaResponse({
    this.meta,
    required List<ColumnSchema> cols,
    required this.title,
    required this.createdBy,
    required this.updatedAt,
    this.numRows = -1,
    required this.version,
  }) : cols = cols.where((c) => !c.id.endsWith('_')).toList();

  /// Creates a copy with updated fields
  _MetaResponse copyWith({
    Map<String, dynamic>? meta,
    List<ColumnSchema>? cols,
    String? title,
    String? createdBy,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  }) {
    return _MetaResponse(
      meta: meta ?? this.meta,
      cols: cols ?? this.cols,
      title: title ?? this.title,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      numRows: numRows ?? this.numRows,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'meta': meta,
      'cols': cols.map((c) => c.toJson()).toList(),
      'title': title,
      'created_by': createdBy,
      'updated_at': updatedAt.toIso8601String(),
      'num_rows': numRows,
      'version': version,
    };
  }
}

/// Agent meta response
class AgentMetaResponse extends _MetaResponse {
  final String agentId;

  AgentMetaResponse({
    required this.agentId,
    super.meta,
    required super.cols,
    required super.title,
    required super.createdBy,
    required super.updatedAt,
    super.numRows,
    required super.version,
  });

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

  /// Creates a copy with updated fields
  @override
  AgentMetaResponse copyWith({
    String? agentId,
    Map<String, dynamic>? meta,
    List<ColumnSchema>? cols,
    String? title,
    String? createdBy,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  }) {
    return AgentMetaResponse(
      agentId: agentId ?? this.agentId,
      meta: meta ?? this.meta,
      cols: cols ?? this.cols,
      title: title ?? this.title,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      numRows: numRows ?? this.numRows,
      version: version ?? this.version,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'agent_id': agentId,
    };
  }
}

/// Conversation meta response
class ConversationMetaResponse extends _MetaResponse {
  final String conversationId;
  final String? parentId;

  ConversationMetaResponse({
    required this.conversationId,
    this.parentId,
    super.meta,
    required super.cols,
    required super.title,
    required super.createdBy,
    required super.updatedAt,
    super.numRows,
    required super.version,
  });

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

  /// Creates a copy with updated fields
  @override
  ConversationMetaResponse copyWith({
    String? conversationId,
    String? parentId,
    Map<String, dynamic>? meta,
    List<ColumnSchema>? cols,
    String? title,
    String? createdBy,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  }) {
    return ConversationMetaResponse(
      conversationId: conversationId ?? this.conversationId,
      parentId: parentId ?? this.parentId,
      meta: meta ?? this.meta,
      cols: cols ?? this.cols,
      title: title ?? this.title,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      numRows: numRows ?? this.numRows,
      version: version ?? this.version,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'conversation_id': conversationId,
      'parent_id': parentId,
    };
  }
}

/// Base message class
class _MessageBase {
  final Map<String, dynamic> data;

  const _MessageBase({required this.data});

  /// Creates a copy with updated fields
  _MessageBase copyWith({Map<String, dynamic>? data}) {
    return _MessageBase(data: data ?? this.data);
  }

  Map<String, dynamic> toJson() {
    return {'data': data};
  }
}

/// Request to create a new conversation
class ConversationCreateRequest extends _MessageBase {
  final String agentId;
  final String? title;

  const ConversationCreateRequest({
    required this.agentId,
    this.title,
    required super.data,
  });

  /// Creates a copy with updated fields
  @override
  ConversationCreateRequest copyWith({
    String? agentId,
    String? title,
    Map<String, dynamic>? data,
  }) {
    return ConversationCreateRequest(
      agentId: agentId ?? this.agentId,
      title: title ?? this.title,
      data: data ?? this.data,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'agent_id': agentId,
      'title': title,
    };
  }
}

/// Request to add a message
class MessageAddRequest extends _MessageBase {
  final String conversationId;

  const MessageAddRequest({
    required this.conversationId,
    required super.data,
  });

  /// Creates a copy with updated fields
  @override
  MessageAddRequest copyWith({
    String? conversationId,
    Map<String, dynamic>? data,
  }) {
    return MessageAddRequest(
      conversationId: conversationId ?? this.conversationId,
      data: data ?? this.data,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      'conversation_id': conversationId,
    };
  }
}

/// Request to update a single message in a conversation
class MessageUpdateRequest {
  final String conversationId;
  final String rowId;
  final Map<String, dynamic> data;

  const MessageUpdateRequest({
    required this.conversationId,
    required this.rowId,
    required this.data,
  });

  /// Creates a copy with updated fields
  MessageUpdateRequest copyWith({
    String? conversationId,
    String? rowId,
    Map<String, dynamic>? data,
  }) {
    return MessageUpdateRequest(
      conversationId: conversationId ?? this.conversationId,
      rowId: rowId ?? this.rowId,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'conversation_id': conversationId,
      'row_id': rowId,
      'data': data,
    };
  }
}

/// Request to regenerate messages in a conversation
class MessagesRegenRequest {
  final String conversationId;
  final String rowId;

  const MessagesRegenRequest({
    required this.conversationId,
    required this.rowId,
  });

  /// Creates a copy with updated fields
  MessagesRegenRequest copyWith({
    String? conversationId,
    String? rowId,
  }) {
    return MessagesRegenRequest(
      conversationId: conversationId ?? this.conversationId,
      rowId: rowId ?? this.rowId,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'conversation_id': conversationId,
      'row_id': rowId,
    };
  }
}