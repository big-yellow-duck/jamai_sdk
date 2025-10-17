// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:jamai_sdk/types/common.dart';
// part 'lm.freezed.dart';
// part 'lm.g.dart';

// /// Citation pattern for references
// final RegExp citationPattern = RegExp(r'\[(@[0-9]+)[; ]*\]');

// /// Enum for API response object types
// enum ObjectType {
//   chatReferences('chat.references'),
//   genTableReferences('gen_table.references'),
//   chatCompletion('chat.completion'),
//   chatCompletionChunk('chat.completion.chunk'),
//   embedding('embedding'),
//   list('list'),
//   reranking('reranking'),
//   chatThread('chat.thread'),
//   chatThreads('chat.threads');

//   final String value;
//   const ObjectType(this.value);

//   @override
//   String toString() => value;
// }

// /// Enum for content types
// enum ContentType {
//   text('text'),
//   imageUrl('image_url'),
//   inputAudio('input_audio'),
//   inputS3('input_s3');

//   final String value;
//   const ContentType(this.value);

//   @override
//   String toString() => value;
// }

// /// Enum for tool types
// enum ToolType {
//   function('function'),
//   webSearch('web_search'),
//   codeInterpreter('code_interpreter');

//   final String value;
//   const ToolType(this.value);

//   @override
//   String toString() => value;
// }

// /// Enum for embedding types
// enum EmbeddingType {
//   query('query'),
//   document('document');

//   final String value;
//   const EmbeddingType(this.value);

//   @override
//   String toString() => value;
// }

// /// Enum for encoding formats
// enum EncodingFormat {
//   float('float'),
//   base64('base64');

//   final String value;
//   const EncodingFormat(this.value);

//   @override
//   String toString() => value;
// }

// /// Enum for audio formats
// enum AudioFormat {
//   mp3('mp3'),
//   wav('wav');

//   final String value;
//   const AudioFormat(this.value);

//   @override
//   String toString() => value;
// }

// /// Enum for reasoning effort levels
// enum ReasoningEffort {
//   disable('disable'),
//   minimal('minimal'),
//   low('low'),
//   medium('medium'),
//   high('high');

//   final String value;
//   const ReasoningEffort(this.value);

//   @override
//   String toString() => value;
// }

// /// Enum for reasoning summary types
// enum ReasoningSummary {
//   auto('auto'),
//   concise('concise'),
//   detailed('detailed');

//   final String value;
//   const ReasoningSummary(this.value);

//   @override
//   String toString() => value;
// }

// /// Enum for finish reasons
// enum FinishReason {
//   stop('stop'),
//   contextOverflow('context_overflow'),
//   length('length'),
//   toolCalls('tool_calls'),
//   contentFilter('content_filter');

//   final String value;
//   const FinishReason(this.value);

//   @override
//   String toString() => value;
// }

// /// Enum for tool choice types
// enum ToolChoiceType {
//   none('none'),
//   auto('auto'),
//   required('required'),
//   function('function');

//   final String value;
//   const ToolChoiceType(this.value);

//   @override
//   String toString() => value;
// }

// /// Chunk class for storing text and metadata
// @freezed
// abstract class Chunk with _$Chunk {
//   factory Chunk({
//     required String text,
//     @Default('') String title,
//     int? page,
//     @Default('') String fileName,
//     @Default('') String filePath,
//     @Default('') String documentId,
//     @Default('') String chunkId,
//     @Default({}) Map<String, String> context,
//     @Default({}) Map<String, dynamic> metadata,
//   }) = _Chunk;

//   Map<String, dynamic> toJson() {
//     return {
//       'text': text,
//       'title': title,
//       'page': page,
//       'file_name': fileName,
//       'file_path': filePath,
//       'document_id': documentId,
//       'chunk_id': chunkId,
//       'context': context,
//       'metadata': metadata,
//     };
//   }

//   factory Chunk.fromJson(Map<String, dynamic> json) {
//     return Chunk(
//       text: json['text'] ?? '',
//       title: json['title'] ?? '',
//       page: json['page'],
//       fileName: json['file_name'] ?? '',
//       filePath: json['file_path'] ?? '',
//       documentId: json['document_id'] ?? '',
//       chunkId: json['chunk_id'] ?? '',
//       context: Map<String, String>.from(json['context'] ?? {}),
//       metadata: Map<String, dynamic>.from(json['metadata'] ?? {}),
//     );
//   }
// }

// /// Split chunks parameters
// @freezed
// abstract class SplitChunksParams with _$SplitChunksParams {
//   factory SplitChunksParams({
//     @Default('RecursiveCharacterTextSplitter') String method,
//     @Default(1000) int chunkSize,
//     @Default(200) int chunkOverlap,
//   }) = _SplitChunksParams;

//   Map<String, dynamic> toJson() {
//     return {
//       'method': method,
//       'chunk_size': chunkSize,
//       'chunk_overlap': chunkOverlap,
//     };
//   }

//   factory SplitChunksParams.fromJson(Map<String, dynamic> json) {
//     return SplitChunksParams(
//       method: json['method'] ?? 'RecursiveCharacterTextSplitter',
//       chunkSize: json['chunk_size'] ?? 1000,
//       chunkOverlap: json['chunk_overlap'] ?? 200,
//     );
//   }
// }

// /// References for RAG responses
// @freezed
// abstract class References with _$References {
//   const References._({
//     this.object = ObjectType.chatReferences,
//     this.chunk = const [],
//     required this.searchQuery,
//     this.finishReason
//   });
//   factory References({
//     @Default(ObjectType.chatReferences) ObjectType object,
//     @Default([]) List<Chunk> chunks,
//     required String searchQuery,
//     FinishReason? finishReason,
//   }) = _References;


//   @override
//   final ObjectType object;

//   @override
//   final List<Chunk> chunk;

//   @override
//   final String searchQuery;

//   @override
//   final FinishReason? finishReason;

//   Map<String, dynamic> toJson() {
//     return {
//       'object': object.value,
//       'chunks': chunks.map((chunk) => chunk.toJson()).toList(),
//       'search_query': searchQuery,
//       'finish_reason': finishReason?.value,
//     };
//   }

//   factory References.fromJson(Map<String, dynamic> json) {
//     return References(
//       object: ObjectType.values.firstWhere(
//         (e) => e.value == json['object'],
//         orElse: () => ObjectType.chatReferences,
//       ),
//       chunks:
//           (json['chunks'] as List<dynamic>?)
//               ?.map((c) => Chunk.fromJson(c as Map<String, dynamic>))
//               .toList() ??
//           [],
//       searchQuery: json['search_query'] ?? '',
//       finishReason: json['finish_reason'] != null
//           ? FinishReason.values.firstWhere(
//               (e) => e.value == json['finish_reason'],
//               orElse: () => FinishReason.stop,
//             )
//           : null,
//     );
//   }
// }

// /// RAG parameters
// @freezed
// abstract class RAGParams with _$RAGParams {
//   const factory RAGParams({
//     required String tableId,
//     String? rerankingModel,
//     required String searchQuery,
//     @Default(3) int k,
//     @Default(true) bool rerank,
//     @Default(false) bool concatRerankerInput,
//     @Default(true) bool inlineCitations,
//   }) = _RAGParams;

