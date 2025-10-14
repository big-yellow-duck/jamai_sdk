import 'package:freezed_annotation/freezed_annotation.dart';

part 'lm.freezed.dart';
part 'lm.g.dart';

/// Citation pattern for references
final RegExp citationPattern = RegExp(r'\[(@[0-9]+)[; ]*\]');

/// Enum for API response object types
enum ObjectType {
  chatReferences('chat.references'),
  genTableReferences('gen_table.references'),
  chatCompletion('chat.completion'),
  chatCompletionChunk('chat.completion.chunk'),
  embedding('embedding'),
  list('list'),
  reranking('reranking'),
  chatThread('chat.thread'),
  chatThreads('chat.threads');

  final String value;
  const ObjectType(this.value);

  @override
  String toString() => value;
}

/// Enum for content types
enum ContentType {
  text('text'),
  imageUrl('image_url'),
  inputAudio('input_audio'),
  inputS3('input_s3');

  final String value;
  const ContentType(this.value);

  @override
  String toString() => value;
}

/// Enum for tool types
enum ToolType {
  function('function'),
  webSearch('web_search'),
  codeInterpreter('code_interpreter');

  final String value;
  const ToolType(this.value);

  @override
  String toString() => value;
}

/// Enum for embedding types
enum EmbeddingType {
  query('query'),
  document('document');

  final String value;
  const EmbeddingType(this.value);

  @override
  String toString() => value;
}

/// Enum for encoding formats
enum EncodingFormat {
  float('float'),
  base64('base64');

  final String value;
  const EncodingFormat(this.value);

  @override
  String toString() => value;
}

/// Enum for audio formats
enum AudioFormat {
  mp3('mp3'),
  wav('wav');

  final String value;
  const AudioFormat(this.value);

  @override
  String toString() => value;
}

/// Enum for reasoning effort levels
enum ReasoningEffort {
  disable('disable'),
  minimal('minimal'),
  low('low'),
  medium('medium'),
  high('high');

  final String value;
  const ReasoningEffort(this.value);

  @override
  String toString() => value;
}

/// Enum for reasoning summary types
enum ReasoningSummary {
  auto('auto'),
  concise('concise'),
  detailed('detailed');

  final String value;
  const ReasoningSummary(this.value);

  @override
  String toString() => value;
}

/// Enum for finish reasons
enum FinishReason {
  stop('stop'),
  contextOverflow('context_overflow'),
  length('length'),
  toolCalls('tool_calls'),
  contentFilter('content_filter');

  final String value;
  const FinishReason(this.value);

  @override
  String toString() => value;
}

/// Enum for tool choice types
enum ToolChoiceType {
  none('none'),
  auto('auto'),
  required('required'),
  function('function');

  final String value;
  const ToolChoiceType(this.value);

  @override
  String toString() => value;
}

/// Chunk class for storing text and metadata
class Chunk {
  final String text;
  final String title;
  final int? page;
  final String fileName;
  final String filePath;
  final String documentId;
  final String chunkId;
  final Map<String, String> context;
  final Map<String, dynamic> metadata;

  const Chunk({
    required this.text,
    this.title = '',
    this.page,
    this.fileName = '',
    this.filePath = '',
    this.documentId = '',
    this.chunkId = '',
    this.context = const {},
    this.metadata = const {},
  });

  /// Creates a copy with updated fields
  Chunk copyWith({
    String? text,
    String? title,
    int? page,
    String? fileName,
    String? filePath,
    String? documentId,
    String? chunkId,
    Map<String, String>? context,
    Map<String, dynamic>? metadata,
  }) {
    return Chunk(
      text: text ?? this.text,
      title: title ?? this.title,
      page: page ?? this.page,
      fileName: fileName ?? this.fileName,
      filePath: filePath ?? this.filePath,
      documentId: documentId ?? this.documentId,
      chunkId: chunkId ?? this.chunkId,
      context: context ?? this.context,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'title': title,
      'page': page,
      'file_name': fileName,
      'file_path': filePath,
      'document_id': documentId,
      'chunk_id': chunkId,
      'context': context,
      'metadata': metadata,
    };
  }

  factory Chunk.fromJson(Map<String, dynamic> json) {
    return Chunk(
      text: json['text'] ?? '',
      title: json['title'] ?? '',
      page: json['page'],
      fileName: json['file_name'] ?? '',
      filePath: json['file_path'] ?? '',
      documentId: json['document_id'] ?? '',
      chunkId: json['chunk_id'] ?? '',
      context: Map<String, String>.from(json['context'] ?? {}),
      metadata: Map<String, dynamic>.from(json['metadata'] ?? {}),
    );
  }
}

/// Split chunks parameters
class SplitChunksParams {
  final String method;
  final int chunkSize;
  final int chunkOverlap;

  const SplitChunksParams({
    this.method = 'RecursiveCharacterTextSplitter',
    this.chunkSize = 1000,
    this.chunkOverlap = 200,
  });

  /// Creates a copy with updated fields
  SplitChunksParams copyWith({
    String? method,
    int? chunkSize,
    int? chunkOverlap,
  }) {
    return SplitChunksParams(
      method: method ?? this.method,
      chunkSize: chunkSize ?? this.chunkSize,
      chunkOverlap: chunkOverlap ?? this.chunkOverlap,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'method': method,
      'chunk_size': chunkSize,
      'chunk_overlap': chunkOverlap,
    };
  }

  factory SplitChunksParams.fromJson(Map<String, dynamic> json) {
    return SplitChunksParams(
      method: json['method'] ?? 'RecursiveCharacterTextSplitter',
      chunkSize: json['chunk_size'] ?? 1000,
      chunkOverlap: json['chunk_overlap'] ?? 200,
    );
  }
}

/// Split chunks request
class SplitChunksRequest {
  final String id;
  final List<Chunk> chunks;
  final SplitChunksParams params;

  const SplitChunksRequest({
    this.id = '',
    required this.chunks,
    this.params = const SplitChunksParams(),
  });

  /// Creates a copy with updated fields
  SplitChunksRequest copyWith({
    String? id,
    List<Chunk>? chunks,
    SplitChunksParams? params,
  }) {
    return SplitChunksRequest(
      id: id ?? this.id,
      chunks: chunks ?? this.chunks,
      params: params ?? this.params,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'chunks': chunks.map((chunk) => chunk.toJson()).toList(),
      'params': params.toJson(),
    };
  }

  factory SplitChunksRequest.fromJson(Map<String, dynamic> json) {
    return SplitChunksRequest(
      id: json['id'] ?? '',
      chunks:
          (json['chunks'] as List<dynamic>?)
              ?.map((c) => Chunk.fromJson(c as Map<String, dynamic>))
              .toList() ??
          [],
      params: json['params'] != null
          ? SplitChunksParams.fromJson(json['params'] as Map<String, dynamic>)
          : const SplitChunksParams(),
    );
  }

  @override
  String toString() {
    return 'SplitChunksRequest(id=$id, chunks=${chunks.length}, params=$params)';
  }
}

/// References for RAG responses
class References {
  final ObjectType object;
  final List<Chunk> chunks;
  final String searchQuery;
  final FinishReason? finishReason;

  const References({
    this.object = ObjectType.chatReferences,
    this.chunks = const [],
    required this.searchQuery,
    this.finishReason,
  });

  /// Creates a copy with updated fields
  References copyWith({
    ObjectType? object,
    List<Chunk>? chunks,
    String? searchQuery,
    FinishReason? finishReason,
  }) {
    return References(
      object: object ?? this.object,
      chunks: chunks ?? this.chunks,
      searchQuery: searchQuery ?? this.searchQuery,
      finishReason: finishReason ?? this.finishReason,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object.value,
      'chunks': chunks.map((chunk) => chunk.toJson()).toList(),
      'search_query': searchQuery,
      'finish_reason': finishReason?.value,
    };
  }

  factory References.fromJson(Map<String, dynamic> json) {
    return References(
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.chatReferences,
      ),
      chunks:
          (json['chunks'] as List<dynamic>?)
              ?.map((c) => Chunk.fromJson(c as Map<String, dynamic>))
              .toList() ??
          [],
      searchQuery: json['search_query'] ?? '',
      finishReason: json['finish_reason'] != null
          ? FinishReason.values.firstWhere(
              (e) => e.value == json['finish_reason'],
              orElse: () => FinishReason.stop,
            )
          : null,
    );
  }
}

// /// RAG parameters
// class RAGParams {
//   final String tableId;
//   final String? rerankingModel;
//   final String searchQuery;
//   final int k;
//   final bool rerank;
//   final bool concatRerankerInput;
//   final bool inlineCitations;

//   const RAGParams({
//     this.tableId = '',
//     this.rerankingModel,
//     this.searchQuery = '',
//     this.k = 3,
//     this.rerank = true,
//     this.concatRerankerInput = false,
//     this.inlineCitations = true,
//   });

//   /// Creates a copy with updated fields
//   RAGParams copyWith({
//     String? tableId,
//     String? rerankingModel,
//     String? searchQuery,
//     int? k,
//     bool? rerank,
//     bool? concatRerankerInput,
//     bool? inlineCitations,
//   }) {
//     return RAGParams(
//       tableId: tableId ?? this.tableId,
//       rerankingModel: rerankingModel ?? this.rerankingModel,
//       searchQuery: searchQuery ?? this.searchQuery,
//       k: k ?? this.k,
//       rerank: rerank ?? this.rerank,
//       concatRerankerInput: concatRerankerInput ?? this.concatRerankerInput,
//       inlineCitations: inlineCitations ?? this.inlineCitations,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'table_id': tableId,
//       'reranking_model': rerankingModel,
//       'search_query': searchQuery,
//       'k': k,
//       'rerank': rerank,
//       'concat_reranker_input': concatRerankerInput,
//       'inline_citations': inlineCitations,
//     };
//   }

