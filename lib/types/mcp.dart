
library;

/// MCP (Model Context Protocol) types for JamAI SDK
/// Based on the MCP specification for JSON-RPC communication

/// Standard JSON-RPC error codes
enum JSONRPCErrorCode {
  parseError(-32700),
  invalidRequest(-32600),
  methodNotFound(-32601),
  invalidParams(-32602),
  internalError(-32603),
  unauthorized(-32001),
  forbidden(-32003);

  const JSONRPCErrorCode(this.code);
  final int code;
}

/// Type aliases
typedef ProgressToken = dynamic;
typedef Cursor = String;

/// Role enum
enum MCPRole {
  user('user'),
  assistant('assistant');

  const MCPRole(this.value);
  final String value;
}

/// Request parameters metadata
class RequestParamsMeta {
  final ProgressToken? progressToken;

  const RequestParamsMeta({this.progressToken});

  Map<String, dynamic> toJson() => {
        if (progressToken != null) 'progressToken': progressToken,
      };

  factory RequestParamsMeta.fromJson(Map<String, dynamic> json) =>
      RequestParamsMeta(progressToken: json['progressToken']);
}

/// Base params class
class Params {
  final Map<String, dynamic>? meta;

  const Params({this.meta});

  Map<String, dynamic> toJson() => {if (meta != null) '_meta': meta};

  factory Params.fromJson(Map<String, dynamic> json) =>
      Params(meta: json['_meta'] as Map<String, dynamic>?);
}

/// Paginated request parameters
class PaginatedRequestParams extends Params {
  final String? cursor;

  const PaginatedRequestParams({this.cursor, super.meta});

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (cursor != null) 'cursor': cursor,
      };

  factory PaginatedRequestParams.fromJson(Map<String, dynamic> json) =>
      PaginatedRequestParams(
        cursor: json['cursor'] as String?,
        meta: json['_meta'] as Map<String, dynamic>?,
      );
}

/// Base JSON-RPC class
abstract class JSONRPCBase {
  final String jsonrpc;
  const JSONRPCBase({this.jsonrpc = '2.0'});
  Map<String, dynamic> toJson();
}

/// JSON-RPC request
class JSONRPCRequest<T extends Params> extends JSONRPCBase {
  final dynamic id;
  final String method;
  final T? params;

  const JSONRPCRequest({
    required this.id,
    required this.method,
    this.params,
    super.jsonrpc,
  });

  @override
  Map<String, dynamic> toJson() => {
        'jsonrpc': jsonrpc,
        'id': id,
        'method': method,
        if (params != null) 'params': params!.toJson(),
      };
}

/// Paginated request
class PaginatedRequest extends JSONRPCRequest<PaginatedRequestParams> {
  const PaginatedRequest({
    required super.id,
    required super.method,
    super.params,
  });
}

/// JSON-RPC notification
class JSONRPCNotification<T extends Params> extends JSONRPCBase {
  final String method;
  final T? params;

  const JSONRPCNotification({required this.method, this.params, super.jsonrpc});

  @override
  Map<String, dynamic> toJson() => {
        'jsonrpc': jsonrpc,
        'method': method,
        if (params != null) 'params': params!.toJson(),
      };
}

/// Initialized notification
class InitializedNotification extends JSONRPCNotification<Params> {
  const InitializedNotification({super.params})
      : super(method: 'notifications/initialized');
}

/// Base result class
class Result {
  final Map<String, dynamic>? meta;

  const Result({this.meta});

  Map<String, dynamic> toJson() => {if (meta != null) '_meta': meta};

  factory Result.fromJson(Map<String, dynamic> json) =>
      Result(meta: json['_meta'] as Map<String, dynamic>?);
}

/// JSON-RPC response
class JSONRPCResponse<T extends Result> extends JSONRPCBase {
  final dynamic id;
  final T? result;

  const JSONRPCResponse({required this.id, this.result, super.jsonrpc});

  @override
  Map<String, dynamic> toJson() => {
        'jsonrpc': jsonrpc,
        'id': id,
        if (result != null) 'result': result!.toJson(),
      };
}

/// JSON-RPC empty response
class JSONRPCEmptyResponse extends JSONRPCBase {
  final dynamic id;
  final Map<String, dynamic> result;

  const JSONRPCEmptyResponse({
    required this.id,
    this.result = const {},
    super.jsonrpc,
  });