//   factory RAGParams.fromJson(Map<String, Object> json) =>
//       _$RAGParamsFromJson(json);
// }

// /// Function call
// @freezed
// abstract class FunctionCall with _$FunctionCall {
//   factory FunctionCall({required String name, required String arguments}) =
//       _FunctionCall;

//   factory FunctionCall.fromJson(Map<String, dynamic> json) =>
//       _$FunctionCallFromJson(json);
// }

// /// Audio response
// @freezed
// abstract class AudioResponse with _$AudioResponse {
//   factory AudioResponse({
//     required String id,
//     required int expiresAt,
//     required String data,
//     required String transcript,
//   }) = _AudioResponse;

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'expires_at': expiresAt,
//       'data': data,
//       'transcript': transcript,
//     };
//   }

//   factory AudioResponse.fromJson(Map<String, dynamic> json) {
//     return AudioResponse(
//       id: json['id'] as String,
//       expiresAt: json['expires_at'] as int,
//       data: json['data'] as String,
//       transcript: json['transcript'] as String,
//     );
//   }
// }

// /// Chat completion delta
// @freezed
// abstract class ChatCompletionDelta with _$ChatCompletionDelta {
//   const ChatCompletionDelta._({
//     required this.role,
//     this.content,
//     this.reasoningContent,
//     this.refusal,
//     this.toolCalls,
//   });
//   const factory ChatCompletionDelta({
//     @Default('assistant') String? role,
//     String? content,
//     String? reasoningContent,
//     String? refusal,
//     List<ToolCall>? toolCalls,
//   }) = _ChatCompletionDelta;

//   @override
//   final String role;

//   @override
//   final String? content;

//   @override
//   final String? reasoningContent;

//   @override
//   final String? refusal;

//   @override
//   final List<ToolCall>? toolCalls;

//   Map<String, dynamic> toJson() {
//     return {
//       'role': role,
//       'content': content,
//       'reasoning_content': reasoningContent,
//       'refusal': refusal,
//       'tool_calls': toolCalls?.map((call) => call.toJson()).toList(),
//     };
//   }

//   factory ChatCompletionDelta.fromJson(Map<String, dynamic> json) {
//     return ChatCompletionDelta(
//       role: json['role'] ?? 'assistant',
//       content: json['content'],
//       reasoningContent: json['reasoning_content'],
//       refusal: json['refusal'],
//       toolCalls: json['tool_calls'] != null
//           ? (json['tool_calls'] as List<dynamic>)
//                 .map((call) => ToolCall.fromJson(call as Map<String, dynamic>))
//                 .toList()
//           : null,
//     );
//   }
// }

// @freezed
// abstract class ChatCompletionMessage extends ChatCompletionDelta
//     with _$ChatCompletionMessage {
//   ChatCompletionMessage._({
//     required super.role,
//     super.content,
//     super.reasoningContent,
//     super.refusal,
//     super.toolCalls,
//   }) : super._();

//   factory ChatCompletionMessage({
//     required String role,
//     String? content,
//     String? reasoningContent,
//     String? refusal,
//     List<ToolCall>? toolCalls,
//     AudioResponse? audio,
//   }) = _ChatCompletionMessage;

//   factory ChatCompletionMessage.fromJson(Map<String, dynamic> json) {
//     // get the values from the parent class
//     final deltaValues = ChatCompletionDelta.fromJson(json);
//     final AudioResponse audio = AudioResponse.fromJson(json);

//     return ChatCompletionMessage(
//       role: deltaValues.role,
//       content: deltaValues.content,
//       reasoningContent: deltaValues.reasoningContent,
//       refusal: deltaValues.refusal,
//       toolCalls: deltaValues.toolCalls,
//       audio: audio,
//     );
//   }

//   // @override
//   // Map<String, dynamic> toJson() {
//   //   final json = super.toJson();
//   //   if (audio != null) {
//   //     json['audio'] = audio!.toJson();
//   //   }
//   //   return json;
//   // }
// }

// /// Log probability token
// @freezed
// abstract class LogProbToken with _$LogProbToken {
//   factory LogProbToken({
//     required String token,
//     required double logprob,
//     required List<int> bytes,
//   }) = _LogProbToken;

//   factory LogProbToken.fromJson(Map<String, dynamic> json) =>
//       _$LogProbTokenFromJson(json);
// }

// /// Log probabilities
// @freezed
// abstract class LogProbs with _$LogProbs {
//   factory LogProbs({
//     required List<LogProbToken> content,
//     required List<LogProbToken> refusal,
//   }) = _LogProbs;

//   factory LogProbs.fromJson(Map<String, dynamic> json) =>
//       _$LogProbsFromJson(json);
// }

// /// Chat completion choice
// @freezed
// abstract class ChatCompletionChoice with _$ChatCompletionChoice {
//   factory ChatCompletionChoice({
//     required int index,
//     ChatCompletionMessage? message,
//     ChatCompletionDelta? delta,
//     LogProbs? logprobs,
//     FinishReason? finishReason,
//   }) = _ChatCompletionChoice;

//   Map<String, dynamic> toJson() {
//     return {
//       'index': index,
//       'message': message?.toJson(),
//       'delta': delta?.toJson(),
//       'logprobs': logprobs?.toJson(),
//       'finish_reason': finishReason?.value,
//     };
//   }

//   factory ChatCompletionChoice.fromJson(Map<String, dynamic> json) {
//     return ChatCompletionChoice(
//       index: json['index'] ?? 0,
//       message: json['message'] != null
//           ? ChatCompletionMessage.fromJson(
//               json['message'] as Map<String, dynamic>,
//             )
//           : null,
//       delta: json['delta'] != null
//           ? ChatCompletionDelta.fromJson(json['delta'] as Map<String, dynamic>)
//           : null,
//       logprobs: json['logprobs'] != null
//           ? LogProbs.fromJson(json['logprobs'] as Map<String, dynamic>)
//           : null,
//       finishReason: json['finish_reason'] != null
//           ? FinishReason.values.firstWhere(
//               (e) => e.value == json['finish_reason'],
//               orElse: () => FinishReason.stop,
//             )
//           : null,
//     );
//   }
// }

// /// Zero if none int type
// typedef ZeroIfNoneInt = int;

// /// Prompt usage details
// @freezed
// abstract class PromptUsageDetails with _$PromptUsageDetails {
//   factory PromptUsageDetails({
//     @Default(0) int cachedTokens,
//     @Default(0) int audioTokens,
//   }) = _PromptUsageDetails;

//   Map<String, dynamic> toJson() {
//     return {'cached_tokens': cachedTokens, 'audio_tokens': audioTokens};
//   }

//   factory PromptUsageDetails.fromJson(Map<String, dynamic> json) {
//     return PromptUsageDetails(
//       cachedTokens: json['cached_tokens'] is int ? json['cached_tokens'] : 0,
//       audioTokens: json['audio_tokens'] is int ? json['audio_tokens'] : 0,
//     );
//   }
// }

