
import 'package:dart_mappable/dart_mappable.dart';

part "mcp.mapper.dart";

/// MCP (Model Context Protocol) types for JamAI SDK
/// Based on the MCP specification for JSON-RPC communication

@MappableEnum()
enum JSONRPCErrorCode {
  @MappableValue(-32700)
  parseError(-32700),
  @MappableValue(-32600)
  invalidRequest(-32600),
  @MappableValue(-32601)
  methodNotFound(-32601),
  @MappableValue(-32602)
  invalidParams(-32602),
  @MappableValue(-32603)
  internalError(-32603),
  @MappableValue(-32001)
  unauthorized(-32001),
  @MappableValue(-32003)
  forbidden(-32003);

  final int code;
  const JSONRPCErrorCode(this.code);
}

/// Type aliases
typedef ProgressToken = dynamic;
typedef Cursor = String;

@MappableEnum()
enum MCPRole {
  @MappableValue('user')
  user('user'),
  @MappableValue('assistant')
  assistant('assistant');

  final String value;
  const MCPRole(this.value);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class RequestParamsMeta with RequestParamsMetaMappable {
  final ProgressToken? progressToken;

  const RequestParamsMeta({this.progressToken});

  factory RequestParamsMeta.fromJson(String json) => RequestParamsMetaMapper.fromJson(json);
  factory RequestParamsMeta.fromMap(Map<String, dynamic> map) => RequestParamsMetaMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Params with ParamsMappable {
  final Map<String, dynamic>? meta;

  const Params({this.meta});

  factory Params.fromJson(String json) => ParamsMapper.fromJson(json);
  factory Params.fromMap(Map<String, dynamic> map) => ParamsMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PaginatedRequestParams extends Params with PaginatedRequestParamsMappable {
  final String? cursor;

  const PaginatedRequestParams({this.cursor, super.meta});

  factory PaginatedRequestParams.fromJson(String json) => PaginatedRequestParamsMapper.fromJson(json);
  factory PaginatedRequestParams.fromMap(Map<String, dynamic> map) => PaginatedRequestParamsMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
abstract class JSONRPCBase with JSONRPCBaseMappable {
  final String jsonrpc;
  const JSONRPCBase({this.jsonrpc = '2.0'});

  factory JSONRPCBase.fromJson(String json) => JSONRPCBaseMapper.fromJson(json);
  factory JSONRPCBase.fromMap(Map<String, dynamic> map) => JSONRPCBaseMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class JSONRPCRequest<T extends Params> extends JSONRPCBase with JSONRPCRequestMappable {
  final dynamic id;
  final String method;
  final T? params;

  const JSONRPCRequest({
    required this.id,
    required this.method,
    this.params,
    super.jsonrpc,
  });

  factory JSONRPCRequest.fromJson(String json) => JSONRPCRequestMapper.fromJson(json);
  factory JSONRPCRequest.fromMap(Map<String, dynamic> map) => JSONRPCRequestMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PaginatedRequest extends JSONRPCRequest<PaginatedRequestParams> with PaginatedRequestMappable {
  const PaginatedRequest({
    required super.id,
    required super.method,
    super.params,
  });

  factory PaginatedRequest.fromJson(String json) => PaginatedRequestMapper.fromJson(json);
  factory PaginatedRequest.fromMap(Map<String, dynamic> map) => PaginatedRequestMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class JSONRPCNotification<T extends Params> extends JSONRPCBase with JSONRPCNotificationMappable {
  final String method;
  final T? params;

  const JSONRPCNotification({required this.method, this.params, super.jsonrpc});

  factory JSONRPCNotification.fromJson(String json) => JSONRPCNotificationMapper.fromJson(json);
  factory JSONRPCNotification.fromMap(Map<String, dynamic> map) => JSONRPCNotificationMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InitializedNotification extends JSONRPCNotification<Params> with InitializedNotificationMappable {
  const InitializedNotification({super.params})
      : super(method: 'notifications/initialized');

  factory InitializedNotification.fromJson(String json) => InitializedNotificationMapper.fromJson(json);
  factory InitializedNotification.fromMap(Map<String, dynamic> map) => InitializedNotificationMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Result with ResultMappable {
  final Map<String, dynamic>? meta;

  const Result({this.meta});

  factory Result.fromJson(String json) => ResultMapper.fromJson(json);
  factory Result.fromMap(Map<String, dynamic> map) => ResultMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class JSONRPCResponse<T extends Result> extends JSONRPCBase with JSONRPCResponseMappable {
  final dynamic id;
  final T? result;

  const JSONRPCResponse({required this.id, this.result, super.jsonrpc});

  factory JSONRPCResponse.fromJson(String json) => JSONRPCResponseMapper.fromJson(json);
  factory JSONRPCResponse.fromMap(Map<String, dynamic> map) => JSONRPCResponseMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class JSONRPCEmptyResponse extends JSONRPCBase with JSONRPCEmptyResponseMappable {
  final dynamic id;
  final Map<String, dynamic> result;

  const JSONRPCEmptyResponse({
    required this.id,
    this.result = const {},
    super.jsonrpc,
  });

  factory JSONRPCEmptyResponse.fromJson(String json) => JSONRPCEmptyResponseMapper.fromJson(json);
  factory JSONRPCEmptyResponse.fromMap(Map<String, dynamic> map) => JSONRPCEmptyResponseMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ErrorData with ErrorDataMappable {
  final int code;
  final String message;
  final dynamic data;

  const ErrorData({required this.code, required this.message, this.data});

  factory ErrorData.fromJson(String json) => ErrorDataMapper.fromJson(json);
  factory ErrorData.fromMap(Map<String, dynamic> map) => ErrorDataMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class JSONRPCError extends JSONRPCBase with JSONRPCErrorMappable {
  final dynamic id;
  final ErrorData error;

  const JSONRPCError({required this.id, required this.error, super.jsonrpc});

  factory JSONRPCError.fromJson(String json) => JSONRPCErrorMapper.fromJson(json);
  factory JSONRPCError.fromMap(Map<String, dynamic> map) => JSONRPCErrorMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Capability with CapabilityMappable {
  final bool listChanged;

  const Capability({this.listChanged = false});

  factory Capability.fromJson(String json) => CapabilityMapper.fromJson(json);
  factory Capability.fromMap(Map<String, dynamic> map) => CapabilityMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ResourcesCapability extends Capability with ResourcesCapabilityMappable {
  final bool? subscribe;

  const ResourcesCapability({this.subscribe, super.listChanged});

  factory ResourcesCapability.fromJson(String json) => ResourcesCapabilityMapper.fromJson(json);
  factory ResourcesCapability.fromMap(Map<String, dynamic> map) => ResourcesCapabilityMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ServerCapabilities with ServerCapabilitiesMappable {
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

  factory ServerCapabilities.fromJson(String json) => ServerCapabilitiesMapper.fromJson(json);
  factory ServerCapabilities.fromMap(Map<String, dynamic> map) => ServerCapabilitiesMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Implementation with ImplementationMappable {
  final String name;
  final String version;

  const Implementation({required this.name, required this.version});

  factory Implementation.fromJson(String json) => ImplementationMapper.fromJson(json);
  factory Implementation.fromMap(Map<String, dynamic> map) => ImplementationMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InitializeRequestParams with InitializeRequestParamsMappable {
  final String protocolVersion;
  final Map<String, dynamic> capabilities;
  final Implementation clientInfo;

  const InitializeRequestParams({
    required this.protocolVersion,
    required this.capabilities,
    required this.clientInfo,
  });

  factory InitializeRequestParams.fromJson(String json) => InitializeRequestParamsMapper.fromJson(json);
  factory InitializeRequestParams.fromMap(Map<String, dynamic> map) => InitializeRequestParamsMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InitializeRequest extends JSONRPCRequest<Params> with InitializeRequestMappable {
  const InitializeRequest({required super.id, super.params})
      : super(method: 'initialize');

  factory InitializeRequest.fromJson(String json) => InitializeRequestMapper.fromJson(json);
  factory InitializeRequest.fromMap(Map<String, dynamic> map) => InitializeRequestMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class InitializeResult extends Result with InitializeResultMappable {
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
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ListToolsRequest extends PaginatedRequest with ListToolsRequestMappable {
  const ListToolsRequest({required super.id, super.params})
      : super(method: 'tools/list');

  factory ListToolsRequest.fromJson(String json) => ListToolsRequestMapper.fromJson(json);
  factory ListToolsRequest.fromMap(Map<String, dynamic> map) => ListToolsRequestMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToolAnnotations with ToolAnnotationsMappable {
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
  factory ToolAnnotations.fromJson(String json) => ToolAnnotationsMapper.fromJson(json);
  factory ToolAnnotations.fromMap(Map<String, dynamic> map) => ToolAnnotationsMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToolInputSchema with ToolInputSchemaMappable {
  final String type;
  final Map<String, Map<String, dynamic>>? properties;
  final List<String>? required;

  const ToolInputSchema({
    this.type = 'object',
    this.properties,
    this.required,
  });
  factory ToolInputSchema.fromJson(String json) => ToolInputSchemaMapper.fromJson(json);
  factory ToolInputSchema.fromMap(Map<String, dynamic> map) => ToolInputSchemaMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToolAPIInfo with ToolAPIInfoMappable {
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
  factory ToolAPIInfo.fromJson(String json) => ToolAPIInfoMapper.fromJson(json);
  factory ToolAPIInfo.fromMap(Map<String, dynamic> map) => ToolAPIInfoMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Tool with ToolMappable {
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

  factory Tool.fromJson(String json) => ToolMapper.fromJson(json);
  factory Tool.fromMap(Map<String, dynamic> map) => ToolMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToolAPI extends Tool with ToolAPIMappable {
  final ToolAPIInfo? apiInfo;

  const ToolAPI({
    required super.name,
    super.description,
    required super.inputSchema,
    super.annotations,
    this.apiInfo,
  });

  factory ToolAPI.fromJson(String json) => ToolAPIMapper.fromJson(json);
  factory ToolAPI.fromMap(Map<String, dynamic> map) => ToolAPIMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ListToolsResult extends Result with ListToolsResultMappable {
  final List<Tool> tools;

  const ListToolsResult({required this.tools, super.meta});

  factory ListToolsResult.fromJson(String json) => ListToolsResultMapper.fromJson(json);
  factory ListToolsResult.fromMap(Map<String, dynamic> map) => ListToolsResultMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CallToolRequestParams extends Params with CallToolRequestParamsMappable {
  final String name;
  final Map<String, dynamic>? arguments;

  const CallToolRequestParams({
    required this.name,
    this.arguments,
    super.meta,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CallToolRequest extends JSONRPCRequest<CallToolRequestParams> with CallToolRequestMappable {
  const CallToolRequest({required super.id, super.params})
      : super(method: 'tools/call');

  factory CallToolRequest.fromJson(String json) => CallToolRequestMapper.fromJson(json);
  factory CallToolRequest.fromMap(Map<String, dynamic> map) => CallToolRequestMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Annotations with AnnotationsMappable {
  final List<MCPRole>? audience;
  final double? priority;

  const Annotations({
    this.audience,
    this.priority,
  }) : assert(priority == null || (priority >= 0.0 && priority <= 1.0));

  factory Annotations.fromJson(String json) => AnnotationsMapper.fromJson(json);
  factory Annotations.fromMap(Map<String, dynamic> map) => AnnotationsMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Content with ContentMappable {
  final Annotations? annotations;

  const Content({this.annotations});

  factory Content.fromJson(String json) => ContentMapper.fromJson(json);
  factory Content.fromMap(Map<String, dynamic> map) => ContentMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TextContent extends Content with TextContentMappable {
  final String text;

  const TextContent({required this.text, super.annotations});

  factory TextContent.fromJson(String json) => TextContentMapper.fromJson(json);
  factory TextContent.fromMap(Map<String, dynamic> map) => TextContentMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ImageContent extends Content with ImageContentMappable {
  final String data;
  final String mimeType;

  const ImageContent({
    required this.data,
    required this.mimeType,
    super.annotations,
  });

  factory ImageContent.fromJson(String json) => ImageContentMapper.fromJson(json);
  factory ImageContent.fromMap(Map<String, dynamic> map) => ImageContentMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class AudioContent extends Content with AudioContentMappable {
  final String data;
  final String mimeType;

  const AudioContent({
    required this.data,
    required this.mimeType,
    super.annotations,
  });

  factory AudioContent.fromJson(String json) => AudioContentMapper.fromJson(json);
  factory AudioContent.fromMap(Map<String, dynamic> map) => AudioContentMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ResourceContents with ResourceContentsMappable {
  final String uri;
  final String? mimeType;

  const ResourceContents({required this.uri, this.mimeType});

  factory ResourceContents.fromJson(String json) => ResourceContentsMapper.fromJson(json);
  factory ResourceContents.fromMap(Map<String, dynamic> map) => ResourceContentsMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TextResourceContents extends ResourceContents with TextResourceContentsMappable {
  final String text;

  const TextResourceContents({
    required super.uri,
    super.mimeType,
    required this.text,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class BlobResourceContents extends ResourceContents with BlobResourceContentsMappable {
  final String blob;

  const BlobResourceContents({
    required super.uri,
    super.mimeType,
    required this.blob,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class EmbeddedResource extends Content with EmbeddedResourceMappable {
  final TextResourceContents resource;

  const EmbeddedResource({required this.resource, super.annotations});

  factory EmbeddedResource.fromJson(String json) => EmbeddedResourceMapper.fromJson(json);
  factory EmbeddedResource.fromMap(Map<String, dynamic> map) => EmbeddedResourceMapper.fromMap(map);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CallToolResult extends Result with CallToolResultMappable {
  final List<Content> content;
  final bool? isError;

  const CallToolResult({
    required this.content,
    this.isError = false,
    super.meta,
  });
}

/// Helper function to parse content
Content _parseContent(Map<String, dynamic> json) {
  final type = json['type'] as String;
  switch (type) {
    case 'text':
      return TextContent.fromMap(json);
    case 'image':
      return ImageContent.fromMap(json);
    case 'audio':
      return AudioContent.fromMap(json);
    case 'resource':
      return EmbeddedResource.fromMap(json);
    default:
      throw ArgumentError('Unknown content type: $type');
  }
}