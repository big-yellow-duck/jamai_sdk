import 'package:dart_mappable/dart_mappable.dart';
import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/gen_tables.dart';

part 'lm.mapper.dart';

/// Citation pattern for references
final RegExp citationPattern = RegExp(r'\[(@[0-9]+)[; ]*\]');

/// Enum for API response object types
@MappableEnum()
enum ObjectType {
  @MappableValue('chat.references')
  chatReferences('chat.references'),
  @MappableValue('gen_table.references')
  genTableReferences('gen_table.references'),
  @MappableValue('chat.completion')
  chatCompletion('chat.completion'),
  @MappableValue('chat.completion.chunk')
  chatCompletionChunk('chat.completion.chunk'),
  @MappableValue('embedding')
  embedding('embedding'),
  @MappableValue('list')
  list('list'),
  @MappableValue('reranking')
  reranking('reranking'),
  @MappableValue('chat.thread')
  chatThread('chat.thread'),
  @MappableValue('chat.threads')
  chatThreads('chat.threads'),
  @MappableValue('gen_table.completion.rows')
  completionRows('gen_table.completion.rows'),
  @MappableValue('gen_table.completion.chunk')
  completionChunk('gen_table.completion.chunk');

  final String value;
  const ObjectType(this.value);

  @override
  String toString() => value;
}

/// Enum for content types
@MappableEnum(caseStyle: CaseStyle.snakeCase)
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
@MappableEnum(caseStyle: CaseStyle.snakeCase)
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
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum EmbeddingType {
  query('query'),
  document('document');

  final String value;
  const EmbeddingType(this.value);

  @override
  String toString() => value;
}

/// Enum for encoding formats

@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum EncodingFormat {
  float('float'),
  base64('base64');

  final String value;
  const EncodingFormat(this.value);

  @override
  String toString() => value;
}

/// Enum for audio formats
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum AudioFormat {
  mp3('mp3'),
  wav('wav');

  final String value;
  const AudioFormat(this.value);

  @override
  String toString() => value;
}

/// Enum for reasoning effort levels
@MappableEnum(caseStyle: CaseStyle.snakeCase)
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
@MappableEnum(caseStyle: CaseStyle.snakeCase)
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
@MappableEnum(caseStyle: CaseStyle.snakeCase)
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
@MappableEnum(caseStyle: CaseStyle.snakeCase)
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
@MappableClass(caseStyle: CaseStyle.snakeCase)
class Chunk with ChunkMappable {
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
}

/// Split chunks parameters
@MappableClass(caseStyle: CaseStyle.snakeCase)
class SplitChunksParams with SplitChunksParamsMappable {
  final String method;
  final int chunkSize;
  final int chunkOverlap;

  const SplitChunksParams({
    this.method = 'RecursiveCharacterTextSplitter',
    this.chunkSize = 1000,
    this.chunkOverlap = 200,
  });
}

/// References for RAG responses
@MappableClass(caseStyle: CaseStyle.snakeCase)
class References with ReferencesMappable {
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
}

/// RAG parameters
@MappableClass(caseStyle: CaseStyle.snakeCase)
class RAGParams with RAGParamsMappable {
  final String tableId;
  final String? rerankingModel;
  final String searchQuery;
  final int k;
  final bool rerank;
  final bool concatRerankerInput;
  final bool inlineCitations;

  const RAGParams({
    required this.tableId,
    this.rerankingModel,
    required this.searchQuery,
    this.k = 3,
    this.rerank = true,
    this.concatRerankerInput = false,
    this.inlineCitations = true,
  });

  factory RAGParams.fromMap(Map<String, dynamic> map) =>
      RAGParamsMapper.fromMap(map);

  factory RAGParams.fromJson(String json) => RAGParamsMapper.fromJson(json);
}

/// Function call
@MappableClass(caseStyle: CaseStyle.snakeCase)
class FunctionCall with FunctionCallMappable {
  final String name;
  final String arguments;

  const FunctionCall({required this.name, required this.arguments});
}

/// Audio response
@MappableClass(caseStyle: CaseStyle.snakeCase)
class AudioResponse with AudioResponseMappable {
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
}