// /// Completion usage details
// @freezed
// abstract class CompletionUsageDetails with _$CompletionUsageDetails {
//   const CompletionUsageDetails._();
//   factory CompletionUsageDetails({
//     @Default(0) int audioTokens,
//     @Default(0) int reasoningTokens,
//     @Default(0) int acceptedPredictionTokens,
//     @Default(0) int rejectedPredictionTokens,
//   }) = _CompletionUsageDetails;

//   Map<String, dynamic> toJson() {
//     return {
//       'audio_tokens': audioTokens,
//       'reasoning_tokens': reasoningTokens,
//       'accepted_prediction_tokens': acceptedPredictionTokens,
//       'rejected_prediction_tokens': rejectedPredictionTokens,
//     };
//   }

//   factory CompletionUsageDetails.fromJson(Map<String, dynamic> json) {
//     return CompletionUsageDetails(
//       audioTokens: json['audio_tokens'] ?? 0,
//       reasoningTokens: json['reasoning_tokens'] ?? 0,
//       acceptedPredictionTokens: json['accepted_prediction_tokens'] ?? 0,
//       rejectedPredictionTokens: json['rejected_prediction_tokens'] ?? 0,
//     );
//   }
// }

// /// Tool usage details
// class ToolUsageDetails {
//   final ZeroIfNoneInt webSearchCalls;
//   final ZeroIfNoneInt codeInterpreterCalls;

//   const ToolUsageDetails({
//     this.webSearchCalls = 0,
//     this.codeInterpreterCalls = 0,
//   });

//   /// Creates a copy with updated fields
//   ToolUsageDetails copyWith({
//     ZeroIfNoneInt? webSearchCalls,
//     ZeroIfNoneInt? codeInterpreterCalls,
//   }) {
//     return ToolUsageDetails(
//       webSearchCalls: webSearchCalls ?? this.webSearchCalls,
//       codeInterpreterCalls: codeInterpreterCalls ?? this.codeInterpreterCalls,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'web_search_calls': webSearchCalls,
//       'code_interpreter_calls': codeInterpreterCalls,
//     };
//   }

//   factory ToolUsageDetails.fromJson(Map<String, dynamic> json) {
//     return ToolUsageDetails(
//       webSearchCalls: json['web_search_calls'] ?? 0,
//       codeInterpreterCalls: json['code_interpreter_calls'] ?? 0,
//     );
//   }
// }

// /// Function parameters
// @freezed
// abstract class FunctionParameters with _$FunctionParameters {
//   const factory FunctionParameters({
//     @Default('object') String type,
//     @Default({}) Map<String, FunctionParameter> properties,
//     @Default([]) List<String> required,
//     @Default(false) bool additionalProperties,
//   }) = _FunctionParameters;

//   factory FunctionParameters.fromJson(Map<String, Object> json) =>
//       _$FunctionParametersFromJson(json);
// }

// /// Tool function
// @freezed
// abstract class ToolFunction with _$ToolFunction {
//   const factory ToolFunction({
//     required String name,
//     String? description,
//     FunctionParameters? parameters,
//     @Default(false) bool strict,
//   }) = _ToolFunction;

//   factory ToolFunction.fromJson(Map<String, Object> json) =>
//       _$ToolFunctionFromJson(json);
// }

// // 1. Main Union Class: Tool
// @freezed
// sealed class Tool with _$Tool {
//   // @Implements<FunctionTool>()
//   factory Tool.toolFunction(ToolType type, ToolFunction function) =
//       FunctionTool;

//   // @Implements<WebSearchTool>()
//   factory Tool.webSearch(ToolType type) = WebSearchTool;

//   // @Implements<CodeInterpreterTool>()
//   @Default(<String, String>{'type': 'auto'})
//   factory Tool.codeInterpreter(ToolType type, Map<String, String>? container) =
//       CodeInterperterTool;
//   factory Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);
// }

// /// Tool choice function
// @freezed
// abstract class ToolChoiceFunction with _$ToolChoiceFunction {
//   factory ToolChoiceFunction({required String name}) = _ToolChoiceFunction;
//   factory ToolChoiceFunction.fromJson(Map<String, Object> json) =>
//       _$ToolChoiceFunctionFromJson(json);
// }

// @freezed
// abstract class ToolChoiceOption with _$ToolChoiceOption {
//   @FreezedUnionValue('none')
//   const factory ToolChoiceOption.none() = _ToolChoiceOptionNone;

//   @FreezedUnionValue('auto')
//   const factory ToolChoiceOption.auto() = _ToolChoiceOptionAuto;

//   @FreezedUnionValue('required')
//   const factory ToolChoiceOption.required() = _ToolChoiceOptionRequired;

//   const factory ToolChoiceOption.choice(ToolChoice toolChoice) = Choice;

//   factory ToolChoiceOption.fromJson(Map<String, Object> json) =>
//       _$ToolChoiceOptionFromJson(json);
// }

// /// Tool call function
// @freezed
// abstract class ToolCallFunction with _$ToolCallFunction {
//   const factory ToolCallFunction({required String arguments, String? name}) =
//       _ToolCallFunction;

//   factory ToolCallFunction.fromJson(Map<String, Object> json) =>
//       _$ToolCallFunctionFromJson(json);
// }

// @freezed
// abstract class ToolCall with _$ToolCall {
//   const factory ToolCall({
//     required String id,
//     @Default(ToolType.function)
//     ToolType type, // Use @Default for optional values with a fallback
//     required ToolCallFunction function,
//   }) = _ToolCall;

//   factory ToolCall.fromJson(Map<String, dynamic> json) =>
//       _$ToolCallFromJson(json);
// }

// @freezed
// abstract class ToolChoice with _$ToolChoice {
//   factory ToolChoice({
//     @Default(ToolChoiceType.function) ToolChoiceType type,
//     required ToolChoiceFunction function,
//   }) = _ToolChoice;

//   factory ToolChoice.fromJson(Map<String, dynamic> json) =>
//       _$ToolChoiceFromJson(json);
// }

// /// Chat request base
// @freezed
// abstract class ChatRequestBase with _$ChatRequestBase {
//   ChatRequestBase._({
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
//   @override
//   final String model;
//   @override
//   final RAGParams? ragParams;
//   @override
//   final List<Tool>? tools;
//   @override
//   final ToolChoiceOption? toolChoice;
//   @override
//   final double temperature;
//   @override
//   final double topP;
//   @override
//   final bool stream;
//   @override
//   final int maxTokens;
//   @override
//   final List<String>? stop;
//   @override
//   final double presencePenalty;
//   @override
//   final double frequencyPenalty;
//   @override
//   final Map<String, dynamic> logitBias;
//   @override
//   final int thinkingBudget;
//   @override
//   final ReasoningEffort? reasoningEffort;
//   @override
//   final int? reasoningBudget;
//   @override
//   final ReasoningSummary reasoningSummary;