//   factory RAGParams.fromJson(Map<String, dynamic> json) {
//     return RAGParams(
//       tableId: json['table_id'] ?? '',
//       rerankingModel: json['reranking_model'],
//       searchQuery: json['search_query'] ?? '',
//       k: json['k'] ?? 3,
//       rerank: json['rerank'] ?? true,
//       concatRerankerInput: json['concat_reranker_input'] ?? false,
//       inlineCitations: json['inline_citations'] ?? true,
//     );
//   }
// }

/// RAG parameters
@freezed
abstract class RAGParams with _$RAGParams {
  const factory RAGParams({
    required String tableId,
    String? rerankingModel,
    required String searchQuery,
    @Default(3) int k,
    @Default(true) bool rerank,
    @Default(false) bool concatRerankerInput,
    @Default(true) bool inlineCitations,
  }) = _RAGParams;

  factory RAGParams.fromJson(Map<String, Object> json) =>
      _$RAGParamsFromJson(json);
}

/// Function call
class FunctionCall {
  final String name;
  final String arguments;

  const FunctionCall({required this.name, required this.arguments});

  /// Creates a copy with updated fields
  FunctionCall copyWith({String? name, String? arguments}) {
    return FunctionCall(
      name: name ?? this.name,
      arguments: arguments ?? this.arguments,
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'arguments': arguments};
  }

  factory FunctionCall.fromJson(Map<String, dynamic> json) {
    return FunctionCall(
      name: json['name'] ?? '',
      arguments: json['arguments'] ?? '',
    );
  }
}

/// Audio response
class AudioResponse {
  final String id;
  final int expiresAt;
  final String data;
  final String transcript;

  const AudioResponse({
    required this.id,
    required this.expiresAt,
    required this.data,
    required this.transcript,
  });

  /// Creates a copy with updated fields
  AudioResponse copyWith({
    String? id,
    int? expiresAt,
    String? data,
    String? transcript,
  }) {
    return AudioResponse(
      id: id ?? this.id,
      expiresAt: expiresAt ?? this.expiresAt,
      data: data ?? this.data,
      transcript: transcript ?? this.transcript,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'expires_at': expiresAt,
      'data': data,
      'transcript': transcript,
    };
  }

  factory AudioResponse.fromJson(Map<String, dynamic> json) {
    return AudioResponse(
      id: json['id'] ?? '',
      expiresAt: json['expires_at'] ?? 0,
      data: json['data'] ?? '',
      transcript: json['transcript'] ?? '',
    );
  }
}

/// Chat completion delta
class ChatCompletionDelta {
  final String role;
  final String? content;
  final String? reasoningContent;
  final String? refusal;
  final List<ToolCall>? toolCalls;
  final FunctionCall? functionCall;

  const ChatCompletionDelta({
    this.role = 'assistant',
    this.content,
    this.reasoningContent,
    this.refusal,
    this.toolCalls,
    this.functionCall,
  });

  /// Creates a copy with updated fields
  ChatCompletionDelta copyWith({
    String? role,
    String? content,
    String? reasoningContent,
    String? refusal,
    List<ToolCall>? toolCalls,
    FunctionCall? functionCall,
  }) {
    return ChatCompletionDelta(
      role: role ?? this.role,
      content: content ?? this.content,
      reasoningContent: reasoningContent ?? this.reasoningContent,
      refusal: refusal ?? this.refusal,
      toolCalls: toolCalls ?? this.toolCalls,
      functionCall: functionCall ?? this.functionCall,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'content': content,
      'reasoning_content': reasoningContent,
      'refusal': refusal,
      'tool_calls': toolCalls?.map((call) => call.toJson()).toList(),
      'function_call': functionCall?.toJson(),
    };
  }

  factory ChatCompletionDelta.fromJson(Map<String, dynamic> json) {
    return ChatCompletionDelta(
      role: json['role'] ?? 'assistant',
      content: json['content'],
      reasoningContent: json['reasoning_content'],
      refusal: json['refusal'],
      toolCalls: json['tool_calls'] != null
          ? (json['tool_calls'] as List<dynamic>)
                .map((call) => ToolCall.fromJson(call as Map<String, dynamic>))
                .toList()
          : null,
      functionCall: json['function_call'] != null
          ? FunctionCall.fromJson(json['function_call'] as Map<String, dynamic>)
          : null,
    );
  }
}

/// Chat completion message
class ChatCompletionMessage extends ChatCompletionDelta {
  final AudioResponse? audio;

  const ChatCompletionMessage({
    super.role,
    super.content,
    super.reasoningContent,
    super.refusal,
    super.toolCalls,
    super.functionCall,
    this.audio,
  });

  /// Creates a copy with updated fields
  @override
  ChatCompletionMessage copyWith({
    String? role,
    String? content,
    String? reasoningContent,
    String? refusal,
    List<ToolCall>? toolCalls,
    FunctionCall? functionCall,
    AudioResponse? audio,
  }) {
    return ChatCompletionMessage(
      role: role ?? this.role,
      content: content ?? this.content,
      reasoningContent: reasoningContent ?? this.reasoningContent,
      refusal: refusal ?? this.refusal,
      toolCalls: toolCalls ?? this.toolCalls,
      functionCall: functionCall ?? this.functionCall,
      audio: audio ?? this.audio,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['audio'] = audio?.toJson();
    return json;
  }

  factory ChatCompletionMessage.fromJson(Map<String, dynamic> json) {
    return ChatCompletionMessage(
      role: json['role'] ?? 'assistant',
      content: json['content'],
      reasoningContent: json['reasoning_content'],
      refusal: json['refusal'],
      toolCalls: json['tool_calls'] != null
          ? (json['tool_calls'] as List<dynamic>)
                .map((call) => ToolCall.fromJson(call as Map<String, dynamic>))
                .toList()
          : null,
      functionCall: json['function_call'] != null
          ? FunctionCall.fromJson(json['function_call'] as Map<String, dynamic>)
          : null,
      audio: json['audio'] != null
          ? AudioResponse.fromJson(json['audio'] as Map<String, dynamic>)
          : null,
    );
  }
}

/// Log probability token
class LogProbToken {
  final String token;
  final double logprob;
  final List<int>? bytes;

  const LogProbToken({required this.token, required this.logprob, this.bytes});

  /// Creates a copy with updated fields
  LogProbToken copyWith({String? token, double? logprob, List<int>? bytes}) {
    return LogProbToken(
      token: token ?? this.token,
      logprob: logprob ?? this.logprob,
      bytes: bytes ?? this.bytes,
    );
  }

  Map<String, dynamic> toJson() {
    return {'token': token, 'logprob': logprob, 'bytes': bytes};
  }

  factory LogProbToken.fromJson(Map<String, dynamic> json) {
    return LogProbToken(
      token: json['token'] ?? '',
      logprob: (json['logprob'] ?? -9999.0).toDouble(),
      bytes: json['bytes'] != null ? List<int>.from(json['bytes']) : null,
    );
  }
}

/// Log probabilities
class LogProbs {
  final List<LogProbToken>? content;
  final List<LogProbToken>? refusal;

  const LogProbs({this.content, this.refusal});

  /// Creates a copy with updated fields
  LogProbs copyWith({
    List<LogProbToken>? content,
    List<LogProbToken>? refusal,
  }) {
    return LogProbs(
      content: content ?? this.content,
      refusal: refusal ?? this.refusal,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content?.map((token) => token.toJson()).toList(),
      'refusal': refusal?.map((token) => token.toJson()).toList(),
    };
  }

  factory LogProbs.fromJson(Map<String, dynamic> json) {
    return LogProbs(
      content: json['content'] != null
          ? (json['content'] as List<dynamic>)
                .map(
                  (token) =>
                      LogProbToken.fromJson(token as Map<String, dynamic>),
                )
                .toList()
          : null,
      refusal: json['refusal'] != null
          ? (json['refusal'] as List<dynamic>)
                .map(
                  (token) =>
                      LogProbToken.fromJson(token as Map<String, dynamic>),
                )
                .toList()
          : null,
    );
  }
}

/// Chat completion choice
class ChatCompletionChoice {
  final int index;
  final ChatCompletionMessage? message;
  final ChatCompletionDelta? delta;
  final LogProbs? logprobs;
  final FinishReason? finishReason;

  const ChatCompletionChoice({
    required this.index,
    this.message,
    this.delta,
    this.logprobs,
    this.finishReason,
  });

  /// Creates a copy with updated fields
  ChatCompletionChoice copyWith({
    int? index,
    ChatCompletionMessage? message,
    ChatCompletionDelta? delta,
    LogProbs? logprobs,
    FinishReason? finishReason,
  }) {
    return ChatCompletionChoice(
      index: index ?? this.index,
      message: message ?? this.message,
      delta: delta ?? this.delta,
      logprobs: logprobs ?? this.logprobs,
      finishReason: finishReason ?? this.finishReason,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'message': message?.toJson(),
      'delta': delta?.toJson(),
      'logprobs': logprobs?.toJson(),
      'finish_reason': finishReason?.value,
    };
  }

  factory ChatCompletionChoice.fromJson(Map<String, dynamic> json) {
    return ChatCompletionChoice(
      index: json['index'] ?? 0,
      message: json['message'] != null
          ? ChatCompletionMessage.fromJson(
              json['message'] as Map<String, dynamic>,
            )
          : null,
      delta: json['delta'] != null
          ? ChatCompletionDelta.fromJson(json['delta'] as Map<String, dynamic>)
          : null,
      logprobs: json['logprobs'] != null
          ? LogProbs.fromJson(json['logprobs'] as Map<String, dynamic>)
          : null,
      finishReason: json['finish_reason'] != null
          ? FinishReason.values.firstWhere(
              (e) => e.value == json['finish_reason'],
              orElse: () => FinishReason.stop,
            )
          : null,
    );
  }
}

/// Zero if none int type
typedef ZeroIfNoneInt = int;

/// Prompt usage details
class PromptUsageDetails {
  final ZeroIfNoneInt cachedTokens;
  final ZeroIfNoneInt audioTokens;