/// Chat completion delta
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatCompletionDelta with ChatCompletionDeltaMappable {
  final String role;
  final String? content;
  final String? reasoningContent;
  final String? refusal;
  final List<ToolCall>? toolCalls;

  const ChatCompletionDelta({
    this.role = 'assistant',
    this.content,
    this.reasoningContent,
    this.refusal,
    this.toolCalls,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatCompletionMessage with ChatCompletionMessageMappable {
  final String role;
  final String? content;
  final String? reasoningContent;
  final String? refusal;
  final List<ToolCall>? toolCalls;
  final AudioResponse? audio;

  const ChatCompletionMessage({
    required this.role,
    this.content,
    this.reasoningContent,
    this.refusal,
    this.toolCalls,
    this.audio,
  });
}

/// Log probability token
@MappableClass(caseStyle: CaseStyle.snakeCase)
class LogProbToken with LogProbTokenMappable {
  final String token;
  final double logprob;
  final List<int> bytes;

  const LogProbToken({
    required this.token,
    required this.logprob,
    required this.bytes,
  });
}

/// Log probabilities
@MappableClass(caseStyle: CaseStyle.snakeCase)
class LogProbs with LogProbsMappable {
  final List<LogProbToken> content;
  final List<LogProbToken> refusal;

  const LogProbs({required this.content, required this.refusal});
}

/// Chat completion choice
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatCompletionChoice with ChatCompletionChoiceMappable {
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
}

/// Zero if none int type
typedef ZeroIfNoneInt = int;

/// Prompt usage details
@MappableClass(caseStyle: CaseStyle.snakeCase)
class PromptUsageDetails with PromptUsageDetailsMappable {
  final int cachedTokens;
  final int audioTokens;

  const PromptUsageDetails({this.cachedTokens = 0, this.audioTokens = 0});
}

/// Completion usage details
@MappableClass(caseStyle: CaseStyle.snakeCase)
class CompletionUsageDetails with CompletionUsageDetailsMappable {
  final int audioTokens;
  final int reasoningTokens;
  final int acceptedPredictionTokens;
  final int rejectedPredictionTokens;

  const CompletionUsageDetails({
    this.audioTokens = 0,
    this.reasoningTokens = 0,
    this.acceptedPredictionTokens = 0,
    this.rejectedPredictionTokens = 0,
  });
}

/// Tool usage details
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToolUsageDetails with ToolUsageDetailsMappable {
  final int? webSearchCalls;
  final int? codeInterpreterCalls;

  const ToolUsageDetails({
    this.webSearchCalls = 0,
    this.codeInterpreterCalls = 0,
  });
}

/// Function parameters
@MappableClass(caseStyle: CaseStyle.snakeCase)
class FunctionParameters with FunctionParametersMappable {
  final String type;
  final Map<String, FunctionParameter> properties;
  final List<String> required;
  final bool additionalProperties;

  const FunctionParameters({
    this.type = 'object',
    this.properties = const {},
    this.required = const [],
    this.additionalProperties = false,
  });
}

/// Tool function
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToolFunction with ToolFunctionMappable {
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
}

// 1. Main Union Class: Tool
@MappableClass(discriminatorKey: 'type')
sealed class Tool with ToolMappable {}

@MappableClass(discriminatorValue: 'function')
class FunctionTool extends Tool with FunctionToolMappable {
  final ToolType type;
  final ToolFunction function;

  FunctionTool(this.type, this.function);
}

@MappableClass(discriminatorValue: 'web_search')
class WebSearchTool extends Tool with WebSearchToolMappable {
  final ToolType type;

  WebSearchTool(this.type);
}

@MappableClass(discriminatorValue: 'code_interperter')
class CodeInterperterTool extends Tool with CodeInterperterToolMappable {
  final ToolType type;
  final Map<String, String>? container;

  CodeInterperterTool(this.type, this.container);
}

/// Tool choice function
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToolChoiceFunction with ToolChoiceFunctionMappable {
  final String name;

  const ToolChoiceFunction({required this.name});
}

/// Tool call function
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToolCallFunction with ToolCallFunctionMappable {
  final String arguments;
  final String? name;

  const ToolCallFunction({required this.arguments, this.name});
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToolCall with ToolCallMappable {
  final String id;
  final ToolType type;
  final ToolCallFunction function;

  const ToolCall({
    required this.id,
    this.type = ToolType.function,
    required this.function,
  });
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ToolChoice with ToolChoiceMappable {
  final ToolChoiceType type;
  final ToolChoiceFunction function;

  const ToolChoice({
    this.type = ToolChoiceType.function,
    required this.function,
  });
}

sealed class ToolChoiceOption {
  ToolChoiceOption();

  factory ToolChoiceOption.fromDynamic(dynamic value) {
    // Handle null
    if (value == null) {
      throw ArgumentError('value cannot be null');
    }

    // If it's a string, try to parse it as ToolChoiceType
    if (value is String) {
      try {
        final type = ToolChoiceTypeMapper.fromValue(
          value,
        ); // or however you parse it
        return ToolChoiceOptionToolChoiceType(type);
      } catch (e) {
        throw ArgumentError('Invalid tool choice type string: $value');
      }
    }

    // If it's a Map/JSON object, parse it as ToolChoice
    if (value is Map<String, dynamic>) {
      final choice = ToolChoiceMapper.fromMap(value);
      return ToolChoiceOptionToolChoice(choice);
    }

    // If it's already the wrapper types (for internal use)
    if (value is ToolChoiceType) {
      return ToolChoiceOptionToolChoiceType(value);
    }
    if (value is ToolChoice) {
      return ToolChoiceOptionToolChoice(value);
    }

    throw ArgumentError(
      'value must be a String, Map, ToolChoiceType, or ToolChoice',
    );
  }
}

class ToolChoiceOptionToolChoiceType extends ToolChoiceOption {
  final ToolChoiceType value;
  ToolChoiceOptionToolChoiceType(this.value);
}

class ToolChoiceOptionToolChoice extends ToolChoiceOption {
  final ToolChoice value;
  ToolChoiceOptionToolChoice(this.value);
}

class ToolChoiceHook extends MappingHook {
  const ToolChoiceHook();

  @override
  dynamic beforeDecode(dynamic value) {
    if (value == null) return null;
    return ToolChoiceOption.fromDynamic(value);
  }

  @override
  dynamic beforeEncode(dynamic value) {
    if (value == null) return null;
    return switch (value as ToolChoiceOption) {
      ToolChoiceOptionToolChoiceType(value: final type) => type.value,
      ToolChoiceOptionToolChoice(value: final choice) => choice.toJson(),
    };
  }
}

/// Chat request base
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatRequestBase with ChatRequestBaseMappable {
  final String model;
  final RAGParams? ragParams;
  final List<Tool>? tools;
  @MappableField(hook: ToolChoiceHook())
  final ToolChoiceOption? toolChoice;
  final double temperature;
  final double topP;
  final bool stream;
  final int maxTokens;
  final List<String>? stop;
  final double presencePenalty;
  final double frequencyPenalty;
  final Map<String, dynamic> logitBias;
  final int thinkingBudget;
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

  Map<String, dynamic> get hyperparams {
    final map = toMap(); // Get the map

    // Define the keys to remove
    const keysToRemove = {'object', 'messages', 'rag_params'};

    // Remove entries where the key is in the set of keysToRemove
    map.removeWhere((key, value) => keysToRemove.contains(key));

    return map; // Return the modified map
  }
}
@MappableClass(caseStyle: CaseStyle.snakeCase)
class Niama extends ChatRequestBase with NiamaMappable {
  final GenConfigTypes object;
  final String systemPrompt;
  final String prompt;
  final bool multiTurn;

  Niama({
    super.model = '',
    super.ragParams,
    super.tools,
    super.toolChoice,
    super.temperature = 0.2,
    super.topP = 0.6,
    super.stream = true,
    super.maxTokens = 2048,
    super.stop,
    super.presencePenalty = 0.0,
    super.frequencyPenalty = 0.0,
    super.logitBias = const {},
    super.thinkingBudget = 1,
    super.reasoningEffort,
    super.reasoningBudget,
    super.reasoningSummary = ReasoningSummary.auto,
    // Subclass fields
    this.object = GenConfigTypes.llm,
    this.systemPrompt = '',
    this.prompt = '',
    this.multiTurn = false,
  });
}
/// Chat request
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatRequest with ChatRequestMappable {
  final String model;
  final RAGParams? ragParams;
  final List<Tool>? tools;
  @MappableField(hook: ToolChoiceHook())
  final ToolChoiceOption? toolChoice;
  final double temperature;
  final double topP;
  final bool stream;
  final int maxTokens;
  final List<String>? stop;
  final double presencePenalty;
  final double frequencyPenalty;
  final Map<String, dynamic> logitBias;
  final int thinkingBudget;
  final ReasoningEffort? reasoningEffort;
  final int? reasoningBudget;
  final ReasoningSummary reasoningSummary;
  final String id;
  final List<ChatEntry> messages;
  final int? maxCompletionTokens;
  final int n;
  final String user;

  factory ChatRequest({
    String model = '',
    RAGParams? ragParams,
    List<Tool>? tools,
    ToolChoiceOption? toolChoice,
    double temperature = 0.2,
    double topP = 0.6,
    bool stream = false,
    int maxTokens = 2048,
    List<String>? stop,
    double presencePenalty = 0.0,
    double frequencyPenalty = 0.0,
    Map<String, dynamic> logitBias = const {},
    int thinkingBudget = 1,
    ReasoningEffort? reasoningEffort,
    int? reasoningBudget,
    ReasoningSummary reasoningSummary = ReasoningSummary.auto,
    required String id,
    List<ChatEntry> messages = const [],
    int? maxCompletionTokens,
    required int n,
    required String user,
  }) {
    final effectiveMaxTokens = maxCompletionTokens ?? maxTokens;
    if (thinkingBudget > effectiveMaxTokens) {
      throw ArgumentError(
        '`thinking_budget` cannot be higher than `max_tokens`.',
      );
    }
    return ChatRequest._(
      model: model,
      ragParams: ragParams,
      tools: tools,
      toolChoice: toolChoice,
      temperature: temperature,
      topP: topP,
      stream: stream,
      maxTokens: maxTokens,
      stop: stop,
      presencePenalty: presencePenalty,
      frequencyPenalty: frequencyPenalty,
      logitBias: logitBias,
      thinkingBudget: thinkingBudget,
      reasoningEffort: reasoningEffort,
      reasoningBudget: reasoningBudget,
      reasoningSummary: reasoningSummary,
      id: id,
      messages: messages,
      maxCompletionTokens: maxCompletionTokens,
      n: n,
      user: user,
    );
  }
  const ChatRequest._({
    this.model = '',
    this.ragParams,
    this.tools,
    this.toolChoice,
    this.temperature = 0.2,
    this.topP = 0.6,
    this.stream = false,
    this.maxTokens = 2048,
    this.stop,
    this.presencePenalty = 0.0,
    this.frequencyPenalty = 0.0,
    this.logitBias = const {},
    this.thinkingBudget = 1,
    this.reasoningEffort,
    this.reasoningBudget,
    this.reasoningSummary = ReasoningSummary.auto,
    required this.id,
    this.messages = const [],
    this.maxCompletionTokens,
    required this.n,
    required this.user,
  });
}

/// Embedding request
@MappableClass(caseStyle: CaseStyle.snakeCase)
class EmbeddingRequest with EmbeddingRequestMappable {
  final StringOrListString input;
  final String model;
  final EmbeddingType type;
  final EncodingFormat encodingFormat;

  const EmbeddingRequest({
    required this.input,
    required this.model,
    this.type = EmbeddingType.document,
    this.encodingFormat = EncodingFormat.float,
  });
}

/// Embedding response data
@MappableClass(caseStyle: CaseStyle.snakeCase)
class EmbeddingResponseData with EmbeddingResponseDataMappable {
  final ObjectType object;
  @MappableField(hook: StringOrListDoubleHook())
  final StringOrListDouble embedding;
  final int index;

  const EmbeddingResponseData({
    this.object = ObjectType.embedding,
    required this.embedding,
    this.index = 0,
  });
}

/// Embedding usage
@MappableClass(caseStyle: CaseStyle.snakeCase)
class EmbeddingUsage with EmbeddingUsageMappable {
  final int promptTokens;
  final int totalTokens;

  const EmbeddingUsage({this.promptTokens = 0, this.totalTokens = 0});
}

// / Embedding response
@MappableClass(caseStyle: CaseStyle.snakeCase)
class EmbeddingResponse with EmbeddingResponseMappable {
  final ObjectType object;
  final List<EmbeddingResponseData> data;
  final String model;
  final EmbeddingUsage usage;

  const EmbeddingResponse({
    this.object = ObjectType.list,
    required this.data,
    required this.model,
    required this.usage,
  });
}

/// Reranking request
@MappableClass(caseStyle: CaseStyle.snakeCase)
class RerankingRequest with RerankingRequestMappable {
  final String model;
  final List<String> documents;
  final String query;

  const RerankingRequest({
    required this.model,
    required this.documents,
    required this.query,
  });
}

/// Reranking data
@MappableClass(caseStyle: CaseStyle.snakeCase)
class RerankingData with RerankingDataMappable {
  final ObjectType object;
  final int index;
  final double relevanceScore;

  const RerankingData({
    this.object = ObjectType.reranking,
    required this.index,
    required this.relevanceScore,
  });
}

/// Reranking API version
@MappableClass(caseStyle: CaseStyle.snakeCase)
class RerankingApiVersion with RerankingApiVersionMappable {
  final String version;
  final bool isDeprecated;
  final bool isExperimental;

  const RerankingApiVersion({
    this.version = '',
    this.isDeprecated = false,
    this.isExperimental = false,
  });
}

/// Reranking billed units
@MappableClass(caseStyle: CaseStyle.snakeCase)
class RerankingBilledUnits with RerankingBilledUnitsMappable {
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
}

/// Reranking meta usage
@MappableClass(caseStyle: CaseStyle.snakeCase)
class RerankingMetaUsage with RerankingMetaUsageMappable {
  final int? inputTokens;
  final int? outputTokens;

  const RerankingMetaUsage({this.inputTokens, this.outputTokens});
}

/// Reranking usage
@MappableClass(caseStyle: CaseStyle.snakeCase)
class RerankingUsage with RerankingUsageMappable {
  final int? inputTokens;
  final int? outputTokens;
  final int documents;

  const RerankingUsage({
    this.inputTokens,
    this.outputTokens,
    required this.documents,
  });
}

/// Reranking meta
@MappableClass(caseStyle: CaseStyle.snakeCase)
class RerankingMeta with RerankingMetaMappable {
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
}

/// Reranking response
@MappableClass(caseStyle: CaseStyle.snakeCase)
class RerankingResponse with RerankingResponseMappable {
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
}

/// Function parameter
@MappableClass(caseStyle: CaseStyle.snakeCase)
class FunctionParameter with FunctionParameterMappable {
  final String type;
  final String description;
  final List<String> enumValues;

  const FunctionParameter({
    this.type = '',
    this.description = '',
    this.enumValues = const [],
  });
}

/// Chat completion usage
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatCompletionUsage with ChatCompletionUsageMappable {
  final int promptTokens;
  final int completionTokens;
  final int totalTokens;
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

  int get reasoningTokens => completionTokensDetails?.reasoningTokens ?? 0;
}

/// Chat completion response
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatCompletionChunkResponse with ChatCompletionChunkResponseMappable {
  final String id;
  final ObjectType object;
  final int created;
  final String model;
  final List<ChatCompletionChoice> choices;
  final ChatCompletionUsage? usage;
  final References? references;
  final String? serviceTier;
  final String? systemFingerprint;

  const ChatCompletionChunkResponse({
    required this.id,
    this.object = ObjectType.chatCompletion,
    required this.created,
    required this.model,
    required this.choices,
    this.usage,
    this.references,
    this.serviceTier,
    this.systemFingerprint,
  });

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

@MappableClass(discriminatorKey: 'type')
sealed class ChatContent with ChatContentMappable {
  const ChatContent();
}

@MappableClass(discriminatorKey: 'type')
sealed class ChatContentS3 with ChatContentS3Mappable {
  const ChatContentS3();
}

@MappableClass(discriminatorValue: 'text')
class TextContent extends ChatContent
    with TextContentMappable
    implements ChatContentS3 {
  final ContentType type;
  final String? text; // Changed to nullable to match Python's EmptyIfNoneStr
  const TextContent({this.type = ContentType.text, this.text});

  factory TextContent.fromMap(Map<String, dynamic> map) =>
      TextContentMapper.fromMap(map);
}

@MappableClass()
class ImageContentData with ImageContentDataMappable {
  final String url;
  const ImageContentData({required this.url});

  @override
  String toString() {
    String url = this.url;
    if (url.length > 12) {
      url = '${url.substring(0, 6)}...${url.substring(url.length - 6)}';
    }
    return '$runtimeType(url=\'$url\')';
  }
}

@MappableClass(discriminatorValue: 'image_url')
class ImageContent extends ChatContent with ImageContentMappable {
  final ContentType type;
  @MappableField(key: 'image_url') // Added to match Python field name
  final ImageContentData imageUrl;
  const ImageContent({
    this.type = ContentType.imageUrl,
    required this.imageUrl,
  });

  factory ImageContent.fromMap(Map<String, dynamic> map) =>
      ImageContentMapper.fromMap(map);
}

@MappableClass()
class AudioContentData with AudioContentDataMappable {
  final String data;
  final AudioFormat format;
  const AudioContentData({required this.data, this.format = AudioFormat.wav});

  @override
  String toString() {
    String data = this.data;
    if (data.length > 12) {
      data = '${data.substring(0, 6)}...${data.substring(data.length - 6)}';
    }
    return '$runtimeType(data=\'$data\', format=\'$format\')';
  }
}

@MappableClass(discriminatorValue: 'input_audio')
class AudioContent extends ChatContent with AudioContentMappable {
  final ContentType type;
  @MappableField(key: 'input_audio') // Added to match Python field name
  final AudioContentData inputAudio;
  const AudioContent({
    this.type = ContentType.inputAudio,
    required this.inputAudio,
  });

  factory AudioContent.fromMap(Map<String, dynamic> map) =>
      AudioContent.fromMap(map);
}

// Add S3Content if needed
@MappableClass(discriminatorValue: 'input_s3')
class S3Content extends ChatContentS3 with S3ContentMappable {
  final ContentType type;
  final String uri;
  final String columnName;

  const S3Content({
    this.type = ContentType.inputS3,
    required this.uri,
    required this.columnName,
  });
}

/// Chat role enum
@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum ChatRole {
  system('system'),
  user('user'),
  assistant('assistant');

  final String value;
  const ChatRole(this.value);

  @override
  String toString() => value;
}

sealed class ChatEntryContent {
  const ChatEntryContent();

  factory ChatEntryContent.fromDynamic(dynamic value) {
    if (value == null) {
      return EmptyIfNoneString(null);
    }

    if (value is String) {
      return EmptyIfNoneString(value);
    }

    if (value is List) {
      // Convert each item in the list to a ChatContent object
      final List<ChatContent> chatContents = [];
      for (final item in value) {
        if (item is Map<String, dynamic>) {
          // Determine the type based on the discriminator key
          final type = item['type'];
          switch (type) {
            case 'text':
              chatContents.add(TextContent.fromMap(item));
              break;
            case 'image_url':
              chatContents.add(ImageContent.fromMap(item));
              break;
            case 'input_audio':
              chatContents.add(AudioContent.fromMap(item));
              break;
            default:
              throw ArgumentError('Unknown ChatContent type: $type');
          }
        } else {
          throw ArgumentError('Invalid item in ChatContent list: $item');
        }
      }
      return ChatContentList(chatContents);
    }

    throw ArgumentError(
      'Invalid value type for ChatEntryContent: ${value.runtimeType}',
    );
  }
}

class EmptyIfNoneString extends ChatEntryContent {
  // 1. Make the value field public. It's final, so it's safe.
  final String value;

  // 2. Fixed factory constructor to call the private constructor.
  factory EmptyIfNoneString(String? value) {
    return EmptyIfNoneString._(value ?? '');
  }

  // 3. Private constructor for actual instance creation.
  EmptyIfNoneString._(this.value);

  // 4. toString() is perfect as is.
  @override
  String toString() => value;

  // 5. Fixed operator == to check for the correct type.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmptyIfNoneString && other.value == value;

  @override
  int get hashCode => value.hashCode;
}

class ChatContentList extends ChatEntryContent {
  final List<ChatContent> contents;

  const ChatContentList(this.contents);

  @override
  String toString() => 'ChatContentList($contents)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatContentList &&
          other.contents.length == contents.length &&
          other.contents.every((element) => contents.contains(element));

  @override
  int get hashCode => contents.hashCode;
}

class ChatEntryContentHook extends MappingHook {
  const ChatEntryContentHook();
  @override
  beforeDecode(dynamic value) {
    return ChatEntryContent.fromDynamic(value);
  }

  @override
  beforeEncode(dynamic value) {
    if (value is EmptyIfNoneString) {
      return value.value;
    }

    if (value is ChatContentList) {
      return value.contents.map((content) {
        if (content is TextContent) {
          return content.toMap();
        } else if (content is ImageContent) {
          return content.toMap();
        } else if (content is AudioContent) {
          return content.toMap();
        }

        throw ArgumentError('Unknown ChatContent type: ${content.runtimeType}');
      }).toList();
    }
    return value;
  }
}

/// Chat entry
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatEntry with ChatEntryMappable {
  final ChatRole role;
  @MappableField(hook: ChatEntryContentHook())
  final ChatEntryContent content; // EmptyIfNoneStr | list[ChatContent]
  final String? name;

  const ChatEntry({required this.role, required this.content, this.name});

  String get textContent => switch (content) {
    EmptyIfNoneString(:final value) => value,
    ChatContentList(:final contents) =>
      contents.whereType<TextContent>().map((c) => c.text ?? '').join('\n'),
  };

  bool get hasTextOnly => switch (content) {
    EmptyIfNoneString() => true,
    ChatContentList(:final contents) => contents.every((c) => c is TextContent),
  };

  /// Check if content contains any images
  bool get hasImage => switch (content) {
    EmptyIfNoneString() => false,
    ChatContentList(:final contents) => contents.any((c) => c is ImageContent),
  };

  /// Check if content contains any audio
  bool get hasAudio => switch (content) {
    EmptyIfNoneString() => false,
    ChatContentList(:final contents) => contents.any((c) => c is AudioContent),
  };

  /// Create a new system message
  static ChatEntry system(ChatEntryContent content, {String? name}) {
    return ChatEntry(role: ChatRole.system, content: content, name: name);
  }

  /// Create a new user message
  static ChatEntry user(ChatEntryContent content, {String? name}) {
    return ChatEntry(role: ChatRole.user, content: content, name: name);
  }

  /// Create a new assistant message
  static ChatEntry assistant(ChatEntryContent content, {String? name}) {
    return ChatEntry(role: ChatRole.assistant, content: content, name: name);
  }
}

/// Chat thread entry
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatThreadEntry extends ChatEntry with ChatThreadEntryMappable {
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
}

/// Chat thread response
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatThreadResponse with ChatThreadResponseMappable {
  final ObjectType object;
  final List<ChatThreadEntry> thread;
  final String columnId;

  const ChatThreadResponse({
    this.object = ObjectType.chatThread,
    this.thread = const [],
    this.columnId = '',
  });
}

/// Base class for chat threads responses
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatThreadsBase with ChatThreadsBaseMappable {
  final ObjectType object;
  final Map<String, ChatThreadResponse> threads;

  const ChatThreadsBase({
    this.object = ObjectType.chatThreads,
    this.threads = const {},
  });
}

/// Chat threads response
@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChatThreadsResponse extends ChatThreadsBase
    with ChatThreadsResponseMappable {
  final String tableId;

  const ChatThreadsResponse({super.object, super.threads, this.tableId = ''});
}

/// Conversation threads response
class ConversationThreadsResponse extends ChatThreadsBase {
  final String conversationId;

  const ConversationThreadsResponse({
    super.object,
    super.threads,
    this.conversationId = '',
  });
}