//   factory ChatRequestBase({
//     @Default('') String? model,
//     RAGParams? ragParams,
//     List<Tool>? tools,
//     ToolChoiceOption? toolChoice,
//     @Default(0.2) double? temperature,
//     @Default(0.6) double? topP,
//     @Default(true) bool? stream,
//     @Default(2048) int maxTokens,
//     List<String>? stop,
//     @Default(true) bool? presencePenalty,
//     @Default(0.0) double? frequencyPenalty,
//     @Default({}) Map<String, dynamic>? logitBias,
//     @Default(1) int? thinkingBudget,
//     ReasoningEffort? reasoningEffort,
//     int? reasoningBudget,
//     @Default(ReasoningSummary.auto) ReasoningSummary reasoningSummary,
//   }) = _ChatRequestBase;

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
//           ? RAGParams.fromJson(json['rag_params'])
//           : null,
//       tools: json['tools'] != null
//           ? (json['tools'] as List<dynamic>)
//                 .map((tool) => tool as Tool)
//                 .toList()
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

// /// Chat request
// @freezed
// abstract class ChatRequest extends ChatRequestBase with _$ChatRequest {
//   const ChatRequest._({
//     String model = '',
//     RAGParams? ragParams,
//     List<Tool>? tools,
//     ToolChoiceOption? toolChoice,
//     double temperature = 0.2,
//     double topP = 0.6,
//     bool stream = true,
//     int maxTokens = 2048,
//     List<String>? stop,
//     double presencePenalty = 0.0,
//     double frequencyPenalty = 0.0,
//     Map<String, dynamic> logitBias = const {},
//     int thinkingBudget = 1,
//     ReasoningEffort? reasoningEffort,
//     int? reasoningBudget,
//     ReasoningSummary reasoningSummary = ReasoningSummary.auto,
//   }) : super._(
//          model: model,
//          ragParams: ragParams,
//          tools: tools,
//          toolChoice: toolChoice,
//          temperature: temperature,
//          topP: topP,
//          stream: stream,
//          maxTokens: maxTokens,
//          stop: stop,
//          presencePenalty: presencePenalty,
//          frequencyPenalty: frequencyPenalty,
//          logitBias: logitBias,
//          thinkingBudget: thinkingBudget,
//          reasoningEffort: reasoningEffort,
//          reasoningBudget: reasoningBudget,
//          reasoningSummary: reasoningSummary,
//        );

//   factory ChatRequest({
//     @Default('') String model,
//     RAGParams? ragParams,
//     List<Tool>? tools,
//     ToolChoiceOption? toolChoice,
//     @Default(0.2) double temperature,
//     @Default(0.6) double topP,
//     @Default(false) bool stream,
//     @Default(2048) int maxTokens,
//     List<String>? stop,
//     @Default(0.0) double presencePenalty,
//     @Default(0.0) double frequencyPenalty,
//     @Default({}) Map<String, dynamic> logitBias,
//     @Default(1) int thinkingBudget,
//     ReasoningEffort? reasoningEffort,
//     int? reasoningBudget,
//     @Default(ReasoningSummary.auto) ReasoningSummary reasoningSummary,
//     // this class stuff
//     required String id,
//     @Default(<ChatEntry>[]) List<ChatEntry> messages,
//     int? maxCompletionTokens,
//     required int n,
//     required String user,
//   }) = _ChatRequest;

//   @override
//   Map<String, dynamic> toJson() {
//     final json = super.toJson();
//     json['id'] = id;
//     json['messages'] = messages.map((msg) => msg.toJson()).toList();
//     json['max_completion_tokens'] = maxCompletionTokens;
//     json['n'] = n;
//     json['user'] = user;
//     json['stream'] = stream;
//     return json;
//   }

//   factory ChatRequest.fromJson(Map<String, dynamic> json) {
//     final baseRequest = ChatRequestBase.fromJson(json);
//     return ChatRequest(
//       // Base class properties taken from the parsed baseRequest
//       model: baseRequest.model,
//       ragParams: baseRequest.ragParams,
//       tools: baseRequest.tools,
//       toolChoice: baseRequest.toolChoice,
//       temperature: baseRequest.temperature,
//       topP: baseRequest.topP,
//       stream:
//           json['stream'] ??
//           false, // Use the value from the JSON, respecting ChatRequest's default
//       maxTokens: baseRequest.maxTokens,
//       stop: baseRequest.stop,
//       presencePenalty: baseRequest.presencePenalty,
//       frequencyPenalty: baseRequest.frequencyPenalty,
//       logitBias: baseRequest.logitBias,
//       thinkingBudget: baseRequest.thinkingBudget,
//       reasoningEffort: baseRequest.reasoningEffort,
//       reasoningBudget: baseRequest.reasoningBudget,
//       reasoningSummary: baseRequest.reasoningSummary,

//       // ChatRequest-specific properties
//       id: json['id'] ?? '', // Required fields need a fallback if missing
//       messages:
//           (json['messages'] as List<dynamic>?)
//               ?.map((msg) => ChatEntry.fromJson(msg as Map<String, dynamic>))
//               .toList() ??
//           [],
//       maxCompletionTokens: json['max_completion_tokens'] as int?,
//       n: json['n'] ?? 1, // Required fields need a fallback if missing
//       user: json['user'] ?? '', // Required fields need a fallback if missing
//     );
//   }

//   void validateParams() {
//     final effectiveMaxTokens = maxCompletionTokens ?? maxTokens;
//     if (thinkingBudget > effectiveMaxTokens) {
//       throw ArgumentError(
//         '`thinking_budget` cannot be higher than `max_tokens`.',
//       );
//     }
//   }
// }

// /// Embedding request
// @freezed
// abstract class EmbeddingRequest with _$EmbeddingRequest {
//   factory EmbeddingRequest({
//     required StringOrListString input,
//     required String model,
//     @Default(EmbeddingType.document) EmbeddingType type,
//     @Default(EncodingFormat.float) EncodingFormat encodingFormat,
//   }) = _EmbeddingRequest;

//   Map<String, dynamic> toJson() {
//     return {
//       'input': input,
//       'model': model,
//       'type': type.value,
//       'encoding_format': encodingFormat.value,
//     };
//   }

//   factory EmbeddingRequest.fromJson(Map<String, dynamic> json) {
//     return EmbeddingRequest(
//       input: json['input'],
//       model: json['model'] ?? '',
//       type: EmbeddingType.values.firstWhere(
//         (e) => e.value == json['type'],
//         orElse: () => EmbeddingType.document,
//       ),
//       encodingFormat: EncodingFormat.values.firstWhere(
//         (e) => e.value == json['encoding_format'],
//         orElse: () => EncodingFormat.float,
//       ),
//     );
//   }
// }

// /// Embedding response data
// @freezed
// abstract class EmbeddingResponseData with _$EmbeddingResponseData {
//   factory EmbeddingResponseData({
//     @Default(ObjectType.embedding) ObjectType object,
//     required ListDoubleOrString embedding,
//     @Default(0) int index,
//   }) = _EmbeddingResponseData;

//   factory EmbeddingResponseData.fromJson(Map<String, dynamic> json) =>
//       _$EmbeddingResponseDataFromJson(json);
// }

// /// Embedding usage
// @freezed
// abstract class EmbeddingUsage with _$EmbeddingUsage {
//   const factory EmbeddingUsage({
//     @Default(0) int promptTokens, // Use @Default for default values
//     @Default(0) int totalTokens, // Use @Default for default values
//   }) = _EmbeddingUsage;