  @override
  Map<String, dynamic> toJson() => {
        'jsonrpc': jsonrpc,
        'id': id,
        'result': result,
      };
}

/// Error data
class ErrorData {
  final int code;
  final String message;
  final dynamic data;

  const ErrorData({required this.code, required this.message, this.data});

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
        if (data != null) 'data': data,
      };

  factory ErrorData.fromJson(Map<String, dynamic> json) => ErrorData(
        code: json['code'] as int,
        message: json['message'] as String,
        data: json['data'],
      );
}

/// JSON-RPC error
class JSONRPCError extends JSONRPCBase {
  final dynamic id;
  final ErrorData error;

  const JSONRPCError({required this.id, required this.error, super.jsonrpc});

  @override
  Map<String, dynamic> toJson() => {
        'jsonrpc': jsonrpc,
        'id': id,
        'error': error.toJson(),
      };

  factory JSONRPCError.fromJson(Map<String, dynamic> json) => JSONRPCError(
        id: json['id'],
        error: ErrorData.fromJson(json['error'] as Map<String, dynamic>),
        jsonrpc: json['jsonrpc'] as String? ?? '2.0',
      );
}

/// Capability
class Capability {
  final bool listChanged;

  const Capability({this.listChanged = false});

  Map<String, dynamic> toJson() => {'listChanged': listChanged};

  factory Capability.fromJson(Map<String, dynamic> json) =>
      Capability(listChanged: json['listChanged'] as bool? ?? false);
}

/// Resources capability
class ResourcesCapability extends Capability {
  final bool? subscribe;

  const ResourcesCapability({this.subscribe, super.listChanged});

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (subscribe != null) 'subscribe': subscribe,
      };

  factory ResourcesCapability.fromJson(Map<String, dynamic> json) =>
      ResourcesCapability(
        subscribe: json['subscribe'] as bool?,
        listChanged: json['listChanged'] as bool? ?? false,
      );
}

/// Server capabilities
class ServerCapabilities {
  final Map<String, Map<String, dynamic>>? experimental;
  final Map<String, dynamic>? logging;
  final Map<String, dynamic>? completions;
  final Capability? prompts;
  final ResourcesCapability? resources;
  final Capability? tools;

  const ServerCapabilities({
    this.experimental,
    this.logging,
    this.completions,
    this.prompts,
    this.resources,
    this.tools = const Capability(listChanged: false),
  });

  Map<String, dynamic> toJson() => {
        if (experimental != null) 'experimental': experimental,
        if (logging != null) 'logging': logging,
        if (completions != null) 'completions': completions,
        if (prompts != null) 'prompts': prompts!.toJson(),
        if (resources != null) 'resources': resources!.toJson(),
        if (tools != null) 'tools': tools!.toJson(),
      };

  factory ServerCapabilities.fromJson(Map<String, dynamic> json) =>
      ServerCapabilities(
        experimental: json['experimental'] as Map<String, Map<String, dynamic>>?,
        logging: json['logging'] as Map<String, dynamic>?,
        completions: json['completions'] as Map<String, dynamic>?,
        prompts: json['prompts'] != null
            ? Capability.fromJson(json['prompts'] as Map<String, dynamic>)
            : null,
        resources: json['resources'] != null
            ? ResourcesCapability.fromJson(json['resources'] as Map<String, dynamic>)
            : null,
        tools: json['tools'] != null
            ? Capability.fromJson(json['tools'] as Map<String, dynamic>)
            : const Capability(listChanged: false),
      );
}

/// Implementation info
class Implementation {
  final String name;
  final String version;

  const Implementation({required this.name, required this.version});

  Map<String, dynamic> toJson() => {'name': name, 'version': version};

  factory Implementation.fromJson(Map<String, dynamic> json) => Implementation(
        name: json['name'] as String,
        version: json['version'] as String,
      );
}

/// Initialize request parameters
class InitializeRequestParams {
  final String protocolVersion;
  final Map<String, dynamic> capabilities;
  final Implementation clientInfo;

  const InitializeRequestParams({
    required this.protocolVersion,
    required this.capabilities,
    required this.clientInfo,
  });

  Map<String, dynamic> toJson() => {
        'protocolVersion': protocolVersion,
        'capabilities': capabilities,
        'clientInfo': clientInfo.toJson(),
      };