  const PromptUsageDetails({this.cachedTokens = 0, this.audioTokens = 0});

  /// Creates a copy with updated fields
  PromptUsageDetails copyWith({
    ZeroIfNoneInt? cachedTokens,
    ZeroIfNoneInt? audioTokens,
  }) {
    return PromptUsageDetails(
      cachedTokens: cachedTokens ?? this.cachedTokens,
      audioTokens: audioTokens ?? this.audioTokens,
    );
  }

  Map<String, dynamic> toJson() {
    return {'cached_tokens': cachedTokens, 'audio_tokens': audioTokens};
  }

  factory PromptUsageDetails.fromJson(Map<String, dynamic> json) {
    return PromptUsageDetails(
      cachedTokens: json['cached_tokens'] ?? 0,
      audioTokens: json['audio_tokens'] ?? 0,
    );
  }
}

/// Completion usage details
class CompletionUsageDetails {
  final ZeroIfNoneInt audioTokens;
  final ZeroIfNoneInt reasoningTokens;
  final ZeroIfNoneInt acceptedPredictionTokens;
  final ZeroIfNoneInt rejectedPredictionTokens;

  const CompletionUsageDetails({
    this.audioTokens = 0,
    this.reasoningTokens = 0,
    this.acceptedPredictionTokens = 0,
    this.rejectedPredictionTokens = 0,
  });

  /// Creates a copy with updated fields
  CompletionUsageDetails copyWith({
    ZeroIfNoneInt? audioTokens,
    ZeroIfNoneInt? reasoningTokens,
    ZeroIfNoneInt? acceptedPredictionTokens,
    ZeroIfNoneInt? rejectedPredictionTokens,
  }) {
    return CompletionUsageDetails(
      audioTokens: audioTokens ?? this.audioTokens,
      reasoningTokens: reasoningTokens ?? this.reasoningTokens,
      acceptedPredictionTokens:
          acceptedPredictionTokens ?? this.acceptedPredictionTokens,
      rejectedPredictionTokens:
          rejectedPredictionTokens ?? this.rejectedPredictionTokens,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'audio_tokens': audioTokens,
      'reasoning_tokens': reasoningTokens,
      'accepted_prediction_tokens': acceptedPredictionTokens,
      'rejected_prediction_tokens': rejectedPredictionTokens,
    };
  }

  factory CompletionUsageDetails.fromJson(Map<String, dynamic> json) {
    return CompletionUsageDetails(
      audioTokens: json['audio_tokens'] ?? 0,
      reasoningTokens: json['reasoning_tokens'] ?? 0,
      acceptedPredictionTokens: json['accepted_prediction_tokens'] ?? 0,
      rejectedPredictionTokens: json['rejected_prediction_tokens'] ?? 0,
    );
  }
}

/// Tool usage details
class ToolUsageDetails {
  final ZeroIfNoneInt webSearchCalls;
  final ZeroIfNoneInt codeInterpreterCalls;

  const ToolUsageDetails({
    this.webSearchCalls = 0,
    this.codeInterpreterCalls = 0,
  });

  /// Creates a copy with updated fields
  ToolUsageDetails copyWith({
    ZeroIfNoneInt? webSearchCalls,
    ZeroIfNoneInt? codeInterpreterCalls,
  }) {
    return ToolUsageDetails(
      webSearchCalls: webSearchCalls ?? this.webSearchCalls,
      codeInterpreterCalls: codeInterpreterCalls ?? this.codeInterpreterCalls,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'web_search_calls': webSearchCalls,
      'code_interpreter_calls': codeInterpreterCalls,
    };
  }

  factory ToolUsageDetails.fromJson(Map<String, dynamic> json) {
    return ToolUsageDetails(
      webSearchCalls: json['web_search_calls'] ?? 0,
      codeInterpreterCalls: json['code_interpreter_calls'] ?? 0,
    );
  }
}

/// Function parameters
@freezed
abstract class FunctionParameters with _$FunctionParameters {
  const factory FunctionParameters({
    @Default('object') String type,
    @Default({}) Map<String, FunctionParameter> properties,
    @Default([]) List<String> required,
    @Default(false) bool additionalProperties,
  }) = _FunctionParameters;

  factory FunctionParameters.fromJson(Map<String, Object> json) =>
      _$FunctionParametersFromJson(json);
}

/// Tool function
class ToolFunction {
  final String name;
  final String? description;
  final FunctionParameters? parameters;
  final bool strict;

  const ToolFunction({
    required this.name,
    this.description,
    this.parameters,
    this.strict = false,
  });

  /// Creates a copy with updated fields
  ToolFunction copyWith({
    String? name,
    String? description,
    FunctionParameters? parameters,
    bool? strict,
  }) {
    return ToolFunction(
      name: name ?? this.name,
      description: description ?? this.description,
      parameters: parameters ?? this.parameters,
      strict: strict ?? this.strict,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'parameters': parameters?.toJson(),
      'strict': strict,
    };
  }

  factory ToolFunction.fromJson(Map<String, dynamic> json) {
    return ToolFunction(
      name: json['name'] ?? '',
      description: json['description'],
      parameters: json['parameters'] != null
          ? FunctionParameters.fromJson(
              json['parameters'] as Map<String, dynamic>,
            )
          : null,
      strict: json['strict'] ?? false,
    );
  }
}

/// Function tool
@freezed
abstract class FunctionTool with _$FunctionTool {
  const factory FunctionTool({
    @Default(ToolType.function) ToolType type,
    required ToolFunction function,
  }) = _FunctionTool;

  factory FunctionTool.fromJson(Map<String, Object> json) =>
      _$FunctionToolFromJson(json);
}

/// Web search tool
@freezed
abstract class WebSearchTool with _$WebSearchTool {
  const factory WebSearchTool({required ToolType type}) = _WebSearchTool;

  factory WebSearchTool.fromJson(Map<String, String> json) =>
      _$WebSearchToolFromJson(json);
}

sealed class Tool {}

/// Code interpreter tool
@freezed
abstract class CodeInterpreterTool extends Tool with _$CodeInterpreterTool {
  CodeInterpreterTool._();
  factory CodeInterpreterTool({
    required ToolType type,
    @Default({'type': 'auto'}) Map<String, String> container,
  }) = _CodeIntepreterTool;

  factory CodeInterpreterTool.fromJson(Map<String, String> json) =>
      _$CodeInterpreterToolFromJson(json);
}

/// Tool types
// typedef Tool =
// dynamic; // Union[WebSearchTool, CodeInterpreterTool, FunctionTool]

/// Tool choice function
@freezed
abstract class ToolChoiceFunction extends Tool with _$ToolChoiceFunction {
  ToolChoiceFunction._();
  const factory ToolChoiceFunction({required String name}) =
      _ToolChoiceFunction;

  factory ToolChoiceFunction.fromJson(Map<String, Object> json) =>
      _$ToolChoiceFunctionFromJson(json);
}

/// Tool call function
@freezed
abstract class ToolCallFunction extends Tool with _$ToolCallFunction {
  ToolCallFunction._();
  const factory ToolCallFunction({required String arguments, String? name}) =
      _ToolCallFunction;

  factory ToolCallFunction.fromJson(Map<String, Object> json) =>
      _$ToolCallFunctionFromJson(json);
}

/// Tool call
class ToolCall {
  final String id;
  final ToolType type;
  final ToolCallFunction function;

  const ToolCall({
    required this.id,
    this.type = ToolType.function,
    required this.function,
  });

  /// Creates a copy with updated fields
  ToolCall copyWith({String? id, ToolType? type, ToolCallFunction? function}) {
    return ToolCall(
      id: id ?? this.id,
      type: type ?? this.type,
      function: function ?? this.function,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'type': type.value, 'function': function.toJson()};
  }

  factory ToolCall.fromJson(Map<String, dynamic> json) {
    return ToolCall(
      id: json['id'] ?? '',
      type: ToolType.values.firstWhere(
        (e) => e.value == json['type'],
        orElse: () => ToolType.function,
      ),
      function: ToolCallFunction.fromJson(
        json['function'] as Map<String, dynamic>,
      ),
    );
  }
}

/// Tool choice
class ToolChoice {
  final ToolChoiceType type;
  final ToolChoiceFunction function;

  const ToolChoice({
    this.type = ToolChoiceType.function,
    required this.function,
  });

  /// Creates a copy with updated fields
  ToolChoice copyWith({ToolChoiceType? type, ToolChoiceFunction? function}) {
    return ToolChoice(
      type: type ?? this.type,
      function: function ?? this.function,
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type.value, 'function': function.toJson()};
  }

  factory ToolChoice.fromJson(Map<String, dynamic> json) {
    return ToolChoice(
      type: ToolChoiceType.values.firstWhere(
        (e) => e.value == json['type'],
        orElse: () => ToolChoiceType.function,
      ),
      function: ToolChoiceFunction.fromJson(
        json['function'] as Map<String, dynamic>,
      ),
    );
  }
}

/// Chat request base
class ChatRequestBase {
  final String model;
  final RAGParams? ragParams;
  final List<Tool>? tools;
  final dynamic toolChoice; // ToolChoiceType | ToolChoice | null
  final double temperature;
  final double topP;
  final bool stream;
  final int maxTokens;
  final List<String>? stop;
  final double presencePenalty;
  final double frequencyPenalty;
  final Map<String, dynamic> logitBias;
  final int? thinkingBudget;
  final ReasoningEffort? reasoningEffort;
  final int? reasoningBudget;
  final ReasoningSummary reasoningSummary;