//   Map<String, dynamic> toJson() {
//     return {'prompt_tokens': promptTokens, 'total_tokens': totalTokens};
//   }

//   factory EmbeddingUsage.fromJson(Map<String, dynamic> json) {
//     return EmbeddingUsage(
//       promptTokens: json['prompt_tokens'] ?? 0,
//       totalTokens: json['total_tokens'] ?? 0,
//     );
//   }
// }

// /// Embedding response
// @freezed
// abstract class EmbeddingResponse with _$EmbeddingResponse {
//   factory EmbeddingResponse({
//     @Default(ObjectType.list) ObjectType object,
//     required List<EmbeddingResponseData> data,
//     required String model,
//     required EmbeddingUsage usage,
//   }) = _EmbeddingResponse;

//   factory EmbeddingResponse.fromJson(Map<String, dynamic> json) =>
//       _$EmbeddingResponseFromJson(json);
// }

// /// Reranking request
// @freezed
// abstract class RerankingRequest with _$RerankingRequest {
//   const factory RerankingRequest({
//     required String model,
//     required List<String> documents,
//     required String query,
//   }) = _RerankingRequest;

//   factory RerankingRequest.fromJson(Map<String, dynamic> json) =>
//       _$RerankingRequestFromJson(json);
// }

// /// Reranking data
// @freezed
// abstract class RerankingData with _$RerankingData {
//   factory RerankingData({
//     @Default(ObjectType.reranking) ObjectType object,
//     required int index,
//     required double relevanceScore,
//   }) = _RerankingData;

//   Map<String, dynamic> toJson() {
//     return {
//       'object': object.value,
//       'index': index,
//       'relevance_score': relevanceScore,
//     };
//   }

//   factory RerankingData.fromJson(Map<String, dynamic> json) {
//     return RerankingData(
//       object: ObjectType.values.firstWhere(
//         (e) => e.value == json['object'],
//         orElse: () => ObjectType.reranking,
//       ),
//       index: json['index'] ?? 0,
//       relevanceScore: (json['relevance_score'] ?? 0.0).toDouble(),
//     );
//   }
// }

// /// Reranking API version
// @freezed
// abstract class RerankingApiVersion with _$RerankingApiVersion {
//   factory RerankingApiVersion({
//     @Default('') String version,
//     @Default(false) bool isDeprecated,
//     @Default(false) bool isExperimental,
//   }) = _RerankingApiVersion;

//   Map<String, dynamic> toJson() {
//     return {
//       'version': version,
//       'is_deprecated': isDeprecated,
//       'is_experimental': isExperimental,
//     };
//   }

//   factory RerankingApiVersion.fromJson(Map<String, dynamic> json) {
//     return RerankingApiVersion(
//       version: json['version'] ?? '',
//       isDeprecated: json['is_deprecated'] ?? false,
//       isExperimental: json['is_experimental'] ?? false,
//     );
//   }
// }

// /// Reranking billed units
// @freezed
// abstract class RerankingBilledUnits with _$RerankingBilledUnits {
//   factory RerankingBilledUnits({
//     int? images,
//     int? inputTokens,
//     int? outputTokens,
//     double? searchUnits,
//     double? classifications,
//   }) = _RerankingBilledUnits;

//   Map<String, dynamic> toJson() {
//     return {
//       'images': images,
//       'input_tokens': inputTokens,
//       'output_tokens': outputTokens,
//       'search_units': searchUnits,
//       'classifications': classifications,
//     };
//   }

//   factory RerankingBilledUnits.fromJson(Map<String, dynamic> json) {
//     return RerankingBilledUnits(
//       images: json['images'],
//       inputTokens: json['input_tokens'],
//       outputTokens: json['output_tokens'],
//       searchUnits: json['search_units']?.toDouble(),
//       classifications: json['classifications']?.toDouble(),
//     );
//   }
// }

// /// Reranking meta usage
// @freezed
// abstract class RerankingMetaUsage with _$RerankingMetaUsage {
//   const RerankingMetaUsage._({
//     this.inputTokens,
//     this.outputTokens,
//   }); // Private constructor

//   const factory RerankingMetaUsage({int? inputTokens, int? outputTokens}) =
//       _RerankingMetaUsage;

//   @override
//   final int? inputTokens;

//   @override
//   final int? outputTokens;

//   Map<String, dynamic> toJson() {
//     return {'input_tokens': inputTokens, 'output_tokens': outputTokens};
//   }

//   factory RerankingMetaUsage.fromJson(Map<String, dynamic> json) {
//     return RerankingMetaUsage(
//       inputTokens: json['input_tokens'] is int ? json['input_tokens'] : null,
//       outputTokens: json['output_tokens'] is int ? json['output_tokens'] : null,
//     );
//   }
// }

// /// Reranking usage
// @freezed
// abstract class RerankingUsage extends RerankingMetaUsage with _$RerankingUsage {
//   RerankingUsage._({int? inputTokens, int? outputTokens})
//     : super._(inputTokens: inputTokens, outputTokens: outputTokens);

//   factory RerankingUsage({
//     int? inputTokens,
//     int? outputTokens,
//     // this class fields
//     required int documents,
//   }) = _RerankingUsage;

//   @override
//   Map<String, dynamic> toJson() {
//     final json = super.toJson();
//     json['documents'] = documents;
//     return json;
//   }

//   factory RerankingUsage.fromJson(Map<String, dynamic> json) {
//     return RerankingUsage(
//       inputTokens: json['input_tokens'],
//       outputTokens: json['output_tokens'],
//       documents: json['documents'] ?? 0,
//     );
//   }
// }

// /// Reranking meta
// @freezed
// abstract class RerankingMeta with _$RerankingMeta {
//   factory RerankingMeta({
//     required String model,
//     RerankingApiVersion? apiVersion,
//     RerankingBilledUnits? billedUnits,
//     RerankingMetaUsage? tokens,
//     List<String>? warnings,
//   }) = _RerankingMeta;

//   Map<String, dynamic> toJson() {
//     return {
//       'model': model,
//       'api_version': apiVersion?.toJson(),
//       'billed_units': billedUnits?.toJson(),
//       'tokens': tokens?.toJson(),
//       'warnings': warnings,
//     };
//   }

//   factory RerankingMeta.fromJson(Map<String, dynamic> json) {
//     return RerankingMeta(
//       model: json['model'] ?? '',
//       apiVersion: json['api_version'] != null
//           ? RerankingApiVersion.fromJson(
//               json['api_version'] as Map<String, dynamic>,
//             )
//           : null,
//       billedUnits: json['billed_units'] != null
//           ? RerankingBilledUnits.fromJson(
//               json['billed_units'] as Map<String, dynamic>,
//             )
//           : null,
//       tokens: json['tokens'] != null
//           ? RerankingMetaUsage.fromJson(json['tokens'] as Map<String, dynamic>)
//           : null,
//       warnings: json['warnings'] != null
//           ? List<String>.from(json['warnings'])
//           : null,
//     );
//   }
// }