  factory InitializeRequestParams.fromJson(Map<String, dynamic> json) =>
      InitializeRequestParams(
        protocolVersion: json['protocolVersion'] as String,
        capabilities: json['capabilities'] as Map<String, dynamic>,
        clientInfo: Implementation.fromJson(json['clientInfo'] as Map<String, dynamic>),
      );
}

/// Initialize request
class InitializeRequest extends JSONRPCRequest<Params> {
  const InitializeRequest({required super.id, super.params})
      : super(method: 'initialize');
}

/// Initialize result
class InitializeResult extends Result {
  final String protocolVersion;
  final ServerCapabilities capabilities;
  final Implementation serverInfo;
  final String? instructions;

  const InitializeResult({
    this.protocolVersion = '2025-03-26',
    required this.capabilities,
    required this.serverInfo,
    this.instructions,
    super.meta,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'protocolVersion': protocolVersion,
        'capabilities': capabilities.toJson(),
        'serverInfo': serverInfo.toJson(),
        if (instructions != null) 'instructions': instructions,
      };

  factory InitializeResult.fromJson(Map<String, dynamic> json) =>
      InitializeResult(
        protocolVersion: json['protocolVersion'] as String? ?? '2025-03-26',
        capabilities: ServerCapabilities.fromJson(json['capabilities'] as Map<String, dynamic>),
        serverInfo: Implementation.fromJson(json['serverInfo'] as Map<String, dynamic>),
        instructions: json['instructions'] as String?,
        meta: json['_meta'] as Map<String, dynamic>?,
      );
}

/// List tools request
class ListToolsRequest extends PaginatedRequest {
  const ListToolsRequest({required super.id, super.params})
      : super(method: 'tools/list');
}

/// Tool annotations
class ToolAnnotations {
  final String? title;
  final bool? readOnlyHint;
  final bool? destructiveHint;
  final bool? idempotentHint;
  final bool? openWorldHint;

  const ToolAnnotations({
    this.title,
    this.readOnlyHint = false,
    this.destructiveHint = true,
    this.idempotentHint = false,
    this.openWorldHint = true,
  });

  Map<String, dynamic> toJson() => {
        if (title != null) 'title': title,
        if (readOnlyHint != null) 'readOnlyHint': readOnlyHint,
        if (destructiveHint != null) 'destructiveHint': destructiveHint,
        if (idempotentHint != null) 'idempotentHint': idempotentHint,
        if (openWorldHint != null) 'openWorldHint': openWorldHint,
      };

  factory ToolAnnotations.fromJson(Map<String, dynamic> json) =>
      ToolAnnotations(
        title: json['title'] as String?,
        readOnlyHint: json['readOnlyHint'] as bool? ?? false,
        destructiveHint: json['destructiveHint'] as bool? ?? true,
        idempotentHint: json['idempotentHint'] as bool? ?? false,
        openWorldHint: json['openWorldHint'] as bool? ?? true,
      );
}

/// Tool input schema
class ToolInputSchema {
  final String type;
  final Map<String, Map<String, dynamic>>? properties;
  final List<String>? required;

  const ToolInputSchema({
    this.type = 'object',
    this.properties,
    this.required,
  });

  Map<String, dynamic> toJson() => {
        'type': type,
        if (properties != null) 'properties': properties,
        if (required != null) 'required': required,
      };

  factory ToolInputSchema.fromJson(Map<String, dynamic> json) =>
      ToolInputSchema(
        type: json['type'] as String? ?? 'object',
        properties: json['properties'] as Map<String, Map<String, dynamic>>?,
        required: json['required'] as List<String>?,
      );
}

/// Tool API info
class ToolAPIInfo {
  final String path;
  final String method;
  final Map<String, String> argsTypes;
  final Map<String, dynamic> methodInfo;

  const ToolAPIInfo({
    required this.path,
    required this.method,
    required this.argsTypes,
    required this.methodInfo,
  });

  Map<String, dynamic> toJson() => {
        'path': path,
        'method': method,
        'args_types': argsTypes,
        'method_info': methodInfo,
      };

  factory ToolAPIInfo.fromJson(Map<String, dynamic> json) => ToolAPIInfo(
        path: json['path'] as String,
        method: json['method'] as String,
        argsTypes: Map<String, String>.from(json['args_types'] as Map),
        methodInfo: json['method_info'] as Map<String, dynamic>,
      );
}

/// Tool definition
class Tool {
  final String name;
  final String? description;
  final ToolInputSchema inputSchema;
  final ToolAnnotations? annotations;