  const ChatRequestBase({
    this.model = '',
    this.ragParams,
    this.tools,
    this.toolChoice,
    this.temperature = 0.2,
    this.topP = 0.6,
    this.stream = true,
    this.maxTokens = 2048,
    this.stop,
    this.presencePenalty = 0.0,
    this.frequencyPenalty = 0.0,
    this.logitBias = const {},
    this.thinkingBudget = 1,
    this.reasoningEffort,
    this.reasoningBudget,
    this.reasoningSummary = ReasoningSummary.auto,
  });

  /// Creates a copy with updated fields
  ChatRequestBase copyWith({
    String? model,
    RAGParams? ragParams,
    List<Tool>? tools,
    dynamic toolChoice,
    double? temperature,
    double? topP,
    bool? stream,
    int? maxTokens,
    List<String>? stop,
    double? presencePenalty,
    double? frequencyPenalty,
    Map<String, dynamic>? logitBias,
    int? thinkingBudget,
    ReasoningEffort? reasoningEffort,
    int? reasoningBudget,
    ReasoningSummary? reasoningSummary,
  }) {
    return ChatRequestBase(
      model: model ?? this.model,
      ragParams: ragParams ?? this.ragParams,
      tools: tools ?? this.tools,
      toolChoice: toolChoice ?? this.toolChoice,
      temperature: temperature ?? this.temperature,
      topP: topP ?? this.topP,
      stream: stream ?? this.stream,
      maxTokens: maxTokens ?? this.maxTokens,
      stop: stop ?? this.stop,
      presencePenalty: presencePenalty ?? this.presencePenalty,
      frequencyPenalty: frequencyPenalty ?? this.frequencyPenalty,
      logitBias: logitBias ?? this.logitBias,
      thinkingBudget: thinkingBudget ?? this.thinkingBudget,
      reasoningEffort: reasoningEffort ?? this.reasoningEffort,
      reasoningBudget: reasoningBudget ?? this.reasoningBudget,
      reasoningSummary: reasoningSummary ?? this.reasoningSummary,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'model': model,
      'rag_params': ragParams?.toJson(),
      'tools': tools?.map((tool) => tool.toJson()).toList(),
      'tool_choice': toolChoice,
      'temperature': temperature,
      'top_p': topP,
      'stream': stream,
      'max_tokens': maxTokens,
      'stop': stop,
      'presence_penalty': presencePenalty,
      'frequency_penalty': frequencyPenalty,
      'logit_bias': logitBias,
      'thinking_budget': thinkingBudget,
      'reasoning_effort': reasoningEffort?.value,
      'reasoning_budget': reasoningBudget,
      'reasoning_summary': reasoningSummary.value,
    };
  }

  factory ChatRequestBase.fromJson(Map<String, dynamic> json) {
    return ChatRequestBase(
      model: json['model'] ?? '',
      ragParams: json['rag_params'] != null
          ? RAGParams.fromJson(json['rag_params'])
          : null,
      tools: json['tools'] != null
          ? (json['tools'] as List<dynamic>)
                .map((tool) => tool)
                .toList() // dynamic
          : null,
      toolChoice: json['tool_choice'],
      temperature: (json['temperature'] ?? 0.2).toDouble(),
      topP: (json['top_p'] ?? 0.6).toDouble(),
      stream: json['stream'] ?? true,
      maxTokens: json['max_tokens'] ?? 2048,
      stop: json['stop'] != null ? List<String>.from(json['stop']) : null,
      presencePenalty: (json['presence_penalty'] ?? 0.0).toDouble(),
      frequencyPenalty: (json['frequency_penalty'] ?? 0.0).toDouble(),
      logitBias: Map<String, dynamic>.from(json['logit_bias'] ?? {}),
      thinkingBudget: json['thinking_budget'],
      reasoningEffort: json['reasoning_effort'] != null
          ? ReasoningEffort.values.firstWhere(
              (e) => e.value == json['reasoning_effort'],
              orElse: () => ReasoningEffort.disable,
            )
          : null,
      reasoningBudget: json['reasoning_budget'],
      reasoningSummary: ReasoningSummary.values.firstWhere(
        (e) => e.value == json['reasoning_summary'],
        orElse: () => ReasoningSummary.auto,
      ),
    );
  }

  Map<String, dynamic> get hyperparams {
    return toJson()
      ..remove('object')
      ..remove('messages')
      ..remove('rag_params');
  }
}

/// Chat request base
// @freezed
// abstract class ChatRequestBase with _$ChatRequestBase {
//   final String model;
//   final RAGParams? ragParams;
//   final List<Tool>? tools;
//   final dynamic toolChoice; // ToolChoiceType | ToolChoice | null
//   final double temperature;
//   final double topP;
//   final bool stream;
//   final int maxTokens;
//   final List<String>? stop;
//   final double presencePenalty;
//   final double frequencyPenalty;
//   final Map<String, dynamic> logitBias;
//   final int? thinkingBudget;
//   final ReasoningEffort? reasoningEffort;
//   final int? reasoningBudget;
//   final ReasoningSummary reasoningSummary;

//   const ChatRequestBase({
//     this.model = '',
//     this.ragParams,
//     this.tools,
//     this.toolChoice,
//     this.temperature = 0.2,
//     this.topP = 0.6,
//     this.stream = true,
//     this.maxTokens = 2048,
//     this.stop,
//     this.presencePenalty = 0.0,
//     this.frequencyPenalty = 0.0,
//     this.logitBias = const {},
//     this.thinkingBudget = 1,
//     this.reasoningEffort,
//     this.reasoningBudget,
//     this.reasoningSummary = ReasoningSummary.auto,
//   });

//   /// Creates a copy with updated fields
//   ChatRequestBase copyWith({
//     String? model,
//     RAGParams? ragParams,
//     List<Tool>? tools,
//     dynamic toolChoice,
//     double? temperature,
//     double? topP,
//     bool? stream,
//     int? maxTokens,
//     List<String>? stop,
//     double? presencePenalty,
//     double? frequencyPenalty,
//     Map<String, dynamic>? logitBias,
//     int? thinkingBudget,
//     ReasoningEffort? reasoningEffort,
//     int? reasoningBudget,
//     ReasoningSummary? reasoningSummary,
//   }) {
//     return ChatRequestBase(
//       model: model ?? this.model,
//       ragParams: ragParams ?? this.ragParams,
//       tools: tools ?? this.tools,
//       toolChoice: toolChoice ?? this.toolChoice,
//       temperature: temperature ?? this.temperature,
//       topP: topP ?? this.topP,
//       stream: stream ?? this.stream,
//       maxTokens: maxTokens ?? this.maxTokens,
//       stop: stop ?? this.stop,
//       presencePenalty: presencePenalty ?? this.presencePenalty,
//       frequencyPenalty: frequencyPenalty ?? this.frequencyPenalty,
//       logitBias: logitBias ?? this.logitBias,
//       thinkingBudget: thinkingBudget ?? this.thinkingBudget,
//       reasoningEffort: reasoningEffort ?? this.reasoningEffort,
//       reasoningBudget: reasoningBudget ?? this.reasoningBudget,
//       reasoningSummary: reasoningSummary ?? this.reasoningSummary,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'model': model,
//       'rag_params': ragParams?.toJson(),
//       'tools': tools?.map((tool) => tool.toJson()).toList(),
//       'tool_choice': toolChoice,
//       'temperature': temperature,
//       'top_p': topP,
//       'stream': stream,
//       'max_tokens': maxTokens,
//       'stop': stop,
//       'presence_penalty': presencePenalty,
//       'frequency_penalty': frequencyPenalty,
//       'logit_bias': logitBias,
//       'thinking_budget': thinkingBudget,
//       'reasoning_effort': reasoningEffort?.value,
//       'reasoning_budget': reasoningBudget,
//       'reasoning_summary': reasoningSummary.value,
//     };
//   }

//   factory ChatRequestBase.fromJson(Map<String, dynamic> json) {
//     return ChatRequestBase(
//       model: json['model'] ?? '',
//       ragParams: json['rag_params'] != null
//           ? RAGParams.fromJson(json['rag_params'] as Map<String, dynamic>)
//           : null,
//       tools: json['tools'] != null
//           ? (json['tools'] as List<dynamic>)
//                 .map((tool) => tool)
//                 .toList() // dynamic
//           : null,
//       toolChoice: json['tool_choice'],
//       temperature: (json['temperature'] ?? 0.2).toDouble(),
//       topP: (json['top_p'] ?? 0.6).toDouble(),
//       stream: json['stream'] ?? true,
//       maxTokens: json['max_tokens'] ?? 2048,
//       stop: json['stop'] != null ? List<String>.from(json['stop']) : null,
//       presencePenalty: (json['presence_penalty'] ?? 0.0).toDouble(),
//       frequencyPenalty: (json['frequency_penalty'] ?? 0.0).toDouble(),
//       logitBias: Map<String, dynamic>.from(json['logit_bias'] ?? {}),
//       thinkingBudget: json['thinking_budget'],
//       reasoningEffort: json['reasoning_effort'] != null
//           ? ReasoningEffort.values.firstWhere(
//               (e) => e.value == json['reasoning_effort'],
//               orElse: () => ReasoningEffort.disable,
//             )
//           : null,
//       reasoningBudget: json['reasoning_budget'],
//       reasoningSummary: ReasoningSummary.values.firstWhere(
//         (e) => e.value == json['reasoning_summary'],
//         orElse: () => ReasoningSummary.auto,
//       ),
//     );
//   }

//   Map<String, dynamic> get hyperparams {
//     return toJson()
//       ..remove('object')
//       ..remove('messages')
//       ..remove('rag_params');
//   }
// }

/// Chat request
class ChatRequest extends ChatRequestBase {
  final String id;
  final List<ChatEntry> messages;
  final int? maxCompletionTokens;
  final int n;
  final String user;