// /// Reranking response
// @freezed
// abstract class RerankingResponse with _$RerankingResponse {
//   factory RerankingResponse({
//     @Default(ObjectType.list) ObjectType object,
//     @Default(<RerankingData>[]) List<RerankingData> results,
//     required RerankingUsage usage,
//     required RerankingMeta meta,
//   }) = _RerankingResponse;

//   factory RerankingResponse.fromJson(Map<String, dynamic> json) =>
//       _$RerankingResponseFromJson(json);
// }

// /// Function parameter
// @freezed
// abstract class FunctionParameter with _$FunctionParameter {
//   factory FunctionParameter({
//     @Default('') String type,
//     @Default('') String description,
//     @Default(<String>[]) enumValues,
//   }) = _FunctionParameter;

//   Map<String, dynamic> toJson() {
//     return {'type': type, 'description': description, 'enum': enumValues};
//   }

//   factory FunctionParameter.fromJson(Map<String, dynamic> json) {
//     return FunctionParameter(
//       type: json['type'] ?? '',
//       description: json['description'] ?? '',
//       enumValues: (json['enum'] as List<dynamic>?)?.cast<String>() ?? [],
//     );
//   }
// }

// /// Chat completion usage
// @freezed
// abstract class ChatCompletionUsage with _$ChatCompletionUsage {
//   ChatCompletionUsage._();
//   factory ChatCompletionUsage({
//     @Default(0) int promptTokens,
//     @Default(0) int completionTokens,
//     @Default(0) int totalTokens,
//     PromptUsageDetails? promptTokensDetails,
//     CompletionUsageDetails? completionTokensDetails,
//     ToolUsageDetails? toolUsageDetails,
//   }) = _ChatCompletionUsage;

//   Map<String, dynamic> toJson() {
//     return {
//       'prompt_tokens': promptTokens,
//       'completion_tokens': completionTokens,
//       'total_tokens': totalTokens,
//       'prompt_tokens_details': promptTokensDetails?.toJson(),
//       'completion_tokens_details': completionTokensDetails?.toJson(),
//       'tool_usage_details': toolUsageDetails?.toJson(),
//     };
//   }

//   factory ChatCompletionUsage.fromJson(Map<String, dynamic> json) {
//     return ChatCompletionUsage(
//       promptTokens: json['prompt_tokens'] ?? 0,
//       completionTokens: json['completion_tokens'] ?? 0,
//       totalTokens: json['total_tokens'] ?? 0,
//       promptTokensDetails: json['prompt_tokens_details'] != null
//           ? PromptUsageDetails.fromJson(
//               json['prompt_tokens_details'] as Map<String, dynamic>,
//             )
//           : null,
//       completionTokensDetails: json['completion_tokens_details'] != null
//           ? CompletionUsageDetails.fromJson(
//               json['completion_tokens_details'] as Map<String, dynamic>,
//             )
//           : null,
//       toolUsageDetails: json['tool_usage_details'] != null
//           ? ToolUsageDetails.fromJson(
//               json['tool_usage_details'] as Map<String, dynamic>,
//             )
//           : null,
//     );
//   }

//   int get reasoningTokens => completionTokensDetails?.reasoningTokens ?? 0;
// }

// /// Chat completion response
// @freezed
// abstract class ChatCompletionChunkResponse with _$ChatCompletionChunkResponse {
//   ChatCompletionChunkResponse._({
//     required this.id,
//     this.object = ObjectType.chatCompletionChunk,
//     required this.created,
//     required this.model,
//     required this.choices,
//     required this.usage,
//     this.references,
//     this.serviceTier,
//     this.systemFingerprint,
//   });
//   factory ChatCompletionChunkResponse({
//     required String id,
//     @Default(ObjectType.chatCompletion) ObjectType object,
//     required int created,
//     required String model,
//     required List<ChatCompletionChoice> choices,
//     required ChatCompletionUsage usage,
//     References? references,
//     String? serviceTier,
//     String? systemFingerprint,
//   }) = _ChatCompletionResponse;

//   @override
//   final String id;

//   @override
//   final ObjectType object;

//   @override
//   final int created;

//   @override
//   final String model;

//   @override
//   final List<ChatCompletionChoice> choices;

//   @override
//   final ChatCompletionUsage usage;

//   @override
//   final References? references;

//   @override
//   final String? serviceTier;

//   @override
//   final String? systemFingerprint;

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'object': object.value,
//       'created': created,
//       'model': model,
//       'choices': choices.map((choice) => choice.toJson()).toList(),
//       'usage': usage?.toJson(),
//       'references': references?.toJson(),
//       'service_tier': serviceTier,
//       'system_fingerprint': systemFingerprint,
//     };
//   }

//   factory ChatCompletionChunkResponse.fromJson(Map<String, dynamic> json) {
//     return ChatCompletionChunkResponse(
//       id: json['id'] ?? '',
//       object: ObjectType.values.firstWhere(
//         (e) => e.value == json['object'],
//         orElse: () => ObjectType.chatCompletion,
//       ),
//       created: json['created'] ?? DateTime.now().millisecondsSinceEpoch ~/ 1000,
//       model: json['model'] ?? '',
//       choices:
//           (json['choices'] as List<dynamic>?)
//               ?.map(
//                 (choice) => ChatCompletionChoice.fromJson(
//                   choice as Map<String, dynamic>,
//                 ),
//               )
//               .toList() ??
//           [],
//       usage: ChatCompletionUsage.fromJson(
//         json['usage'] as Map<String, dynamic>,
//       ),
//       references: json['references'] != null
//           ? References.fromJson(json['references'] as Map<String, dynamic>)
//           : null,
//       serviceTier: json['service_tier'],
//       systemFingerprint: json['system_fingerprint'],
//     );
//   }

//   String? get finishReason =>
//       choices.isNotEmpty ? choices[0].finishReason?.value : null;
//   ChatCompletionMessage? get delta => message;
//   ChatCompletionMessage? get message =>
//       choices.isNotEmpty ? choices[0].message : null;
//   String? get reasoningContent => message?.reasoningContent;
//   String get content => message?.content ?? '';
//   int get promptTokens => usage?.promptTokens ?? 0;
//   int get completionTokens => usage?.completionTokens ?? 0;
//   int get reasoningTokens => usage?.reasoningTokens ?? 0;
//   int get totalTokens => usage?.totalTokens ?? 0;
// }

// /// Text content
// class TextContent {
//   final ContentType type;
//   final String text;

//   const TextContent({this.type = ContentType.text, required this.text});

//   /// Creates a copy with updated fields
//   TextContent copyWith({ContentType? type, String? text}) {
//     return TextContent(type: type ?? this.type, text: text ?? this.text);
//   }

//   Map<String, dynamic> toJson() {
//     return {'type': type.value, 'text': text};
//   }

//   factory TextContent.fromJson(Map<String, dynamic> json) {
//     return TextContent(
//       type: ContentType.values.firstWhere(
//         (e) => e.value == json['type'],
//         orElse: () => ContentType.text,
//       ),
//       text: json['text'] ?? '',
//     );
//   }
// }

// /// Image content data
// class ImageContentData {
//   final String url;

//   const ImageContentData({required this.url});