  const Tool({
    required this.name,
    this.description,
    required this.inputSchema,
    this.annotations,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        if (description != null) 'description': description,
        'inputSchema': inputSchema.toJson(),
        if (annotations != null) 'annotations': annotations!.toJson(),
      };

  factory Tool.fromJson(Map<String, dynamic> json) => Tool(
        name: json['name'] as String,
        description: json['description'] as String?,
        inputSchema: ToolInputSchema.fromJson(json['inputSchema'] as Map<String, dynamic>),
        annotations: json['annotations'] != null
            ? ToolAnnotations.fromJson(json['annotations'] as Map<String, dynamic>)
            : null,
      );
}

/// Tool with API info
class ToolAPI extends Tool {
  final ToolAPIInfo? apiInfo;

  const ToolAPI({
    required super.name,
    super.description,
    required super.inputSchema,
    super.annotations,
    this.apiInfo,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        if (apiInfo != null) 'api_info': apiInfo!.toJson(),
      };

  factory ToolAPI.fromJson(Map<String, dynamic> json) => ToolAPI(
        name: json['name'] as String,
        description: json['description'] as String?,
        inputSchema: ToolInputSchema.fromJson(json['inputSchema'] as Map<String, dynamic>),
        annotations: json['annotations'] != null
            ? ToolAnnotations.fromJson(json['annotations'] as Map<String, dynamic>)
            : null,
        apiInfo: json['api_info'] != null
            ? ToolAPIInfo.fromJson(json['api_info'] as Map<String, dynamic>)
            : null,
      );
}

/// List tools result
class ListToolsResult extends Result {
  final List<Tool> tools;

  const ListToolsResult({required this.tools, super.meta});

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'tools': tools.map((t) => t.toJson()).toList(),
      };

  factory ListToolsResult.fromJson(Map<String, dynamic> json) =>
      ListToolsResult(
        tools: (json['tools'] as List)
            .map((t) => Tool.fromJson(t as Map<String, dynamic>))
            .toList(),
        meta: json['_meta'] as Map<String, dynamic>?,
      );
}

/// Call tool request parameters
class CallToolRequestParams extends Params {
  final String name;
  final Map<String, dynamic>? arguments;

  const CallToolRequestParams({
    required this.name,
    this.arguments,
    super.meta,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'name': name,
        if (arguments != null) 'arguments': arguments,
      };

  factory CallToolRequestParams.fromJson(Map<String, dynamic> json) =>
      CallToolRequestParams(
        name: json['name'] as String,
        arguments: json['arguments'] as Map<String, dynamic>?,
        meta: json['_meta'] as Map<String, dynamic>?,
      );
}

/// Call tool request
class CallToolRequest extends JSONRPCRequest<CallToolRequestParams> {
  const CallToolRequest({required super.id, super.params})
      : super(method: 'tools/call');
}

/// Annotations for content
class Annotations {
  final List<MCPRole>? audience;
  final double? priority;

  const Annotations({
    this.audience,
    this.priority,
  }) : assert(priority == null || (priority >= 0.0 && priority <= 1.0));

  Map<String, dynamic> toJson() => {
        if (audience != null) 'audience': audience!.map((r) => r.value).toList(),
        if (priority != null) 'priority': priority,
      };

  factory Annotations.fromJson(Map<String, dynamic> json) => Annotations(
        audience: json['audience'] != null
            ? (json['audience'] as List).map((r) => MCPRole.values.firstWhere((e) => e.value == r)).toList()
            : null,
        priority: json['priority'] as double?,
      );
}

/// Base content class
class Content {
  final Annotations? annotations;

  const Content({this.annotations});

  Map<String, dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!.toJson(),
      };
}

/// Text content
class TextContent extends Content {
  final String text;

  const TextContent({required this.text, super.annotations});

  @override
  Map<String, dynamic> toJson() => {
        'type': 'text',
        'text': text,
        if (annotations != null) 'annotations': annotations!.toJson(),
      };

  factory TextContent.fromJson(Map<String, dynamic> json) => TextContent(
        text: json['text'] as String,
        annotations: json['annotations'] != null
            ? Annotations.fromJson(json['annotations'] as Map<String, dynamic>)
            : null,
      );
}

/// Image content
class ImageContent extends Content {
  final String data;
  final String mimeType;