  const ChatRequest({
    this.id = '',
    required this.messages,
    this.maxCompletionTokens,
    this.n = 1,
    this.user = '',
    super.model,
    super.stream,
    super.ragParams,
    super.tools,
    super.toolChoice,
    super.temperature,
    super.topP,
    super.maxTokens,
    super.stop,
    super.presencePenalty,
    super.frequencyPenalty,
    super.logitBias,
    super.thinkingBudget,
    super.reasoningEffort,
    super.reasoningBudget,
    super.reasoningSummary,
  });

  @override
  ChatRequest copyWith({
    String? id,
    List<ChatEntry>? messages,
    int? maxCompletionTokens,
    int? n,
    String? user,
    bool? stream,
    String? model,
    RAGParams? ragParams,
    List<Tool>? tools,
    dynamic toolChoice,
    double? temperature,
    double? topP,
    int? maxTokens,
    List<String>? stop,
    double? presencePenalty,
    double? frequencyPenalty,
    Map<String, dynamic>? logitBias,
    int? thinkingBudget,
    ReasoningEffort? reasoningEffort,
    int? reasoningBudget,
    ReasoningSummary? reasoningSummary,
  }) {
    return ChatRequest(
      id: id ?? this.id,
      messages: messages ?? this.messages,

      maxCompletionTokens: maxCompletionTokens ?? this.maxCompletionTokens,
      n: n ?? this.n,
      user: user ?? this.user,
      stream: stream ?? this.stream,
      model: model ?? this.model,
      ragParams: ragParams ?? this.ragParams,
      tools: tools ?? this.tools,
      toolChoice: toolChoice ?? this.toolChoice,
      temperature: temperature ?? this.temperature,
      topP: topP ?? this.topP,
      maxTokens: maxTokens ?? this.maxTokens,
      stop: stop ?? this.stop,
      presencePenalty: presencePenalty ?? this.presencePenalty,
      frequencyPenalty: frequencyPenalty ?? this.frequencyPenalty,
      logitBias: logitBias ?? this.logitBias,
      thinkingBudget: thinkingBudget ?? this.thinkingBudget,
      reasoningEffort: reasoningEffort ?? this.reasoningEffort,
      reasoningBudget: reasoningBudget ?? this.reasoningBudget,
      reasoningSummary: reasoningSummary ?? this.reasoningSummary,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['id'] = id;
    json['messages'] = messages.map((msg) => msg.toJson()).toList();
    json['max_completion_tokens'] = maxCompletionTokens;
    json['n'] = n;
    json['user'] = user;
    json['stream'] = stream;
    return json;
  }

  factory ChatRequest.fromJson(Map<String, dynamic> json) {
    return ChatRequest(
      id: json['id'] ?? '',
      messages:
          (json['messages'] as List<dynamic>?)
              ?.map((msg) => ChatEntry.fromJson(msg as Map<String, dynamic>))
              .toList() ??
          [],
      maxCompletionTokens: json['max_completion_tokens'],
      n: json['n'] ?? 1,
      user: json['user'] ?? '',
      stream: json['stream'] ?? false,
      model: json['model'] ?? '',
      ragParams: json['rag_params'] != null
          ? RAGParams.fromJson(json['rag_params'] as Map<String, dynamic>)
          : null,
      tools: json['tools'] != null
          ? (json['tools'] as List<dynamic>).map((tool) => tool).toList()
          : null,
      toolChoice: json['tool_choice'],
      temperature: (json['temperature'] ?? 0.2).toDouble(),
      topP: (json['top_p'] ?? 0.6).toDouble(),
      maxTokens: json['max_tokens'] ?? 2048,
      stop: json['stop'] != null ? List<String>.from(json['stop']) : null,
      presencePenalty: (json['presence_penalty'] ?? 0.0).toDouble(),
      frequencyPenalty: (json['frequency_penalty'] ?? 0.0).toDouble(),
      logitBias: Map<String, dynamic>.from(json['logit_bias'] ?? {}),
      thinkingBudget: json['thinking_budget'],
      reasoningEffort: json['reasoning_effort'] != null
          ? ReasoningEffort.values.firstWhere(
              (e) => e.value == json['reasoning_effort'],
              orElse: () => ReasoningEffort.disable,
            )
          : null,
      reasoningBudget: json['reasoning_budget'],
      reasoningSummary: ReasoningSummary.values.firstWhere(
        (e) => e.value == json['reasoning_summary'],
        orElse: () => ReasoningSummary.auto,
      ),
    );
  }

  void validateParams() {
    final effectiveMaxTokens = maxCompletionTokens ?? maxTokens;
    if (thinkingBudget != null && thinkingBudget! > effectiveMaxTokens) {
      throw ArgumentError(
        '`thinking_budget` cannot be higher than `max_tokens`.',
      );
    }
  }
}

/// Embedding request
class EmbeddingRequest {
  final dynamic input; // String | List<String>
  final String model;
  final EmbeddingType type;
  final EncodingFormat encodingFormat;

  const EmbeddingRequest({
    required this.input,
    required this.model,
    this.type = EmbeddingType.document,
    this.encodingFormat = EncodingFormat.float,
  });

  EmbeddingRequest copyWith({
    dynamic input,
    String? model,
    EmbeddingType? type,
    EncodingFormat? encodingFormat,
  }) {
    return EmbeddingRequest(
      input: input ?? this.input,
      model: model ?? this.model,
      type: type ?? this.type,
      encodingFormat: encodingFormat ?? this.encodingFormat,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'input': input,
      'model': model,
      'type': type.value,
      'encoding_format': encodingFormat.value,
    };
  }

  factory EmbeddingRequest.fromJson(Map<String, dynamic> json) {
    return EmbeddingRequest(
      input: json['input'],
      model: json['model'] ?? '',
      type: EmbeddingType.values.firstWhere(
        (e) => e.value == json['type'],
        orElse: () => EmbeddingType.document,
      ),
      encodingFormat: EncodingFormat.values.firstWhere(
        (e) => e.value == json['encoding_format'],
        orElse: () => EncodingFormat.float,
      ),
    );
  }
}

/// Embedding response data
class EmbeddingResponseData {
  final ObjectType object;
  final dynamic embedding; // List<double> | String
  final int index;

  const EmbeddingResponseData({
    this.object = ObjectType.embedding,
    required this.embedding,
    this.index = 0,
  });

  EmbeddingResponseData copyWith({
    ObjectType? object,
    dynamic embedding,
    int? index,
  }) {
    return EmbeddingResponseData(
      object: object ?? this.object,
      embedding: embedding ?? this.embedding,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toJson() {
    return {'object': object.value, 'embedding': embedding, 'index': index};
  }

  factory EmbeddingResponseData.fromJson(Map<String, dynamic> json) {
    return EmbeddingResponseData(
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.embedding,
      ),
      embedding: json['embedding'],
      index: json['index'] ?? 0,
    );
  }
}

/// Embedding usage
class EmbeddingUsage {
  final int promptTokens;
  final int totalTokens;

  const EmbeddingUsage({this.promptTokens = 0, this.totalTokens = 0});

  EmbeddingUsage copyWith({int? promptTokens, int? totalTokens}) {
    return EmbeddingUsage(
      promptTokens: promptTokens ?? this.promptTokens,
      totalTokens: totalTokens ?? this.totalTokens,
    );
  }

  Map<String, dynamic> toJson() {
    return {'prompt_tokens': promptTokens, 'total_tokens': totalTokens};
  }

  factory EmbeddingUsage.fromJson(Map<String, dynamic> json) {
    return EmbeddingUsage(
      promptTokens: json['prompt_tokens'] ?? 0,
      totalTokens: json['total_tokens'] ?? 0,
    );
  }
}

/// Embedding response
class EmbeddingResponse {
  final ObjectType object;
  final List<EmbeddingResponseData> data;
  final String model;
  final EmbeddingUsage usage;

  const EmbeddingResponse({
    this.object = ObjectType.list,
    this.data = const [],
    this.model = '',
    this.usage = const EmbeddingUsage(),
  });

  EmbeddingResponse copyWith({
    ObjectType? object,
    List<EmbeddingResponseData>? data,
    String? model,
    EmbeddingUsage? usage,
  }) {
    return EmbeddingResponse(
      object: object ?? this.object,
      data: data ?? this.data,
      model: model ?? this.model,
      usage: usage ?? this.usage,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object.value,
      'data': data.map((d) => d.toJson()).toList(),
      'model': model,
      'usage': usage.toJson(),
    };
  }

  factory EmbeddingResponse.fromJson(Map<String, dynamic> json) {
    return EmbeddingResponse(
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.list,
      ),
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (d) =>
                    EmbeddingResponseData.fromJson(d as Map<String, dynamic>),
              )
              .toList() ??
          [],
      model: json['model'] ?? '',
      usage: json['usage'] != null
          ? EmbeddingUsage.fromJson(json['usage'] as Map<String, dynamic>)
          : const EmbeddingUsage(),
    );
  }
}

/// Reranking request
class RerankingRequest {
  final String model;
  final List<String> documents;
  final String query;

  const RerankingRequest({
    required this.model,
    required this.documents,
    required this.query,
  });