//   /// Creates a copy with updated fields
//   ImageContentData copyWith({String? url}) {
//     return ImageContentData(url: url ?? this.url);
//   }

//   Map<String, dynamic> toJson() {
//     return {'url': url};
//   }

//   factory ImageContentData.fromJson(Map<String, dynamic> json) {
//     return ImageContentData(url: json['url'] ?? '');
//   }

//   @override
//   String toString() {
//     String url = this.url;
//     if (url.length > 12) {
//       url = '${url.substring(0, 6)}...${url.substring(url.length - 6)}';
//     }
//     return '$runtimeType(url=\'$url\')';
//   }
// }

// /// Image content
// class ImageContent {
//   final ContentType type;
//   final ImageContentData imageUrl;

//   const ImageContent({
//     this.type = ContentType.imageUrl,
//     required this.imageUrl,
//   });

//   /// Creates a copy with updated fields
//   ImageContent copyWith({ContentType? type, ImageContentData? imageUrl}) {
//     return ImageContent(
//       type: type ?? this.type,
//       imageUrl: imageUrl ?? this.imageUrl,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {'type': type.value, 'image_url': imageUrl.toJson()};
//   }

//   factory ImageContent.fromJson(Map<String, dynamic> json) {
//     return ImageContent(
//       type: ContentType.values.firstWhere(
//         (e) => e.value == json['type'],
//         orElse: () => ContentType.imageUrl,
//       ),
//       imageUrl: ImageContentData.fromJson(
//         json['image_url'] as Map<String, dynamic>,
//       ),
//     );
//   }
// }

// /// Audio content data
// class AudioContentData {
//   final String data;
//   final AudioFormat format;

//   const AudioContentData({required this.data, this.format = AudioFormat.wav});

//   /// Creates a copy with updated fields
//   AudioContentData copyWith({String? data, AudioFormat? format}) {
//     return AudioContentData(
//       data: data ?? this.data,
//       format: format ?? this.format,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {'data': data, 'format': format.value};
//   }

//   factory AudioContentData.fromJson(Map<String, dynamic> json) {
//     return AudioContentData(
//       data: json['data'] ?? '',
//       format: AudioFormat.values.firstWhere(
//         (e) => e.value == json['format'],
//         orElse: () => AudioFormat.wav,
//       ),
//     );
//   }

//   @override
//   String toString() {
//     String data = this.data;
//     if (data.length > 12) {
//       data = '${data.substring(0, 6)}...${data.substring(data.length - 6)}';
//     }
//     return '$runtimeType(data=\'$data\', format=\'$format\')';
//   }
// }

// /// Audio content
// class AudioContent {
//   final ContentType type;
//   final AudioContentData inputAudio;

//   const AudioContent({
//     this.type = ContentType.inputAudio,
//     required this.inputAudio,
//   });

//   /// Creates a copy with updated fields
//   AudioContent copyWith({ContentType? type, AudioContentData? inputAudio}) {
//     return AudioContent(
//       type: type ?? this.type,
//       inputAudio: inputAudio ?? this.inputAudio,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {'type': type.value, 'input_audio': inputAudio.toJson()};
//   }

//   factory AudioContent.fromJson(Map<String, dynamic> json) {
//     return AudioContent(
//       type: ContentType.values.firstWhere(
//         (e) => e.value == json['type'],
//         orElse: () => ContentType.inputAudio,
//       ),
//       inputAudio: AudioContentData.fromJson(
//         json['input_audio'] as Map<String, dynamic>,
//       ),
//     );
//   }
// }

// /// S3 content
// class S3Content {
//   final ContentType type;
//   final String uri;
//   final String columnName;

//   const S3Content({
//     this.type = ContentType.inputS3,
//     required this.uri,
//     required this.columnName,
//   });

//   /// Creates a copy with updated fields
//   S3Content copyWith({ContentType? type, String? uri, String? columnName}) {
//     return S3Content(
//       type: type ?? this.type,
//       uri: uri ?? this.uri,
//       columnName: columnName ?? this.columnName,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {'type': type.value, 'uri': uri, 'column_name': columnName};
//   }

//   factory S3Content.fromJson(Map<String, dynamic> json) {
//     return S3Content(
//       type: ContentType.values.firstWhere(
//         (e) => e.value == json['type'],
//         orElse: () => ContentType.inputS3,
//       ),
//       uri: json['uri'] ?? '',
//       columnName: json['column_name'] ?? '',
//     );
//   }
// }

// /// Chat content types
// typedef ChatContent = dynamic; // Union[TextContent, ImageContent, AudioContent]
// typedef ChatContentS3 = dynamic; // Union[TextContent, S3Content]

// /// Chat role enum
// enum ChatRole {
//   system('system'),
//   user('user'),
//   assistant('assistant');

//   final String value;
//   const ChatRole(this.value);

//   @override
//   String toString() => value;
// }

// /// Chat entry
// class ChatEntry {
//   final ChatRole role;
//   final dynamic content; // EmptyIfNoneStr | list[ChatContent]
//   final String? name;

//   const ChatEntry({required this.role, required this.content, this.name});

//   /// Creates a copy with updated fields
//   ChatEntry copyWith({ChatRole? role, dynamic content, String? name}) {
//     return ChatEntry(
//       role: role ?? this.role,
//       content: content ?? this.content,
//       name: name ?? this.name,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {'role': role.value, 'content': content, 'name': name};
//   }

//   factory ChatEntry.fromJson(Map<String, dynamic> json) {
//     return ChatEntry(
//       role: ChatRole.values.firstWhere((e) => e.value == json['role']),
//       content: json['content'],
//       name: json['name'],
//     );
//   }

//   String get textContent {
//     if (content is String) {
//       return content;
//     }
//     if (content is List) {
//       final textContents = content.whereType<TextContent>();
//       if (textContents.isNotEmpty) {
//         return textContents.map((c) => c.text).join('\n');
//       }
//     }
//     return '';
//   }

//   bool get hasTextOnly {
//     if (content is String) return true;
//     if (content is List) {
//       return content.every((c) => c is TextContent);
//     }
//     return false;
//   }

//   bool get hasImage {
//     if (content is String) return false;
//     if (content is List) {
//       return content.any((c) => c is ImageContent);
//     }
//     return false;
//   }

//   bool get hasAudio {
//     if (content is String) return false;
//     if (content is List) {
//       return content.any((c) => c is AudioContent);
//     }
//     return false;
//   }

//   static ChatEntry system(dynamic content, {String? name}) {
//     return ChatEntry(role: ChatRole.system, content: content, name: name);
//   }

//   static ChatEntry user(dynamic content, {String? name}) {
//     return ChatEntry(role: ChatRole.user, content: content, name: name);
//   }

//   static ChatEntry assistant(String? content, {String? name}) {
//     return ChatEntry(role: ChatRole.assistant, content: content, name: name);
//   }
// }

// /// Chat thread entry
// class ChatThreadEntry extends ChatEntry {
//   final String? userPrompt;
//   final References? references;
//   final String? rowId;

//   const ChatThreadEntry({
//     required super.role,
//     required super.content,
//     super.name,
//     this.userPrompt,
//     this.references,
//     this.rowId,
//   });