  const ImageContent({
    required this.data,
    required this.mimeType,
    super.annotations,
  });

  @override
  Map<String, dynamic> toJson() => {
        'type': 'image',
        'data': data,
        'mimeType': mimeType,
        if (annotations != null) 'annotations': annotations!.toJson(),
      };

  factory ImageContent.fromJson(Map<String, dynamic> json) => ImageContent(
        data: json['data'] as String,
        mimeType: json['mimeType'] as String,
        annotations: json['annotations'] != null
            ? Annotations.fromJson(json['annotations'] as Map<String, dynamic>)
            : null,
      );
}

/// Audio content
class AudioContent extends Content {
  final String data;
  final String mimeType;

  const AudioContent({
    required this.data,
    required this.mimeType,
    super.annotations,
  });

  @override
  Map<String, dynamic> toJson() => {
        'type': 'audio',
        'data': data,
        'mimeType': mimeType,
        if (annotations != null) 'annotations': annotations!.toJson(),
      };

  factory AudioContent.fromJson(Map<String, dynamic> json) => AudioContent(
        data: json['data'] as String,
        mimeType: json['mimeType'] as String,
        annotations: json['annotations'] != null
            ? Annotations.fromJson(json['annotations'] as Map<String, dynamic>)
            : null,
      );
}

/// Resource contents
class ResourceContents {
  final String uri;
  final String? mimeType;

  const ResourceContents({required this.uri, this.mimeType});

  Map<String, dynamic> toJson() => {
        'uri': uri,
        if (mimeType != null) 'mimeType': mimeType,
      };

  factory ResourceContents.fromJson(Map<String, dynamic> json) =>
      ResourceContents(
        uri: json['uri'] as String,
        mimeType: json['mimeType'] as String?,
      );
}

/// Text resource contents
class TextResourceContents extends ResourceContents {
  final String text;

  const TextResourceContents({
    required super.uri,
    super.mimeType,
    required this.text,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'text': text,
      };

  factory TextResourceContents.fromJson(Map<String, dynamic> json) =>
      TextResourceContents(
        uri: json['uri'] as String,
        mimeType: json['mimeType'] as String?,
        text: json['text'] as String,
      );
}

/// Blob resource contents
class BlobResourceContents extends ResourceContents {
  final String blob;

  const BlobResourceContents({
    required super.uri,
    super.mimeType,
    required this.blob,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'blob': blob,
      };

  factory BlobResourceContents.fromJson(Map<String, dynamic> json) =>
      BlobResourceContents(
        uri: json['uri'] as String,
        mimeType: json['mimeType'] as String?,
        blob: json['blob'] as String,
      );
}

/// Embedded resource
class EmbeddedResource extends Content {
  final TextResourceContents resource;

  const EmbeddedResource({required this.resource, super.annotations});

  @override
  Map<String, dynamic> toJson() => {
        'type': 'resource',
        'resource': resource.toJson(),
        if (annotations != null) 'annotations': annotations!.toJson(),
      };

  factory EmbeddedResource.fromJson(Map<String, dynamic> json) =>
      EmbeddedResource(
        resource: TextResourceContents.fromJson(json['resource'] as Map<String, dynamic>),
        annotations: json['annotations'] != null
            ? Annotations.fromJson(json['annotations'] as Map<String, dynamic>)
            : null,
      );
}

/// Call tool result
class CallToolResult extends Result {
  final List<Content> content;
  final bool? isError;

  const CallToolResult({
    required this.content,
    this.isError = false,
    super.meta,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'content': content.map((c) => c.toJson()).toList(),
        if (isError != null) 'isError': isError,
      };

  factory CallToolResult.fromJson(Map<String, dynamic> json) =>
      CallToolResult(
        content: (json['content'] as List)
            .map((c) => _parseContent(c as Map<String, dynamic>))
            .toList(),
        isError: json['isError'] as bool? ?? false,
        meta: json['_meta'] as Map<String, dynamic>?,
      );
}

/// Helper function to parse content
Content _parseContent(Map<String, dynamic> json) {
  final type = json['type'] as String;
  switch (type) {
    case 'text':
      return TextContent.fromJson(json);
    case 'image':
      return ImageContent.fromJson(json);
    case 'audio':
      return AudioContent.fromJson(json);
    case 'resource':
      return EmbeddedResource.fromJson(json);
    default:
      throw ArgumentError('Unknown content type: $type');
  }
}