  RerankingRequest copyWith({
    String? model,
    List<String>? documents,
    String? query,
  }) {
    return RerankingRequest(
      model: model ?? this.model,
      documents: documents ?? this.documents,
      query: query ?? this.query,
    );
  }

  Map<String, dynamic> toJson() {
    return {'model': model, 'documents': documents, 'query': query};
  }

  factory RerankingRequest.fromJson(Map<String, dynamic> json) {
    return RerankingRequest(
      model: json['model'] ?? '',
      documents: List<String>.from(json['documents'] ?? []),
      query: json['query'] ?? '',
    );
  }
}

/// Reranking data
class RerankingData {
  final ObjectType object;
  final int index;
  final double relevanceScore;

  const RerankingData({
    this.object = ObjectType.reranking,
    required this.index,
    required this.relevanceScore,
  });

  RerankingData copyWith({
    ObjectType? object,
    int? index,
    double? relevanceScore,
  }) {
    return RerankingData(
      object: object ?? this.object,
      index: index ?? this.index,
      relevanceScore: relevanceScore ?? this.relevanceScore,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object.value,
      'index': index,
      'relevance_score': relevanceScore,
    };
  }

  factory RerankingData.fromJson(Map<String, dynamic> json) {
    return RerankingData(
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.reranking,
      ),
      index: json['index'] ?? 0,
      relevanceScore: (json['relevance_score'] ?? 0.0).toDouble(),
    );
  }
}

/// Reranking API version
class RerankingApiVersion {
  final String version;
  final bool isDeprecated;
  final bool isExperimental;

  const RerankingApiVersion({
    this.version = '',
    this.isDeprecated = false,
    this.isExperimental = false,
  });

  RerankingApiVersion copyWith({
    String? version,
    bool? isDeprecated,
    bool? isExperimental,
  }) {
    return RerankingApiVersion(
      version: version ?? this.version,
      isDeprecated: isDeprecated ?? this.isDeprecated,
      isExperimental: isExperimental ?? this.isExperimental,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'version': version,
      'is_deprecated': isDeprecated,
      'is_experimental': isExperimental,
    };
  }

  factory RerankingApiVersion.fromJson(Map<String, dynamic> json) {
    return RerankingApiVersion(
      version: json['version'] ?? '',
      isDeprecated: json['is_deprecated'] ?? false,
      isExperimental: json['is_experimental'] ?? false,
    );
  }
}

/// Reranking billed units
class RerankingBilledUnits {
  final int? images;
  final int? inputTokens;
  final int? outputTokens;
  final double? searchUnits;
  final double? classifications;

  const RerankingBilledUnits({
    this.images,
    this.inputTokens,
    this.outputTokens,
    this.searchUnits,
    this.classifications,
  });

  RerankingBilledUnits copyWith({
    int? images,
    int? inputTokens,
    int? outputTokens,
    double? searchUnits,
    double? classifications,
  }) {
    return RerankingBilledUnits(
      images: images ?? this.images,
      inputTokens: inputTokens ?? this.inputTokens,
      outputTokens: outputTokens ?? this.outputTokens,
      searchUnits: searchUnits ?? this.searchUnits,
      classifications: classifications ?? this.classifications,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'images': images,
      'input_tokens': inputTokens,
      'output_tokens': outputTokens,
      'search_units': searchUnits,
      'classifications': classifications,
    };
  }

  factory RerankingBilledUnits.fromJson(Map<String, dynamic> json) {
    return RerankingBilledUnits(
      images: json['images'],
      inputTokens: json['input_tokens'],
      outputTokens: json['output_tokens'],
      searchUnits: json['search_units']?.toDouble(),
      classifications: json['classifications']?.toDouble(),
    );
  }
}

/// Reranking meta usage
class RerankingMetaUsage {
  final int? inputTokens;
  final int? outputTokens;

  const RerankingMetaUsage({this.inputTokens, this.outputTokens});

  RerankingMetaUsage copyWith({int? inputTokens, int? outputTokens}) {
    return RerankingMetaUsage(
      inputTokens: inputTokens ?? this.inputTokens,
      outputTokens: outputTokens ?? this.outputTokens,
    );
  }

  Map<String, dynamic> toJson() {
    return {'input_tokens': inputTokens, 'output_tokens': outputTokens};
  }

  factory RerankingMetaUsage.fromJson(Map<String, dynamic> json) {
    return RerankingMetaUsage(
      inputTokens: json['input_tokens'],
      outputTokens: json['output_tokens'],
    );
  }
}

/// Reranking usage
class RerankingUsage extends RerankingMetaUsage {
  final int documents;

  const RerankingUsage({
    required this.documents,
    super.inputTokens,
    super.outputTokens,
  });

  @override
  RerankingUsage copyWith({
    int? documents,
    int? inputTokens,
    int? outputTokens,
  }) {
    return RerankingUsage(
      documents: documents ?? this.documents,
      inputTokens: inputTokens ?? this.inputTokens,
      outputTokens: outputTokens ?? this.outputTokens,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['documents'] = documents;
    return json;
  }

  factory RerankingUsage.fromJson(Map<String, dynamic> json) {
    return RerankingUsage(
      documents: json['documents'] ?? 0,
      inputTokens: json['input_tokens'],
      outputTokens: json['output_tokens'],
    );
  }
}

/// Reranking meta
class RerankingMeta {
  final String model;
  final RerankingApiVersion? apiVersion;
  final RerankingBilledUnits? billedUnits;
  final RerankingMetaUsage? tokens;
  final List<String>? warnings;

  const RerankingMeta({
    required this.model,
    this.apiVersion,
    this.billedUnits,
    this.tokens,
    this.warnings,
  });

  RerankingMeta copyWith({
    String? model,
    RerankingApiVersion? apiVersion,
    RerankingBilledUnits? billedUnits,
    RerankingMetaUsage? tokens,
    List<String>? warnings,
  }) {
    return RerankingMeta(
      model: model ?? this.model,
      apiVersion: apiVersion ?? this.apiVersion,
      billedUnits: billedUnits ?? this.billedUnits,
      tokens: tokens ?? this.tokens,
      warnings: warnings ?? this.warnings,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'model': model,
      'api_version': apiVersion?.toJson(),
      'billed_units': billedUnits?.toJson(),
      'tokens': tokens?.toJson(),
      'warnings': warnings,
    };
  }

  factory RerankingMeta.fromJson(Map<String, dynamic> json) {
    return RerankingMeta(
      model: json['model'] ?? '',
      apiVersion: json['api_version'] != null
          ? RerankingApiVersion.fromJson(
              json['api_version'] as Map<String, dynamic>,
            )
          : null,
      billedUnits: json['billed_units'] != null
          ? RerankingBilledUnits.fromJson(
              json['billed_units'] as Map<String, dynamic>,
            )
          : null,
      tokens: json['tokens'] != null
          ? RerankingMetaUsage.fromJson(json['tokens'] as Map<String, dynamic>)
          : null,
      warnings: json['warnings'] != null
          ? List<String>.from(json['warnings'])
          : null,
    );
  }
}

/// Reranking response
class RerankingResponse {
  final ObjectType object;
  final List<RerankingData> results;
  final RerankingUsage usage;
  final RerankingMeta meta;

  const RerankingResponse({
    this.object = ObjectType.list,
    this.results = const [],
    required this.usage,
    required this.meta,
  });

  RerankingResponse copyWith({
    ObjectType? object,
    List<RerankingData>? results,
    RerankingUsage? usage,
    RerankingMeta? meta,
  }) {
    return RerankingResponse(
      object: object ?? this.object,
      results: results ?? this.results,
      usage: usage ?? this.usage,
      meta: meta ?? this.meta,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object.value,
      'results': results.map((r) => r.toJson()).toList(),
      'usage': usage.toJson(),
      'meta': meta.toJson(),
    };
  }

  factory RerankingResponse.fromJson(Map<String, dynamic> json) {
    return RerankingResponse(
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.list,
      ),
      results:
          (json['results'] as List<dynamic>?)
              ?.map((r) => RerankingData.fromJson(r as Map<String, dynamic>))
              .toList() ??
          [],
      usage: RerankingUsage.fromJson(json['usage'] as Map<String, dynamic>),
      meta: RerankingMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );
  }
}

/// Function parameter
class FunctionParameter {
  final String type;
  final String description;
  final List<String> enumValues;

  const FunctionParameter({
    this.type = '',
    this.description = '',
    this.enumValues = const [],
  });

  /// Creates a copy with updated fields
  FunctionParameter copyWith({
    String? type,
    String? description,
    List<String>? enumValues,
  }) {
    return FunctionParameter(
      type: type ?? this.type,
      description: description ?? this.description,
      enumValues: enumValues ?? this.enumValues,
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type, 'description': description, 'enum': enumValues};
  }

  factory FunctionParameter.fromJson(Map<String, dynamic> json) {
    return FunctionParameter(
      type: json['type'] ?? '',
      description: json['description'] ?? '',
      enumValues: (json['enum'] as List<dynamic>?)?.cast<String>() ?? [],
    );
  }
}

/// Chat completion usage
class ChatCompletionUsage {
  final ZeroIfNoneInt promptTokens;
  final ZeroIfNoneInt completionTokens;
  final ZeroIfNoneInt totalTokens;
  final PromptUsageDetails? promptTokensDetails;
  final CompletionUsageDetails? completionTokensDetails;
  final ToolUsageDetails? toolUsageDetails;

  const ChatCompletionUsage({
    this.promptTokens = 0,
    this.completionTokens = 0,
    this.totalTokens = 0,
    this.promptTokensDetails,
    this.completionTokensDetails,
    this.toolUsageDetails,
  });