//   /// Creates a copy with updated fields
//   @override
//   ChatThreadEntry copyWith({
//     ChatRole? role,
//     dynamic content,
//     String? name,
//     String? userPrompt,
//     References? references,
//     String? rowId,
//   }) {
//     return ChatThreadEntry(
//       role: role ?? this.role,
//       content: content ?? this.content,
//       name: name ?? this.name,
//       userPrompt: userPrompt ?? this.userPrompt,
//       references: references ?? this.references,
//       rowId: rowId ?? this.rowId,
//     );
//   }

//   @override
//   Map<String, dynamic> toJson() {
//     final json = super.toJson();
//     json['user_prompt'] = userPrompt;
//     json['references'] = references?.toJson();
//     json['row_id'] = rowId;
//     return json;
//   }

//   factory ChatThreadEntry.fromJson(Map<String, dynamic> json) {
//     return ChatThreadEntry(
//       role: ChatRole.values.firstWhere((e) => e.value == json['role']),
//       content: json['content'],
//       name: json['name'],
//       userPrompt: json['user_prompt'],
//       references: json['references'] != null
//           ? References.fromJson(json['references'] as Map<String, dynamic>)
//           : null,
//       rowId: json['row_id'],
//     );
//   }
// }

// /// Chat thread response
// class ChatThreadResponse {
//   final ObjectType object;
//   final List<ChatThreadEntry> thread;
//   final String columnId;

//   const ChatThreadResponse({
//     this.object = ObjectType.chatThread,
//     this.thread = const [],
//     this.columnId = '',
//   });

//   /// Creates a copy with updated fields
//   ChatThreadResponse copyWith({
//     ObjectType? object,
//     List<ChatThreadEntry>? thread,
//     String? columnId,
//   }) {
//     return ChatThreadResponse(
//       object: object ?? this.object,
//       thread: thread ?? this.thread,
//       columnId: columnId ?? this.columnId,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'object': object.value,
//       'thread': thread.map((entry) => entry.toJson()).toList(),
//       'column_id': columnId,
//     };
//   }

//   factory ChatThreadResponse.fromJson(Map<String, dynamic> json) {
//     return ChatThreadResponse(
//       object: ObjectType.values.firstWhere(
//         (e) => e.value == json['object'],
//         orElse: () => ObjectType.chatThread,
//       ),
//       thread:
//           (json['thread'] as List<dynamic>?)
//               ?.map((e) => ChatThreadEntry.fromJson(e as Map<String, dynamic>))
//               .toList() ??
//           [],
//       columnId: json['column_id'] ?? '',
//     );
//   }
// }

// /// Base class for chat threads responses
// class ChatThreadsBase {
//   final ObjectType object;
//   final Map<String, ChatThreadResponse> threads;

//   const ChatThreadsBase({
//     this.object = ObjectType.chatThreads,
//     this.threads = const {},
//   });

//   /// Creates a copy with updated fields
//   ChatThreadsBase copyWith({
//     ObjectType? object,
//     Map<String, ChatThreadResponse>? threads,
//   }) {
//     return ChatThreadsBase(
//       object: object ?? this.object,
//       threads: threads ?? this.threads,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'object': object.value,
//       'threads': threads.map((key, value) => MapEntry(key, value.toJson())),
//     };
//   }

//   factory ChatThreadsBase.fromJson(Map<String, dynamic> json) {
//     return ChatThreadsBase(
//       object: ObjectType.values.firstWhere(
//         (e) => e.value == json['object'],
//         orElse: () => ObjectType.chatThreads,
//       ),
//       threads:
//           (json['threads'] as Map<String, dynamic>?)?.map(
//             (key, value) => MapEntry(
//               key,
//               ChatThreadResponse.fromJson(value as Map<String, dynamic>),
//             ),
//           ) ??
//           {},
//     );
//   }
// }

// /// Chat threads response
// class ChatThreadsResponse extends ChatThreadsBase {
//   final String tableId;

//   const ChatThreadsResponse({super.object, super.threads, this.tableId = ''});

//   @override
//   ChatThreadsResponse copyWith({
//     ObjectType? object,
//     Map<String, ChatThreadResponse>? threads,
//     String? tableId,
//   }) {
//     return ChatThreadsResponse(
//       object: object ?? this.object,
//       threads: threads ?? this.threads,
//       tableId: tableId ?? this.tableId,
//     );
//   }

//   @override
//   Map<String, dynamic> toJson() {
//     final json = super.toJson();
//     json['table_id'] = tableId;
//     return json;
//   }

//   factory ChatThreadsResponse.fromJson(Map<String, dynamic> json) {
//     return ChatThreadsResponse(
//       object: ObjectType.values.firstWhere(
//         (e) => e.value == json['object'],
//         orElse: () => ObjectType.chatThreads,
//       ),
//       threads:
//           (json['threads'] as Map<String, dynamic>?)?.map(
//             (key, value) => MapEntry(
//               key,
//               ChatThreadResponse.fromJson(value as Map<String, dynamic>),
//             ),
//           ) ??
//           {},
//       tableId: json['table_id'] ?? '',
//     );
//   }
// }

// /// Conversation threads response
// class ConversationThreadsResponse extends ChatThreadsBase {
//   final String conversationId;

//   const ConversationThreadsResponse({
//     super.object,
//     super.threads,
//     this.conversationId = '',
//   });

//   @override
//   ConversationThreadsResponse copyWith({
//     ObjectType? object,
//     Map<String, ChatThreadResponse>? threads,
//     String? conversationId,
//   }) {
//     return ConversationThreadsResponse(
//       object: object ?? this.object,
//       threads: threads ?? this.threads,
//       conversationId: conversationId ?? this.conversationId,
//     );
//   }

//   @override
//   Map<String, dynamic> toJson() {
//     final json = super.toJson();
//     json['conversation_id'] = conversationId;
//     return json;
//   }

//   factory ConversationThreadsResponse.fromJson(Map<String, dynamic> json) {
//     return ConversationThreadsResponse(
//       object: ObjectType.values.firstWhere(
//         (e) => e.value == json['object'],
//         orElse: () => ObjectType.chatThreads,
//       ),
//       threads:
//           (json['threads'] as Map<String, dynamic>?)?.map(
//             (key, value) => MapEntry(
//               key,
//               ChatThreadResponse.fromJson(value as Map<String, dynamic>),
//             ),
//           ) ??
//           {},
//       conversationId: json['conversation_id'] ?? '',
//     );
//   }
// }

// @freezed
// @JsonSerializable()
// class Person with _$Person {
//   const Person({
//     required this.firstName,
//     required this.lastName,
//     required this.age,
//   });

//   @override
//   final String firstName;
//   @override
//   final String lastName;
//   @override
//   final int age;

//   factory Person.fromJson(Map<String, Object?> json)
//       => _$PersonFromJson(json);

//   Map<String, Object?> toJson() => _$PersonToJson(this);
// }

// @freezed
// abstract class Balls extends Person with _$Balls{
//   Balls._({
//     required super.firstName,
//     required super.lastName,
//     required super.age
//   }): super();

//   factory Balls({
//     required String wee
//   }) = _Balls;
  
// }