  /// Creates a copy with updated fields
  ChatCompletionUsage copyWith({
    ZeroIfNoneInt? promptTokens,
    ZeroIfNoneInt? completionTokens,
    ZeroIfNoneInt? totalTokens,
    PromptUsageDetails? promptTokensDetails,
    CompletionUsageDetails? completionTokensDetails,
    ToolUsageDetails? toolUsageDetails,
  }) {
    return ChatCompletionUsage(
      promptTokens: promptTokens ?? this.promptTokens,
      completionTokens: completionTokens ?? this.completionTokens,
      totalTokens: totalTokens ?? this.totalTokens,
      promptTokensDetails: promptTokensDetails ?? this.promptTokensDetails,
      completionTokensDetails:
          completionTokensDetails ?? this.completionTokensDetails,
      toolUsageDetails: toolUsageDetails ?? this.toolUsageDetails,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'prompt_tokens': promptTokens,
      'completion_tokens': completionTokens,
      'total_tokens': totalTokens,
      'prompt_tokens_details': promptTokensDetails?.toJson(),
      'completion_tokens_details': completionTokensDetails?.toJson(),
      'tool_usage_details': toolUsageDetails?.toJson(),
    };
  }

  factory ChatCompletionUsage.fromJson(Map<String, dynamic> json) {
    return ChatCompletionUsage(
      promptTokens: json['prompt_tokens'] ?? 0,
      completionTokens: json['completion_tokens'] ?? 0,
      totalTokens: json['total_tokens'] ?? 0,
      promptTokensDetails: json['prompt_tokens_details'] != null
          ? PromptUsageDetails.fromJson(
              json['prompt_tokens_details'] as Map<String, dynamic>,
            )
          : null,
      completionTokensDetails: json['completion_tokens_details'] != null
          ? CompletionUsageDetails.fromJson(
              json['completion_tokens_details'] as Map<String, dynamic>,
            )
          : null,
      toolUsageDetails: json['tool_usage_details'] != null
          ? ToolUsageDetails.fromJson(
              json['tool_usage_details'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  int get reasoningTokens => completionTokensDetails?.reasoningTokens ?? 0;
}

/// Chat completion response
class ChatCompletionResponse {
  final String id;
  final ObjectType object;
  final int created;
  final String model;
  final List<ChatCompletionChoice> choices;
  final ChatCompletionUsage? usage;
  final References? references;
  final String? serviceTier;
  final String? systemFingerprint;

  const ChatCompletionResponse({
    required this.id,
    this.object = ObjectType.chatCompletion,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
    this.references,
    this.serviceTier,
    this.systemFingerprint,
  });

  /// Creates a copy with updated fields
  ChatCompletionResponse copyWith({
    String? id,
    ObjectType? object,
    int? created,
    String? model,
    List<ChatCompletionChoice>? choices,
    ChatCompletionUsage? usage,
    References? references,
    String? serviceTier,
    String? systemFingerprint,
  }) {
    return ChatCompletionResponse(
      id: id ?? this.id,
      object: object ?? this.object,
      created: created ?? this.created,
      model: model ?? this.model,
      choices: choices ?? this.choices,
      usage: usage ?? this.usage,
      references: references ?? this.references,
      serviceTier: serviceTier ?? this.serviceTier,
      systemFingerprint: systemFingerprint ?? this.systemFingerprint,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object.value,
      'created': created,
      'model': model,
      'choices': choices.map((choice) => choice.toJson()).toList(),
      'usage': usage?.toJson(),
      'references': references?.toJson(),
      'service_tier': serviceTier,
      'system_fingerprint': systemFingerprint,
    };
  }

  factory ChatCompletionResponse.fromJson(Map<String, dynamic> json) {
    return ChatCompletionResponse(
      id: json['id'] ?? '',
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.chatCompletion,
      ),
      created: json['created'] ?? DateTime.now().millisecondsSinceEpoch ~/ 1000,
      model: json['model'] ?? '',
      choices:
          (json['choices'] as List<dynamic>?)
              ?.map(
                (choice) => ChatCompletionChoice.fromJson(
                  choice as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
      usage: ChatCompletionUsage.fromJson(
        json['usage'] as Map<String, dynamic>,
      ),
      references: json['references'] != null
          ? References.fromJson(json['references'] as Map<String, dynamic>)
          : null,
      serviceTier: json['service_tier'],
      systemFingerprint: json['system_fingerprint'],
    );
  }

  String? get finishReason =>
      choices.isNotEmpty ? choices[0].finishReason?.value : null;
  ChatCompletionMessage? get delta => message;
  ChatCompletionMessage? get message =>
      choices.isNotEmpty ? choices[0].message : null;
  String? get reasoningContent => message?.reasoningContent;
  String get content => message?.content ?? '';
  int get promptTokens => usage?.promptTokens ?? 0;
  int get completionTokens => usage?.completionTokens ?? 0;
  int get reasoningTokens => usage?.reasoningTokens ?? 0;
  int get totalTokens => usage?.totalTokens ?? 0;
}

/// Chat completion chunk response
class ChatCompletionChunkResponse extends ChatCompletionResponse {
  const ChatCompletionChunkResponse({
    required super.id,
    super.object = ObjectType.chatCompletionChunk,
    required super.created,
    required super.model,
    required super.choices,
    super.usage,
    super.references,
    super.serviceTier,
    super.systemFingerprint,
  });

  /// Creates a copy with updated fields
  @override
  ChatCompletionChunkResponse copyWith({
    String? id,
    ObjectType? object,
    int? created,
    String? model,
    List<ChatCompletionChoice>? choices,
    ChatCompletionUsage? usage,
    References? references,
    String? serviceTier,
    String? systemFingerprint,
  }) {
    return ChatCompletionChunkResponse(
      id: id ?? this.id,
      object: object ?? this.object,
      created: created ?? this.created,
      model: model ?? this.model,
      choices: choices ?? this.choices,
      usage: usage ?? this.usage,
      references: references ?? this.references,
      serviceTier: serviceTier ?? this.serviceTier,
      systemFingerprint: systemFingerprint ?? this.systemFingerprint,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {...super.toJson(), 'object': object, 'usage': usage?.toJson()};
  }

  factory ChatCompletionChunkResponse.fromJson(Map<String, dynamic> json) {
    return ChatCompletionChunkResponse(
      id: json['id'] ?? '',
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.chatCompletionChunk,
      ),
      created: json['created'] ?? DateTime.now().millisecondsSinceEpoch ~/ 1000,
      model: json['model'] ?? '',
      choices:
          (json['choices'] as List<dynamic>?)
              ?.map(
                (choice) => ChatCompletionChoice.fromJson(
                  choice as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
      usage: json['usage'] != null
          ? ChatCompletionUsage.fromJson(json['usage'] as Map<String, dynamic>)
          : null,
      references: json['references'] != null
          ? References.fromJson(json['references'] as Map<String, dynamic>)
          : null,
      serviceTier: json['service_tier'],
      systemFingerprint: json['system_fingerprint'],
    );
  }
}

/// Text content
class TextContent {
  final ContentType type;
  final String text;

  const TextContent({this.type = ContentType.text, required this.text});

  /// Creates a copy with updated fields
  TextContent copyWith({ContentType? type, String? text}) {
    return TextContent(type: type ?? this.type, text: text ?? this.text);
  }

  Map<String, dynamic> toJson() {
    return {'type': type.value, 'text': text};
  }

  factory TextContent.fromJson(Map<String, dynamic> json) {
    return TextContent(
      type: ContentType.values.firstWhere(
        (e) => e.value == json['type'],
        orElse: () => ContentType.text,
      ),
      text: json['text'] ?? '',
    );
  }
}

/// Image content data
class ImageContentData {
  final String url;

  const ImageContentData({required this.url});

  /// Creates a copy with updated fields
  ImageContentData copyWith({String? url}) {
    return ImageContentData(url: url ?? this.url);
  }

  Map<String, dynamic> toJson() {
    return {'url': url};
  }

  factory ImageContentData.fromJson(Map<String, dynamic> json) {
    return ImageContentData(url: json['url'] ?? '');
  }

  @override
  String toString() {
    String url = this.url;
    if (url.length > 12) {
      url = '${url.substring(0, 6)}...${url.substring(url.length - 6)}';
    }
    return '$runtimeType(url=\'$url\')';
  }
}

/// Image content
class ImageContent {
  final ContentType type;
  final ImageContentData imageUrl;

  const ImageContent({
    this.type = ContentType.imageUrl,
    required this.imageUrl,
  });

  /// Creates a copy with updated fields
  ImageContent copyWith({ContentType? type, ImageContentData? imageUrl}) {
    return ImageContent(
      type: type ?? this.type,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type.value, 'image_url': imageUrl.toJson()};
  }

  factory ImageContent.fromJson(Map<String, dynamic> json) {
    return ImageContent(
      type: ContentType.values.firstWhere(
        (e) => e.value == json['type'],
        orElse: () => ContentType.imageUrl,
      ),
      imageUrl: ImageContentData.fromJson(
        json['image_url'] as Map<String, dynamic>,
      ),
    );
  }
}

/// Audio content data
class AudioContentData {
  final String data;
  final AudioFormat format;

  const AudioContentData({required this.data, this.format = AudioFormat.wav});

  /// Creates a copy with updated fields
  AudioContentData copyWith({String? data, AudioFormat? format}) {
    return AudioContentData(
      data: data ?? this.data,
      format: format ?? this.format,
    );
  }

  Map<String, dynamic> toJson() {
    return {'data': data, 'format': format.value};
  }

  factory AudioContentData.fromJson(Map<String, dynamic> json) {
    return AudioContentData(
      data: json['data'] ?? '',
      format: AudioFormat.values.firstWhere(
        (e) => e.value == json['format'],
        orElse: () => AudioFormat.wav,
      ),
    );
  }

  @override
  String toString() {
    String data = this.data;
    if (data.length > 12) {
      data = '${data.substring(0, 6)}...${data.substring(data.length - 6)}';
    }
    return '$runtimeType(data=\'$data\', format=\'$format\')';
  }
}

/// Audio content
class AudioContent {
  final ContentType type;
  final AudioContentData inputAudio;

  const AudioContent({
    this.type = ContentType.inputAudio,
    required this.inputAudio,
  });

  /// Creates a copy with updated fields
  AudioContent copyWith({ContentType? type, AudioContentData? inputAudio}) {
    return AudioContent(
      type: type ?? this.type,
      inputAudio: inputAudio ?? this.inputAudio,
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type.value, 'input_audio': inputAudio.toJson()};
  }

  factory AudioContent.fromJson(Map<String, dynamic> json) {
    return AudioContent(
      type: ContentType.values.firstWhere(
        (e) => e.value == json['type'],
        orElse: () => ContentType.inputAudio,
      ),
      inputAudio: AudioContentData.fromJson(
        json['input_audio'] as Map<String, dynamic>,
      ),
    );
  }
}

/// S3 content
class S3Content {
  final ContentType type;
  final String uri;
  final String columnName;

  const S3Content({
    this.type = ContentType.inputS3,
    required this.uri,
    required this.columnName,
  });

  /// Creates a copy with updated fields
  S3Content copyWith({ContentType? type, String? uri, String? columnName}) {
    return S3Content(
      type: type ?? this.type,
      uri: uri ?? this.uri,
      columnName: columnName ?? this.columnName,
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type.value, 'uri': uri, 'column_name': columnName};
  }

  factory S3Content.fromJson(Map<String, dynamic> json) {
    return S3Content(
      type: ContentType.values.firstWhere(
        (e) => e.value == json['type'],
        orElse: () => ContentType.inputS3,
      ),
      uri: json['uri'] ?? '',
      columnName: json['column_name'] ?? '',
    );
  }
}

/// Chat content types
typedef ChatContent = dynamic; // Union[TextContent, ImageContent, AudioContent]
typedef ChatContentS3 = dynamic; // Union[TextContent, S3Content]

/// Chat role enum
enum ChatRole {
  system('system'),
  user('user'),
  assistant('assistant');

  final String value;
  const ChatRole(this.value);

  @override
  String toString() => value;
}

/// Chat entry
class ChatEntry {
  final ChatRole role;
  final dynamic content; // EmptyIfNoneStr | list[ChatContent]
  final String? name;

  const ChatEntry({required this.role, required this.content, this.name});

  /// Creates a copy with updated fields
  ChatEntry copyWith({ChatRole? role, dynamic content, String? name}) {
    return ChatEntry(
      role: role ?? this.role,
      content: content ?? this.content,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toJson() {
    return {'role': role.value, 'content': content, 'name': name};
  }

  factory ChatEntry.fromJson(Map<String, dynamic> json) {
    return ChatEntry(
      role: ChatRole.values.firstWhere((e) => e.value == json['role']),
      content: json['content'],
      name: json['name'],
    );
  }

  String get textContent {
    if (content is String) {
      return content;
    }
    if (content is List) {
      final textContents = content.whereType<TextContent>();
      if (textContents.isNotEmpty) {
        return textContents.map((c) => c.text).join('\n');
      }
    }
    return '';
  }

  bool get hasTextOnly {
    if (content is String) return true;
    if (content is List) {
      return content.every((c) => c is TextContent);
    }
    return false;
  }

  bool get hasImage {
    if (content is String) return false;
    if (content is List) {
      return content.any((c) => c is ImageContent);
    }
    return false;
  }

  bool get hasAudio {
    if (content is String) return false;
    if (content is List) {
      return content.any((c) => c is AudioContent);
    }
    return false;
  }

  static ChatEntry system(dynamic content, {String? name}) {
    return ChatEntry(role: ChatRole.system, content: content, name: name);
  }

  static ChatEntry user(dynamic content, {String? name}) {
    return ChatEntry(role: ChatRole.user, content: content, name: name);
  }

  static ChatEntry assistant(String? content, {String? name}) {
    return ChatEntry(role: ChatRole.assistant, content: content, name: name);
  }
}

/// Chat thread entry
class ChatThreadEntry extends ChatEntry {
  final String? userPrompt;
  final References? references;
  final String? rowId;

  const ChatThreadEntry({
    required super.role,
    required super.content,
    super.name,
    this.userPrompt,
    this.references,
    this.rowId,
  });

  /// Creates a copy with updated fields
  @override
  ChatThreadEntry copyWith({
    ChatRole? role,
    dynamic content,
    String? name,
    String? userPrompt,
    References? references,
    String? rowId,
  }) {
    return ChatThreadEntry(
      role: role ?? this.role,
      content: content ?? this.content,
      name: name ?? this.name,
      userPrompt: userPrompt ?? this.userPrompt,
      references: references ?? this.references,
      rowId: rowId ?? this.rowId,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['user_prompt'] = userPrompt;
    json['references'] = references?.toJson();
    json['row_id'] = rowId;
    return json;
  }

  factory ChatThreadEntry.fromJson(Map<String, dynamic> json) {
    return ChatThreadEntry(
      role: ChatRole.values.firstWhere((e) => e.value == json['role']),
      content: json['content'],
      name: json['name'],
      userPrompt: json['user_prompt'],
      references: json['references'] != null
          ? References.fromJson(json['references'] as Map<String, dynamic>)
          : null,
      rowId: json['row_id'],
    );
  }
}

/// Chat thread response
class ChatThreadResponse {
  final ObjectType object;
  final List<ChatThreadEntry> thread;
  final String columnId;

  const ChatThreadResponse({
    this.object = ObjectType.chatThread,
    this.thread = const [],
    this.columnId = '',
  });

  /// Creates a copy with updated fields
  ChatThreadResponse copyWith({
    ObjectType? object,
    List<ChatThreadEntry>? thread,
    String? columnId,
  }) {
    return ChatThreadResponse(
      object: object ?? this.object,
      thread: thread ?? this.thread,
      columnId: columnId ?? this.columnId,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object.value,
      'thread': thread.map((entry) => entry.toJson()).toList(),
      'column_id': columnId,
    };
  }

  factory ChatThreadResponse.fromJson(Map<String, dynamic> json) {
    return ChatThreadResponse(
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.chatThread,
      ),
      thread:
          (json['thread'] as List<dynamic>?)
              ?.map((e) => ChatThreadEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      columnId: json['column_id'] ?? '',
    );
  }
}

/// Base class for chat threads responses
class ChatThreadsBase {
  final ObjectType object;
  final Map<String, ChatThreadResponse> threads;

  const ChatThreadsBase({
    this.object = ObjectType.chatThreads,
    this.threads = const {},
  });

  /// Creates a copy with updated fields
  ChatThreadsBase copyWith({
    ObjectType? object,
    Map<String, ChatThreadResponse>? threads,
  }) {
    return ChatThreadsBase(
      object: object ?? this.object,
      threads: threads ?? this.threads,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'object': object.value,
      'threads': threads.map((key, value) => MapEntry(key, value.toJson())),
    };
  }

  factory ChatThreadsBase.fromJson(Map<String, dynamic> json) {
    return ChatThreadsBase(
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.chatThreads,
      ),
      threads:
          (json['threads'] as Map<String, dynamic>?)?.map(
            (key, value) => MapEntry(
              key,
              ChatThreadResponse.fromJson(value as Map<String, dynamic>),
            ),
          ) ??
          {},
    );
  }
}

/// Chat threads response
class ChatThreadsResponse extends ChatThreadsBase {
  final String tableId;

  const ChatThreadsResponse({super.object, super.threads, this.tableId = ''});

  @override
  ChatThreadsResponse copyWith({
    ObjectType? object,
    Map<String, ChatThreadResponse>? threads,
    String? tableId,
  }) {
    return ChatThreadsResponse(
      object: object ?? this.object,
      threads: threads ?? this.threads,
      tableId: tableId ?? this.tableId,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['table_id'] = tableId;
    return json;
  }

  factory ChatThreadsResponse.fromJson(Map<String, dynamic> json) {
    return ChatThreadsResponse(
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.chatThreads,
      ),
      threads:
          (json['threads'] as Map<String, dynamic>?)?.map(
            (key, value) => MapEntry(
              key,
              ChatThreadResponse.fromJson(value as Map<String, dynamic>),
            ),
          ) ??
          {},
      tableId: json['table_id'] ?? '',
    );
  }
}

/// Conversation threads response
class ConversationThreadsResponse extends ChatThreadsBase {
  final String conversationId;

  const ConversationThreadsResponse({
    super.object,
    super.threads,
    this.conversationId = '',
  });

  @override
  ConversationThreadsResponse copyWith({
    ObjectType? object,
    Map<String, ChatThreadResponse>? threads,
    String? conversationId,
  }) {
    return ConversationThreadsResponse(
      object: object ?? this.object,
      threads: threads ?? this.threads,
      conversationId: conversationId ?? this.conversationId,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['conversation_id'] = conversationId;
    return json;
  }

  factory ConversationThreadsResponse.fromJson(Map<String, dynamic> json) {
    return ConversationThreadsResponse(
      object: ObjectType.values.firstWhere(
        (e) => e.value == json['object'],
        orElse: () => ObjectType.chatThreads,
      ),
      threads:
          (json['threads'] as Map<String, dynamic>?)?.map(
            (key, value) => MapEntry(
              key,
              ChatThreadResponse.fromJson(value as Map<String, dynamic>),
            ),
          ) ??
          {},
      conversationId: json['conversation_id'] ?? '',
    );
  }
}
