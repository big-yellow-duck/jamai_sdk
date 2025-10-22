// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'lm.dart';

class ObjectTypeMapper extends EnumMapper<ObjectType> {
  ObjectTypeMapper._();

  static ObjectTypeMapper? _instance;
  static ObjectTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ObjectTypeMapper._());
    }
    return _instance!;
  }

  static ObjectType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ObjectType decode(dynamic value) {
    switch (value) {
      case 'chat.references':
        return ObjectType.chatReferences;
      case 'gen_table.references':
        return ObjectType.genTableReferences;
      case 'chat.completion':
        return ObjectType.chatCompletion;
      case 'chat.completion.chunk':
        return ObjectType.chatCompletionChunk;
      case 'embedding':
        return ObjectType.embedding;
      case 'list':
        return ObjectType.list;
      case 'reranking':
        return ObjectType.reranking;
      case 'chat.thread':
        return ObjectType.chatThread;
      case 'chat.threads':
        return ObjectType.chatThreads;
      case 'gen_table.completion.rows':
        return ObjectType.completionRows;
      case 'gen_table.completion.chunk':
        return ObjectType.completionChunk;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ObjectType self) {
    switch (self) {
      case ObjectType.chatReferences:
        return 'chat.references';
      case ObjectType.genTableReferences:
        return 'gen_table.references';
      case ObjectType.chatCompletion:
        return 'chat.completion';
      case ObjectType.chatCompletionChunk:
        return 'chat.completion.chunk';
      case ObjectType.embedding:
        return 'embedding';
      case ObjectType.list:
        return 'list';
      case ObjectType.reranking:
        return 'reranking';
      case ObjectType.chatThread:
        return 'chat.thread';
      case ObjectType.chatThreads:
        return 'chat.threads';
      case ObjectType.completionRows:
        return 'gen_table.completion.rows';
      case ObjectType.completionChunk:
        return 'gen_table.completion.chunk';
    }
  }
}

extension ObjectTypeMapperExtension on ObjectType {
  dynamic toValue() {
    ObjectTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ObjectType>(this);
  }
}

class ContentTypeMapper extends EnumMapper<ContentType> {
  ContentTypeMapper._();

  static ContentTypeMapper? _instance;
  static ContentTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ContentTypeMapper._());
    }
    return _instance!;
  }

  static ContentType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ContentType decode(dynamic value) {
    switch (value) {
      case r'text':
        return ContentType.text;
      case r'image_url':
        return ContentType.imageUrl;
      case r'input_audio':
        return ContentType.inputAudio;
      case r'input_s3':
        return ContentType.inputS3;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ContentType self) {
    switch (self) {
      case ContentType.text:
        return r'text';
      case ContentType.imageUrl:
        return r'image_url';
      case ContentType.inputAudio:
        return r'input_audio';
      case ContentType.inputS3:
        return r'input_s3';
    }
  }
}

extension ContentTypeMapperExtension on ContentType {
  String toValue() {
    ContentTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ContentType>(this) as String;
  }
}

class ToolTypeMapper extends EnumMapper<ToolType> {
  ToolTypeMapper._();

  static ToolTypeMapper? _instance;
  static ToolTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolTypeMapper._());
    }
    return _instance!;
  }

  static ToolType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ToolType decode(dynamic value) {
    switch (value) {
      case r'function':
        return ToolType.function;
      case r'web_search':
        return ToolType.webSearch;
      case r'code_interpreter':
        return ToolType.codeInterpreter;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ToolType self) {
    switch (self) {
      case ToolType.function:
        return r'function';
      case ToolType.webSearch:
        return r'web_search';
      case ToolType.codeInterpreter:
        return r'code_interpreter';
    }
  }
}

extension ToolTypeMapperExtension on ToolType {
  String toValue() {
    ToolTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ToolType>(this) as String;
  }
}

class EmbeddingTypeMapper extends EnumMapper<EmbeddingType> {
  EmbeddingTypeMapper._();

  static EmbeddingTypeMapper? _instance;
  static EmbeddingTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmbeddingTypeMapper._());
    }
    return _instance!;
  }

  static EmbeddingType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EmbeddingType decode(dynamic value) {
    switch (value) {
      case r'query':
        return EmbeddingType.query;
      case r'document':
        return EmbeddingType.document;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EmbeddingType self) {
    switch (self) {
      case EmbeddingType.query:
        return r'query';
      case EmbeddingType.document:
        return r'document';
    }
  }
}

extension EmbeddingTypeMapperExtension on EmbeddingType {
  String toValue() {
    EmbeddingTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EmbeddingType>(this) as String;
  }
}

class EncodingFormatMapper extends EnumMapper<EncodingFormat> {
  EncodingFormatMapper._();

  static EncodingFormatMapper? _instance;
  static EncodingFormatMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EncodingFormatMapper._());
    }
    return _instance!;
  }

  static EncodingFormat fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EncodingFormat decode(dynamic value) {
    switch (value) {
      case r'float':
        return EncodingFormat.float;
      case r'base64':
        return EncodingFormat.base64;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EncodingFormat self) {
    switch (self) {
      case EncodingFormat.float:
        return r'float';
      case EncodingFormat.base64:
        return r'base64';
    }
  }
}

extension EncodingFormatMapperExtension on EncodingFormat {
  String toValue() {
    EncodingFormatMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EncodingFormat>(this) as String;
  }
}

class AudioFormatMapper extends EnumMapper<AudioFormat> {
  AudioFormatMapper._();

  static AudioFormatMapper? _instance;
  static AudioFormatMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AudioFormatMapper._());
    }
    return _instance!;
  }

  static AudioFormat fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  AudioFormat decode(dynamic value) {
    switch (value) {
      case r'mp3':
        return AudioFormat.mp3;
      case r'wav':
        return AudioFormat.wav;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(AudioFormat self) {
    switch (self) {
      case AudioFormat.mp3:
        return r'mp3';
      case AudioFormat.wav:
        return r'wav';
    }
  }
}

extension AudioFormatMapperExtension on AudioFormat {
  String toValue() {
    AudioFormatMapper.ensureInitialized();
    return MapperContainer.globals.toValue<AudioFormat>(this) as String;
  }
}

class ReasoningEffortMapper extends EnumMapper<ReasoningEffort> {
  ReasoningEffortMapper._();

  static ReasoningEffortMapper? _instance;
  static ReasoningEffortMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReasoningEffortMapper._());
    }
    return _instance!;
  }

  static ReasoningEffort fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ReasoningEffort decode(dynamic value) {
    switch (value) {
      case r'disable':
        return ReasoningEffort.disable;
      case r'minimal':
        return ReasoningEffort.minimal;
      case r'low':
        return ReasoningEffort.low;
      case r'medium':
        return ReasoningEffort.medium;
      case r'high':
        return ReasoningEffort.high;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ReasoningEffort self) {
    switch (self) {
      case ReasoningEffort.disable:
        return r'disable';
      case ReasoningEffort.minimal:
        return r'minimal';
      case ReasoningEffort.low:
        return r'low';
      case ReasoningEffort.medium:
        return r'medium';
      case ReasoningEffort.high:
        return r'high';
    }
  }
}

extension ReasoningEffortMapperExtension on ReasoningEffort {
  String toValue() {
    ReasoningEffortMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ReasoningEffort>(this) as String;
  }
}

class ReasoningSummaryMapper extends EnumMapper<ReasoningSummary> {
  ReasoningSummaryMapper._();

  static ReasoningSummaryMapper? _instance;
  static ReasoningSummaryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReasoningSummaryMapper._());
    }
    return _instance!;
  }

  static ReasoningSummary fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ReasoningSummary decode(dynamic value) {
    switch (value) {
      case r'auto':
        return ReasoningSummary.auto;
      case r'concise':
        return ReasoningSummary.concise;
      case r'detailed':
        return ReasoningSummary.detailed;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ReasoningSummary self) {
    switch (self) {
      case ReasoningSummary.auto:
        return r'auto';
      case ReasoningSummary.concise:
        return r'concise';
      case ReasoningSummary.detailed:
        return r'detailed';
    }
  }
}

extension ReasoningSummaryMapperExtension on ReasoningSummary {
  String toValue() {
    ReasoningSummaryMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ReasoningSummary>(this) as String;
  }
}

class FinishReasonMapper extends EnumMapper<FinishReason> {
  FinishReasonMapper._();

  static FinishReasonMapper? _instance;
  static FinishReasonMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FinishReasonMapper._());
    }
    return _instance!;
  }

  static FinishReason fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  FinishReason decode(dynamic value) {
    switch (value) {
      case r'stop':
        return FinishReason.stop;
      case r'context_overflow':
        return FinishReason.contextOverflow;
      case r'length':
        return FinishReason.length;
      case r'tool_calls':
        return FinishReason.toolCalls;
      case r'content_filter':
        return FinishReason.contentFilter;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(FinishReason self) {
    switch (self) {
      case FinishReason.stop:
        return r'stop';
      case FinishReason.contextOverflow:
        return r'context_overflow';
      case FinishReason.length:
        return r'length';
      case FinishReason.toolCalls:
        return r'tool_calls';
      case FinishReason.contentFilter:
        return r'content_filter';
    }
  }
}

extension FinishReasonMapperExtension on FinishReason {
  String toValue() {
    FinishReasonMapper.ensureInitialized();
    return MapperContainer.globals.toValue<FinishReason>(this) as String;
  }
}

class ToolChoiceTypeMapper extends EnumMapper<ToolChoiceType> {
  ToolChoiceTypeMapper._();

  static ToolChoiceTypeMapper? _instance;
  static ToolChoiceTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolChoiceTypeMapper._());
    }
    return _instance!;
  }

  static ToolChoiceType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ToolChoiceType decode(dynamic value) {
    switch (value) {
      case r'none':
        return ToolChoiceType.none;
      case r'auto':
        return ToolChoiceType.auto;
      case r'required':
        return ToolChoiceType.required;
      case r'function':
        return ToolChoiceType.function;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ToolChoiceType self) {
    switch (self) {
      case ToolChoiceType.none:
        return r'none';
      case ToolChoiceType.auto:
        return r'auto';
      case ToolChoiceType.required:
        return r'required';
      case ToolChoiceType.function:
        return r'function';
    }
  }
}

extension ToolChoiceTypeMapperExtension on ToolChoiceType {
  String toValue() {
    ToolChoiceTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ToolChoiceType>(this) as String;
  }
}

class ChatRoleMapper extends EnumMapper<ChatRole> {
  ChatRoleMapper._();

  static ChatRoleMapper? _instance;
  static ChatRoleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatRoleMapper._());
    }
    return _instance!;
  }

  static ChatRole fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ChatRole decode(dynamic value) {
    switch (value) {
      case r'system':
        return ChatRole.system;
      case r'user':
        return ChatRole.user;
      case r'assistant':
        return ChatRole.assistant;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ChatRole self) {
    switch (self) {
      case ChatRole.system:
        return r'system';
      case ChatRole.user:
        return r'user';
      case ChatRole.assistant:
        return r'assistant';
    }
  }
}

extension ChatRoleMapperExtension on ChatRole {
  String toValue() {
    ChatRoleMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ChatRole>(this) as String;
  }
}

class ChunkMapper extends ClassMapperBase<Chunk> {
  ChunkMapper._();

  static ChunkMapper? _instance;
  static ChunkMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChunkMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Chunk';

  static String _$text(Chunk v) => v.text;
  static const Field<Chunk, String> _f$text = Field('text', _$text);
  static String _$title(Chunk v) => v.title;
  static const Field<Chunk, String> _f$title = Field(
    'title',
    _$title,
    opt: true,
    def: '',
  );
  static int? _$page(Chunk v) => v.page;
  static const Field<Chunk, int> _f$page = Field('page', _$page, opt: true);
  static String _$fileName(Chunk v) => v.fileName;
  static const Field<Chunk, String> _f$fileName = Field(
    'fileName',
    _$fileName,
    key: r'file_name',
    opt: true,
    def: '',
  );
  static String _$filePath(Chunk v) => v.filePath;
  static const Field<Chunk, String> _f$filePath = Field(
    'filePath',
    _$filePath,
    key: r'file_path',
    opt: true,
    def: '',
  );
  static String _$documentId(Chunk v) => v.documentId;
  static const Field<Chunk, String> _f$documentId = Field(
    'documentId',
    _$documentId,
    key: r'document_id',
    opt: true,
    def: '',
  );
  static String _$chunkId(Chunk v) => v.chunkId;
  static const Field<Chunk, String> _f$chunkId = Field(
    'chunkId',
    _$chunkId,
    key: r'chunk_id',
    opt: true,
    def: '',
  );
  static Map<String, String> _$context(Chunk v) => v.context;
  static const Field<Chunk, Map<String, String>> _f$context = Field(
    'context',
    _$context,
    opt: true,
    def: const {},
  );
  static Map<String, dynamic> _$metadata(Chunk v) => v.metadata;
  static const Field<Chunk, Map<String, dynamic>> _f$metadata = Field(
    'metadata',
    _$metadata,
    opt: true,
    def: const {},
  );

  @override
  final MappableFields<Chunk> fields = const {
    #text: _f$text,
    #title: _f$title,
    #page: _f$page,
    #fileName: _f$fileName,
    #filePath: _f$filePath,
    #documentId: _f$documentId,
    #chunkId: _f$chunkId,
    #context: _f$context,
    #metadata: _f$metadata,
  };

  static Chunk _instantiate(DecodingData data) {
    return Chunk(
      text: data.dec(_f$text),
      title: data.dec(_f$title),
      page: data.dec(_f$page),
      fileName: data.dec(_f$fileName),
      filePath: data.dec(_f$filePath),
      documentId: data.dec(_f$documentId),
      chunkId: data.dec(_f$chunkId),
      context: data.dec(_f$context),
      metadata: data.dec(_f$metadata),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Chunk fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Chunk>(map);
  }

  static Chunk fromJson(String json) {
    return ensureInitialized().decodeJson<Chunk>(json);
  }
}

mixin ChunkMappable {
  String toJson() {
    return ChunkMapper.ensureInitialized().encodeJson<Chunk>(this as Chunk);
  }

  Map<String, dynamic> toMap() {
    return ChunkMapper.ensureInitialized().encodeMap<Chunk>(this as Chunk);
  }

  ChunkCopyWith<Chunk, Chunk, Chunk> get copyWith =>
      _ChunkCopyWithImpl<Chunk, Chunk>(this as Chunk, $identity, $identity);
  @override
  String toString() {
    return ChunkMapper.ensureInitialized().stringifyValue(this as Chunk);
  }

  @override
  bool operator ==(Object other) {
    return ChunkMapper.ensureInitialized().equalsValue(this as Chunk, other);
  }

  @override
  int get hashCode {
    return ChunkMapper.ensureInitialized().hashValue(this as Chunk);
  }
}

extension ChunkValueCopy<$R, $Out> on ObjectCopyWith<$R, Chunk, $Out> {
  ChunkCopyWith<$R, Chunk, $Out> get $asChunk =>
      $base.as((v, t, t2) => _ChunkCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChunkCopyWith<$R, $In extends Chunk, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get context;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get metadata;
  $R call({
    String? text,
    String? title,
    int? page,
    String? fileName,
    String? filePath,
    String? documentId,
    String? chunkId,
    Map<String, String>? context,
    Map<String, dynamic>? metadata,
  });
  ChunkCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChunkCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Chunk, $Out>
    implements ChunkCopyWith<$R, Chunk, $Out> {
  _ChunkCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Chunk> $mapper = ChunkMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get context => MapCopyWith(
    $value.context,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(context: v),
  );
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get metadata => MapCopyWith(
    $value.metadata,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(metadata: v),
  );
  @override
  $R call({
    String? text,
    String? title,
    Object? page = $none,
    String? fileName,
    String? filePath,
    String? documentId,
    String? chunkId,
    Map<String, String>? context,
    Map<String, dynamic>? metadata,
  }) => $apply(
    FieldCopyWithData({
      if (text != null) #text: text,
      if (title != null) #title: title,
      if (page != $none) #page: page,
      if (fileName != null) #fileName: fileName,
      if (filePath != null) #filePath: filePath,
      if (documentId != null) #documentId: documentId,
      if (chunkId != null) #chunkId: chunkId,
      if (context != null) #context: context,
      if (metadata != null) #metadata: metadata,
    }),
  );
  @override
  Chunk $make(CopyWithData data) => Chunk(
    text: data.get(#text, or: $value.text),
    title: data.get(#title, or: $value.title),
    page: data.get(#page, or: $value.page),
    fileName: data.get(#fileName, or: $value.fileName),
    filePath: data.get(#filePath, or: $value.filePath),
    documentId: data.get(#documentId, or: $value.documentId),
    chunkId: data.get(#chunkId, or: $value.chunkId),
    context: data.get(#context, or: $value.context),
    metadata: data.get(#metadata, or: $value.metadata),
  );

  @override
  ChunkCopyWith<$R2, Chunk, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChunkCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SplitChunksParamsMapper extends ClassMapperBase<SplitChunksParams> {
  SplitChunksParamsMapper._();

  static SplitChunksParamsMapper? _instance;
  static SplitChunksParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SplitChunksParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SplitChunksParams';

  static String _$method(SplitChunksParams v) => v.method;
  static const Field<SplitChunksParams, String> _f$method = Field(
    'method',
    _$method,
    opt: true,
    def: 'RecursiveCharacterTextSplitter',
  );
  static int _$chunkSize(SplitChunksParams v) => v.chunkSize;
  static const Field<SplitChunksParams, int> _f$chunkSize = Field(
    'chunkSize',
    _$chunkSize,
    key: r'chunk_size',
    opt: true,
    def: 1000,
  );
  static int _$chunkOverlap(SplitChunksParams v) => v.chunkOverlap;
  static const Field<SplitChunksParams, int> _f$chunkOverlap = Field(
    'chunkOverlap',
    _$chunkOverlap,
    key: r'chunk_overlap',
    opt: true,
    def: 200,
  );

  @override
  final MappableFields<SplitChunksParams> fields = const {
    #method: _f$method,
    #chunkSize: _f$chunkSize,
    #chunkOverlap: _f$chunkOverlap,
  };

  static SplitChunksParams _instantiate(DecodingData data) {
    return SplitChunksParams(
      method: data.dec(_f$method),
      chunkSize: data.dec(_f$chunkSize),
      chunkOverlap: data.dec(_f$chunkOverlap),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SplitChunksParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SplitChunksParams>(map);
  }

  static SplitChunksParams fromJson(String json) {
    return ensureInitialized().decodeJson<SplitChunksParams>(json);
  }
}

mixin SplitChunksParamsMappable {
  String toJson() {
    return SplitChunksParamsMapper.ensureInitialized()
        .encodeJson<SplitChunksParams>(this as SplitChunksParams);
  }

  Map<String, dynamic> toMap() {
    return SplitChunksParamsMapper.ensureInitialized()
        .encodeMap<SplitChunksParams>(this as SplitChunksParams);
  }

  SplitChunksParamsCopyWith<
    SplitChunksParams,
    SplitChunksParams,
    SplitChunksParams
  >
  get copyWith =>
      _SplitChunksParamsCopyWithImpl<SplitChunksParams, SplitChunksParams>(
        this as SplitChunksParams,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SplitChunksParamsMapper.ensureInitialized().stringifyValue(
      this as SplitChunksParams,
    );
  }

  @override
  bool operator ==(Object other) {
    return SplitChunksParamsMapper.ensureInitialized().equalsValue(
      this as SplitChunksParams,
      other,
    );
  }

  @override
  int get hashCode {
    return SplitChunksParamsMapper.ensureInitialized().hashValue(
      this as SplitChunksParams,
    );
  }
}

extension SplitChunksParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SplitChunksParams, $Out> {
  SplitChunksParamsCopyWith<$R, SplitChunksParams, $Out>
  get $asSplitChunksParams => $base.as(
    (v, t, t2) => _SplitChunksParamsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SplitChunksParamsCopyWith<
  $R,
  $In extends SplitChunksParams,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? method, int? chunkSize, int? chunkOverlap});
  SplitChunksParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SplitChunksParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SplitChunksParams, $Out>
    implements SplitChunksParamsCopyWith<$R, SplitChunksParams, $Out> {
  _SplitChunksParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SplitChunksParams> $mapper =
      SplitChunksParamsMapper.ensureInitialized();
  @override
  $R call({String? method, int? chunkSize, int? chunkOverlap}) => $apply(
    FieldCopyWithData({
      if (method != null) #method: method,
      if (chunkSize != null) #chunkSize: chunkSize,
      if (chunkOverlap != null) #chunkOverlap: chunkOverlap,
    }),
  );
  @override
  SplitChunksParams $make(CopyWithData data) => SplitChunksParams(
    method: data.get(#method, or: $value.method),
    chunkSize: data.get(#chunkSize, or: $value.chunkSize),
    chunkOverlap: data.get(#chunkOverlap, or: $value.chunkOverlap),
  );

  @override
  SplitChunksParamsCopyWith<$R2, SplitChunksParams, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SplitChunksParamsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ReferencesMapper extends ClassMapperBase<References> {
  ReferencesMapper._();

  static ReferencesMapper? _instance;
  static ReferencesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReferencesMapper._());
      ObjectTypeMapper.ensureInitialized();
      ChunkMapper.ensureInitialized();
      FinishReasonMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'References';

  static ObjectType _$object(References v) => v.object;
  static const Field<References, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.chatReferences,
  );
  static List<Chunk> _$chunks(References v) => v.chunks;
  static const Field<References, List<Chunk>> _f$chunks = Field(
    'chunks',
    _$chunks,
    opt: true,
    def: const [],
  );
  static String _$searchQuery(References v) => v.searchQuery;
  static const Field<References, String> _f$searchQuery = Field(
    'searchQuery',
    _$searchQuery,
    key: r'search_query',
  );
  static FinishReason? _$finishReason(References v) => v.finishReason;
  static const Field<References, FinishReason> _f$finishReason = Field(
    'finishReason',
    _$finishReason,
    key: r'finish_reason',
    opt: true,
  );

  @override
  final MappableFields<References> fields = const {
    #object: _f$object,
    #chunks: _f$chunks,
    #searchQuery: _f$searchQuery,
    #finishReason: _f$finishReason,
  };

  static References _instantiate(DecodingData data) {
    return References(
      object: data.dec(_f$object),
      chunks: data.dec(_f$chunks),
      searchQuery: data.dec(_f$searchQuery),
      finishReason: data.dec(_f$finishReason),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static References fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<References>(map);
  }

  static References fromJson(String json) {
    return ensureInitialized().decodeJson<References>(json);
  }
}

mixin ReferencesMappable {
  String toJson() {
    return ReferencesMapper.ensureInitialized().encodeJson<References>(
      this as References,
    );
  }

  Map<String, dynamic> toMap() {
    return ReferencesMapper.ensureInitialized().encodeMap<References>(
      this as References,
    );
  }

  ReferencesCopyWith<References, References, References> get copyWith =>
      _ReferencesCopyWithImpl<References, References>(
        this as References,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ReferencesMapper.ensureInitialized().stringifyValue(
      this as References,
    );
  }

  @override
  bool operator ==(Object other) {
    return ReferencesMapper.ensureInitialized().equalsValue(
      this as References,
      other,
    );
  }

  @override
  int get hashCode {
    return ReferencesMapper.ensureInitialized().hashValue(this as References);
  }
}

extension ReferencesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, References, $Out> {
  ReferencesCopyWith<$R, References, $Out> get $asReferences =>
      $base.as((v, t, t2) => _ReferencesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ReferencesCopyWith<$R, $In extends References, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Chunk, ChunkCopyWith<$R, Chunk, Chunk>> get chunks;
  $R call({
    ObjectType? object,
    List<Chunk>? chunks,
    String? searchQuery,
    FinishReason? finishReason,
  });
  ReferencesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ReferencesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, References, $Out>
    implements ReferencesCopyWith<$R, References, $Out> {
  _ReferencesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<References> $mapper =
      ReferencesMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Chunk, ChunkCopyWith<$R, Chunk, Chunk>> get chunks =>
      ListCopyWith(
        $value.chunks,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(chunks: v),
      );
  @override
  $R call({
    ObjectType? object,
    List<Chunk>? chunks,
    String? searchQuery,
    Object? finishReason = $none,
  }) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (chunks != null) #chunks: chunks,
      if (searchQuery != null) #searchQuery: searchQuery,
      if (finishReason != $none) #finishReason: finishReason,
    }),
  );
  @override
  References $make(CopyWithData data) => References(
    object: data.get(#object, or: $value.object),
    chunks: data.get(#chunks, or: $value.chunks),
    searchQuery: data.get(#searchQuery, or: $value.searchQuery),
    finishReason: data.get(#finishReason, or: $value.finishReason),
  );

  @override
  ReferencesCopyWith<$R2, References, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ReferencesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RAGParamsMapper extends ClassMapperBase<RAGParams> {
  RAGParamsMapper._();

  static RAGParamsMapper? _instance;
  static RAGParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RAGParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RAGParams';

  static String _$tableId(RAGParams v) => v.tableId;
  static const Field<RAGParams, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
  );
  static String? _$rerankingModel(RAGParams v) => v.rerankingModel;
  static const Field<RAGParams, String> _f$rerankingModel = Field(
    'rerankingModel',
    _$rerankingModel,
    key: r'reranking_model',
    opt: true,
  );
  static String _$searchQuery(RAGParams v) => v.searchQuery;
  static const Field<RAGParams, String> _f$searchQuery = Field(
    'searchQuery',
    _$searchQuery,
    key: r'search_query',
  );
  static int _$k(RAGParams v) => v.k;
  static const Field<RAGParams, int> _f$k = Field('k', _$k, opt: true, def: 3);
  static bool _$rerank(RAGParams v) => v.rerank;
  static const Field<RAGParams, bool> _f$rerank = Field(
    'rerank',
    _$rerank,
    opt: true,
    def: true,
  );
  static bool _$concatRerankerInput(RAGParams v) => v.concatRerankerInput;
  static const Field<RAGParams, bool> _f$concatRerankerInput = Field(
    'concatRerankerInput',
    _$concatRerankerInput,
    key: r'concat_reranker_input',
    opt: true,
    def: false,
  );
  static bool _$inlineCitations(RAGParams v) => v.inlineCitations;
  static const Field<RAGParams, bool> _f$inlineCitations = Field(
    'inlineCitations',
    _$inlineCitations,
    key: r'inline_citations',
    opt: true,
    def: true,
  );

  @override
  final MappableFields<RAGParams> fields = const {
    #tableId: _f$tableId,
    #rerankingModel: _f$rerankingModel,
    #searchQuery: _f$searchQuery,
    #k: _f$k,
    #rerank: _f$rerank,
    #concatRerankerInput: _f$concatRerankerInput,
    #inlineCitations: _f$inlineCitations,
  };

  static RAGParams _instantiate(DecodingData data) {
    return RAGParams(
      tableId: data.dec(_f$tableId),
      rerankingModel: data.dec(_f$rerankingModel),
      searchQuery: data.dec(_f$searchQuery),
      k: data.dec(_f$k),
      rerank: data.dec(_f$rerank),
      concatRerankerInput: data.dec(_f$concatRerankerInput),
      inlineCitations: data.dec(_f$inlineCitations),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RAGParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RAGParams>(map);
  }

  static RAGParams fromJson(String json) {
    return ensureInitialized().decodeJson<RAGParams>(json);
  }
}

mixin RAGParamsMappable {
  String toJson() {
    return RAGParamsMapper.ensureInitialized().encodeJson<RAGParams>(
      this as RAGParams,
    );
  }

  Map<String, dynamic> toMap() {
    return RAGParamsMapper.ensureInitialized().encodeMap<RAGParams>(
      this as RAGParams,
    );
  }

  RAGParamsCopyWith<RAGParams, RAGParams, RAGParams> get copyWith =>
      _RAGParamsCopyWithImpl<RAGParams, RAGParams>(
        this as RAGParams,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RAGParamsMapper.ensureInitialized().stringifyValue(
      this as RAGParams,
    );
  }

  @override
  bool operator ==(Object other) {
    return RAGParamsMapper.ensureInitialized().equalsValue(
      this as RAGParams,
      other,
    );
  }

  @override
  int get hashCode {
    return RAGParamsMapper.ensureInitialized().hashValue(this as RAGParams);
  }
}

extension RAGParamsValueCopy<$R, $Out> on ObjectCopyWith<$R, RAGParams, $Out> {
  RAGParamsCopyWith<$R, RAGParams, $Out> get $asRAGParams =>
      $base.as((v, t, t2) => _RAGParamsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RAGParamsCopyWith<$R, $In extends RAGParams, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? tableId,
    String? rerankingModel,
    String? searchQuery,
    int? k,
    bool? rerank,
    bool? concatRerankerInput,
    bool? inlineCitations,
  });
  RAGParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RAGParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RAGParams, $Out>
    implements RAGParamsCopyWith<$R, RAGParams, $Out> {
  _RAGParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RAGParams> $mapper =
      RAGParamsMapper.ensureInitialized();
  @override
  $R call({
    String? tableId,
    Object? rerankingModel = $none,
    String? searchQuery,
    int? k,
    bool? rerank,
    bool? concatRerankerInput,
    bool? inlineCitations,
  }) => $apply(
    FieldCopyWithData({
      if (tableId != null) #tableId: tableId,
      if (rerankingModel != $none) #rerankingModel: rerankingModel,
      if (searchQuery != null) #searchQuery: searchQuery,
      if (k != null) #k: k,
      if (rerank != null) #rerank: rerank,
      if (concatRerankerInput != null)
        #concatRerankerInput: concatRerankerInput,
      if (inlineCitations != null) #inlineCitations: inlineCitations,
    }),
  );
  @override
  RAGParams $make(CopyWithData data) => RAGParams(
    tableId: data.get(#tableId, or: $value.tableId),
    rerankingModel: data.get(#rerankingModel, or: $value.rerankingModel),
    searchQuery: data.get(#searchQuery, or: $value.searchQuery),
    k: data.get(#k, or: $value.k),
    rerank: data.get(#rerank, or: $value.rerank),
    concatRerankerInput: data.get(
      #concatRerankerInput,
      or: $value.concatRerankerInput,
    ),
    inlineCitations: data.get(#inlineCitations, or: $value.inlineCitations),
  );

  @override
  RAGParamsCopyWith<$R2, RAGParams, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RAGParamsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FunctionCallMapper extends ClassMapperBase<FunctionCall> {
  FunctionCallMapper._();

  static FunctionCallMapper? _instance;
  static FunctionCallMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FunctionCallMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FunctionCall';

  static String _$name(FunctionCall v) => v.name;
  static const Field<FunctionCall, String> _f$name = Field('name', _$name);
  static String _$arguments(FunctionCall v) => v.arguments;
  static const Field<FunctionCall, String> _f$arguments = Field(
    'arguments',
    _$arguments,
  );

  @override
  final MappableFields<FunctionCall> fields = const {
    #name: _f$name,
    #arguments: _f$arguments,
  };

  static FunctionCall _instantiate(DecodingData data) {
    return FunctionCall(
      name: data.dec(_f$name),
      arguments: data.dec(_f$arguments),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FunctionCall fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FunctionCall>(map);
  }

  static FunctionCall fromJson(String json) {
    return ensureInitialized().decodeJson<FunctionCall>(json);
  }
}

mixin FunctionCallMappable {
  String toJson() {
    return FunctionCallMapper.ensureInitialized().encodeJson<FunctionCall>(
      this as FunctionCall,
    );
  }

  Map<String, dynamic> toMap() {
    return FunctionCallMapper.ensureInitialized().encodeMap<FunctionCall>(
      this as FunctionCall,
    );
  }

  FunctionCallCopyWith<FunctionCall, FunctionCall, FunctionCall> get copyWith =>
      _FunctionCallCopyWithImpl<FunctionCall, FunctionCall>(
        this as FunctionCall,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FunctionCallMapper.ensureInitialized().stringifyValue(
      this as FunctionCall,
    );
  }

  @override
  bool operator ==(Object other) {
    return FunctionCallMapper.ensureInitialized().equalsValue(
      this as FunctionCall,
      other,
    );
  }

  @override
  int get hashCode {
    return FunctionCallMapper.ensureInitialized().hashValue(
      this as FunctionCall,
    );
  }
}

extension FunctionCallValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FunctionCall, $Out> {
  FunctionCallCopyWith<$R, FunctionCall, $Out> get $asFunctionCall =>
      $base.as((v, t, t2) => _FunctionCallCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FunctionCallCopyWith<$R, $In extends FunctionCall, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? arguments});
  FunctionCallCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FunctionCallCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FunctionCall, $Out>
    implements FunctionCallCopyWith<$R, FunctionCall, $Out> {
  _FunctionCallCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FunctionCall> $mapper =
      FunctionCallMapper.ensureInitialized();
  @override
  $R call({String? name, String? arguments}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (arguments != null) #arguments: arguments,
    }),
  );
  @override
  FunctionCall $make(CopyWithData data) => FunctionCall(
    name: data.get(#name, or: $value.name),
    arguments: data.get(#arguments, or: $value.arguments),
  );

  @override
  FunctionCallCopyWith<$R2, FunctionCall, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FunctionCallCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AudioResponseMapper extends ClassMapperBase<AudioResponse> {
  AudioResponseMapper._();

  static AudioResponseMapper? _instance;
  static AudioResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AudioResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AudioResponse';

  static String _$id(AudioResponse v) => v.id;
  static const Field<AudioResponse, String> _f$id = Field('id', _$id);
  static int _$expiresAt(AudioResponse v) => v.expiresAt;
  static const Field<AudioResponse, int> _f$expiresAt = Field(
    'expiresAt',
    _$expiresAt,
    key: r'expires_at',
  );
  static String _$data(AudioResponse v) => v.data;
  static const Field<AudioResponse, String> _f$data = Field('data', _$data);
  static String _$transcript(AudioResponse v) => v.transcript;
  static const Field<AudioResponse, String> _f$transcript = Field(
    'transcript',
    _$transcript,
  );

  @override
  final MappableFields<AudioResponse> fields = const {
    #id: _f$id,
    #expiresAt: _f$expiresAt,
    #data: _f$data,
    #transcript: _f$transcript,
  };

  static AudioResponse _instantiate(DecodingData data) {
    return AudioResponse(
      id: data.dec(_f$id),
      expiresAt: data.dec(_f$expiresAt),
      data: data.dec(_f$data),
      transcript: data.dec(_f$transcript),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AudioResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AudioResponse>(map);
  }

  static AudioResponse fromJson(String json) {
    return ensureInitialized().decodeJson<AudioResponse>(json);
  }
}

mixin AudioResponseMappable {
  String toJson() {
    return AudioResponseMapper.ensureInitialized().encodeJson<AudioResponse>(
      this as AudioResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return AudioResponseMapper.ensureInitialized().encodeMap<AudioResponse>(
      this as AudioResponse,
    );
  }

  AudioResponseCopyWith<AudioResponse, AudioResponse, AudioResponse>
  get copyWith => _AudioResponseCopyWithImpl<AudioResponse, AudioResponse>(
    this as AudioResponse,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return AudioResponseMapper.ensureInitialized().stringifyValue(
      this as AudioResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return AudioResponseMapper.ensureInitialized().equalsValue(
      this as AudioResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return AudioResponseMapper.ensureInitialized().hashValue(
      this as AudioResponse,
    );
  }
}

extension AudioResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AudioResponse, $Out> {
  AudioResponseCopyWith<$R, AudioResponse, $Out> get $asAudioResponse =>
      $base.as((v, t, t2) => _AudioResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AudioResponseCopyWith<$R, $In extends AudioResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, int? expiresAt, String? data, String? transcript});
  AudioResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AudioResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AudioResponse, $Out>
    implements AudioResponseCopyWith<$R, AudioResponse, $Out> {
  _AudioResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AudioResponse> $mapper =
      AudioResponseMapper.ensureInitialized();
  @override
  $R call({String? id, int? expiresAt, String? data, String? transcript}) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (expiresAt != null) #expiresAt: expiresAt,
          if (data != null) #data: data,
          if (transcript != null) #transcript: transcript,
        }),
      );
  @override
  AudioResponse $make(CopyWithData data) => AudioResponse(
    id: data.get(#id, or: $value.id),
    expiresAt: data.get(#expiresAt, or: $value.expiresAt),
    data: data.get(#data, or: $value.data),
    transcript: data.get(#transcript, or: $value.transcript),
  );

  @override
  AudioResponseCopyWith<$R2, AudioResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AudioResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatCompletionDeltaMapper extends ClassMapperBase<ChatCompletionDelta> {
  ChatCompletionDeltaMapper._();

  static ChatCompletionDeltaMapper? _instance;
  static ChatCompletionDeltaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatCompletionDeltaMapper._());
      ToolCallMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatCompletionDelta';

  static String _$role(ChatCompletionDelta v) => v.role;
  static const Field<ChatCompletionDelta, String> _f$role = Field(
    'role',
    _$role,
    opt: true,
    def: 'assistant',
  );
  static String? _$content(ChatCompletionDelta v) => v.content;
  static const Field<ChatCompletionDelta, String> _f$content = Field(
    'content',
    _$content,
    opt: true,
  );
  static String? _$reasoningContent(ChatCompletionDelta v) =>
      v.reasoningContent;
  static const Field<ChatCompletionDelta, String> _f$reasoningContent = Field(
    'reasoningContent',
    _$reasoningContent,
    key: r'reasoning_content',
    opt: true,
  );
  static String? _$refusal(ChatCompletionDelta v) => v.refusal;
  static const Field<ChatCompletionDelta, String> _f$refusal = Field(
    'refusal',
    _$refusal,
    opt: true,
  );
  static List<ToolCall>? _$toolCalls(ChatCompletionDelta v) => v.toolCalls;
  static const Field<ChatCompletionDelta, List<ToolCall>> _f$toolCalls = Field(
    'toolCalls',
    _$toolCalls,
    key: r'tool_calls',
    opt: true,
  );

  @override
  final MappableFields<ChatCompletionDelta> fields = const {
    #role: _f$role,
    #content: _f$content,
    #reasoningContent: _f$reasoningContent,
    #refusal: _f$refusal,
    #toolCalls: _f$toolCalls,
  };

  static ChatCompletionDelta _instantiate(DecodingData data) {
    return ChatCompletionDelta(
      role: data.dec(_f$role),
      content: data.dec(_f$content),
      reasoningContent: data.dec(_f$reasoningContent),
      refusal: data.dec(_f$refusal),
      toolCalls: data.dec(_f$toolCalls),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatCompletionDelta fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatCompletionDelta>(map);
  }

  static ChatCompletionDelta fromJson(String json) {
    return ensureInitialized().decodeJson<ChatCompletionDelta>(json);
  }
}

mixin ChatCompletionDeltaMappable {
  String toJson() {
    return ChatCompletionDeltaMapper.ensureInitialized()
        .encodeJson<ChatCompletionDelta>(this as ChatCompletionDelta);
  }

  Map<String, dynamic> toMap() {
    return ChatCompletionDeltaMapper.ensureInitialized()
        .encodeMap<ChatCompletionDelta>(this as ChatCompletionDelta);
  }

  ChatCompletionDeltaCopyWith<
    ChatCompletionDelta,
    ChatCompletionDelta,
    ChatCompletionDelta
  >
  get copyWith =>
      _ChatCompletionDeltaCopyWithImpl<
        ChatCompletionDelta,
        ChatCompletionDelta
      >(this as ChatCompletionDelta, $identity, $identity);
  @override
  String toString() {
    return ChatCompletionDeltaMapper.ensureInitialized().stringifyValue(
      this as ChatCompletionDelta,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatCompletionDeltaMapper.ensureInitialized().equalsValue(
      this as ChatCompletionDelta,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatCompletionDeltaMapper.ensureInitialized().hashValue(
      this as ChatCompletionDelta,
    );
  }
}

extension ChatCompletionDeltaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatCompletionDelta, $Out> {
  ChatCompletionDeltaCopyWith<$R, ChatCompletionDelta, $Out>
  get $asChatCompletionDelta => $base.as(
    (v, t, t2) => _ChatCompletionDeltaCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ChatCompletionDeltaCopyWith<
  $R,
  $In extends ChatCompletionDelta,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ToolCall, ToolCallCopyWith<$R, ToolCall, ToolCall>>?
  get toolCalls;
  $R call({
    String? role,
    String? content,
    String? reasoningContent,
    String? refusal,
    List<ToolCall>? toolCalls,
  });
  ChatCompletionDeltaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatCompletionDeltaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatCompletionDelta, $Out>
    implements ChatCompletionDeltaCopyWith<$R, ChatCompletionDelta, $Out> {
  _ChatCompletionDeltaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatCompletionDelta> $mapper =
      ChatCompletionDeltaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ToolCall, ToolCallCopyWith<$R, ToolCall, ToolCall>>?
  get toolCalls => $value.toolCalls != null
      ? ListCopyWith(
          $value.toolCalls!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(toolCalls: v),
        )
      : null;
  @override
  $R call({
    String? role,
    Object? content = $none,
    Object? reasoningContent = $none,
    Object? refusal = $none,
    Object? toolCalls = $none,
  }) => $apply(
    FieldCopyWithData({
      if (role != null) #role: role,
      if (content != $none) #content: content,
      if (reasoningContent != $none) #reasoningContent: reasoningContent,
      if (refusal != $none) #refusal: refusal,
      if (toolCalls != $none) #toolCalls: toolCalls,
    }),
  );
  @override
  ChatCompletionDelta $make(CopyWithData data) => ChatCompletionDelta(
    role: data.get(#role, or: $value.role),
    content: data.get(#content, or: $value.content),
    reasoningContent: data.get(#reasoningContent, or: $value.reasoningContent),
    refusal: data.get(#refusal, or: $value.refusal),
    toolCalls: data.get(#toolCalls, or: $value.toolCalls),
  );

  @override
  ChatCompletionDeltaCopyWith<$R2, ChatCompletionDelta, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChatCompletionDeltaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolCallMapper extends ClassMapperBase<ToolCall> {
  ToolCallMapper._();

  static ToolCallMapper? _instance;
  static ToolCallMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolCallMapper._());
      ToolTypeMapper.ensureInitialized();
      ToolCallFunctionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ToolCall';

  static String _$id(ToolCall v) => v.id;
  static const Field<ToolCall, String> _f$id = Field('id', _$id);
  static ToolType _$type(ToolCall v) => v.type;
  static const Field<ToolCall, ToolType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: ToolType.function,
  );
  static ToolCallFunction _$function(ToolCall v) => v.function;
  static const Field<ToolCall, ToolCallFunction> _f$function = Field(
    'function',
    _$function,
  );

  @override
  final MappableFields<ToolCall> fields = const {
    #id: _f$id,
    #type: _f$type,
    #function: _f$function,
  };

  static ToolCall _instantiate(DecodingData data) {
    return ToolCall(
      id: data.dec(_f$id),
      type: data.dec(_f$type),
      function: data.dec(_f$function),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ToolCall fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToolCall>(map);
  }

  static ToolCall fromJson(String json) {
    return ensureInitialized().decodeJson<ToolCall>(json);
  }
}

mixin ToolCallMappable {
  String toJson() {
    return ToolCallMapper.ensureInitialized().encodeJson<ToolCall>(
      this as ToolCall,
    );
  }

  Map<String, dynamic> toMap() {
    return ToolCallMapper.ensureInitialized().encodeMap<ToolCall>(
      this as ToolCall,
    );
  }

  ToolCallCopyWith<ToolCall, ToolCall, ToolCall> get copyWith =>
      _ToolCallCopyWithImpl<ToolCall, ToolCall>(
        this as ToolCall,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ToolCallMapper.ensureInitialized().stringifyValue(this as ToolCall);
  }

  @override
  bool operator ==(Object other) {
    return ToolCallMapper.ensureInitialized().equalsValue(
      this as ToolCall,
      other,
    );
  }

  @override
  int get hashCode {
    return ToolCallMapper.ensureInitialized().hashValue(this as ToolCall);
  }
}

extension ToolCallValueCopy<$R, $Out> on ObjectCopyWith<$R, ToolCall, $Out> {
  ToolCallCopyWith<$R, ToolCall, $Out> get $asToolCall =>
      $base.as((v, t, t2) => _ToolCallCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToolCallCopyWith<$R, $In extends ToolCall, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ToolCallFunctionCopyWith<$R, ToolCallFunction, ToolCallFunction> get function;
  $R call({String? id, ToolType? type, ToolCallFunction? function});
  ToolCallCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ToolCallCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToolCall, $Out>
    implements ToolCallCopyWith<$R, ToolCall, $Out> {
  _ToolCallCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToolCall> $mapper =
      ToolCallMapper.ensureInitialized();
  @override
  ToolCallFunctionCopyWith<$R, ToolCallFunction, ToolCallFunction>
  get function => $value.function.copyWith.$chain((v) => call(function: v));
  @override
  $R call({String? id, ToolType? type, ToolCallFunction? function}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (type != null) #type: type,
      if (function != null) #function: function,
    }),
  );
  @override
  ToolCall $make(CopyWithData data) => ToolCall(
    id: data.get(#id, or: $value.id),
    type: data.get(#type, or: $value.type),
    function: data.get(#function, or: $value.function),
  );

  @override
  ToolCallCopyWith<$R2, ToolCall, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ToolCallCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolCallFunctionMapper extends ClassMapperBase<ToolCallFunction> {
  ToolCallFunctionMapper._();

  static ToolCallFunctionMapper? _instance;
  static ToolCallFunctionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolCallFunctionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ToolCallFunction';

  static String _$arguments(ToolCallFunction v) => v.arguments;
  static const Field<ToolCallFunction, String> _f$arguments = Field(
    'arguments',
    _$arguments,
  );
  static String? _$name(ToolCallFunction v) => v.name;
  static const Field<ToolCallFunction, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
  );

  @override
  final MappableFields<ToolCallFunction> fields = const {
    #arguments: _f$arguments,
    #name: _f$name,
  };

  static ToolCallFunction _instantiate(DecodingData data) {
    return ToolCallFunction(
      arguments: data.dec(_f$arguments),
      name: data.dec(_f$name),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ToolCallFunction fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToolCallFunction>(map);
  }

  static ToolCallFunction fromJson(String json) {
    return ensureInitialized().decodeJson<ToolCallFunction>(json);
  }
}

mixin ToolCallFunctionMappable {
  String toJson() {
    return ToolCallFunctionMapper.ensureInitialized()
        .encodeJson<ToolCallFunction>(this as ToolCallFunction);
  }

  Map<String, dynamic> toMap() {
    return ToolCallFunctionMapper.ensureInitialized()
        .encodeMap<ToolCallFunction>(this as ToolCallFunction);
  }

  ToolCallFunctionCopyWith<ToolCallFunction, ToolCallFunction, ToolCallFunction>
  get copyWith =>
      _ToolCallFunctionCopyWithImpl<ToolCallFunction, ToolCallFunction>(
        this as ToolCallFunction,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ToolCallFunctionMapper.ensureInitialized().stringifyValue(
      this as ToolCallFunction,
    );
  }

  @override
  bool operator ==(Object other) {
    return ToolCallFunctionMapper.ensureInitialized().equalsValue(
      this as ToolCallFunction,
      other,
    );
  }

  @override
  int get hashCode {
    return ToolCallFunctionMapper.ensureInitialized().hashValue(
      this as ToolCallFunction,
    );
  }
}

extension ToolCallFunctionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ToolCallFunction, $Out> {
  ToolCallFunctionCopyWith<$R, ToolCallFunction, $Out>
  get $asToolCallFunction =>
      $base.as((v, t, t2) => _ToolCallFunctionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToolCallFunctionCopyWith<$R, $In extends ToolCallFunction, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? arguments, String? name});
  ToolCallFunctionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ToolCallFunctionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToolCallFunction, $Out>
    implements ToolCallFunctionCopyWith<$R, ToolCallFunction, $Out> {
  _ToolCallFunctionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToolCallFunction> $mapper =
      ToolCallFunctionMapper.ensureInitialized();
  @override
  $R call({String? arguments, Object? name = $none}) => $apply(
    FieldCopyWithData({
      if (arguments != null) #arguments: arguments,
      if (name != $none) #name: name,
    }),
  );
  @override
  ToolCallFunction $make(CopyWithData data) => ToolCallFunction(
    arguments: data.get(#arguments, or: $value.arguments),
    name: data.get(#name, or: $value.name),
  );

  @override
  ToolCallFunctionCopyWith<$R2, ToolCallFunction, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ToolCallFunctionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatCompletionMessageMapper
    extends ClassMapperBase<ChatCompletionMessage> {
  ChatCompletionMessageMapper._();

  static ChatCompletionMessageMapper? _instance;
  static ChatCompletionMessageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatCompletionMessageMapper._());
      ToolCallMapper.ensureInitialized();
      AudioResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatCompletionMessage';

  static String _$role(ChatCompletionMessage v) => v.role;
  static const Field<ChatCompletionMessage, String> _f$role = Field(
    'role',
    _$role,
  );
  static String? _$content(ChatCompletionMessage v) => v.content;
  static const Field<ChatCompletionMessage, String> _f$content = Field(
    'content',
    _$content,
    opt: true,
  );
  static String? _$reasoningContent(ChatCompletionMessage v) =>
      v.reasoningContent;
  static const Field<ChatCompletionMessage, String> _f$reasoningContent = Field(
    'reasoningContent',
    _$reasoningContent,
    key: r'reasoning_content',
    opt: true,
  );
  static String? _$refusal(ChatCompletionMessage v) => v.refusal;
  static const Field<ChatCompletionMessage, String> _f$refusal = Field(
    'refusal',
    _$refusal,
    opt: true,
  );
  static List<ToolCall>? _$toolCalls(ChatCompletionMessage v) => v.toolCalls;
  static const Field<ChatCompletionMessage, List<ToolCall>> _f$toolCalls =
      Field('toolCalls', _$toolCalls, key: r'tool_calls', opt: true);
  static AudioResponse? _$audio(ChatCompletionMessage v) => v.audio;
  static const Field<ChatCompletionMessage, AudioResponse> _f$audio = Field(
    'audio',
    _$audio,
    opt: true,
  );

  @override
  final MappableFields<ChatCompletionMessage> fields = const {
    #role: _f$role,
    #content: _f$content,
    #reasoningContent: _f$reasoningContent,
    #refusal: _f$refusal,
    #toolCalls: _f$toolCalls,
    #audio: _f$audio,
  };

  static ChatCompletionMessage _instantiate(DecodingData data) {
    return ChatCompletionMessage(
      role: data.dec(_f$role),
      content: data.dec(_f$content),
      reasoningContent: data.dec(_f$reasoningContent),
      refusal: data.dec(_f$refusal),
      toolCalls: data.dec(_f$toolCalls),
      audio: data.dec(_f$audio),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatCompletionMessage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatCompletionMessage>(map);
  }

  static ChatCompletionMessage fromJson(String json) {
    return ensureInitialized().decodeJson<ChatCompletionMessage>(json);
  }
}

mixin ChatCompletionMessageMappable {
  String toJson() {
    return ChatCompletionMessageMapper.ensureInitialized()
        .encodeJson<ChatCompletionMessage>(this as ChatCompletionMessage);
  }

  Map<String, dynamic> toMap() {
    return ChatCompletionMessageMapper.ensureInitialized()
        .encodeMap<ChatCompletionMessage>(this as ChatCompletionMessage);
  }

  ChatCompletionMessageCopyWith<
    ChatCompletionMessage,
    ChatCompletionMessage,
    ChatCompletionMessage
  >
  get copyWith =>
      _ChatCompletionMessageCopyWithImpl<
        ChatCompletionMessage,
        ChatCompletionMessage
      >(this as ChatCompletionMessage, $identity, $identity);
  @override
  String toString() {
    return ChatCompletionMessageMapper.ensureInitialized().stringifyValue(
      this as ChatCompletionMessage,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatCompletionMessageMapper.ensureInitialized().equalsValue(
      this as ChatCompletionMessage,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatCompletionMessageMapper.ensureInitialized().hashValue(
      this as ChatCompletionMessage,
    );
  }
}

extension ChatCompletionMessageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatCompletionMessage, $Out> {
  ChatCompletionMessageCopyWith<$R, ChatCompletionMessage, $Out>
  get $asChatCompletionMessage => $base.as(
    (v, t, t2) => _ChatCompletionMessageCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ChatCompletionMessageCopyWith<
  $R,
  $In extends ChatCompletionMessage,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ToolCall, ToolCallCopyWith<$R, ToolCall, ToolCall>>?
  get toolCalls;
  AudioResponseCopyWith<$R, AudioResponse, AudioResponse>? get audio;
  $R call({
    String? role,
    String? content,
    String? reasoningContent,
    String? refusal,
    List<ToolCall>? toolCalls,
    AudioResponse? audio,
  });
  ChatCompletionMessageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatCompletionMessageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatCompletionMessage, $Out>
    implements ChatCompletionMessageCopyWith<$R, ChatCompletionMessage, $Out> {
  _ChatCompletionMessageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatCompletionMessage> $mapper =
      ChatCompletionMessageMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ToolCall, ToolCallCopyWith<$R, ToolCall, ToolCall>>?
  get toolCalls => $value.toolCalls != null
      ? ListCopyWith(
          $value.toolCalls!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(toolCalls: v),
        )
      : null;
  @override
  AudioResponseCopyWith<$R, AudioResponse, AudioResponse>? get audio =>
      $value.audio?.copyWith.$chain((v) => call(audio: v));
  @override
  $R call({
    String? role,
    Object? content = $none,
    Object? reasoningContent = $none,
    Object? refusal = $none,
    Object? toolCalls = $none,
    Object? audio = $none,
  }) => $apply(
    FieldCopyWithData({
      if (role != null) #role: role,
      if (content != $none) #content: content,
      if (reasoningContent != $none) #reasoningContent: reasoningContent,
      if (refusal != $none) #refusal: refusal,
      if (toolCalls != $none) #toolCalls: toolCalls,
      if (audio != $none) #audio: audio,
    }),
  );
  @override
  ChatCompletionMessage $make(CopyWithData data) => ChatCompletionMessage(
    role: data.get(#role, or: $value.role),
    content: data.get(#content, or: $value.content),
    reasoningContent: data.get(#reasoningContent, or: $value.reasoningContent),
    refusal: data.get(#refusal, or: $value.refusal),
    toolCalls: data.get(#toolCalls, or: $value.toolCalls),
    audio: data.get(#audio, or: $value.audio),
  );

  @override
  ChatCompletionMessageCopyWith<$R2, ChatCompletionMessage, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChatCompletionMessageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LogProbTokenMapper extends ClassMapperBase<LogProbToken> {
  LogProbTokenMapper._();

  static LogProbTokenMapper? _instance;
  static LogProbTokenMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LogProbTokenMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LogProbToken';

  static String _$token(LogProbToken v) => v.token;
  static const Field<LogProbToken, String> _f$token = Field('token', _$token);
  static double _$logprob(LogProbToken v) => v.logprob;
  static const Field<LogProbToken, double> _f$logprob = Field(
    'logprob',
    _$logprob,
  );
  static List<int> _$bytes(LogProbToken v) => v.bytes;
  static const Field<LogProbToken, List<int>> _f$bytes = Field(
    'bytes',
    _$bytes,
  );

  @override
  final MappableFields<LogProbToken> fields = const {
    #token: _f$token,
    #logprob: _f$logprob,
    #bytes: _f$bytes,
  };

  static LogProbToken _instantiate(DecodingData data) {
    return LogProbToken(
      token: data.dec(_f$token),
      logprob: data.dec(_f$logprob),
      bytes: data.dec(_f$bytes),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LogProbToken fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LogProbToken>(map);
  }

  static LogProbToken fromJson(String json) {
    return ensureInitialized().decodeJson<LogProbToken>(json);
  }
}

mixin LogProbTokenMappable {
  String toJson() {
    return LogProbTokenMapper.ensureInitialized().encodeJson<LogProbToken>(
      this as LogProbToken,
    );
  }

  Map<String, dynamic> toMap() {
    return LogProbTokenMapper.ensureInitialized().encodeMap<LogProbToken>(
      this as LogProbToken,
    );
  }

  LogProbTokenCopyWith<LogProbToken, LogProbToken, LogProbToken> get copyWith =>
      _LogProbTokenCopyWithImpl<LogProbToken, LogProbToken>(
        this as LogProbToken,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LogProbTokenMapper.ensureInitialized().stringifyValue(
      this as LogProbToken,
    );
  }

  @override
  bool operator ==(Object other) {
    return LogProbTokenMapper.ensureInitialized().equalsValue(
      this as LogProbToken,
      other,
    );
  }

  @override
  int get hashCode {
    return LogProbTokenMapper.ensureInitialized().hashValue(
      this as LogProbToken,
    );
  }
}

extension LogProbTokenValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LogProbToken, $Out> {
  LogProbTokenCopyWith<$R, LogProbToken, $Out> get $asLogProbToken =>
      $base.as((v, t, t2) => _LogProbTokenCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LogProbTokenCopyWith<$R, $In extends LogProbToken, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get bytes;
  $R call({String? token, double? logprob, List<int>? bytes});
  LogProbTokenCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LogProbTokenCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LogProbToken, $Out>
    implements LogProbTokenCopyWith<$R, LogProbToken, $Out> {
  _LogProbTokenCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LogProbToken> $mapper =
      LogProbTokenMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get bytes => ListCopyWith(
    $value.bytes,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(bytes: v),
  );
  @override
  $R call({String? token, double? logprob, List<int>? bytes}) => $apply(
    FieldCopyWithData({
      if (token != null) #token: token,
      if (logprob != null) #logprob: logprob,
      if (bytes != null) #bytes: bytes,
    }),
  );
  @override
  LogProbToken $make(CopyWithData data) => LogProbToken(
    token: data.get(#token, or: $value.token),
    logprob: data.get(#logprob, or: $value.logprob),
    bytes: data.get(#bytes, or: $value.bytes),
  );

  @override
  LogProbTokenCopyWith<$R2, LogProbToken, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LogProbTokenCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LogProbsMapper extends ClassMapperBase<LogProbs> {
  LogProbsMapper._();

  static LogProbsMapper? _instance;
  static LogProbsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LogProbsMapper._());
      LogProbTokenMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LogProbs';

  static List<LogProbToken> _$content(LogProbs v) => v.content;
  static const Field<LogProbs, List<LogProbToken>> _f$content = Field(
    'content',
    _$content,
  );
  static List<LogProbToken> _$refusal(LogProbs v) => v.refusal;
  static const Field<LogProbs, List<LogProbToken>> _f$refusal = Field(
    'refusal',
    _$refusal,
  );

  @override
  final MappableFields<LogProbs> fields = const {
    #content: _f$content,
    #refusal: _f$refusal,
  };

  static LogProbs _instantiate(DecodingData data) {
    return LogProbs(
      content: data.dec(_f$content),
      refusal: data.dec(_f$refusal),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LogProbs fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LogProbs>(map);
  }

  static LogProbs fromJson(String json) {
    return ensureInitialized().decodeJson<LogProbs>(json);
  }
}

mixin LogProbsMappable {
  String toJson() {
    return LogProbsMapper.ensureInitialized().encodeJson<LogProbs>(
      this as LogProbs,
    );
  }

  Map<String, dynamic> toMap() {
    return LogProbsMapper.ensureInitialized().encodeMap<LogProbs>(
      this as LogProbs,
    );
  }

  LogProbsCopyWith<LogProbs, LogProbs, LogProbs> get copyWith =>
      _LogProbsCopyWithImpl<LogProbs, LogProbs>(
        this as LogProbs,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LogProbsMapper.ensureInitialized().stringifyValue(this as LogProbs);
  }

  @override
  bool operator ==(Object other) {
    return LogProbsMapper.ensureInitialized().equalsValue(
      this as LogProbs,
      other,
    );
  }

  @override
  int get hashCode {
    return LogProbsMapper.ensureInitialized().hashValue(this as LogProbs);
  }
}

extension LogProbsValueCopy<$R, $Out> on ObjectCopyWith<$R, LogProbs, $Out> {
  LogProbsCopyWith<$R, LogProbs, $Out> get $asLogProbs =>
      $base.as((v, t, t2) => _LogProbsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LogProbsCopyWith<$R, $In extends LogProbs, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    LogProbToken,
    LogProbTokenCopyWith<$R, LogProbToken, LogProbToken>
  >
  get content;
  ListCopyWith<
    $R,
    LogProbToken,
    LogProbTokenCopyWith<$R, LogProbToken, LogProbToken>
  >
  get refusal;
  $R call({List<LogProbToken>? content, List<LogProbToken>? refusal});
  LogProbsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LogProbsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LogProbs, $Out>
    implements LogProbsCopyWith<$R, LogProbs, $Out> {
  _LogProbsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LogProbs> $mapper =
      LogProbsMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    LogProbToken,
    LogProbTokenCopyWith<$R, LogProbToken, LogProbToken>
  >
  get content => ListCopyWith(
    $value.content,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(content: v),
  );
  @override
  ListCopyWith<
    $R,
    LogProbToken,
    LogProbTokenCopyWith<$R, LogProbToken, LogProbToken>
  >
  get refusal => ListCopyWith(
    $value.refusal,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(refusal: v),
  );
  @override
  $R call({List<LogProbToken>? content, List<LogProbToken>? refusal}) => $apply(
    FieldCopyWithData({
      if (content != null) #content: content,
      if (refusal != null) #refusal: refusal,
    }),
  );
  @override
  LogProbs $make(CopyWithData data) => LogProbs(
    content: data.get(#content, or: $value.content),
    refusal: data.get(#refusal, or: $value.refusal),
  );

  @override
  LogProbsCopyWith<$R2, LogProbs, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LogProbsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatCompletionChoiceMapper extends ClassMapperBase<ChatCompletionChoice> {
  ChatCompletionChoiceMapper._();

  static ChatCompletionChoiceMapper? _instance;
  static ChatCompletionChoiceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatCompletionChoiceMapper._());
      ChatCompletionMessageMapper.ensureInitialized();
      ChatCompletionDeltaMapper.ensureInitialized();
      LogProbsMapper.ensureInitialized();
      FinishReasonMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatCompletionChoice';

  static int _$index(ChatCompletionChoice v) => v.index;
  static const Field<ChatCompletionChoice, int> _f$index = Field(
    'index',
    _$index,
  );
  static ChatCompletionMessage? _$message(ChatCompletionChoice v) => v.message;
  static const Field<ChatCompletionChoice, ChatCompletionMessage> _f$message =
      Field('message', _$message, opt: true);
  static ChatCompletionDelta? _$delta(ChatCompletionChoice v) => v.delta;
  static const Field<ChatCompletionChoice, ChatCompletionDelta> _f$delta =
      Field('delta', _$delta, opt: true);
  static LogProbs? _$logprobs(ChatCompletionChoice v) => v.logprobs;
  static const Field<ChatCompletionChoice, LogProbs> _f$logprobs = Field(
    'logprobs',
    _$logprobs,
    opt: true,
  );
  static FinishReason? _$finishReason(ChatCompletionChoice v) => v.finishReason;
  static const Field<ChatCompletionChoice, FinishReason> _f$finishReason =
      Field('finishReason', _$finishReason, key: r'finish_reason', opt: true);

  @override
  final MappableFields<ChatCompletionChoice> fields = const {
    #index: _f$index,
    #message: _f$message,
    #delta: _f$delta,
    #logprobs: _f$logprobs,
    #finishReason: _f$finishReason,
  };

  static ChatCompletionChoice _instantiate(DecodingData data) {
    return ChatCompletionChoice(
      index: data.dec(_f$index),
      message: data.dec(_f$message),
      delta: data.dec(_f$delta),
      logprobs: data.dec(_f$logprobs),
      finishReason: data.dec(_f$finishReason),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatCompletionChoice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatCompletionChoice>(map);
  }

  static ChatCompletionChoice fromJson(String json) {
    return ensureInitialized().decodeJson<ChatCompletionChoice>(json);
  }
}

mixin ChatCompletionChoiceMappable {
  String toJson() {
    return ChatCompletionChoiceMapper.ensureInitialized()
        .encodeJson<ChatCompletionChoice>(this as ChatCompletionChoice);
  }

  Map<String, dynamic> toMap() {
    return ChatCompletionChoiceMapper.ensureInitialized()
        .encodeMap<ChatCompletionChoice>(this as ChatCompletionChoice);
  }

  ChatCompletionChoiceCopyWith<
    ChatCompletionChoice,
    ChatCompletionChoice,
    ChatCompletionChoice
  >
  get copyWith =>
      _ChatCompletionChoiceCopyWithImpl<
        ChatCompletionChoice,
        ChatCompletionChoice
      >(this as ChatCompletionChoice, $identity, $identity);
  @override
  String toString() {
    return ChatCompletionChoiceMapper.ensureInitialized().stringifyValue(
      this as ChatCompletionChoice,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatCompletionChoiceMapper.ensureInitialized().equalsValue(
      this as ChatCompletionChoice,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatCompletionChoiceMapper.ensureInitialized().hashValue(
      this as ChatCompletionChoice,
    );
  }
}

extension ChatCompletionChoiceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatCompletionChoice, $Out> {
  ChatCompletionChoiceCopyWith<$R, ChatCompletionChoice, $Out>
  get $asChatCompletionChoice => $base.as(
    (v, t, t2) => _ChatCompletionChoiceCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ChatCompletionChoiceCopyWith<
  $R,
  $In extends ChatCompletionChoice,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ChatCompletionMessageCopyWith<
    $R,
    ChatCompletionMessage,
    ChatCompletionMessage
  >?
  get message;
  ChatCompletionDeltaCopyWith<$R, ChatCompletionDelta, ChatCompletionDelta>?
  get delta;
  LogProbsCopyWith<$R, LogProbs, LogProbs>? get logprobs;
  $R call({
    int? index,
    ChatCompletionMessage? message,
    ChatCompletionDelta? delta,
    LogProbs? logprobs,
    FinishReason? finishReason,
  });
  ChatCompletionChoiceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatCompletionChoiceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatCompletionChoice, $Out>
    implements ChatCompletionChoiceCopyWith<$R, ChatCompletionChoice, $Out> {
  _ChatCompletionChoiceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatCompletionChoice> $mapper =
      ChatCompletionChoiceMapper.ensureInitialized();
  @override
  ChatCompletionMessageCopyWith<
    $R,
    ChatCompletionMessage,
    ChatCompletionMessage
  >?
  get message => $value.message?.copyWith.$chain((v) => call(message: v));
  @override
  ChatCompletionDeltaCopyWith<$R, ChatCompletionDelta, ChatCompletionDelta>?
  get delta => $value.delta?.copyWith.$chain((v) => call(delta: v));
  @override
  LogProbsCopyWith<$R, LogProbs, LogProbs>? get logprobs =>
      $value.logprobs?.copyWith.$chain((v) => call(logprobs: v));
  @override
  $R call({
    int? index,
    Object? message = $none,
    Object? delta = $none,
    Object? logprobs = $none,
    Object? finishReason = $none,
  }) => $apply(
    FieldCopyWithData({
      if (index != null) #index: index,
      if (message != $none) #message: message,
      if (delta != $none) #delta: delta,
      if (logprobs != $none) #logprobs: logprobs,
      if (finishReason != $none) #finishReason: finishReason,
    }),
  );
  @override
  ChatCompletionChoice $make(CopyWithData data) => ChatCompletionChoice(
    index: data.get(#index, or: $value.index),
    message: data.get(#message, or: $value.message),
    delta: data.get(#delta, or: $value.delta),
    logprobs: data.get(#logprobs, or: $value.logprobs),
    finishReason: data.get(#finishReason, or: $value.finishReason),
  );

  @override
  ChatCompletionChoiceCopyWith<$R2, ChatCompletionChoice, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChatCompletionChoiceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PromptUsageDetailsMapper extends ClassMapperBase<PromptUsageDetails> {
  PromptUsageDetailsMapper._();

  static PromptUsageDetailsMapper? _instance;
  static PromptUsageDetailsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PromptUsageDetailsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PromptUsageDetails';

  static int _$cachedTokens(PromptUsageDetails v) => v.cachedTokens;
  static const Field<PromptUsageDetails, int> _f$cachedTokens = Field(
    'cachedTokens',
    _$cachedTokens,
    key: r'cached_tokens',
    opt: true,
    def: 0,
  );
  static int _$audioTokens(PromptUsageDetails v) => v.audioTokens;
  static const Field<PromptUsageDetails, int> _f$audioTokens = Field(
    'audioTokens',
    _$audioTokens,
    key: r'audio_tokens',
    opt: true,
    def: 0,
  );

  @override
  final MappableFields<PromptUsageDetails> fields = const {
    #cachedTokens: _f$cachedTokens,
    #audioTokens: _f$audioTokens,
  };

  static PromptUsageDetails _instantiate(DecodingData data) {
    return PromptUsageDetails(
      cachedTokens: data.dec(_f$cachedTokens),
      audioTokens: data.dec(_f$audioTokens),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PromptUsageDetails fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PromptUsageDetails>(map);
  }

  static PromptUsageDetails fromJson(String json) {
    return ensureInitialized().decodeJson<PromptUsageDetails>(json);
  }
}

mixin PromptUsageDetailsMappable {
  String toJson() {
    return PromptUsageDetailsMapper.ensureInitialized()
        .encodeJson<PromptUsageDetails>(this as PromptUsageDetails);
  }

  Map<String, dynamic> toMap() {
    return PromptUsageDetailsMapper.ensureInitialized()
        .encodeMap<PromptUsageDetails>(this as PromptUsageDetails);
  }

  PromptUsageDetailsCopyWith<
    PromptUsageDetails,
    PromptUsageDetails,
    PromptUsageDetails
  >
  get copyWith =>
      _PromptUsageDetailsCopyWithImpl<PromptUsageDetails, PromptUsageDetails>(
        this as PromptUsageDetails,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PromptUsageDetailsMapper.ensureInitialized().stringifyValue(
      this as PromptUsageDetails,
    );
  }

  @override
  bool operator ==(Object other) {
    return PromptUsageDetailsMapper.ensureInitialized().equalsValue(
      this as PromptUsageDetails,
      other,
    );
  }

  @override
  int get hashCode {
    return PromptUsageDetailsMapper.ensureInitialized().hashValue(
      this as PromptUsageDetails,
    );
  }
}

extension PromptUsageDetailsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PromptUsageDetails, $Out> {
  PromptUsageDetailsCopyWith<$R, PromptUsageDetails, $Out>
  get $asPromptUsageDetails => $base.as(
    (v, t, t2) => _PromptUsageDetailsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PromptUsageDetailsCopyWith<
  $R,
  $In extends PromptUsageDetails,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? cachedTokens, int? audioTokens});
  PromptUsageDetailsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PromptUsageDetailsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PromptUsageDetails, $Out>
    implements PromptUsageDetailsCopyWith<$R, PromptUsageDetails, $Out> {
  _PromptUsageDetailsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PromptUsageDetails> $mapper =
      PromptUsageDetailsMapper.ensureInitialized();
  @override
  $R call({int? cachedTokens, int? audioTokens}) => $apply(
    FieldCopyWithData({
      if (cachedTokens != null) #cachedTokens: cachedTokens,
      if (audioTokens != null) #audioTokens: audioTokens,
    }),
  );
  @override
  PromptUsageDetails $make(CopyWithData data) => PromptUsageDetails(
    cachedTokens: data.get(#cachedTokens, or: $value.cachedTokens),
    audioTokens: data.get(#audioTokens, or: $value.audioTokens),
  );

  @override
  PromptUsageDetailsCopyWith<$R2, PromptUsageDetails, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PromptUsageDetailsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CompletionUsageDetailsMapper
    extends ClassMapperBase<CompletionUsageDetails> {
  CompletionUsageDetailsMapper._();

  static CompletionUsageDetailsMapper? _instance;
  static CompletionUsageDetailsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompletionUsageDetailsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CompletionUsageDetails';

  static int _$audioTokens(CompletionUsageDetails v) => v.audioTokens;
  static const Field<CompletionUsageDetails, int> _f$audioTokens = Field(
    'audioTokens',
    _$audioTokens,
    key: r'audio_tokens',
    opt: true,
    def: 0,
  );
  static int _$reasoningTokens(CompletionUsageDetails v) => v.reasoningTokens;
  static const Field<CompletionUsageDetails, int> _f$reasoningTokens = Field(
    'reasoningTokens',
    _$reasoningTokens,
    key: r'reasoning_tokens',
    opt: true,
    def: 0,
  );
  static int _$acceptedPredictionTokens(CompletionUsageDetails v) =>
      v.acceptedPredictionTokens;
  static const Field<CompletionUsageDetails, int> _f$acceptedPredictionTokens =
      Field(
        'acceptedPredictionTokens',
        _$acceptedPredictionTokens,
        key: r'accepted_prediction_tokens',
        opt: true,
        def: 0,
      );
  static int _$rejectedPredictionTokens(CompletionUsageDetails v) =>
      v.rejectedPredictionTokens;
  static const Field<CompletionUsageDetails, int> _f$rejectedPredictionTokens =
      Field(
        'rejectedPredictionTokens',
        _$rejectedPredictionTokens,
        key: r'rejected_prediction_tokens',
        opt: true,
        def: 0,
      );

  @override
  final MappableFields<CompletionUsageDetails> fields = const {
    #audioTokens: _f$audioTokens,
    #reasoningTokens: _f$reasoningTokens,
    #acceptedPredictionTokens: _f$acceptedPredictionTokens,
    #rejectedPredictionTokens: _f$rejectedPredictionTokens,
  };

  static CompletionUsageDetails _instantiate(DecodingData data) {
    return CompletionUsageDetails(
      audioTokens: data.dec(_f$audioTokens),
      reasoningTokens: data.dec(_f$reasoningTokens),
      acceptedPredictionTokens: data.dec(_f$acceptedPredictionTokens),
      rejectedPredictionTokens: data.dec(_f$rejectedPredictionTokens),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CompletionUsageDetails fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CompletionUsageDetails>(map);
  }

  static CompletionUsageDetails fromJson(String json) {
    return ensureInitialized().decodeJson<CompletionUsageDetails>(json);
  }
}

mixin CompletionUsageDetailsMappable {
  String toJson() {
    return CompletionUsageDetailsMapper.ensureInitialized()
        .encodeJson<CompletionUsageDetails>(this as CompletionUsageDetails);
  }

  Map<String, dynamic> toMap() {
    return CompletionUsageDetailsMapper.ensureInitialized()
        .encodeMap<CompletionUsageDetails>(this as CompletionUsageDetails);
  }

  CompletionUsageDetailsCopyWith<
    CompletionUsageDetails,
    CompletionUsageDetails,
    CompletionUsageDetails
  >
  get copyWith =>
      _CompletionUsageDetailsCopyWithImpl<
        CompletionUsageDetails,
        CompletionUsageDetails
      >(this as CompletionUsageDetails, $identity, $identity);
  @override
  String toString() {
    return CompletionUsageDetailsMapper.ensureInitialized().stringifyValue(
      this as CompletionUsageDetails,
    );
  }

  @override
  bool operator ==(Object other) {
    return CompletionUsageDetailsMapper.ensureInitialized().equalsValue(
      this as CompletionUsageDetails,
      other,
    );
  }

  @override
  int get hashCode {
    return CompletionUsageDetailsMapper.ensureInitialized().hashValue(
      this as CompletionUsageDetails,
    );
  }
}

extension CompletionUsageDetailsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CompletionUsageDetails, $Out> {
  CompletionUsageDetailsCopyWith<$R, CompletionUsageDetails, $Out>
  get $asCompletionUsageDetails => $base.as(
    (v, t, t2) => _CompletionUsageDetailsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CompletionUsageDetailsCopyWith<
  $R,
  $In extends CompletionUsageDetails,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? audioTokens,
    int? reasoningTokens,
    int? acceptedPredictionTokens,
    int? rejectedPredictionTokens,
  });
  CompletionUsageDetailsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CompletionUsageDetailsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CompletionUsageDetails, $Out>
    implements
        CompletionUsageDetailsCopyWith<$R, CompletionUsageDetails, $Out> {
  _CompletionUsageDetailsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CompletionUsageDetails> $mapper =
      CompletionUsageDetailsMapper.ensureInitialized();
  @override
  $R call({
    int? audioTokens,
    int? reasoningTokens,
    int? acceptedPredictionTokens,
    int? rejectedPredictionTokens,
  }) => $apply(
    FieldCopyWithData({
      if (audioTokens != null) #audioTokens: audioTokens,
      if (reasoningTokens != null) #reasoningTokens: reasoningTokens,
      if (acceptedPredictionTokens != null)
        #acceptedPredictionTokens: acceptedPredictionTokens,
      if (rejectedPredictionTokens != null)
        #rejectedPredictionTokens: rejectedPredictionTokens,
    }),
  );
  @override
  CompletionUsageDetails $make(CopyWithData data) => CompletionUsageDetails(
    audioTokens: data.get(#audioTokens, or: $value.audioTokens),
    reasoningTokens: data.get(#reasoningTokens, or: $value.reasoningTokens),
    acceptedPredictionTokens: data.get(
      #acceptedPredictionTokens,
      or: $value.acceptedPredictionTokens,
    ),
    rejectedPredictionTokens: data.get(
      #rejectedPredictionTokens,
      or: $value.rejectedPredictionTokens,
    ),
  );

  @override
  CompletionUsageDetailsCopyWith<$R2, CompletionUsageDetails, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CompletionUsageDetailsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolUsageDetailsMapper extends ClassMapperBase<ToolUsageDetails> {
  ToolUsageDetailsMapper._();

  static ToolUsageDetailsMapper? _instance;
  static ToolUsageDetailsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolUsageDetailsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ToolUsageDetails';

  static int? _$webSearchCalls(ToolUsageDetails v) => v.webSearchCalls;
  static const Field<ToolUsageDetails, int> _f$webSearchCalls = Field(
    'webSearchCalls',
    _$webSearchCalls,
    key: r'web_search_calls',
    opt: true,
    def: 0,
  );
  static int? _$codeInterpreterCalls(ToolUsageDetails v) =>
      v.codeInterpreterCalls;
  static const Field<ToolUsageDetails, int> _f$codeInterpreterCalls = Field(
    'codeInterpreterCalls',
    _$codeInterpreterCalls,
    key: r'code_interpreter_calls',
    opt: true,
    def: 0,
  );

  @override
  final MappableFields<ToolUsageDetails> fields = const {
    #webSearchCalls: _f$webSearchCalls,
    #codeInterpreterCalls: _f$codeInterpreterCalls,
  };

  static ToolUsageDetails _instantiate(DecodingData data) {
    return ToolUsageDetails(
      webSearchCalls: data.dec(_f$webSearchCalls),
      codeInterpreterCalls: data.dec(_f$codeInterpreterCalls),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ToolUsageDetails fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToolUsageDetails>(map);
  }

  static ToolUsageDetails fromJson(String json) {
    return ensureInitialized().decodeJson<ToolUsageDetails>(json);
  }
}

mixin ToolUsageDetailsMappable {
  String toJson() {
    return ToolUsageDetailsMapper.ensureInitialized()
        .encodeJson<ToolUsageDetails>(this as ToolUsageDetails);
  }

  Map<String, dynamic> toMap() {
    return ToolUsageDetailsMapper.ensureInitialized()
        .encodeMap<ToolUsageDetails>(this as ToolUsageDetails);
  }

  ToolUsageDetailsCopyWith<ToolUsageDetails, ToolUsageDetails, ToolUsageDetails>
  get copyWith =>
      _ToolUsageDetailsCopyWithImpl<ToolUsageDetails, ToolUsageDetails>(
        this as ToolUsageDetails,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ToolUsageDetailsMapper.ensureInitialized().stringifyValue(
      this as ToolUsageDetails,
    );
  }

  @override
  bool operator ==(Object other) {
    return ToolUsageDetailsMapper.ensureInitialized().equalsValue(
      this as ToolUsageDetails,
      other,
    );
  }

  @override
  int get hashCode {
    return ToolUsageDetailsMapper.ensureInitialized().hashValue(
      this as ToolUsageDetails,
    );
  }
}

extension ToolUsageDetailsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ToolUsageDetails, $Out> {
  ToolUsageDetailsCopyWith<$R, ToolUsageDetails, $Out>
  get $asToolUsageDetails =>
      $base.as((v, t, t2) => _ToolUsageDetailsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToolUsageDetailsCopyWith<$R, $In extends ToolUsageDetails, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? webSearchCalls, int? codeInterpreterCalls});
  ToolUsageDetailsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ToolUsageDetailsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToolUsageDetails, $Out>
    implements ToolUsageDetailsCopyWith<$R, ToolUsageDetails, $Out> {
  _ToolUsageDetailsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToolUsageDetails> $mapper =
      ToolUsageDetailsMapper.ensureInitialized();
  @override
  $R call({
    Object? webSearchCalls = $none,
    Object? codeInterpreterCalls = $none,
  }) => $apply(
    FieldCopyWithData({
      if (webSearchCalls != $none) #webSearchCalls: webSearchCalls,
      if (codeInterpreterCalls != $none)
        #codeInterpreterCalls: codeInterpreterCalls,
    }),
  );
  @override
  ToolUsageDetails $make(CopyWithData data) => ToolUsageDetails(
    webSearchCalls: data.get(#webSearchCalls, or: $value.webSearchCalls),
    codeInterpreterCalls: data.get(
      #codeInterpreterCalls,
      or: $value.codeInterpreterCalls,
    ),
  );

  @override
  ToolUsageDetailsCopyWith<$R2, ToolUsageDetails, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ToolUsageDetailsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FunctionParametersMapper extends ClassMapperBase<FunctionParameters> {
  FunctionParametersMapper._();

  static FunctionParametersMapper? _instance;
  static FunctionParametersMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FunctionParametersMapper._());
      FunctionParameterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FunctionParameters';

  static String _$type(FunctionParameters v) => v.type;
  static const Field<FunctionParameters, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: 'object',
  );
  static Map<String, FunctionParameter> _$properties(FunctionParameters v) =>
      v.properties;
  static const Field<FunctionParameters, Map<String, FunctionParameter>>
  _f$properties = Field('properties', _$properties, opt: true, def: const {});
  static List<String> _$required(FunctionParameters v) => v.required;
  static const Field<FunctionParameters, List<String>> _f$required = Field(
    'required',
    _$required,
    opt: true,
    def: const [],
  );
  static bool _$additionalProperties(FunctionParameters v) =>
      v.additionalProperties;
  static const Field<FunctionParameters, bool> _f$additionalProperties = Field(
    'additionalProperties',
    _$additionalProperties,
    key: r'additional_properties',
    opt: true,
    def: false,
  );

  @override
  final MappableFields<FunctionParameters> fields = const {
    #type: _f$type,
    #properties: _f$properties,
    #required: _f$required,
    #additionalProperties: _f$additionalProperties,
  };

  static FunctionParameters _instantiate(DecodingData data) {
    return FunctionParameters(
      type: data.dec(_f$type),
      properties: data.dec(_f$properties),
      required: data.dec(_f$required),
      additionalProperties: data.dec(_f$additionalProperties),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FunctionParameters fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FunctionParameters>(map);
  }

  static FunctionParameters fromJson(String json) {
    return ensureInitialized().decodeJson<FunctionParameters>(json);
  }
}

mixin FunctionParametersMappable {
  String toJson() {
    return FunctionParametersMapper.ensureInitialized()
        .encodeJson<FunctionParameters>(this as FunctionParameters);
  }

  Map<String, dynamic> toMap() {
    return FunctionParametersMapper.ensureInitialized()
        .encodeMap<FunctionParameters>(this as FunctionParameters);
  }

  FunctionParametersCopyWith<
    FunctionParameters,
    FunctionParameters,
    FunctionParameters
  >
  get copyWith =>
      _FunctionParametersCopyWithImpl<FunctionParameters, FunctionParameters>(
        this as FunctionParameters,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FunctionParametersMapper.ensureInitialized().stringifyValue(
      this as FunctionParameters,
    );
  }

  @override
  bool operator ==(Object other) {
    return FunctionParametersMapper.ensureInitialized().equalsValue(
      this as FunctionParameters,
      other,
    );
  }

  @override
  int get hashCode {
    return FunctionParametersMapper.ensureInitialized().hashValue(
      this as FunctionParameters,
    );
  }
}

extension FunctionParametersValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FunctionParameters, $Out> {
  FunctionParametersCopyWith<$R, FunctionParameters, $Out>
  get $asFunctionParameters => $base.as(
    (v, t, t2) => _FunctionParametersCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FunctionParametersCopyWith<
  $R,
  $In extends FunctionParameters,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
    $R,
    String,
    FunctionParameter,
    FunctionParameterCopyWith<$R, FunctionParameter, FunctionParameter>
  >
  get properties;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get required;
  $R call({
    String? type,
    Map<String, FunctionParameter>? properties,
    List<String>? required,
    bool? additionalProperties,
  });
  FunctionParametersCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FunctionParametersCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FunctionParameters, $Out>
    implements FunctionParametersCopyWith<$R, FunctionParameters, $Out> {
  _FunctionParametersCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FunctionParameters> $mapper =
      FunctionParametersMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    String,
    FunctionParameter,
    FunctionParameterCopyWith<$R, FunctionParameter, FunctionParameter>
  >
  get properties => MapCopyWith(
    $value.properties,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(properties: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get required =>
      ListCopyWith(
        $value.required,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(required: v),
      );
  @override
  $R call({
    String? type,
    Map<String, FunctionParameter>? properties,
    List<String>? required,
    bool? additionalProperties,
  }) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (properties != null) #properties: properties,
      if (required != null) #required: required,
      if (additionalProperties != null)
        #additionalProperties: additionalProperties,
    }),
  );
  @override
  FunctionParameters $make(CopyWithData data) => FunctionParameters(
    type: data.get(#type, or: $value.type),
    properties: data.get(#properties, or: $value.properties),
    required: data.get(#required, or: $value.required),
    additionalProperties: data.get(
      #additionalProperties,
      or: $value.additionalProperties,
    ),
  );

  @override
  FunctionParametersCopyWith<$R2, FunctionParameters, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FunctionParametersCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FunctionParameterMapper extends ClassMapperBase<FunctionParameter> {
  FunctionParameterMapper._();

  static FunctionParameterMapper? _instance;
  static FunctionParameterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FunctionParameterMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FunctionParameter';

  static String _$type(FunctionParameter v) => v.type;
  static const Field<FunctionParameter, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: '',
  );
  static String _$description(FunctionParameter v) => v.description;
  static const Field<FunctionParameter, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
    def: '',
  );
  static List<String> _$enumValues(FunctionParameter v) => v.enumValues;
  static const Field<FunctionParameter, List<String>> _f$enumValues = Field(
    'enumValues',
    _$enumValues,
    key: r'enum_values',
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<FunctionParameter> fields = const {
    #type: _f$type,
    #description: _f$description,
    #enumValues: _f$enumValues,
  };

  static FunctionParameter _instantiate(DecodingData data) {
    return FunctionParameter(
      type: data.dec(_f$type),
      description: data.dec(_f$description),
      enumValues: data.dec(_f$enumValues),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FunctionParameter fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FunctionParameter>(map);
  }

  static FunctionParameter fromJson(String json) {
    return ensureInitialized().decodeJson<FunctionParameter>(json);
  }
}

mixin FunctionParameterMappable {
  String toJson() {
    return FunctionParameterMapper.ensureInitialized()
        .encodeJson<FunctionParameter>(this as FunctionParameter);
  }

  Map<String, dynamic> toMap() {
    return FunctionParameterMapper.ensureInitialized()
        .encodeMap<FunctionParameter>(this as FunctionParameter);
  }

  FunctionParameterCopyWith<
    FunctionParameter,
    FunctionParameter,
    FunctionParameter
  >
  get copyWith =>
      _FunctionParameterCopyWithImpl<FunctionParameter, FunctionParameter>(
        this as FunctionParameter,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FunctionParameterMapper.ensureInitialized().stringifyValue(
      this as FunctionParameter,
    );
  }

  @override
  bool operator ==(Object other) {
    return FunctionParameterMapper.ensureInitialized().equalsValue(
      this as FunctionParameter,
      other,
    );
  }

  @override
  int get hashCode {
    return FunctionParameterMapper.ensureInitialized().hashValue(
      this as FunctionParameter,
    );
  }
}

extension FunctionParameterValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FunctionParameter, $Out> {
  FunctionParameterCopyWith<$R, FunctionParameter, $Out>
  get $asFunctionParameter => $base.as(
    (v, t, t2) => _FunctionParameterCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FunctionParameterCopyWith<
  $R,
  $In extends FunctionParameter,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get enumValues;
  $R call({String? type, String? description, List<String>? enumValues});
  FunctionParameterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FunctionParameterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FunctionParameter, $Out>
    implements FunctionParameterCopyWith<$R, FunctionParameter, $Out> {
  _FunctionParameterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FunctionParameter> $mapper =
      FunctionParameterMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get enumValues =>
      ListCopyWith(
        $value.enumValues,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(enumValues: v),
      );
  @override
  $R call({String? type, String? description, List<String>? enumValues}) =>
      $apply(
        FieldCopyWithData({
          if (type != null) #type: type,
          if (description != null) #description: description,
          if (enumValues != null) #enumValues: enumValues,
        }),
      );
  @override
  FunctionParameter $make(CopyWithData data) => FunctionParameter(
    type: data.get(#type, or: $value.type),
    description: data.get(#description, or: $value.description),
    enumValues: data.get(#enumValues, or: $value.enumValues),
  );

  @override
  FunctionParameterCopyWith<$R2, FunctionParameter, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FunctionParameterCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolFunctionMapper extends ClassMapperBase<ToolFunction> {
  ToolFunctionMapper._();

  static ToolFunctionMapper? _instance;
  static ToolFunctionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolFunctionMapper._());
      FunctionParametersMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ToolFunction';

  static String _$name(ToolFunction v) => v.name;
  static const Field<ToolFunction, String> _f$name = Field('name', _$name);
  static String? _$description(ToolFunction v) => v.description;
  static const Field<ToolFunction, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );
  static FunctionParameters? _$parameters(ToolFunction v) => v.parameters;
  static const Field<ToolFunction, FunctionParameters> _f$parameters = Field(
    'parameters',
    _$parameters,
    opt: true,
  );
  static bool _$strict(ToolFunction v) => v.strict;
  static const Field<ToolFunction, bool> _f$strict = Field(
    'strict',
    _$strict,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<ToolFunction> fields = const {
    #name: _f$name,
    #description: _f$description,
    #parameters: _f$parameters,
    #strict: _f$strict,
  };

  static ToolFunction _instantiate(DecodingData data) {
    return ToolFunction(
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      parameters: data.dec(_f$parameters),
      strict: data.dec(_f$strict),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ToolFunction fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToolFunction>(map);
  }

  static ToolFunction fromJson(String json) {
    return ensureInitialized().decodeJson<ToolFunction>(json);
  }
}

mixin ToolFunctionMappable {
  String toJson() {
    return ToolFunctionMapper.ensureInitialized().encodeJson<ToolFunction>(
      this as ToolFunction,
    );
  }

  Map<String, dynamic> toMap() {
    return ToolFunctionMapper.ensureInitialized().encodeMap<ToolFunction>(
      this as ToolFunction,
    );
  }

  ToolFunctionCopyWith<ToolFunction, ToolFunction, ToolFunction> get copyWith =>
      _ToolFunctionCopyWithImpl<ToolFunction, ToolFunction>(
        this as ToolFunction,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ToolFunctionMapper.ensureInitialized().stringifyValue(
      this as ToolFunction,
    );
  }

  @override
  bool operator ==(Object other) {
    return ToolFunctionMapper.ensureInitialized().equalsValue(
      this as ToolFunction,
      other,
    );
  }

  @override
  int get hashCode {
    return ToolFunctionMapper.ensureInitialized().hashValue(
      this as ToolFunction,
    );
  }
}

extension ToolFunctionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ToolFunction, $Out> {
  ToolFunctionCopyWith<$R, ToolFunction, $Out> get $asToolFunction =>
      $base.as((v, t, t2) => _ToolFunctionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToolFunctionCopyWith<$R, $In extends ToolFunction, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  FunctionParametersCopyWith<$R, FunctionParameters, FunctionParameters>?
  get parameters;
  $R call({
    String? name,
    String? description,
    FunctionParameters? parameters,
    bool? strict,
  });
  ToolFunctionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ToolFunctionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToolFunction, $Out>
    implements ToolFunctionCopyWith<$R, ToolFunction, $Out> {
  _ToolFunctionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToolFunction> $mapper =
      ToolFunctionMapper.ensureInitialized();
  @override
  FunctionParametersCopyWith<$R, FunctionParameters, FunctionParameters>?
  get parameters =>
      $value.parameters?.copyWith.$chain((v) => call(parameters: v));
  @override
  $R call({
    String? name,
    Object? description = $none,
    Object? parameters = $none,
    bool? strict,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (parameters != $none) #parameters: parameters,
      if (strict != null) #strict: strict,
    }),
  );
  @override
  ToolFunction $make(CopyWithData data) => ToolFunction(
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    parameters: data.get(#parameters, or: $value.parameters),
    strict: data.get(#strict, or: $value.strict),
  );

  @override
  ToolFunctionCopyWith<$R2, ToolFunction, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ToolFunctionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolMapper extends ClassMapperBase<Tool> {
  ToolMapper._();

  static ToolMapper? _instance;
  static ToolMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolMapper._());
      FunctionToolMapper.ensureInitialized();
      WebSearchToolMapper.ensureInitialized();
      CodeInterperterToolMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Tool';

  @override
  final MappableFields<Tool> fields = const {};

  static Tool _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'Tool',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Tool fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Tool>(map);
  }

  static Tool fromJson(String json) {
    return ensureInitialized().decodeJson<Tool>(json);
  }
}

mixin ToolMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ToolCopyWith<Tool, Tool, Tool> get copyWith;
}

abstract class ToolCopyWith<$R, $In extends Tool, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ToolCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class FunctionToolMapper extends SubClassMapperBase<FunctionTool> {
  FunctionToolMapper._();

  static FunctionToolMapper? _instance;
  static FunctionToolMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FunctionToolMapper._());
      ToolMapper.ensureInitialized().addSubMapper(_instance!);
      ToolTypeMapper.ensureInitialized();
      ToolFunctionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FunctionTool';

  static ToolType _$type(FunctionTool v) => v.type;
  static const Field<FunctionTool, ToolType> _f$type = Field('type', _$type);
  static ToolFunction _$function(FunctionTool v) => v.function;
  static const Field<FunctionTool, ToolFunction> _f$function = Field(
    'function',
    _$function,
  );

  @override
  final MappableFields<FunctionTool> fields = const {
    #type: _f$type,
    #function: _f$function,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'function';
  @override
  late final ClassMapperBase superMapper = ToolMapper.ensureInitialized();

  static FunctionTool _instantiate(DecodingData data) {
    return FunctionTool(data.dec(_f$type), data.dec(_f$function));
  }

  @override
  final Function instantiate = _instantiate;

  static FunctionTool fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FunctionTool>(map);
  }

  static FunctionTool fromJson(String json) {
    return ensureInitialized().decodeJson<FunctionTool>(json);
  }
}

mixin FunctionToolMappable {
  String toJson() {
    return FunctionToolMapper.ensureInitialized().encodeJson<FunctionTool>(
      this as FunctionTool,
    );
  }

  Map<String, dynamic> toMap() {
    return FunctionToolMapper.ensureInitialized().encodeMap<FunctionTool>(
      this as FunctionTool,
    );
  }

  FunctionToolCopyWith<FunctionTool, FunctionTool, FunctionTool> get copyWith =>
      _FunctionToolCopyWithImpl<FunctionTool, FunctionTool>(
        this as FunctionTool,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FunctionToolMapper.ensureInitialized().stringifyValue(
      this as FunctionTool,
    );
  }

  @override
  bool operator ==(Object other) {
    return FunctionToolMapper.ensureInitialized().equalsValue(
      this as FunctionTool,
      other,
    );
  }

  @override
  int get hashCode {
    return FunctionToolMapper.ensureInitialized().hashValue(
      this as FunctionTool,
    );
  }
}

extension FunctionToolValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FunctionTool, $Out> {
  FunctionToolCopyWith<$R, FunctionTool, $Out> get $asFunctionTool =>
      $base.as((v, t, t2) => _FunctionToolCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FunctionToolCopyWith<$R, $In extends FunctionTool, $Out>
    implements ToolCopyWith<$R, $In, $Out> {
  ToolFunctionCopyWith<$R, ToolFunction, ToolFunction> get function;
  @override
  $R call({ToolType? type, ToolFunction? function});
  FunctionToolCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FunctionToolCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FunctionTool, $Out>
    implements FunctionToolCopyWith<$R, FunctionTool, $Out> {
  _FunctionToolCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FunctionTool> $mapper =
      FunctionToolMapper.ensureInitialized();
  @override
  ToolFunctionCopyWith<$R, ToolFunction, ToolFunction> get function =>
      $value.function.copyWith.$chain((v) => call(function: v));
  @override
  $R call({ToolType? type, ToolFunction? function}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (function != null) #function: function,
    }),
  );
  @override
  FunctionTool $make(CopyWithData data) => FunctionTool(
    data.get(#type, or: $value.type),
    data.get(#function, or: $value.function),
  );

  @override
  FunctionToolCopyWith<$R2, FunctionTool, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FunctionToolCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class WebSearchToolMapper extends SubClassMapperBase<WebSearchTool> {
  WebSearchToolMapper._();

  static WebSearchToolMapper? _instance;
  static WebSearchToolMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WebSearchToolMapper._());
      ToolMapper.ensureInitialized().addSubMapper(_instance!);
      ToolTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WebSearchTool';

  static ToolType _$type(WebSearchTool v) => v.type;
  static const Field<WebSearchTool, ToolType> _f$type = Field('type', _$type);

  @override
  final MappableFields<WebSearchTool> fields = const {#type: _f$type};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'web_search';
  @override
  late final ClassMapperBase superMapper = ToolMapper.ensureInitialized();

  static WebSearchTool _instantiate(DecodingData data) {
    return WebSearchTool(data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static WebSearchTool fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WebSearchTool>(map);
  }

  static WebSearchTool fromJson(String json) {
    return ensureInitialized().decodeJson<WebSearchTool>(json);
  }
}

mixin WebSearchToolMappable {
  String toJson() {
    return WebSearchToolMapper.ensureInitialized().encodeJson<WebSearchTool>(
      this as WebSearchTool,
    );
  }

  Map<String, dynamic> toMap() {
    return WebSearchToolMapper.ensureInitialized().encodeMap<WebSearchTool>(
      this as WebSearchTool,
    );
  }

  WebSearchToolCopyWith<WebSearchTool, WebSearchTool, WebSearchTool>
  get copyWith => _WebSearchToolCopyWithImpl<WebSearchTool, WebSearchTool>(
    this as WebSearchTool,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return WebSearchToolMapper.ensureInitialized().stringifyValue(
      this as WebSearchTool,
    );
  }

  @override
  bool operator ==(Object other) {
    return WebSearchToolMapper.ensureInitialized().equalsValue(
      this as WebSearchTool,
      other,
    );
  }

  @override
  int get hashCode {
    return WebSearchToolMapper.ensureInitialized().hashValue(
      this as WebSearchTool,
    );
  }
}

extension WebSearchToolValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WebSearchTool, $Out> {
  WebSearchToolCopyWith<$R, WebSearchTool, $Out> get $asWebSearchTool =>
      $base.as((v, t, t2) => _WebSearchToolCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WebSearchToolCopyWith<$R, $In extends WebSearchTool, $Out>
    implements ToolCopyWith<$R, $In, $Out> {
  @override
  $R call({ToolType? type});
  WebSearchToolCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WebSearchToolCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WebSearchTool, $Out>
    implements WebSearchToolCopyWith<$R, WebSearchTool, $Out> {
  _WebSearchToolCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WebSearchTool> $mapper =
      WebSearchToolMapper.ensureInitialized();
  @override
  $R call({ToolType? type}) =>
      $apply(FieldCopyWithData({if (type != null) #type: type}));
  @override
  WebSearchTool $make(CopyWithData data) =>
      WebSearchTool(data.get(#type, or: $value.type));

  @override
  WebSearchToolCopyWith<$R2, WebSearchTool, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WebSearchToolCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CodeInterperterToolMapper
    extends SubClassMapperBase<CodeInterperterTool> {
  CodeInterperterToolMapper._();

  static CodeInterperterToolMapper? _instance;
  static CodeInterperterToolMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CodeInterperterToolMapper._());
      ToolMapper.ensureInitialized().addSubMapper(_instance!);
      ToolTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CodeInterperterTool';

  static ToolType _$type(CodeInterperterTool v) => v.type;
  static const Field<CodeInterperterTool, ToolType> _f$type = Field(
    'type',
    _$type,
  );
  static Map<String, String>? _$container(CodeInterperterTool v) => v.container;
  static const Field<CodeInterperterTool, Map<String, String>> _f$container =
      Field('container', _$container);

  @override
  final MappableFields<CodeInterperterTool> fields = const {
    #type: _f$type,
    #container: _f$container,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'code_interperter';
  @override
  late final ClassMapperBase superMapper = ToolMapper.ensureInitialized();

  static CodeInterperterTool _instantiate(DecodingData data) {
    return CodeInterperterTool(data.dec(_f$type), data.dec(_f$container));
  }

  @override
  final Function instantiate = _instantiate;

  static CodeInterperterTool fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CodeInterperterTool>(map);
  }

  static CodeInterperterTool fromJson(String json) {
    return ensureInitialized().decodeJson<CodeInterperterTool>(json);
  }
}

mixin CodeInterperterToolMappable {
  String toJson() {
    return CodeInterperterToolMapper.ensureInitialized()
        .encodeJson<CodeInterperterTool>(this as CodeInterperterTool);
  }

  Map<String, dynamic> toMap() {
    return CodeInterperterToolMapper.ensureInitialized()
        .encodeMap<CodeInterperterTool>(this as CodeInterperterTool);
  }

  CodeInterperterToolCopyWith<
    CodeInterperterTool,
    CodeInterperterTool,
    CodeInterperterTool
  >
  get copyWith =>
      _CodeInterperterToolCopyWithImpl<
        CodeInterperterTool,
        CodeInterperterTool
      >(this as CodeInterperterTool, $identity, $identity);
  @override
  String toString() {
    return CodeInterperterToolMapper.ensureInitialized().stringifyValue(
      this as CodeInterperterTool,
    );
  }

  @override
  bool operator ==(Object other) {
    return CodeInterperterToolMapper.ensureInitialized().equalsValue(
      this as CodeInterperterTool,
      other,
    );
  }

  @override
  int get hashCode {
    return CodeInterperterToolMapper.ensureInitialized().hashValue(
      this as CodeInterperterTool,
    );
  }
}

extension CodeInterperterToolValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CodeInterperterTool, $Out> {
  CodeInterperterToolCopyWith<$R, CodeInterperterTool, $Out>
  get $asCodeInterperterTool => $base.as(
    (v, t, t2) => _CodeInterperterToolCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CodeInterperterToolCopyWith<
  $R,
  $In extends CodeInterperterTool,
  $Out
>
    implements ToolCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
  get container;
  @override
  $R call({ToolType? type, Map<String, String>? container});
  CodeInterperterToolCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CodeInterperterToolCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CodeInterperterTool, $Out>
    implements CodeInterperterToolCopyWith<$R, CodeInterperterTool, $Out> {
  _CodeInterperterToolCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CodeInterperterTool> $mapper =
      CodeInterperterToolMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
  get container => $value.container != null
      ? MapCopyWith(
          $value.container!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(container: v),
        )
      : null;
  @override
  $R call({ToolType? type, Object? container = $none}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (container != $none) #container: container,
    }),
  );
  @override
  CodeInterperterTool $make(CopyWithData data) => CodeInterperterTool(
    data.get(#type, or: $value.type),
    data.get(#container, or: $value.container),
  );

  @override
  CodeInterperterToolCopyWith<$R2, CodeInterperterTool, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CodeInterperterToolCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolChoiceFunctionMapper extends ClassMapperBase<ToolChoiceFunction> {
  ToolChoiceFunctionMapper._();

  static ToolChoiceFunctionMapper? _instance;
  static ToolChoiceFunctionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolChoiceFunctionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ToolChoiceFunction';

  static String _$name(ToolChoiceFunction v) => v.name;
  static const Field<ToolChoiceFunction, String> _f$name = Field(
    'name',
    _$name,
  );

  @override
  final MappableFields<ToolChoiceFunction> fields = const {#name: _f$name};

  static ToolChoiceFunction _instantiate(DecodingData data) {
    return ToolChoiceFunction(name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static ToolChoiceFunction fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToolChoiceFunction>(map);
  }

  static ToolChoiceFunction fromJson(String json) {
    return ensureInitialized().decodeJson<ToolChoiceFunction>(json);
  }
}

mixin ToolChoiceFunctionMappable {
  String toJson() {
    return ToolChoiceFunctionMapper.ensureInitialized()
        .encodeJson<ToolChoiceFunction>(this as ToolChoiceFunction);
  }

  Map<String, dynamic> toMap() {
    return ToolChoiceFunctionMapper.ensureInitialized()
        .encodeMap<ToolChoiceFunction>(this as ToolChoiceFunction);
  }

  ToolChoiceFunctionCopyWith<
    ToolChoiceFunction,
    ToolChoiceFunction,
    ToolChoiceFunction
  >
  get copyWith =>
      _ToolChoiceFunctionCopyWithImpl<ToolChoiceFunction, ToolChoiceFunction>(
        this as ToolChoiceFunction,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ToolChoiceFunctionMapper.ensureInitialized().stringifyValue(
      this as ToolChoiceFunction,
    );
  }

  @override
  bool operator ==(Object other) {
    return ToolChoiceFunctionMapper.ensureInitialized().equalsValue(
      this as ToolChoiceFunction,
      other,
    );
  }

  @override
  int get hashCode {
    return ToolChoiceFunctionMapper.ensureInitialized().hashValue(
      this as ToolChoiceFunction,
    );
  }
}

extension ToolChoiceFunctionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ToolChoiceFunction, $Out> {
  ToolChoiceFunctionCopyWith<$R, ToolChoiceFunction, $Out>
  get $asToolChoiceFunction => $base.as(
    (v, t, t2) => _ToolChoiceFunctionCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ToolChoiceFunctionCopyWith<
  $R,
  $In extends ToolChoiceFunction,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name});
  ToolChoiceFunctionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ToolChoiceFunctionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToolChoiceFunction, $Out>
    implements ToolChoiceFunctionCopyWith<$R, ToolChoiceFunction, $Out> {
  _ToolChoiceFunctionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToolChoiceFunction> $mapper =
      ToolChoiceFunctionMapper.ensureInitialized();
  @override
  $R call({String? name}) =>
      $apply(FieldCopyWithData({if (name != null) #name: name}));
  @override
  ToolChoiceFunction $make(CopyWithData data) =>
      ToolChoiceFunction(name: data.get(#name, or: $value.name));

  @override
  ToolChoiceFunctionCopyWith<$R2, ToolChoiceFunction, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ToolChoiceFunctionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolChoiceMapper extends ClassMapperBase<ToolChoice> {
  ToolChoiceMapper._();

  static ToolChoiceMapper? _instance;
  static ToolChoiceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolChoiceMapper._());
      ToolChoiceTypeMapper.ensureInitialized();
      ToolChoiceFunctionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ToolChoice';

  static ToolChoiceType _$type(ToolChoice v) => v.type;
  static const Field<ToolChoice, ToolChoiceType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: ToolChoiceType.function,
  );
  static ToolChoiceFunction _$function(ToolChoice v) => v.function;
  static const Field<ToolChoice, ToolChoiceFunction> _f$function = Field(
    'function',
    _$function,
  );

  @override
  final MappableFields<ToolChoice> fields = const {
    #type: _f$type,
    #function: _f$function,
  };

  static ToolChoice _instantiate(DecodingData data) {
    return ToolChoice(type: data.dec(_f$type), function: data.dec(_f$function));
  }

  @override
  final Function instantiate = _instantiate;

  static ToolChoice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToolChoice>(map);
  }

  static ToolChoice fromJson(String json) {
    return ensureInitialized().decodeJson<ToolChoice>(json);
  }
}

mixin ToolChoiceMappable {
  String toJson() {
    return ToolChoiceMapper.ensureInitialized().encodeJson<ToolChoice>(
      this as ToolChoice,
    );
  }

  Map<String, dynamic> toMap() {
    return ToolChoiceMapper.ensureInitialized().encodeMap<ToolChoice>(
      this as ToolChoice,
    );
  }

  ToolChoiceCopyWith<ToolChoice, ToolChoice, ToolChoice> get copyWith =>
      _ToolChoiceCopyWithImpl<ToolChoice, ToolChoice>(
        this as ToolChoice,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ToolChoiceMapper.ensureInitialized().stringifyValue(
      this as ToolChoice,
    );
  }

  @override
  bool operator ==(Object other) {
    return ToolChoiceMapper.ensureInitialized().equalsValue(
      this as ToolChoice,
      other,
    );
  }

  @override
  int get hashCode {
    return ToolChoiceMapper.ensureInitialized().hashValue(this as ToolChoice);
  }
}

extension ToolChoiceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ToolChoice, $Out> {
  ToolChoiceCopyWith<$R, ToolChoice, $Out> get $asToolChoice =>
      $base.as((v, t, t2) => _ToolChoiceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToolChoiceCopyWith<$R, $In extends ToolChoice, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ToolChoiceFunctionCopyWith<$R, ToolChoiceFunction, ToolChoiceFunction>
  get function;
  $R call({ToolChoiceType? type, ToolChoiceFunction? function});
  ToolChoiceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ToolChoiceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToolChoice, $Out>
    implements ToolChoiceCopyWith<$R, ToolChoice, $Out> {
  _ToolChoiceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToolChoice> $mapper =
      ToolChoiceMapper.ensureInitialized();
  @override
  ToolChoiceFunctionCopyWith<$R, ToolChoiceFunction, ToolChoiceFunction>
  get function => $value.function.copyWith.$chain((v) => call(function: v));
  @override
  $R call({ToolChoiceType? type, ToolChoiceFunction? function}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (function != null) #function: function,
    }),
  );
  @override
  ToolChoice $make(CopyWithData data) => ToolChoice(
    type: data.get(#type, or: $value.type),
    function: data.get(#function, or: $value.function),
  );

  @override
  ToolChoiceCopyWith<$R2, ToolChoice, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ToolChoiceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatRequestBaseMapper extends ClassMapperBase<ChatRequestBase> {
  ChatRequestBaseMapper._();

  static ChatRequestBaseMapper? _instance;
  static ChatRequestBaseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatRequestBaseMapper._());
      RAGParamsMapper.ensureInitialized();
      ToolMapper.ensureInitialized();
      ReasoningEffortMapper.ensureInitialized();
      ReasoningSummaryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatRequestBase';

  static String _$model(ChatRequestBase v) => v.model;
  static const Field<ChatRequestBase, String> _f$model = Field(
    'model',
    _$model,
    opt: true,
    def: '',
  );
  static RAGParams? _$ragParams(ChatRequestBase v) => v.ragParams;
  static const Field<ChatRequestBase, RAGParams> _f$ragParams = Field(
    'ragParams',
    _$ragParams,
    key: r'rag_params',
    opt: true,
  );
  static List<Tool>? _$tools(ChatRequestBase v) => v.tools;
  static const Field<ChatRequestBase, List<Tool>> _f$tools = Field(
    'tools',
    _$tools,
    opt: true,
  );
  static ToolChoiceOption? _$toolChoice(ChatRequestBase v) => v.toolChoice;
  static const Field<ChatRequestBase, ToolChoiceOption> _f$toolChoice = Field(
    'toolChoice',
    _$toolChoice,
    key: r'tool_choice',
    opt: true,
    hook: ToolChoiceHook(),
  );
  static double _$temperature(ChatRequestBase v) => v.temperature;
  static const Field<ChatRequestBase, double> _f$temperature = Field(
    'temperature',
    _$temperature,
    opt: true,
    def: 0.2,
  );
  static double _$topP(ChatRequestBase v) => v.topP;
  static const Field<ChatRequestBase, double> _f$topP = Field(
    'topP',
    _$topP,
    key: r'top_p',
    opt: true,
    def: 0.6,
  );
  static bool _$stream(ChatRequestBase v) => v.stream;
  static const Field<ChatRequestBase, bool> _f$stream = Field(
    'stream',
    _$stream,
    opt: true,
    def: true,
  );
  static int _$maxTokens(ChatRequestBase v) => v.maxTokens;
  static const Field<ChatRequestBase, int> _f$maxTokens = Field(
    'maxTokens',
    _$maxTokens,
    key: r'max_tokens',
    opt: true,
    def: 2048,
  );
  static List<String>? _$stop(ChatRequestBase v) => v.stop;
  static const Field<ChatRequestBase, List<String>> _f$stop = Field(
    'stop',
    _$stop,
    opt: true,
  );
  static double _$presencePenalty(ChatRequestBase v) => v.presencePenalty;
  static const Field<ChatRequestBase, double> _f$presencePenalty = Field(
    'presencePenalty',
    _$presencePenalty,
    key: r'presence_penalty',
    opt: true,
    def: 0.0,
  );
  static double _$frequencyPenalty(ChatRequestBase v) => v.frequencyPenalty;
  static const Field<ChatRequestBase, double> _f$frequencyPenalty = Field(
    'frequencyPenalty',
    _$frequencyPenalty,
    key: r'frequency_penalty',
    opt: true,
    def: 0.0,
  );
  static Map<String, dynamic> _$logitBias(ChatRequestBase v) => v.logitBias;
  static const Field<ChatRequestBase, Map<String, dynamic>> _f$logitBias =
      Field(
        'logitBias',
        _$logitBias,
        key: r'logit_bias',
        opt: true,
        def: const {},
      );
  static int _$thinkingBudget(ChatRequestBase v) => v.thinkingBudget;
  static const Field<ChatRequestBase, int> _f$thinkingBudget = Field(
    'thinkingBudget',
    _$thinkingBudget,
    key: r'thinking_budget',
    opt: true,
    def: 1,
  );
  static ReasoningEffort? _$reasoningEffort(ChatRequestBase v) =>
      v.reasoningEffort;
  static const Field<ChatRequestBase, ReasoningEffort> _f$reasoningEffort =
      Field(
        'reasoningEffort',
        _$reasoningEffort,
        key: r'reasoning_effort',
        opt: true,
      );
  static int? _$reasoningBudget(ChatRequestBase v) => v.reasoningBudget;
  static const Field<ChatRequestBase, int> _f$reasoningBudget = Field(
    'reasoningBudget',
    _$reasoningBudget,
    key: r'reasoning_budget',
    opt: true,
  );
  static ReasoningSummary _$reasoningSummary(ChatRequestBase v) =>
      v.reasoningSummary;
  static const Field<ChatRequestBase, ReasoningSummary> _f$reasoningSummary =
      Field(
        'reasoningSummary',
        _$reasoningSummary,
        key: r'reasoning_summary',
        opt: true,
        def: ReasoningSummary.auto,
      );
  static Map<String, dynamic> _$hyperparams(ChatRequestBase v) => v.hyperparams;
  static const Field<ChatRequestBase, Map<String, dynamic>> _f$hyperparams =
      Field('hyperparams', _$hyperparams, mode: FieldMode.member);

  @override
  final MappableFields<ChatRequestBase> fields = const {
    #model: _f$model,
    #ragParams: _f$ragParams,
    #tools: _f$tools,
    #toolChoice: _f$toolChoice,
    #temperature: _f$temperature,
    #topP: _f$topP,
    #stream: _f$stream,
    #maxTokens: _f$maxTokens,
    #stop: _f$stop,
    #presencePenalty: _f$presencePenalty,
    #frequencyPenalty: _f$frequencyPenalty,
    #logitBias: _f$logitBias,
    #thinkingBudget: _f$thinkingBudget,
    #reasoningEffort: _f$reasoningEffort,
    #reasoningBudget: _f$reasoningBudget,
    #reasoningSummary: _f$reasoningSummary,
    #hyperparams: _f$hyperparams,
  };

  static ChatRequestBase _instantiate(DecodingData data) {
    return ChatRequestBase(
      model: data.dec(_f$model),
      ragParams: data.dec(_f$ragParams),
      tools: data.dec(_f$tools),
      toolChoice: data.dec(_f$toolChoice),
      temperature: data.dec(_f$temperature),
      topP: data.dec(_f$topP),
      stream: data.dec(_f$stream),
      maxTokens: data.dec(_f$maxTokens),
      stop: data.dec(_f$stop),
      presencePenalty: data.dec(_f$presencePenalty),
      frequencyPenalty: data.dec(_f$frequencyPenalty),
      logitBias: data.dec(_f$logitBias),
      thinkingBudget: data.dec(_f$thinkingBudget),
      reasoningEffort: data.dec(_f$reasoningEffort),
      reasoningBudget: data.dec(_f$reasoningBudget),
      reasoningSummary: data.dec(_f$reasoningSummary),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatRequestBase fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatRequestBase>(map);
  }

  static ChatRequestBase fromJson(String json) {
    return ensureInitialized().decodeJson<ChatRequestBase>(json);
  }
}

mixin ChatRequestBaseMappable {
  String toJson() {
    return ChatRequestBaseMapper.ensureInitialized()
        .encodeJson<ChatRequestBase>(this as ChatRequestBase);
  }

  Map<String, dynamic> toMap() {
    return ChatRequestBaseMapper.ensureInitialized().encodeMap<ChatRequestBase>(
      this as ChatRequestBase,
    );
  }

  ChatRequestBaseCopyWith<ChatRequestBase, ChatRequestBase, ChatRequestBase>
  get copyWith =>
      _ChatRequestBaseCopyWithImpl<ChatRequestBase, ChatRequestBase>(
        this as ChatRequestBase,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChatRequestBaseMapper.ensureInitialized().stringifyValue(
      this as ChatRequestBase,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatRequestBaseMapper.ensureInitialized().equalsValue(
      this as ChatRequestBase,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatRequestBaseMapper.ensureInitialized().hashValue(
      this as ChatRequestBase,
    );
  }
}

extension ChatRequestBaseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatRequestBase, $Out> {
  ChatRequestBaseCopyWith<$R, ChatRequestBase, $Out> get $asChatRequestBase =>
      $base.as((v, t, t2) => _ChatRequestBaseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChatRequestBaseCopyWith<$R, $In extends ChatRequestBase, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RAGParamsCopyWith<$R, RAGParams, RAGParams>? get ragParams;
  ListCopyWith<$R, Tool, ToolCopyWith<$R, Tool, Tool>>? get tools;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get stop;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get logitBias;
  $R call({
    String? model,
    RAGParams? ragParams,
    List<Tool>? tools,
    ToolChoiceOption? toolChoice,
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
  });
  ChatRequestBaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatRequestBaseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatRequestBase, $Out>
    implements ChatRequestBaseCopyWith<$R, ChatRequestBase, $Out> {
  _ChatRequestBaseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatRequestBase> $mapper =
      ChatRequestBaseMapper.ensureInitialized();
  @override
  RAGParamsCopyWith<$R, RAGParams, RAGParams>? get ragParams =>
      $value.ragParams?.copyWith.$chain((v) => call(ragParams: v));
  @override
  ListCopyWith<$R, Tool, ToolCopyWith<$R, Tool, Tool>>? get tools =>
      $value.tools != null
      ? ListCopyWith(
          $value.tools!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(tools: v),
        )
      : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get stop =>
      $value.stop != null
      ? ListCopyWith(
          $value.stop!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(stop: v),
        )
      : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get logitBias => MapCopyWith(
    $value.logitBias,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(logitBias: v),
  );
  @override
  $R call({
    String? model,
    Object? ragParams = $none,
    Object? tools = $none,
    Object? toolChoice = $none,
    double? temperature,
    double? topP,
    bool? stream,
    int? maxTokens,
    Object? stop = $none,
    double? presencePenalty,
    double? frequencyPenalty,
    Map<String, dynamic>? logitBias,
    int? thinkingBudget,
    Object? reasoningEffort = $none,
    Object? reasoningBudget = $none,
    ReasoningSummary? reasoningSummary,
  }) => $apply(
    FieldCopyWithData({
      if (model != null) #model: model,
      if (ragParams != $none) #ragParams: ragParams,
      if (tools != $none) #tools: tools,
      if (toolChoice != $none) #toolChoice: toolChoice,
      if (temperature != null) #temperature: temperature,
      if (topP != null) #topP: topP,
      if (stream != null) #stream: stream,
      if (maxTokens != null) #maxTokens: maxTokens,
      if (stop != $none) #stop: stop,
      if (presencePenalty != null) #presencePenalty: presencePenalty,
      if (frequencyPenalty != null) #frequencyPenalty: frequencyPenalty,
      if (logitBias != null) #logitBias: logitBias,
      if (thinkingBudget != null) #thinkingBudget: thinkingBudget,
      if (reasoningEffort != $none) #reasoningEffort: reasoningEffort,
      if (reasoningBudget != $none) #reasoningBudget: reasoningBudget,
      if (reasoningSummary != null) #reasoningSummary: reasoningSummary,
    }),
  );
  @override
  ChatRequestBase $make(CopyWithData data) => ChatRequestBase(
    model: data.get(#model, or: $value.model),
    ragParams: data.get(#ragParams, or: $value.ragParams),
    tools: data.get(#tools, or: $value.tools),
    toolChoice: data.get(#toolChoice, or: $value.toolChoice),
    temperature: data.get(#temperature, or: $value.temperature),
    topP: data.get(#topP, or: $value.topP),
    stream: data.get(#stream, or: $value.stream),
    maxTokens: data.get(#maxTokens, or: $value.maxTokens),
    stop: data.get(#stop, or: $value.stop),
    presencePenalty: data.get(#presencePenalty, or: $value.presencePenalty),
    frequencyPenalty: data.get(#frequencyPenalty, or: $value.frequencyPenalty),
    logitBias: data.get(#logitBias, or: $value.logitBias),
    thinkingBudget: data.get(#thinkingBudget, or: $value.thinkingBudget),
    reasoningEffort: data.get(#reasoningEffort, or: $value.reasoningEffort),
    reasoningBudget: data.get(#reasoningBudget, or: $value.reasoningBudget),
    reasoningSummary: data.get(#reasoningSummary, or: $value.reasoningSummary),
  );

  @override
  ChatRequestBaseCopyWith<$R2, ChatRequestBase, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ChatRequestBaseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatRequestMapper extends ClassMapperBase<ChatRequest> {
  ChatRequestMapper._();

  static ChatRequestMapper? _instance;
  static ChatRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatRequestMapper._());
      RAGParamsMapper.ensureInitialized();
      ToolMapper.ensureInitialized();
      ReasoningEffortMapper.ensureInitialized();
      ReasoningSummaryMapper.ensureInitialized();
      ChatEntryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatRequest';

  static String _$model(ChatRequest v) => v.model;
  static const Field<ChatRequest, String> _f$model = Field(
    'model',
    _$model,
    opt: true,
    def: '',
  );
  static RAGParams? _$ragParams(ChatRequest v) => v.ragParams;
  static const Field<ChatRequest, RAGParams> _f$ragParams = Field(
    'ragParams',
    _$ragParams,
    key: r'rag_params',
    opt: true,
  );
  static List<Tool>? _$tools(ChatRequest v) => v.tools;
  static const Field<ChatRequest, List<Tool>> _f$tools = Field(
    'tools',
    _$tools,
    opt: true,
  );
  static ToolChoiceOption? _$toolChoice(ChatRequest v) => v.toolChoice;
  static const Field<ChatRequest, ToolChoiceOption> _f$toolChoice = Field(
    'toolChoice',
    _$toolChoice,
    key: r'tool_choice',
    opt: true,
    hook: ToolChoiceHook(),
  );
  static double _$temperature(ChatRequest v) => v.temperature;
  static const Field<ChatRequest, double> _f$temperature = Field(
    'temperature',
    _$temperature,
    opt: true,
    def: 0.2,
  );
  static double _$topP(ChatRequest v) => v.topP;
  static const Field<ChatRequest, double> _f$topP = Field(
    'topP',
    _$topP,
    key: r'top_p',
    opt: true,
    def: 0.6,
  );
  static bool _$stream(ChatRequest v) => v.stream;
  static const Field<ChatRequest, bool> _f$stream = Field(
    'stream',
    _$stream,
    opt: true,
    def: false,
  );
  static int _$maxTokens(ChatRequest v) => v.maxTokens;
  static const Field<ChatRequest, int> _f$maxTokens = Field(
    'maxTokens',
    _$maxTokens,
    key: r'max_tokens',
    opt: true,
    def: 2048,
  );
  static List<String>? _$stop(ChatRequest v) => v.stop;
  static const Field<ChatRequest, List<String>> _f$stop = Field(
    'stop',
    _$stop,
    opt: true,
  );
  static double _$presencePenalty(ChatRequest v) => v.presencePenalty;
  static const Field<ChatRequest, double> _f$presencePenalty = Field(
    'presencePenalty',
    _$presencePenalty,
    key: r'presence_penalty',
    opt: true,
    def: 0.0,
  );
  static double _$frequencyPenalty(ChatRequest v) => v.frequencyPenalty;
  static const Field<ChatRequest, double> _f$frequencyPenalty = Field(
    'frequencyPenalty',
    _$frequencyPenalty,
    key: r'frequency_penalty',
    opt: true,
    def: 0.0,
  );
  static Map<String, dynamic> _$logitBias(ChatRequest v) => v.logitBias;
  static const Field<ChatRequest, Map<String, dynamic>> _f$logitBias = Field(
    'logitBias',
    _$logitBias,
    key: r'logit_bias',
    opt: true,
    def: const {},
  );
  static int _$thinkingBudget(ChatRequest v) => v.thinkingBudget;
  static const Field<ChatRequest, int> _f$thinkingBudget = Field(
    'thinkingBudget',
    _$thinkingBudget,
    key: r'thinking_budget',
    opt: true,
    def: 1,
  );
  static ReasoningEffort? _$reasoningEffort(ChatRequest v) => v.reasoningEffort;
  static const Field<ChatRequest, ReasoningEffort> _f$reasoningEffort = Field(
    'reasoningEffort',
    _$reasoningEffort,
    key: r'reasoning_effort',
    opt: true,
  );
  static int? _$reasoningBudget(ChatRequest v) => v.reasoningBudget;
  static const Field<ChatRequest, int> _f$reasoningBudget = Field(
    'reasoningBudget',
    _$reasoningBudget,
    key: r'reasoning_budget',
    opt: true,
  );
  static ReasoningSummary _$reasoningSummary(ChatRequest v) =>
      v.reasoningSummary;
  static const Field<ChatRequest, ReasoningSummary> _f$reasoningSummary = Field(
    'reasoningSummary',
    _$reasoningSummary,
    key: r'reasoning_summary',
    opt: true,
    def: ReasoningSummary.auto,
  );
  static String _$id(ChatRequest v) => v.id;
  static const Field<ChatRequest, String> _f$id = Field('id', _$id);
  static List<ChatEntry> _$messages(ChatRequest v) => v.messages;
  static const Field<ChatRequest, List<ChatEntry>> _f$messages = Field(
    'messages',
    _$messages,
    opt: true,
    def: const [],
  );
  static int? _$maxCompletionTokens(ChatRequest v) => v.maxCompletionTokens;
  static const Field<ChatRequest, int> _f$maxCompletionTokens = Field(
    'maxCompletionTokens',
    _$maxCompletionTokens,
    key: r'max_completion_tokens',
    opt: true,
  );
  static int _$n(ChatRequest v) => v.n;
  static const Field<ChatRequest, int> _f$n = Field('n', _$n);
  static String _$user(ChatRequest v) => v.user;
  static const Field<ChatRequest, String> _f$user = Field('user', _$user);

  @override
  final MappableFields<ChatRequest> fields = const {
    #model: _f$model,
    #ragParams: _f$ragParams,
    #tools: _f$tools,
    #toolChoice: _f$toolChoice,
    #temperature: _f$temperature,
    #topP: _f$topP,
    #stream: _f$stream,
    #maxTokens: _f$maxTokens,
    #stop: _f$stop,
    #presencePenalty: _f$presencePenalty,
    #frequencyPenalty: _f$frequencyPenalty,
    #logitBias: _f$logitBias,
    #thinkingBudget: _f$thinkingBudget,
    #reasoningEffort: _f$reasoningEffort,
    #reasoningBudget: _f$reasoningBudget,
    #reasoningSummary: _f$reasoningSummary,
    #id: _f$id,
    #messages: _f$messages,
    #maxCompletionTokens: _f$maxCompletionTokens,
    #n: _f$n,
    #user: _f$user,
  };

  static ChatRequest _instantiate(DecodingData data) {
    return ChatRequest(
      model: data.dec(_f$model),
      ragParams: data.dec(_f$ragParams),
      tools: data.dec(_f$tools),
      toolChoice: data.dec(_f$toolChoice),
      temperature: data.dec(_f$temperature),
      topP: data.dec(_f$topP),
      stream: data.dec(_f$stream),
      maxTokens: data.dec(_f$maxTokens),
      stop: data.dec(_f$stop),
      presencePenalty: data.dec(_f$presencePenalty),
      frequencyPenalty: data.dec(_f$frequencyPenalty),
      logitBias: data.dec(_f$logitBias),
      thinkingBudget: data.dec(_f$thinkingBudget),
      reasoningEffort: data.dec(_f$reasoningEffort),
      reasoningBudget: data.dec(_f$reasoningBudget),
      reasoningSummary: data.dec(_f$reasoningSummary),
      id: data.dec(_f$id),
      messages: data.dec(_f$messages),
      maxCompletionTokens: data.dec(_f$maxCompletionTokens),
      n: data.dec(_f$n),
      user: data.dec(_f$user),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatRequest>(map);
  }

  static ChatRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ChatRequest>(json);
  }
}

mixin ChatRequestMappable {
  String toJson() {
    return ChatRequestMapper.ensureInitialized().encodeJson<ChatRequest>(
      this as ChatRequest,
    );
  }

  Map<String, dynamic> toMap() {
    return ChatRequestMapper.ensureInitialized().encodeMap<ChatRequest>(
      this as ChatRequest,
    );
  }

  ChatRequestCopyWith<ChatRequest, ChatRequest, ChatRequest> get copyWith =>
      _ChatRequestCopyWithImpl<ChatRequest, ChatRequest>(
        this as ChatRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChatRequestMapper.ensureInitialized().stringifyValue(
      this as ChatRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatRequestMapper.ensureInitialized().equalsValue(
      this as ChatRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatRequestMapper.ensureInitialized().hashValue(this as ChatRequest);
  }
}

extension ChatRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatRequest, $Out> {
  ChatRequestCopyWith<$R, ChatRequest, $Out> get $asChatRequest =>
      $base.as((v, t, t2) => _ChatRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChatRequestCopyWith<$R, $In extends ChatRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RAGParamsCopyWith<$R, RAGParams, RAGParams>? get ragParams;
  ListCopyWith<$R, Tool, ToolCopyWith<$R, Tool, Tool>>? get tools;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get stop;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get logitBias;
  ListCopyWith<$R, ChatEntry, ChatEntryCopyWith<$R, ChatEntry, ChatEntry>>
  get messages;
  $R call({
    String? model,
    RAGParams? ragParams,
    List<Tool>? tools,
    ToolChoiceOption? toolChoice,
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
    String? id,
    List<ChatEntry>? messages,
    int? maxCompletionTokens,
    int? n,
    String? user,
  });
  ChatRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChatRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatRequest, $Out>
    implements ChatRequestCopyWith<$R, ChatRequest, $Out> {
  _ChatRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatRequest> $mapper =
      ChatRequestMapper.ensureInitialized();
  @override
  RAGParamsCopyWith<$R, RAGParams, RAGParams>? get ragParams =>
      $value.ragParams?.copyWith.$chain((v) => call(ragParams: v));
  @override
  ListCopyWith<$R, Tool, ToolCopyWith<$R, Tool, Tool>>? get tools =>
      $value.tools != null
      ? ListCopyWith(
          $value.tools!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(tools: v),
        )
      : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get stop =>
      $value.stop != null
      ? ListCopyWith(
          $value.stop!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(stop: v),
        )
      : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get logitBias => MapCopyWith(
    $value.logitBias,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(logitBias: v),
  );
  @override
  ListCopyWith<$R, ChatEntry, ChatEntryCopyWith<$R, ChatEntry, ChatEntry>>
  get messages => ListCopyWith(
    $value.messages,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(messages: v),
  );
  @override
  $R call({
    String? model,
    Object? ragParams = $none,
    Object? tools = $none,
    Object? toolChoice = $none,
    double? temperature,
    double? topP,
    bool? stream,
    int? maxTokens,
    Object? stop = $none,
    double? presencePenalty,
    double? frequencyPenalty,
    Map<String, dynamic>? logitBias,
    int? thinkingBudget,
    Object? reasoningEffort = $none,
    Object? reasoningBudget = $none,
    ReasoningSummary? reasoningSummary,
    String? id,
    List<ChatEntry>? messages,
    Object? maxCompletionTokens = $none,
    int? n,
    String? user,
  }) => $apply(
    FieldCopyWithData({
      if (model != null) #model: model,
      if (ragParams != $none) #ragParams: ragParams,
      if (tools != $none) #tools: tools,
      if (toolChoice != $none) #toolChoice: toolChoice,
      if (temperature != null) #temperature: temperature,
      if (topP != null) #topP: topP,
      if (stream != null) #stream: stream,
      if (maxTokens != null) #maxTokens: maxTokens,
      if (stop != $none) #stop: stop,
      if (presencePenalty != null) #presencePenalty: presencePenalty,
      if (frequencyPenalty != null) #frequencyPenalty: frequencyPenalty,
      if (logitBias != null) #logitBias: logitBias,
      if (thinkingBudget != null) #thinkingBudget: thinkingBudget,
      if (reasoningEffort != $none) #reasoningEffort: reasoningEffort,
      if (reasoningBudget != $none) #reasoningBudget: reasoningBudget,
      if (reasoningSummary != null) #reasoningSummary: reasoningSummary,
      if (id != null) #id: id,
      if (messages != null) #messages: messages,
      if (maxCompletionTokens != $none)
        #maxCompletionTokens: maxCompletionTokens,
      if (n != null) #n: n,
      if (user != null) #user: user,
    }),
  );
  @override
  ChatRequest $make(CopyWithData data) => ChatRequest(
    model: data.get(#model, or: $value.model),
    ragParams: data.get(#ragParams, or: $value.ragParams),
    tools: data.get(#tools, or: $value.tools),
    toolChoice: data.get(#toolChoice, or: $value.toolChoice),
    temperature: data.get(#temperature, or: $value.temperature),
    topP: data.get(#topP, or: $value.topP),
    stream: data.get(#stream, or: $value.stream),
    maxTokens: data.get(#maxTokens, or: $value.maxTokens),
    stop: data.get(#stop, or: $value.stop),
    presencePenalty: data.get(#presencePenalty, or: $value.presencePenalty),
    frequencyPenalty: data.get(#frequencyPenalty, or: $value.frequencyPenalty),
    logitBias: data.get(#logitBias, or: $value.logitBias),
    thinkingBudget: data.get(#thinkingBudget, or: $value.thinkingBudget),
    reasoningEffort: data.get(#reasoningEffort, or: $value.reasoningEffort),
    reasoningBudget: data.get(#reasoningBudget, or: $value.reasoningBudget),
    reasoningSummary: data.get(#reasoningSummary, or: $value.reasoningSummary),
    id: data.get(#id, or: $value.id),
    messages: data.get(#messages, or: $value.messages),
    maxCompletionTokens: data.get(
      #maxCompletionTokens,
      or: $value.maxCompletionTokens,
    ),
    n: data.get(#n, or: $value.n),
    user: data.get(#user, or: $value.user),
  );

  @override
  ChatRequestCopyWith<$R2, ChatRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ChatRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatEntryMapper extends ClassMapperBase<ChatEntry> {
  ChatEntryMapper._();

  static ChatEntryMapper? _instance;
  static ChatEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatEntryMapper._());
      ChatThreadEntryMapper.ensureInitialized();
      ChatRoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatEntry';

  static ChatRole _$role(ChatEntry v) => v.role;
  static const Field<ChatEntry, ChatRole> _f$role = Field('role', _$role);
  static ChatEntryContent _$content(ChatEntry v) => v.content;
  static const Field<ChatEntry, ChatEntryContent> _f$content = Field(
    'content',
    _$content,
    hook: ChatEntryContentHook(),
  );
  static String? _$name(ChatEntry v) => v.name;
  static const Field<ChatEntry, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
  );
  static String _$textContent(ChatEntry v) => v.textContent;
  static const Field<ChatEntry, String> _f$textContent = Field(
    'textContent',
    _$textContent,
    key: r'text_content',
    mode: FieldMode.member,
  );
  static bool _$hasTextOnly(ChatEntry v) => v.hasTextOnly;
  static const Field<ChatEntry, bool> _f$hasTextOnly = Field(
    'hasTextOnly',
    _$hasTextOnly,
    key: r'has_text_only',
    mode: FieldMode.member,
  );
  static bool _$hasImage(ChatEntry v) => v.hasImage;
  static const Field<ChatEntry, bool> _f$hasImage = Field(
    'hasImage',
    _$hasImage,
    key: r'has_image',
    mode: FieldMode.member,
  );
  static bool _$hasAudio(ChatEntry v) => v.hasAudio;
  static const Field<ChatEntry, bool> _f$hasAudio = Field(
    'hasAudio',
    _$hasAudio,
    key: r'has_audio',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ChatEntry> fields = const {
    #role: _f$role,
    #content: _f$content,
    #name: _f$name,
    #textContent: _f$textContent,
    #hasTextOnly: _f$hasTextOnly,
    #hasImage: _f$hasImage,
    #hasAudio: _f$hasAudio,
  };

  static ChatEntry _instantiate(DecodingData data) {
    return ChatEntry(
      role: data.dec(_f$role),
      content: data.dec(_f$content),
      name: data.dec(_f$name),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatEntry>(map);
  }

  static ChatEntry fromJson(String json) {
    return ensureInitialized().decodeJson<ChatEntry>(json);
  }
}

mixin ChatEntryMappable {
  String toJson() {
    return ChatEntryMapper.ensureInitialized().encodeJson<ChatEntry>(
      this as ChatEntry,
    );
  }

  Map<String, dynamic> toMap() {
    return ChatEntryMapper.ensureInitialized().encodeMap<ChatEntry>(
      this as ChatEntry,
    );
  }

  ChatEntryCopyWith<ChatEntry, ChatEntry, ChatEntry> get copyWith =>
      _ChatEntryCopyWithImpl<ChatEntry, ChatEntry>(
        this as ChatEntry,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChatEntryMapper.ensureInitialized().stringifyValue(
      this as ChatEntry,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatEntryMapper.ensureInitialized().equalsValue(
      this as ChatEntry,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatEntryMapper.ensureInitialized().hashValue(this as ChatEntry);
  }
}

extension ChatEntryValueCopy<$R, $Out> on ObjectCopyWith<$R, ChatEntry, $Out> {
  ChatEntryCopyWith<$R, ChatEntry, $Out> get $asChatEntry =>
      $base.as((v, t, t2) => _ChatEntryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChatEntryCopyWith<$R, $In extends ChatEntry, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({ChatRole? role, ChatEntryContent? content, String? name});
  ChatEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChatEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatEntry, $Out>
    implements ChatEntryCopyWith<$R, ChatEntry, $Out> {
  _ChatEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatEntry> $mapper =
      ChatEntryMapper.ensureInitialized();
  @override
  $R call({ChatRole? role, ChatEntryContent? content, Object? name = $none}) =>
      $apply(
        FieldCopyWithData({
          if (role != null) #role: role,
          if (content != null) #content: content,
          if (name != $none) #name: name,
        }),
      );
  @override
  ChatEntry $make(CopyWithData data) => ChatEntry(
    role: data.get(#role, or: $value.role),
    content: data.get(#content, or: $value.content),
    name: data.get(#name, or: $value.name),
  );

  @override
  ChatEntryCopyWith<$R2, ChatEntry, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ChatEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EmbeddingRequestMapper extends ClassMapperBase<EmbeddingRequest> {
  EmbeddingRequestMapper._();

  static EmbeddingRequestMapper? _instance;
  static EmbeddingRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmbeddingRequestMapper._());
      EmbeddingTypeMapper.ensureInitialized();
      EncodingFormatMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EmbeddingRequest';

  static StringOrListString _$input(EmbeddingRequest v) => v.input;
  static const Field<EmbeddingRequest, StringOrListString> _f$input = Field(
    'input',
    _$input,
  );
  static String _$model(EmbeddingRequest v) => v.model;
  static const Field<EmbeddingRequest, String> _f$model = Field(
    'model',
    _$model,
  );
  static EmbeddingType _$type(EmbeddingRequest v) => v.type;
  static const Field<EmbeddingRequest, EmbeddingType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: EmbeddingType.document,
  );
  static EncodingFormat _$encodingFormat(EmbeddingRequest v) =>
      v.encodingFormat;
  static const Field<EmbeddingRequest, EncodingFormat> _f$encodingFormat =
      Field(
        'encodingFormat',
        _$encodingFormat,
        key: r'encoding_format',
        opt: true,
        def: EncodingFormat.float,
      );

  @override
  final MappableFields<EmbeddingRequest> fields = const {
    #input: _f$input,
    #model: _f$model,
    #type: _f$type,
    #encodingFormat: _f$encodingFormat,
  };

  static EmbeddingRequest _instantiate(DecodingData data) {
    return EmbeddingRequest(
      input: data.dec(_f$input),
      model: data.dec(_f$model),
      type: data.dec(_f$type),
      encodingFormat: data.dec(_f$encodingFormat),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EmbeddingRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmbeddingRequest>(map);
  }

  static EmbeddingRequest fromJson(String json) {
    return ensureInitialized().decodeJson<EmbeddingRequest>(json);
  }
}

mixin EmbeddingRequestMappable {
  String toJson() {
    return EmbeddingRequestMapper.ensureInitialized()
        .encodeJson<EmbeddingRequest>(this as EmbeddingRequest);
  }

  Map<String, dynamic> toMap() {
    return EmbeddingRequestMapper.ensureInitialized()
        .encodeMap<EmbeddingRequest>(this as EmbeddingRequest);
  }

  EmbeddingRequestCopyWith<EmbeddingRequest, EmbeddingRequest, EmbeddingRequest>
  get copyWith =>
      _EmbeddingRequestCopyWithImpl<EmbeddingRequest, EmbeddingRequest>(
        this as EmbeddingRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EmbeddingRequestMapper.ensureInitialized().stringifyValue(
      this as EmbeddingRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return EmbeddingRequestMapper.ensureInitialized().equalsValue(
      this as EmbeddingRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return EmbeddingRequestMapper.ensureInitialized().hashValue(
      this as EmbeddingRequest,
    );
  }
}

extension EmbeddingRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmbeddingRequest, $Out> {
  EmbeddingRequestCopyWith<$R, EmbeddingRequest, $Out>
  get $asEmbeddingRequest =>
      $base.as((v, t, t2) => _EmbeddingRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EmbeddingRequestCopyWith<$R, $In extends EmbeddingRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    StringOrListString? input,
    String? model,
    EmbeddingType? type,
    EncodingFormat? encodingFormat,
  });
  EmbeddingRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EmbeddingRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmbeddingRequest, $Out>
    implements EmbeddingRequestCopyWith<$R, EmbeddingRequest, $Out> {
  _EmbeddingRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmbeddingRequest> $mapper =
      EmbeddingRequestMapper.ensureInitialized();
  @override
  $R call({
    StringOrListString? input,
    String? model,
    EmbeddingType? type,
    EncodingFormat? encodingFormat,
  }) => $apply(
    FieldCopyWithData({
      if (input != null) #input: input,
      if (model != null) #model: model,
      if (type != null) #type: type,
      if (encodingFormat != null) #encodingFormat: encodingFormat,
    }),
  );
  @override
  EmbeddingRequest $make(CopyWithData data) => EmbeddingRequest(
    input: data.get(#input, or: $value.input),
    model: data.get(#model, or: $value.model),
    type: data.get(#type, or: $value.type),
    encodingFormat: data.get(#encodingFormat, or: $value.encodingFormat),
  );

  @override
  EmbeddingRequestCopyWith<$R2, EmbeddingRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EmbeddingRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EmbeddingResponseDataMapper
    extends ClassMapperBase<EmbeddingResponseData> {
  EmbeddingResponseDataMapper._();

  static EmbeddingResponseDataMapper? _instance;
  static EmbeddingResponseDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmbeddingResponseDataMapper._());
      ObjectTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EmbeddingResponseData';

  static ObjectType _$object(EmbeddingResponseData v) => v.object;
  static const Field<EmbeddingResponseData, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.embedding,
  );
  static StringOrListDouble _$embedding(EmbeddingResponseData v) => v.embedding;
  static const Field<EmbeddingResponseData, StringOrListDouble> _f$embedding =
      Field('embedding', _$embedding, hook: StringOrListDoubleHook());
  static int _$index(EmbeddingResponseData v) => v.index;
  static const Field<EmbeddingResponseData, int> _f$index = Field(
    'index',
    _$index,
    opt: true,
    def: 0,
  );

  @override
  final MappableFields<EmbeddingResponseData> fields = const {
    #object: _f$object,
    #embedding: _f$embedding,
    #index: _f$index,
  };

  static EmbeddingResponseData _instantiate(DecodingData data) {
    return EmbeddingResponseData(
      object: data.dec(_f$object),
      embedding: data.dec(_f$embedding),
      index: data.dec(_f$index),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EmbeddingResponseData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmbeddingResponseData>(map);
  }

  static EmbeddingResponseData fromJson(String json) {
    return ensureInitialized().decodeJson<EmbeddingResponseData>(json);
  }
}

mixin EmbeddingResponseDataMappable {
  String toJson() {
    return EmbeddingResponseDataMapper.ensureInitialized()
        .encodeJson<EmbeddingResponseData>(this as EmbeddingResponseData);
  }

  Map<String, dynamic> toMap() {
    return EmbeddingResponseDataMapper.ensureInitialized()
        .encodeMap<EmbeddingResponseData>(this as EmbeddingResponseData);
  }

  EmbeddingResponseDataCopyWith<
    EmbeddingResponseData,
    EmbeddingResponseData,
    EmbeddingResponseData
  >
  get copyWith =>
      _EmbeddingResponseDataCopyWithImpl<
        EmbeddingResponseData,
        EmbeddingResponseData
      >(this as EmbeddingResponseData, $identity, $identity);
  @override
  String toString() {
    return EmbeddingResponseDataMapper.ensureInitialized().stringifyValue(
      this as EmbeddingResponseData,
    );
  }

  @override
  bool operator ==(Object other) {
    return EmbeddingResponseDataMapper.ensureInitialized().equalsValue(
      this as EmbeddingResponseData,
      other,
    );
  }

  @override
  int get hashCode {
    return EmbeddingResponseDataMapper.ensureInitialized().hashValue(
      this as EmbeddingResponseData,
    );
  }
}

extension EmbeddingResponseDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmbeddingResponseData, $Out> {
  EmbeddingResponseDataCopyWith<$R, EmbeddingResponseData, $Out>
  get $asEmbeddingResponseData => $base.as(
    (v, t, t2) => _EmbeddingResponseDataCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EmbeddingResponseDataCopyWith<
  $R,
  $In extends EmbeddingResponseData,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({ObjectType? object, StringOrListDouble? embedding, int? index});
  EmbeddingResponseDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EmbeddingResponseDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmbeddingResponseData, $Out>
    implements EmbeddingResponseDataCopyWith<$R, EmbeddingResponseData, $Out> {
  _EmbeddingResponseDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmbeddingResponseData> $mapper =
      EmbeddingResponseDataMapper.ensureInitialized();
  @override
  $R call({ObjectType? object, StringOrListDouble? embedding, int? index}) =>
      $apply(
        FieldCopyWithData({
          if (object != null) #object: object,
          if (embedding != null) #embedding: embedding,
          if (index != null) #index: index,
        }),
      );
  @override
  EmbeddingResponseData $make(CopyWithData data) => EmbeddingResponseData(
    object: data.get(#object, or: $value.object),
    embedding: data.get(#embedding, or: $value.embedding),
    index: data.get(#index, or: $value.index),
  );

  @override
  EmbeddingResponseDataCopyWith<$R2, EmbeddingResponseData, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EmbeddingResponseDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EmbeddingUsageMapper extends ClassMapperBase<EmbeddingUsage> {
  EmbeddingUsageMapper._();

  static EmbeddingUsageMapper? _instance;
  static EmbeddingUsageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmbeddingUsageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EmbeddingUsage';

  static int _$promptTokens(EmbeddingUsage v) => v.promptTokens;
  static const Field<EmbeddingUsage, int> _f$promptTokens = Field(
    'promptTokens',
    _$promptTokens,
    key: r'prompt_tokens',
    opt: true,
    def: 0,
  );
  static int _$totalTokens(EmbeddingUsage v) => v.totalTokens;
  static const Field<EmbeddingUsage, int> _f$totalTokens = Field(
    'totalTokens',
    _$totalTokens,
    key: r'total_tokens',
    opt: true,
    def: 0,
  );

  @override
  final MappableFields<EmbeddingUsage> fields = const {
    #promptTokens: _f$promptTokens,
    #totalTokens: _f$totalTokens,
  };

  static EmbeddingUsage _instantiate(DecodingData data) {
    return EmbeddingUsage(
      promptTokens: data.dec(_f$promptTokens),
      totalTokens: data.dec(_f$totalTokens),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EmbeddingUsage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmbeddingUsage>(map);
  }

  static EmbeddingUsage fromJson(String json) {
    return ensureInitialized().decodeJson<EmbeddingUsage>(json);
  }
}

mixin EmbeddingUsageMappable {
  String toJson() {
    return EmbeddingUsageMapper.ensureInitialized().encodeJson<EmbeddingUsage>(
      this as EmbeddingUsage,
    );
  }

  Map<String, dynamic> toMap() {
    return EmbeddingUsageMapper.ensureInitialized().encodeMap<EmbeddingUsage>(
      this as EmbeddingUsage,
    );
  }

  EmbeddingUsageCopyWith<EmbeddingUsage, EmbeddingUsage, EmbeddingUsage>
  get copyWith => _EmbeddingUsageCopyWithImpl<EmbeddingUsage, EmbeddingUsage>(
    this as EmbeddingUsage,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return EmbeddingUsageMapper.ensureInitialized().stringifyValue(
      this as EmbeddingUsage,
    );
  }

  @override
  bool operator ==(Object other) {
    return EmbeddingUsageMapper.ensureInitialized().equalsValue(
      this as EmbeddingUsage,
      other,
    );
  }

  @override
  int get hashCode {
    return EmbeddingUsageMapper.ensureInitialized().hashValue(
      this as EmbeddingUsage,
    );
  }
}

extension EmbeddingUsageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmbeddingUsage, $Out> {
  EmbeddingUsageCopyWith<$R, EmbeddingUsage, $Out> get $asEmbeddingUsage =>
      $base.as((v, t, t2) => _EmbeddingUsageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EmbeddingUsageCopyWith<$R, $In extends EmbeddingUsage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? promptTokens, int? totalTokens});
  EmbeddingUsageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EmbeddingUsageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmbeddingUsage, $Out>
    implements EmbeddingUsageCopyWith<$R, EmbeddingUsage, $Out> {
  _EmbeddingUsageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmbeddingUsage> $mapper =
      EmbeddingUsageMapper.ensureInitialized();
  @override
  $R call({int? promptTokens, int? totalTokens}) => $apply(
    FieldCopyWithData({
      if (promptTokens != null) #promptTokens: promptTokens,
      if (totalTokens != null) #totalTokens: totalTokens,
    }),
  );
  @override
  EmbeddingUsage $make(CopyWithData data) => EmbeddingUsage(
    promptTokens: data.get(#promptTokens, or: $value.promptTokens),
    totalTokens: data.get(#totalTokens, or: $value.totalTokens),
  );

  @override
  EmbeddingUsageCopyWith<$R2, EmbeddingUsage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EmbeddingUsageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EmbeddingResponseMapper extends ClassMapperBase<EmbeddingResponse> {
  EmbeddingResponseMapper._();

  static EmbeddingResponseMapper? _instance;
  static EmbeddingResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmbeddingResponseMapper._());
      ObjectTypeMapper.ensureInitialized();
      EmbeddingResponseDataMapper.ensureInitialized();
      EmbeddingUsageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EmbeddingResponse';

  static ObjectType _$object(EmbeddingResponse v) => v.object;
  static const Field<EmbeddingResponse, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.list,
  );
  static List<EmbeddingResponseData> _$data(EmbeddingResponse v) => v.data;
  static const Field<EmbeddingResponse, List<EmbeddingResponseData>> _f$data =
      Field('data', _$data);
  static String _$model(EmbeddingResponse v) => v.model;
  static const Field<EmbeddingResponse, String> _f$model = Field(
    'model',
    _$model,
  );
  static EmbeddingUsage _$usage(EmbeddingResponse v) => v.usage;
  static const Field<EmbeddingResponse, EmbeddingUsage> _f$usage = Field(
    'usage',
    _$usage,
  );

  @override
  final MappableFields<EmbeddingResponse> fields = const {
    #object: _f$object,
    #data: _f$data,
    #model: _f$model,
    #usage: _f$usage,
  };

  static EmbeddingResponse _instantiate(DecodingData data) {
    return EmbeddingResponse(
      object: data.dec(_f$object),
      data: data.dec(_f$data),
      model: data.dec(_f$model),
      usage: data.dec(_f$usage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EmbeddingResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmbeddingResponse>(map);
  }

  static EmbeddingResponse fromJson(String json) {
    return ensureInitialized().decodeJson<EmbeddingResponse>(json);
  }
}

mixin EmbeddingResponseMappable {
  String toJson() {
    return EmbeddingResponseMapper.ensureInitialized()
        .encodeJson<EmbeddingResponse>(this as EmbeddingResponse);
  }

  Map<String, dynamic> toMap() {
    return EmbeddingResponseMapper.ensureInitialized()
        .encodeMap<EmbeddingResponse>(this as EmbeddingResponse);
  }

  EmbeddingResponseCopyWith<
    EmbeddingResponse,
    EmbeddingResponse,
    EmbeddingResponse
  >
  get copyWith =>
      _EmbeddingResponseCopyWithImpl<EmbeddingResponse, EmbeddingResponse>(
        this as EmbeddingResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EmbeddingResponseMapper.ensureInitialized().stringifyValue(
      this as EmbeddingResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return EmbeddingResponseMapper.ensureInitialized().equalsValue(
      this as EmbeddingResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return EmbeddingResponseMapper.ensureInitialized().hashValue(
      this as EmbeddingResponse,
    );
  }
}

extension EmbeddingResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmbeddingResponse, $Out> {
  EmbeddingResponseCopyWith<$R, EmbeddingResponse, $Out>
  get $asEmbeddingResponse => $base.as(
    (v, t, t2) => _EmbeddingResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EmbeddingResponseCopyWith<
  $R,
  $In extends EmbeddingResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    EmbeddingResponseData,
    EmbeddingResponseDataCopyWith<
      $R,
      EmbeddingResponseData,
      EmbeddingResponseData
    >
  >
  get data;
  EmbeddingUsageCopyWith<$R, EmbeddingUsage, EmbeddingUsage> get usage;
  $R call({
    ObjectType? object,
    List<EmbeddingResponseData>? data,
    String? model,
    EmbeddingUsage? usage,
  });
  EmbeddingResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EmbeddingResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmbeddingResponse, $Out>
    implements EmbeddingResponseCopyWith<$R, EmbeddingResponse, $Out> {
  _EmbeddingResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmbeddingResponse> $mapper =
      EmbeddingResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    EmbeddingResponseData,
    EmbeddingResponseDataCopyWith<
      $R,
      EmbeddingResponseData,
      EmbeddingResponseData
    >
  >
  get data => ListCopyWith(
    $value.data,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(data: v),
  );
  @override
  EmbeddingUsageCopyWith<$R, EmbeddingUsage, EmbeddingUsage> get usage =>
      $value.usage.copyWith.$chain((v) => call(usage: v));
  @override
  $R call({
    ObjectType? object,
    List<EmbeddingResponseData>? data,
    String? model,
    EmbeddingUsage? usage,
  }) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (data != null) #data: data,
      if (model != null) #model: model,
      if (usage != null) #usage: usage,
    }),
  );
  @override
  EmbeddingResponse $make(CopyWithData data) => EmbeddingResponse(
    object: data.get(#object, or: $value.object),
    data: data.get(#data, or: $value.data),
    model: data.get(#model, or: $value.model),
    usage: data.get(#usage, or: $value.usage),
  );

  @override
  EmbeddingResponseCopyWith<$R2, EmbeddingResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EmbeddingResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RerankingRequestMapper extends ClassMapperBase<RerankingRequest> {
  RerankingRequestMapper._();

  static RerankingRequestMapper? _instance;
  static RerankingRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RerankingRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RerankingRequest';

  static String _$model(RerankingRequest v) => v.model;
  static const Field<RerankingRequest, String> _f$model = Field(
    'model',
    _$model,
  );
  static List<String> _$documents(RerankingRequest v) => v.documents;
  static const Field<RerankingRequest, List<String>> _f$documents = Field(
    'documents',
    _$documents,
  );
  static String _$query(RerankingRequest v) => v.query;
  static const Field<RerankingRequest, String> _f$query = Field(
    'query',
    _$query,
  );

  @override
  final MappableFields<RerankingRequest> fields = const {
    #model: _f$model,
    #documents: _f$documents,
    #query: _f$query,
  };

  static RerankingRequest _instantiate(DecodingData data) {
    return RerankingRequest(
      model: data.dec(_f$model),
      documents: data.dec(_f$documents),
      query: data.dec(_f$query),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RerankingRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RerankingRequest>(map);
  }

  static RerankingRequest fromJson(String json) {
    return ensureInitialized().decodeJson<RerankingRequest>(json);
  }
}

mixin RerankingRequestMappable {
  String toJson() {
    return RerankingRequestMapper.ensureInitialized()
        .encodeJson<RerankingRequest>(this as RerankingRequest);
  }

  Map<String, dynamic> toMap() {
    return RerankingRequestMapper.ensureInitialized()
        .encodeMap<RerankingRequest>(this as RerankingRequest);
  }

  RerankingRequestCopyWith<RerankingRequest, RerankingRequest, RerankingRequest>
  get copyWith =>
      _RerankingRequestCopyWithImpl<RerankingRequest, RerankingRequest>(
        this as RerankingRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RerankingRequestMapper.ensureInitialized().stringifyValue(
      this as RerankingRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return RerankingRequestMapper.ensureInitialized().equalsValue(
      this as RerankingRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return RerankingRequestMapper.ensureInitialized().hashValue(
      this as RerankingRequest,
    );
  }
}

extension RerankingRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RerankingRequest, $Out> {
  RerankingRequestCopyWith<$R, RerankingRequest, $Out>
  get $asRerankingRequest =>
      $base.as((v, t, t2) => _RerankingRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RerankingRequestCopyWith<$R, $In extends RerankingRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get documents;
  $R call({String? model, List<String>? documents, String? query});
  RerankingRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RerankingRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RerankingRequest, $Out>
    implements RerankingRequestCopyWith<$R, RerankingRequest, $Out> {
  _RerankingRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RerankingRequest> $mapper =
      RerankingRequestMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get documents =>
      ListCopyWith(
        $value.documents,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(documents: v),
      );
  @override
  $R call({String? model, List<String>? documents, String? query}) => $apply(
    FieldCopyWithData({
      if (model != null) #model: model,
      if (documents != null) #documents: documents,
      if (query != null) #query: query,
    }),
  );
  @override
  RerankingRequest $make(CopyWithData data) => RerankingRequest(
    model: data.get(#model, or: $value.model),
    documents: data.get(#documents, or: $value.documents),
    query: data.get(#query, or: $value.query),
  );

  @override
  RerankingRequestCopyWith<$R2, RerankingRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RerankingRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RerankingDataMapper extends ClassMapperBase<RerankingData> {
  RerankingDataMapper._();

  static RerankingDataMapper? _instance;
  static RerankingDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RerankingDataMapper._());
      ObjectTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RerankingData';

  static ObjectType _$object(RerankingData v) => v.object;
  static const Field<RerankingData, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.reranking,
  );
  static int _$index(RerankingData v) => v.index;
  static const Field<RerankingData, int> _f$index = Field('index', _$index);
  static double _$relevanceScore(RerankingData v) => v.relevanceScore;
  static const Field<RerankingData, double> _f$relevanceScore = Field(
    'relevanceScore',
    _$relevanceScore,
    key: r'relevance_score',
  );

  @override
  final MappableFields<RerankingData> fields = const {
    #object: _f$object,
    #index: _f$index,
    #relevanceScore: _f$relevanceScore,
  };

  static RerankingData _instantiate(DecodingData data) {
    return RerankingData(
      object: data.dec(_f$object),
      index: data.dec(_f$index),
      relevanceScore: data.dec(_f$relevanceScore),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RerankingData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RerankingData>(map);
  }

  static RerankingData fromJson(String json) {
    return ensureInitialized().decodeJson<RerankingData>(json);
  }
}

mixin RerankingDataMappable {
  String toJson() {
    return RerankingDataMapper.ensureInitialized().encodeJson<RerankingData>(
      this as RerankingData,
    );
  }

  Map<String, dynamic> toMap() {
    return RerankingDataMapper.ensureInitialized().encodeMap<RerankingData>(
      this as RerankingData,
    );
  }

  RerankingDataCopyWith<RerankingData, RerankingData, RerankingData>
  get copyWith => _RerankingDataCopyWithImpl<RerankingData, RerankingData>(
    this as RerankingData,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RerankingDataMapper.ensureInitialized().stringifyValue(
      this as RerankingData,
    );
  }

  @override
  bool operator ==(Object other) {
    return RerankingDataMapper.ensureInitialized().equalsValue(
      this as RerankingData,
      other,
    );
  }

  @override
  int get hashCode {
    return RerankingDataMapper.ensureInitialized().hashValue(
      this as RerankingData,
    );
  }
}

extension RerankingDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RerankingData, $Out> {
  RerankingDataCopyWith<$R, RerankingData, $Out> get $asRerankingData =>
      $base.as((v, t, t2) => _RerankingDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RerankingDataCopyWith<$R, $In extends RerankingData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({ObjectType? object, int? index, double? relevanceScore});
  RerankingDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RerankingDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RerankingData, $Out>
    implements RerankingDataCopyWith<$R, RerankingData, $Out> {
  _RerankingDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RerankingData> $mapper =
      RerankingDataMapper.ensureInitialized();
  @override
  $R call({ObjectType? object, int? index, double? relevanceScore}) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (index != null) #index: index,
      if (relevanceScore != null) #relevanceScore: relevanceScore,
    }),
  );
  @override
  RerankingData $make(CopyWithData data) => RerankingData(
    object: data.get(#object, or: $value.object),
    index: data.get(#index, or: $value.index),
    relevanceScore: data.get(#relevanceScore, or: $value.relevanceScore),
  );

  @override
  RerankingDataCopyWith<$R2, RerankingData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RerankingDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RerankingApiVersionMapper extends ClassMapperBase<RerankingApiVersion> {
  RerankingApiVersionMapper._();

  static RerankingApiVersionMapper? _instance;
  static RerankingApiVersionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RerankingApiVersionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RerankingApiVersion';

  static String _$version(RerankingApiVersion v) => v.version;
  static const Field<RerankingApiVersion, String> _f$version = Field(
    'version',
    _$version,
    opt: true,
    def: '',
  );
  static bool _$isDeprecated(RerankingApiVersion v) => v.isDeprecated;
  static const Field<RerankingApiVersion, bool> _f$isDeprecated = Field(
    'isDeprecated',
    _$isDeprecated,
    key: r'is_deprecated',
    opt: true,
    def: false,
  );
  static bool _$isExperimental(RerankingApiVersion v) => v.isExperimental;
  static const Field<RerankingApiVersion, bool> _f$isExperimental = Field(
    'isExperimental',
    _$isExperimental,
    key: r'is_experimental',
    opt: true,
    def: false,
  );

  @override
  final MappableFields<RerankingApiVersion> fields = const {
    #version: _f$version,
    #isDeprecated: _f$isDeprecated,
    #isExperimental: _f$isExperimental,
  };

  static RerankingApiVersion _instantiate(DecodingData data) {
    return RerankingApiVersion(
      version: data.dec(_f$version),
      isDeprecated: data.dec(_f$isDeprecated),
      isExperimental: data.dec(_f$isExperimental),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RerankingApiVersion fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RerankingApiVersion>(map);
  }

  static RerankingApiVersion fromJson(String json) {
    return ensureInitialized().decodeJson<RerankingApiVersion>(json);
  }
}

mixin RerankingApiVersionMappable {
  String toJson() {
    return RerankingApiVersionMapper.ensureInitialized()
        .encodeJson<RerankingApiVersion>(this as RerankingApiVersion);
  }

  Map<String, dynamic> toMap() {
    return RerankingApiVersionMapper.ensureInitialized()
        .encodeMap<RerankingApiVersion>(this as RerankingApiVersion);
  }

  RerankingApiVersionCopyWith<
    RerankingApiVersion,
    RerankingApiVersion,
    RerankingApiVersion
  >
  get copyWith =>
      _RerankingApiVersionCopyWithImpl<
        RerankingApiVersion,
        RerankingApiVersion
      >(this as RerankingApiVersion, $identity, $identity);
  @override
  String toString() {
    return RerankingApiVersionMapper.ensureInitialized().stringifyValue(
      this as RerankingApiVersion,
    );
  }

  @override
  bool operator ==(Object other) {
    return RerankingApiVersionMapper.ensureInitialized().equalsValue(
      this as RerankingApiVersion,
      other,
    );
  }

  @override
  int get hashCode {
    return RerankingApiVersionMapper.ensureInitialized().hashValue(
      this as RerankingApiVersion,
    );
  }
}

extension RerankingApiVersionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RerankingApiVersion, $Out> {
  RerankingApiVersionCopyWith<$R, RerankingApiVersion, $Out>
  get $asRerankingApiVersion => $base.as(
    (v, t, t2) => _RerankingApiVersionCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RerankingApiVersionCopyWith<
  $R,
  $In extends RerankingApiVersion,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? version, bool? isDeprecated, bool? isExperimental});
  RerankingApiVersionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RerankingApiVersionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RerankingApiVersion, $Out>
    implements RerankingApiVersionCopyWith<$R, RerankingApiVersion, $Out> {
  _RerankingApiVersionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RerankingApiVersion> $mapper =
      RerankingApiVersionMapper.ensureInitialized();
  @override
  $R call({String? version, bool? isDeprecated, bool? isExperimental}) =>
      $apply(
        FieldCopyWithData({
          if (version != null) #version: version,
          if (isDeprecated != null) #isDeprecated: isDeprecated,
          if (isExperimental != null) #isExperimental: isExperimental,
        }),
      );
  @override
  RerankingApiVersion $make(CopyWithData data) => RerankingApiVersion(
    version: data.get(#version, or: $value.version),
    isDeprecated: data.get(#isDeprecated, or: $value.isDeprecated),
    isExperimental: data.get(#isExperimental, or: $value.isExperimental),
  );

  @override
  RerankingApiVersionCopyWith<$R2, RerankingApiVersion, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RerankingApiVersionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RerankingBilledUnitsMapper extends ClassMapperBase<RerankingBilledUnits> {
  RerankingBilledUnitsMapper._();

  static RerankingBilledUnitsMapper? _instance;
  static RerankingBilledUnitsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RerankingBilledUnitsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RerankingBilledUnits';

  static int? _$images(RerankingBilledUnits v) => v.images;
  static const Field<RerankingBilledUnits, int> _f$images = Field(
    'images',
    _$images,
    opt: true,
  );
  static int? _$inputTokens(RerankingBilledUnits v) => v.inputTokens;
  static const Field<RerankingBilledUnits, int> _f$inputTokens = Field(
    'inputTokens',
    _$inputTokens,
    key: r'input_tokens',
    opt: true,
  );
  static int? _$outputTokens(RerankingBilledUnits v) => v.outputTokens;
  static const Field<RerankingBilledUnits, int> _f$outputTokens = Field(
    'outputTokens',
    _$outputTokens,
    key: r'output_tokens',
    opt: true,
  );
  static double? _$searchUnits(RerankingBilledUnits v) => v.searchUnits;
  static const Field<RerankingBilledUnits, double> _f$searchUnits = Field(
    'searchUnits',
    _$searchUnits,
    key: r'search_units',
    opt: true,
  );
  static double? _$classifications(RerankingBilledUnits v) => v.classifications;
  static const Field<RerankingBilledUnits, double> _f$classifications = Field(
    'classifications',
    _$classifications,
    opt: true,
  );

  @override
  final MappableFields<RerankingBilledUnits> fields = const {
    #images: _f$images,
    #inputTokens: _f$inputTokens,
    #outputTokens: _f$outputTokens,
    #searchUnits: _f$searchUnits,
    #classifications: _f$classifications,
  };

  static RerankingBilledUnits _instantiate(DecodingData data) {
    return RerankingBilledUnits(
      images: data.dec(_f$images),
      inputTokens: data.dec(_f$inputTokens),
      outputTokens: data.dec(_f$outputTokens),
      searchUnits: data.dec(_f$searchUnits),
      classifications: data.dec(_f$classifications),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RerankingBilledUnits fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RerankingBilledUnits>(map);
  }

  static RerankingBilledUnits fromJson(String json) {
    return ensureInitialized().decodeJson<RerankingBilledUnits>(json);
  }
}

mixin RerankingBilledUnitsMappable {
  String toJson() {
    return RerankingBilledUnitsMapper.ensureInitialized()
        .encodeJson<RerankingBilledUnits>(this as RerankingBilledUnits);
  }

  Map<String, dynamic> toMap() {
    return RerankingBilledUnitsMapper.ensureInitialized()
        .encodeMap<RerankingBilledUnits>(this as RerankingBilledUnits);
  }

  RerankingBilledUnitsCopyWith<
    RerankingBilledUnits,
    RerankingBilledUnits,
    RerankingBilledUnits
  >
  get copyWith =>
      _RerankingBilledUnitsCopyWithImpl<
        RerankingBilledUnits,
        RerankingBilledUnits
      >(this as RerankingBilledUnits, $identity, $identity);
  @override
  String toString() {
    return RerankingBilledUnitsMapper.ensureInitialized().stringifyValue(
      this as RerankingBilledUnits,
    );
  }

  @override
  bool operator ==(Object other) {
    return RerankingBilledUnitsMapper.ensureInitialized().equalsValue(
      this as RerankingBilledUnits,
      other,
    );
  }

  @override
  int get hashCode {
    return RerankingBilledUnitsMapper.ensureInitialized().hashValue(
      this as RerankingBilledUnits,
    );
  }
}

extension RerankingBilledUnitsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RerankingBilledUnits, $Out> {
  RerankingBilledUnitsCopyWith<$R, RerankingBilledUnits, $Out>
  get $asRerankingBilledUnits => $base.as(
    (v, t, t2) => _RerankingBilledUnitsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RerankingBilledUnitsCopyWith<
  $R,
  $In extends RerankingBilledUnits,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? images,
    int? inputTokens,
    int? outputTokens,
    double? searchUnits,
    double? classifications,
  });
  RerankingBilledUnitsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RerankingBilledUnitsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RerankingBilledUnits, $Out>
    implements RerankingBilledUnitsCopyWith<$R, RerankingBilledUnits, $Out> {
  _RerankingBilledUnitsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RerankingBilledUnits> $mapper =
      RerankingBilledUnitsMapper.ensureInitialized();
  @override
  $R call({
    Object? images = $none,
    Object? inputTokens = $none,
    Object? outputTokens = $none,
    Object? searchUnits = $none,
    Object? classifications = $none,
  }) => $apply(
    FieldCopyWithData({
      if (images != $none) #images: images,
      if (inputTokens != $none) #inputTokens: inputTokens,
      if (outputTokens != $none) #outputTokens: outputTokens,
      if (searchUnits != $none) #searchUnits: searchUnits,
      if (classifications != $none) #classifications: classifications,
    }),
  );
  @override
  RerankingBilledUnits $make(CopyWithData data) => RerankingBilledUnits(
    images: data.get(#images, or: $value.images),
    inputTokens: data.get(#inputTokens, or: $value.inputTokens),
    outputTokens: data.get(#outputTokens, or: $value.outputTokens),
    searchUnits: data.get(#searchUnits, or: $value.searchUnits),
    classifications: data.get(#classifications, or: $value.classifications),
  );

  @override
  RerankingBilledUnitsCopyWith<$R2, RerankingBilledUnits, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RerankingBilledUnitsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RerankingMetaUsageMapper extends ClassMapperBase<RerankingMetaUsage> {
  RerankingMetaUsageMapper._();

  static RerankingMetaUsageMapper? _instance;
  static RerankingMetaUsageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RerankingMetaUsageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RerankingMetaUsage';

  static int? _$inputTokens(RerankingMetaUsage v) => v.inputTokens;
  static const Field<RerankingMetaUsage, int> _f$inputTokens = Field(
    'inputTokens',
    _$inputTokens,
    key: r'input_tokens',
    opt: true,
  );
  static int? _$outputTokens(RerankingMetaUsage v) => v.outputTokens;
  static const Field<RerankingMetaUsage, int> _f$outputTokens = Field(
    'outputTokens',
    _$outputTokens,
    key: r'output_tokens',
    opt: true,
  );

  @override
  final MappableFields<RerankingMetaUsage> fields = const {
    #inputTokens: _f$inputTokens,
    #outputTokens: _f$outputTokens,
  };

  static RerankingMetaUsage _instantiate(DecodingData data) {
    return RerankingMetaUsage(
      inputTokens: data.dec(_f$inputTokens),
      outputTokens: data.dec(_f$outputTokens),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RerankingMetaUsage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RerankingMetaUsage>(map);
  }

  static RerankingMetaUsage fromJson(String json) {
    return ensureInitialized().decodeJson<RerankingMetaUsage>(json);
  }
}

mixin RerankingMetaUsageMappable {
  String toJson() {
    return RerankingMetaUsageMapper.ensureInitialized()
        .encodeJson<RerankingMetaUsage>(this as RerankingMetaUsage);
  }

  Map<String, dynamic> toMap() {
    return RerankingMetaUsageMapper.ensureInitialized()
        .encodeMap<RerankingMetaUsage>(this as RerankingMetaUsage);
  }

  RerankingMetaUsageCopyWith<
    RerankingMetaUsage,
    RerankingMetaUsage,
    RerankingMetaUsage
  >
  get copyWith =>
      _RerankingMetaUsageCopyWithImpl<RerankingMetaUsage, RerankingMetaUsage>(
        this as RerankingMetaUsage,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RerankingMetaUsageMapper.ensureInitialized().stringifyValue(
      this as RerankingMetaUsage,
    );
  }

  @override
  bool operator ==(Object other) {
    return RerankingMetaUsageMapper.ensureInitialized().equalsValue(
      this as RerankingMetaUsage,
      other,
    );
  }

  @override
  int get hashCode {
    return RerankingMetaUsageMapper.ensureInitialized().hashValue(
      this as RerankingMetaUsage,
    );
  }
}

extension RerankingMetaUsageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RerankingMetaUsage, $Out> {
  RerankingMetaUsageCopyWith<$R, RerankingMetaUsage, $Out>
  get $asRerankingMetaUsage => $base.as(
    (v, t, t2) => _RerankingMetaUsageCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RerankingMetaUsageCopyWith<
  $R,
  $In extends RerankingMetaUsage,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? inputTokens, int? outputTokens});
  RerankingMetaUsageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RerankingMetaUsageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RerankingMetaUsage, $Out>
    implements RerankingMetaUsageCopyWith<$R, RerankingMetaUsage, $Out> {
  _RerankingMetaUsageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RerankingMetaUsage> $mapper =
      RerankingMetaUsageMapper.ensureInitialized();
  @override
  $R call({Object? inputTokens = $none, Object? outputTokens = $none}) =>
      $apply(
        FieldCopyWithData({
          if (inputTokens != $none) #inputTokens: inputTokens,
          if (outputTokens != $none) #outputTokens: outputTokens,
        }),
      );
  @override
  RerankingMetaUsage $make(CopyWithData data) => RerankingMetaUsage(
    inputTokens: data.get(#inputTokens, or: $value.inputTokens),
    outputTokens: data.get(#outputTokens, or: $value.outputTokens),
  );

  @override
  RerankingMetaUsageCopyWith<$R2, RerankingMetaUsage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RerankingMetaUsageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RerankingUsageMapper extends ClassMapperBase<RerankingUsage> {
  RerankingUsageMapper._();

  static RerankingUsageMapper? _instance;
  static RerankingUsageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RerankingUsageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RerankingUsage';

  static int? _$inputTokens(RerankingUsage v) => v.inputTokens;
  static const Field<RerankingUsage, int> _f$inputTokens = Field(
    'inputTokens',
    _$inputTokens,
    key: r'input_tokens',
    opt: true,
  );
  static int? _$outputTokens(RerankingUsage v) => v.outputTokens;
  static const Field<RerankingUsage, int> _f$outputTokens = Field(
    'outputTokens',
    _$outputTokens,
    key: r'output_tokens',
    opt: true,
  );
  static int _$documents(RerankingUsage v) => v.documents;
  static const Field<RerankingUsage, int> _f$documents = Field(
    'documents',
    _$documents,
  );

  @override
  final MappableFields<RerankingUsage> fields = const {
    #inputTokens: _f$inputTokens,
    #outputTokens: _f$outputTokens,
    #documents: _f$documents,
  };

  static RerankingUsage _instantiate(DecodingData data) {
    return RerankingUsage(
      inputTokens: data.dec(_f$inputTokens),
      outputTokens: data.dec(_f$outputTokens),
      documents: data.dec(_f$documents),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RerankingUsage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RerankingUsage>(map);
  }

  static RerankingUsage fromJson(String json) {
    return ensureInitialized().decodeJson<RerankingUsage>(json);
  }
}

mixin RerankingUsageMappable {
  String toJson() {
    return RerankingUsageMapper.ensureInitialized().encodeJson<RerankingUsage>(
      this as RerankingUsage,
    );
  }

  Map<String, dynamic> toMap() {
    return RerankingUsageMapper.ensureInitialized().encodeMap<RerankingUsage>(
      this as RerankingUsage,
    );
  }

  RerankingUsageCopyWith<RerankingUsage, RerankingUsage, RerankingUsage>
  get copyWith => _RerankingUsageCopyWithImpl<RerankingUsage, RerankingUsage>(
    this as RerankingUsage,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RerankingUsageMapper.ensureInitialized().stringifyValue(
      this as RerankingUsage,
    );
  }

  @override
  bool operator ==(Object other) {
    return RerankingUsageMapper.ensureInitialized().equalsValue(
      this as RerankingUsage,
      other,
    );
  }

  @override
  int get hashCode {
    return RerankingUsageMapper.ensureInitialized().hashValue(
      this as RerankingUsage,
    );
  }
}

extension RerankingUsageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RerankingUsage, $Out> {
  RerankingUsageCopyWith<$R, RerankingUsage, $Out> get $asRerankingUsage =>
      $base.as((v, t, t2) => _RerankingUsageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RerankingUsageCopyWith<$R, $In extends RerankingUsage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? inputTokens, int? outputTokens, int? documents});
  RerankingUsageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RerankingUsageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RerankingUsage, $Out>
    implements RerankingUsageCopyWith<$R, RerankingUsage, $Out> {
  _RerankingUsageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RerankingUsage> $mapper =
      RerankingUsageMapper.ensureInitialized();
  @override
  $R call({
    Object? inputTokens = $none,
    Object? outputTokens = $none,
    int? documents,
  }) => $apply(
    FieldCopyWithData({
      if (inputTokens != $none) #inputTokens: inputTokens,
      if (outputTokens != $none) #outputTokens: outputTokens,
      if (documents != null) #documents: documents,
    }),
  );
  @override
  RerankingUsage $make(CopyWithData data) => RerankingUsage(
    inputTokens: data.get(#inputTokens, or: $value.inputTokens),
    outputTokens: data.get(#outputTokens, or: $value.outputTokens),
    documents: data.get(#documents, or: $value.documents),
  );

  @override
  RerankingUsageCopyWith<$R2, RerankingUsage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RerankingUsageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RerankingMetaMapper extends ClassMapperBase<RerankingMeta> {
  RerankingMetaMapper._();

  static RerankingMetaMapper? _instance;
  static RerankingMetaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RerankingMetaMapper._());
      RerankingApiVersionMapper.ensureInitialized();
      RerankingBilledUnitsMapper.ensureInitialized();
      RerankingMetaUsageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RerankingMeta';

  static String _$model(RerankingMeta v) => v.model;
  static const Field<RerankingMeta, String> _f$model = Field('model', _$model);
  static RerankingApiVersion? _$apiVersion(RerankingMeta v) => v.apiVersion;
  static const Field<RerankingMeta, RerankingApiVersion> _f$apiVersion = Field(
    'apiVersion',
    _$apiVersion,
    key: r'api_version',
    opt: true,
  );
  static RerankingBilledUnits? _$billedUnits(RerankingMeta v) => v.billedUnits;
  static const Field<RerankingMeta, RerankingBilledUnits> _f$billedUnits =
      Field('billedUnits', _$billedUnits, key: r'billed_units', opt: true);
  static RerankingMetaUsage? _$tokens(RerankingMeta v) => v.tokens;
  static const Field<RerankingMeta, RerankingMetaUsage> _f$tokens = Field(
    'tokens',
    _$tokens,
    opt: true,
  );
  static List<String>? _$warnings(RerankingMeta v) => v.warnings;
  static const Field<RerankingMeta, List<String>> _f$warnings = Field(
    'warnings',
    _$warnings,
    opt: true,
  );

  @override
  final MappableFields<RerankingMeta> fields = const {
    #model: _f$model,
    #apiVersion: _f$apiVersion,
    #billedUnits: _f$billedUnits,
    #tokens: _f$tokens,
    #warnings: _f$warnings,
  };

  static RerankingMeta _instantiate(DecodingData data) {
    return RerankingMeta(
      model: data.dec(_f$model),
      apiVersion: data.dec(_f$apiVersion),
      billedUnits: data.dec(_f$billedUnits),
      tokens: data.dec(_f$tokens),
      warnings: data.dec(_f$warnings),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RerankingMeta fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RerankingMeta>(map);
  }

  static RerankingMeta fromJson(String json) {
    return ensureInitialized().decodeJson<RerankingMeta>(json);
  }
}

mixin RerankingMetaMappable {
  String toJson() {
    return RerankingMetaMapper.ensureInitialized().encodeJson<RerankingMeta>(
      this as RerankingMeta,
    );
  }

  Map<String, dynamic> toMap() {
    return RerankingMetaMapper.ensureInitialized().encodeMap<RerankingMeta>(
      this as RerankingMeta,
    );
  }

  RerankingMetaCopyWith<RerankingMeta, RerankingMeta, RerankingMeta>
  get copyWith => _RerankingMetaCopyWithImpl<RerankingMeta, RerankingMeta>(
    this as RerankingMeta,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RerankingMetaMapper.ensureInitialized().stringifyValue(
      this as RerankingMeta,
    );
  }

  @override
  bool operator ==(Object other) {
    return RerankingMetaMapper.ensureInitialized().equalsValue(
      this as RerankingMeta,
      other,
    );
  }

  @override
  int get hashCode {
    return RerankingMetaMapper.ensureInitialized().hashValue(
      this as RerankingMeta,
    );
  }
}

extension RerankingMetaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RerankingMeta, $Out> {
  RerankingMetaCopyWith<$R, RerankingMeta, $Out> get $asRerankingMeta =>
      $base.as((v, t, t2) => _RerankingMetaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RerankingMetaCopyWith<$R, $In extends RerankingMeta, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RerankingApiVersionCopyWith<$R, RerankingApiVersion, RerankingApiVersion>?
  get apiVersion;
  RerankingBilledUnitsCopyWith<$R, RerankingBilledUnits, RerankingBilledUnits>?
  get billedUnits;
  RerankingMetaUsageCopyWith<$R, RerankingMetaUsage, RerankingMetaUsage>?
  get tokens;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get warnings;
  $R call({
    String? model,
    RerankingApiVersion? apiVersion,
    RerankingBilledUnits? billedUnits,
    RerankingMetaUsage? tokens,
    List<String>? warnings,
  });
  RerankingMetaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RerankingMetaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RerankingMeta, $Out>
    implements RerankingMetaCopyWith<$R, RerankingMeta, $Out> {
  _RerankingMetaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RerankingMeta> $mapper =
      RerankingMetaMapper.ensureInitialized();
  @override
  RerankingApiVersionCopyWith<$R, RerankingApiVersion, RerankingApiVersion>?
  get apiVersion =>
      $value.apiVersion?.copyWith.$chain((v) => call(apiVersion: v));
  @override
  RerankingBilledUnitsCopyWith<$R, RerankingBilledUnits, RerankingBilledUnits>?
  get billedUnits =>
      $value.billedUnits?.copyWith.$chain((v) => call(billedUnits: v));
  @override
  RerankingMetaUsageCopyWith<$R, RerankingMetaUsage, RerankingMetaUsage>?
  get tokens => $value.tokens?.copyWith.$chain((v) => call(tokens: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get warnings =>
      $value.warnings != null
      ? ListCopyWith(
          $value.warnings!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(warnings: v),
        )
      : null;
  @override
  $R call({
    String? model,
    Object? apiVersion = $none,
    Object? billedUnits = $none,
    Object? tokens = $none,
    Object? warnings = $none,
  }) => $apply(
    FieldCopyWithData({
      if (model != null) #model: model,
      if (apiVersion != $none) #apiVersion: apiVersion,
      if (billedUnits != $none) #billedUnits: billedUnits,
      if (tokens != $none) #tokens: tokens,
      if (warnings != $none) #warnings: warnings,
    }),
  );
  @override
  RerankingMeta $make(CopyWithData data) => RerankingMeta(
    model: data.get(#model, or: $value.model),
    apiVersion: data.get(#apiVersion, or: $value.apiVersion),
    billedUnits: data.get(#billedUnits, or: $value.billedUnits),
    tokens: data.get(#tokens, or: $value.tokens),
    warnings: data.get(#warnings, or: $value.warnings),
  );

  @override
  RerankingMetaCopyWith<$R2, RerankingMeta, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RerankingMetaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RerankingResponseMapper extends ClassMapperBase<RerankingResponse> {
  RerankingResponseMapper._();

  static RerankingResponseMapper? _instance;
  static RerankingResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RerankingResponseMapper._());
      ObjectTypeMapper.ensureInitialized();
      RerankingDataMapper.ensureInitialized();
      RerankingUsageMapper.ensureInitialized();
      RerankingMetaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RerankingResponse';

  static ObjectType _$object(RerankingResponse v) => v.object;
  static const Field<RerankingResponse, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.list,
  );
  static List<RerankingData> _$results(RerankingResponse v) => v.results;
  static const Field<RerankingResponse, List<RerankingData>> _f$results = Field(
    'results',
    _$results,
    opt: true,
    def: const [],
  );
  static RerankingUsage _$usage(RerankingResponse v) => v.usage;
  static const Field<RerankingResponse, RerankingUsage> _f$usage = Field(
    'usage',
    _$usage,
  );
  static RerankingMeta _$meta(RerankingResponse v) => v.meta;
  static const Field<RerankingResponse, RerankingMeta> _f$meta = Field(
    'meta',
    _$meta,
  );

  @override
  final MappableFields<RerankingResponse> fields = const {
    #object: _f$object,
    #results: _f$results,
    #usage: _f$usage,
    #meta: _f$meta,
  };

  static RerankingResponse _instantiate(DecodingData data) {
    return RerankingResponse(
      object: data.dec(_f$object),
      results: data.dec(_f$results),
      usage: data.dec(_f$usage),
      meta: data.dec(_f$meta),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RerankingResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RerankingResponse>(map);
  }

  static RerankingResponse fromJson(String json) {
    return ensureInitialized().decodeJson<RerankingResponse>(json);
  }
}

mixin RerankingResponseMappable {
  String toJson() {
    return RerankingResponseMapper.ensureInitialized()
        .encodeJson<RerankingResponse>(this as RerankingResponse);
  }

  Map<String, dynamic> toMap() {
    return RerankingResponseMapper.ensureInitialized()
        .encodeMap<RerankingResponse>(this as RerankingResponse);
  }

  RerankingResponseCopyWith<
    RerankingResponse,
    RerankingResponse,
    RerankingResponse
  >
  get copyWith =>
      _RerankingResponseCopyWithImpl<RerankingResponse, RerankingResponse>(
        this as RerankingResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RerankingResponseMapper.ensureInitialized().stringifyValue(
      this as RerankingResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return RerankingResponseMapper.ensureInitialized().equalsValue(
      this as RerankingResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return RerankingResponseMapper.ensureInitialized().hashValue(
      this as RerankingResponse,
    );
  }
}

extension RerankingResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RerankingResponse, $Out> {
  RerankingResponseCopyWith<$R, RerankingResponse, $Out>
  get $asRerankingResponse => $base.as(
    (v, t, t2) => _RerankingResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RerankingResponseCopyWith<
  $R,
  $In extends RerankingResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    RerankingData,
    RerankingDataCopyWith<$R, RerankingData, RerankingData>
  >
  get results;
  RerankingUsageCopyWith<$R, RerankingUsage, RerankingUsage> get usage;
  RerankingMetaCopyWith<$R, RerankingMeta, RerankingMeta> get meta;
  $R call({
    ObjectType? object,
    List<RerankingData>? results,
    RerankingUsage? usage,
    RerankingMeta? meta,
  });
  RerankingResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RerankingResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RerankingResponse, $Out>
    implements RerankingResponseCopyWith<$R, RerankingResponse, $Out> {
  _RerankingResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RerankingResponse> $mapper =
      RerankingResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    RerankingData,
    RerankingDataCopyWith<$R, RerankingData, RerankingData>
  >
  get results => ListCopyWith(
    $value.results,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(results: v),
  );
  @override
  RerankingUsageCopyWith<$R, RerankingUsage, RerankingUsage> get usage =>
      $value.usage.copyWith.$chain((v) => call(usage: v));
  @override
  RerankingMetaCopyWith<$R, RerankingMeta, RerankingMeta> get meta =>
      $value.meta.copyWith.$chain((v) => call(meta: v));
  @override
  $R call({
    ObjectType? object,
    List<RerankingData>? results,
    RerankingUsage? usage,
    RerankingMeta? meta,
  }) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (results != null) #results: results,
      if (usage != null) #usage: usage,
      if (meta != null) #meta: meta,
    }),
  );
  @override
  RerankingResponse $make(CopyWithData data) => RerankingResponse(
    object: data.get(#object, or: $value.object),
    results: data.get(#results, or: $value.results),
    usage: data.get(#usage, or: $value.usage),
    meta: data.get(#meta, or: $value.meta),
  );

  @override
  RerankingResponseCopyWith<$R2, RerankingResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RerankingResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatCompletionUsageMapper extends ClassMapperBase<ChatCompletionUsage> {
  ChatCompletionUsageMapper._();

  static ChatCompletionUsageMapper? _instance;
  static ChatCompletionUsageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatCompletionUsageMapper._());
      PromptUsageDetailsMapper.ensureInitialized();
      CompletionUsageDetailsMapper.ensureInitialized();
      ToolUsageDetailsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatCompletionUsage';

  static int _$promptTokens(ChatCompletionUsage v) => v.promptTokens;
  static const Field<ChatCompletionUsage, int> _f$promptTokens = Field(
    'promptTokens',
    _$promptTokens,
    key: r'prompt_tokens',
    opt: true,
    def: 0,
  );
  static int _$completionTokens(ChatCompletionUsage v) => v.completionTokens;
  static const Field<ChatCompletionUsage, int> _f$completionTokens = Field(
    'completionTokens',
    _$completionTokens,
    key: r'completion_tokens',
    opt: true,
    def: 0,
  );
  static int _$totalTokens(ChatCompletionUsage v) => v.totalTokens;
  static const Field<ChatCompletionUsage, int> _f$totalTokens = Field(
    'totalTokens',
    _$totalTokens,
    key: r'total_tokens',
    opt: true,
    def: 0,
  );
  static PromptUsageDetails? _$promptTokensDetails(ChatCompletionUsage v) =>
      v.promptTokensDetails;
  static const Field<ChatCompletionUsage, PromptUsageDetails>
  _f$promptTokensDetails = Field(
    'promptTokensDetails',
    _$promptTokensDetails,
    key: r'prompt_tokens_details',
    opt: true,
  );
  static CompletionUsageDetails? _$completionTokensDetails(
    ChatCompletionUsage v,
  ) => v.completionTokensDetails;
  static const Field<ChatCompletionUsage, CompletionUsageDetails>
  _f$completionTokensDetails = Field(
    'completionTokensDetails',
    _$completionTokensDetails,
    key: r'completion_tokens_details',
    opt: true,
  );
  static ToolUsageDetails? _$toolUsageDetails(ChatCompletionUsage v) =>
      v.toolUsageDetails;
  static const Field<ChatCompletionUsage, ToolUsageDetails>
  _f$toolUsageDetails = Field(
    'toolUsageDetails',
    _$toolUsageDetails,
    key: r'tool_usage_details',
    opt: true,
  );
  static int _$reasoningTokens(ChatCompletionUsage v) => v.reasoningTokens;
  static const Field<ChatCompletionUsage, int> _f$reasoningTokens = Field(
    'reasoningTokens',
    _$reasoningTokens,
    key: r'reasoning_tokens',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ChatCompletionUsage> fields = const {
    #promptTokens: _f$promptTokens,
    #completionTokens: _f$completionTokens,
    #totalTokens: _f$totalTokens,
    #promptTokensDetails: _f$promptTokensDetails,
    #completionTokensDetails: _f$completionTokensDetails,
    #toolUsageDetails: _f$toolUsageDetails,
    #reasoningTokens: _f$reasoningTokens,
  };

  static ChatCompletionUsage _instantiate(DecodingData data) {
    return ChatCompletionUsage(
      promptTokens: data.dec(_f$promptTokens),
      completionTokens: data.dec(_f$completionTokens),
      totalTokens: data.dec(_f$totalTokens),
      promptTokensDetails: data.dec(_f$promptTokensDetails),
      completionTokensDetails: data.dec(_f$completionTokensDetails),
      toolUsageDetails: data.dec(_f$toolUsageDetails),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatCompletionUsage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatCompletionUsage>(map);
  }

  static ChatCompletionUsage fromJson(String json) {
    return ensureInitialized().decodeJson<ChatCompletionUsage>(json);
  }
}

mixin ChatCompletionUsageMappable {
  String toJson() {
    return ChatCompletionUsageMapper.ensureInitialized()
        .encodeJson<ChatCompletionUsage>(this as ChatCompletionUsage);
  }

  Map<String, dynamic> toMap() {
    return ChatCompletionUsageMapper.ensureInitialized()
        .encodeMap<ChatCompletionUsage>(this as ChatCompletionUsage);
  }

  ChatCompletionUsageCopyWith<
    ChatCompletionUsage,
    ChatCompletionUsage,
    ChatCompletionUsage
  >
  get copyWith =>
      _ChatCompletionUsageCopyWithImpl<
        ChatCompletionUsage,
        ChatCompletionUsage
      >(this as ChatCompletionUsage, $identity, $identity);
  @override
  String toString() {
    return ChatCompletionUsageMapper.ensureInitialized().stringifyValue(
      this as ChatCompletionUsage,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatCompletionUsageMapper.ensureInitialized().equalsValue(
      this as ChatCompletionUsage,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatCompletionUsageMapper.ensureInitialized().hashValue(
      this as ChatCompletionUsage,
    );
  }
}

extension ChatCompletionUsageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatCompletionUsage, $Out> {
  ChatCompletionUsageCopyWith<$R, ChatCompletionUsage, $Out>
  get $asChatCompletionUsage => $base.as(
    (v, t, t2) => _ChatCompletionUsageCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ChatCompletionUsageCopyWith<
  $R,
  $In extends ChatCompletionUsage,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  PromptUsageDetailsCopyWith<$R, PromptUsageDetails, PromptUsageDetails>?
  get promptTokensDetails;
  CompletionUsageDetailsCopyWith<
    $R,
    CompletionUsageDetails,
    CompletionUsageDetails
  >?
  get completionTokensDetails;
  ToolUsageDetailsCopyWith<$R, ToolUsageDetails, ToolUsageDetails>?
  get toolUsageDetails;
  $R call({
    int? promptTokens,
    int? completionTokens,
    int? totalTokens,
    PromptUsageDetails? promptTokensDetails,
    CompletionUsageDetails? completionTokensDetails,
    ToolUsageDetails? toolUsageDetails,
  });
  ChatCompletionUsageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatCompletionUsageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatCompletionUsage, $Out>
    implements ChatCompletionUsageCopyWith<$R, ChatCompletionUsage, $Out> {
  _ChatCompletionUsageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatCompletionUsage> $mapper =
      ChatCompletionUsageMapper.ensureInitialized();
  @override
  PromptUsageDetailsCopyWith<$R, PromptUsageDetails, PromptUsageDetails>?
  get promptTokensDetails => $value.promptTokensDetails?.copyWith.$chain(
    (v) => call(promptTokensDetails: v),
  );
  @override
  CompletionUsageDetailsCopyWith<
    $R,
    CompletionUsageDetails,
    CompletionUsageDetails
  >?
  get completionTokensDetails => $value.completionTokensDetails?.copyWith
      .$chain((v) => call(completionTokensDetails: v));
  @override
  ToolUsageDetailsCopyWith<$R, ToolUsageDetails, ToolUsageDetails>?
  get toolUsageDetails => $value.toolUsageDetails?.copyWith.$chain(
    (v) => call(toolUsageDetails: v),
  );
  @override
  $R call({
    int? promptTokens,
    int? completionTokens,
    int? totalTokens,
    Object? promptTokensDetails = $none,
    Object? completionTokensDetails = $none,
    Object? toolUsageDetails = $none,
  }) => $apply(
    FieldCopyWithData({
      if (promptTokens != null) #promptTokens: promptTokens,
      if (completionTokens != null) #completionTokens: completionTokens,
      if (totalTokens != null) #totalTokens: totalTokens,
      if (promptTokensDetails != $none)
        #promptTokensDetails: promptTokensDetails,
      if (completionTokensDetails != $none)
        #completionTokensDetails: completionTokensDetails,
      if (toolUsageDetails != $none) #toolUsageDetails: toolUsageDetails,
    }),
  );
  @override
  ChatCompletionUsage $make(CopyWithData data) => ChatCompletionUsage(
    promptTokens: data.get(#promptTokens, or: $value.promptTokens),
    completionTokens: data.get(#completionTokens, or: $value.completionTokens),
    totalTokens: data.get(#totalTokens, or: $value.totalTokens),
    promptTokensDetails: data.get(
      #promptTokensDetails,
      or: $value.promptTokensDetails,
    ),
    completionTokensDetails: data.get(
      #completionTokensDetails,
      or: $value.completionTokensDetails,
    ),
    toolUsageDetails: data.get(#toolUsageDetails, or: $value.toolUsageDetails),
  );

  @override
  ChatCompletionUsageCopyWith<$R2, ChatCompletionUsage, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChatCompletionUsageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatCompletionChunkResponseMapper
    extends ClassMapperBase<ChatCompletionChunkResponse> {
  ChatCompletionChunkResponseMapper._();

  static ChatCompletionChunkResponseMapper? _instance;
  static ChatCompletionChunkResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = ChatCompletionChunkResponseMapper._(),
      );
      ObjectTypeMapper.ensureInitialized();
      ChatCompletionChoiceMapper.ensureInitialized();
      ChatCompletionUsageMapper.ensureInitialized();
      ReferencesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatCompletionChunkResponse';

  static String _$id(ChatCompletionChunkResponse v) => v.id;
  static const Field<ChatCompletionChunkResponse, String> _f$id = Field(
    'id',
    _$id,
  );
  static ObjectType _$object(ChatCompletionChunkResponse v) => v.object;
  static const Field<ChatCompletionChunkResponse, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.chatCompletion,
  );
  static int _$created(ChatCompletionChunkResponse v) => v.created;
  static const Field<ChatCompletionChunkResponse, int> _f$created = Field(
    'created',
    _$created,
  );
  static String _$model(ChatCompletionChunkResponse v) => v.model;
  static const Field<ChatCompletionChunkResponse, String> _f$model = Field(
    'model',
    _$model,
  );
  static List<ChatCompletionChoice> _$choices(ChatCompletionChunkResponse v) =>
      v.choices;
  static const Field<ChatCompletionChunkResponse, List<ChatCompletionChoice>>
  _f$choices = Field('choices', _$choices);
  static ChatCompletionUsage? _$usage(ChatCompletionChunkResponse v) => v.usage;
  static const Field<ChatCompletionChunkResponse, ChatCompletionUsage>
  _f$usage = Field('usage', _$usage, opt: true);
  static References? _$references(ChatCompletionChunkResponse v) =>
      v.references;
  static const Field<ChatCompletionChunkResponse, References> _f$references =
      Field('references', _$references, opt: true);
  static String? _$serviceTier(ChatCompletionChunkResponse v) => v.serviceTier;
  static const Field<ChatCompletionChunkResponse, String> _f$serviceTier =
      Field('serviceTier', _$serviceTier, key: r'service_tier', opt: true);
  static String? _$systemFingerprint(ChatCompletionChunkResponse v) =>
      v.systemFingerprint;
  static const Field<ChatCompletionChunkResponse, String> _f$systemFingerprint =
      Field(
        'systemFingerprint',
        _$systemFingerprint,
        key: r'system_fingerprint',
        opt: true,
      );
  static String? _$finishReason(ChatCompletionChunkResponse v) =>
      v.finishReason;
  static const Field<ChatCompletionChunkResponse, String> _f$finishReason =
      Field(
        'finishReason',
        _$finishReason,
        key: r'finish_reason',
        mode: FieldMode.member,
      );
  static ChatCompletionMessage? _$delta(ChatCompletionChunkResponse v) =>
      v.delta;
  static const Field<ChatCompletionChunkResponse, ChatCompletionMessage>
  _f$delta = Field('delta', _$delta, mode: FieldMode.member);
  static ChatCompletionMessage? _$message(ChatCompletionChunkResponse v) =>
      v.message;
  static const Field<ChatCompletionChunkResponse, ChatCompletionMessage>
  _f$message = Field('message', _$message, mode: FieldMode.member);
  static String? _$reasoningContent(ChatCompletionChunkResponse v) =>
      v.reasoningContent;
  static const Field<ChatCompletionChunkResponse, String> _f$reasoningContent =
      Field(
        'reasoningContent',
        _$reasoningContent,
        key: r'reasoning_content',
        mode: FieldMode.member,
      );
  static String _$content(ChatCompletionChunkResponse v) => v.content;
  static const Field<ChatCompletionChunkResponse, String> _f$content = Field(
    'content',
    _$content,
    mode: FieldMode.member,
  );
  static int _$promptTokens(ChatCompletionChunkResponse v) => v.promptTokens;
  static const Field<ChatCompletionChunkResponse, int> _f$promptTokens = Field(
    'promptTokens',
    _$promptTokens,
    key: r'prompt_tokens',
    mode: FieldMode.member,
  );
  static int _$completionTokens(ChatCompletionChunkResponse v) =>
      v.completionTokens;
  static const Field<ChatCompletionChunkResponse, int> _f$completionTokens =
      Field(
        'completionTokens',
        _$completionTokens,
        key: r'completion_tokens',
        mode: FieldMode.member,
      );
  static int _$reasoningTokens(ChatCompletionChunkResponse v) =>
      v.reasoningTokens;
  static const Field<ChatCompletionChunkResponse, int> _f$reasoningTokens =
      Field(
        'reasoningTokens',
        _$reasoningTokens,
        key: r'reasoning_tokens',
        mode: FieldMode.member,
      );
  static int _$totalTokens(ChatCompletionChunkResponse v) => v.totalTokens;
  static const Field<ChatCompletionChunkResponse, int> _f$totalTokens = Field(
    'totalTokens',
    _$totalTokens,
    key: r'total_tokens',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ChatCompletionChunkResponse> fields = const {
    #id: _f$id,
    #object: _f$object,
    #created: _f$created,
    #model: _f$model,
    #choices: _f$choices,
    #usage: _f$usage,
    #references: _f$references,
    #serviceTier: _f$serviceTier,
    #systemFingerprint: _f$systemFingerprint,
    #finishReason: _f$finishReason,
    #delta: _f$delta,
    #message: _f$message,
    #reasoningContent: _f$reasoningContent,
    #content: _f$content,
    #promptTokens: _f$promptTokens,
    #completionTokens: _f$completionTokens,
    #reasoningTokens: _f$reasoningTokens,
    #totalTokens: _f$totalTokens,
  };

  static ChatCompletionChunkResponse _instantiate(DecodingData data) {
    return ChatCompletionChunkResponse(
      id: data.dec(_f$id),
      object: data.dec(_f$object),
      created: data.dec(_f$created),
      model: data.dec(_f$model),
      choices: data.dec(_f$choices),
      usage: data.dec(_f$usage),
      references: data.dec(_f$references),
      serviceTier: data.dec(_f$serviceTier),
      systemFingerprint: data.dec(_f$systemFingerprint),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatCompletionChunkResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatCompletionChunkResponse>(map);
  }

  static ChatCompletionChunkResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ChatCompletionChunkResponse>(json);
  }
}

mixin ChatCompletionChunkResponseMappable {
  String toJson() {
    return ChatCompletionChunkResponseMapper.ensureInitialized()
        .encodeJson<ChatCompletionChunkResponse>(
          this as ChatCompletionChunkResponse,
        );
  }

  Map<String, dynamic> toMap() {
    return ChatCompletionChunkResponseMapper.ensureInitialized()
        .encodeMap<ChatCompletionChunkResponse>(
          this as ChatCompletionChunkResponse,
        );
  }

  ChatCompletionChunkResponseCopyWith<
    ChatCompletionChunkResponse,
    ChatCompletionChunkResponse,
    ChatCompletionChunkResponse
  >
  get copyWith =>
      _ChatCompletionChunkResponseCopyWithImpl<
        ChatCompletionChunkResponse,
        ChatCompletionChunkResponse
      >(this as ChatCompletionChunkResponse, $identity, $identity);
  @override
  String toString() {
    return ChatCompletionChunkResponseMapper.ensureInitialized().stringifyValue(
      this as ChatCompletionChunkResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatCompletionChunkResponseMapper.ensureInitialized().equalsValue(
      this as ChatCompletionChunkResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatCompletionChunkResponseMapper.ensureInitialized().hashValue(
      this as ChatCompletionChunkResponse,
    );
  }
}

extension ChatCompletionChunkResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatCompletionChunkResponse, $Out> {
  ChatCompletionChunkResponseCopyWith<$R, ChatCompletionChunkResponse, $Out>
  get $asChatCompletionChunkResponse => $base.as(
    (v, t, t2) => _ChatCompletionChunkResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ChatCompletionChunkResponseCopyWith<
  $R,
  $In extends ChatCompletionChunkResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ChatCompletionChoice,
    ChatCompletionChoiceCopyWith<$R, ChatCompletionChoice, ChatCompletionChoice>
  >
  get choices;
  ChatCompletionUsageCopyWith<$R, ChatCompletionUsage, ChatCompletionUsage>?
  get usage;
  ReferencesCopyWith<$R, References, References>? get references;
  $R call({
    String? id,
    ObjectType? object,
    int? created,
    String? model,
    List<ChatCompletionChoice>? choices,
    ChatCompletionUsage? usage,
    References? references,
    String? serviceTier,
    String? systemFingerprint,
  });
  ChatCompletionChunkResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatCompletionChunkResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatCompletionChunkResponse, $Out>
    implements
        ChatCompletionChunkResponseCopyWith<
          $R,
          ChatCompletionChunkResponse,
          $Out
        > {
  _ChatCompletionChunkResponseCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<ChatCompletionChunkResponse> $mapper =
      ChatCompletionChunkResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ChatCompletionChoice,
    ChatCompletionChoiceCopyWith<$R, ChatCompletionChoice, ChatCompletionChoice>
  >
  get choices => ListCopyWith(
    $value.choices,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(choices: v),
  );
  @override
  ChatCompletionUsageCopyWith<$R, ChatCompletionUsage, ChatCompletionUsage>?
  get usage => $value.usage?.copyWith.$chain((v) => call(usage: v));
  @override
  ReferencesCopyWith<$R, References, References>? get references =>
      $value.references?.copyWith.$chain((v) => call(references: v));
  @override
  $R call({
    String? id,
    ObjectType? object,
    int? created,
    String? model,
    List<ChatCompletionChoice>? choices,
    Object? usage = $none,
    Object? references = $none,
    Object? serviceTier = $none,
    Object? systemFingerprint = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (object != null) #object: object,
      if (created != null) #created: created,
      if (model != null) #model: model,
      if (choices != null) #choices: choices,
      if (usage != $none) #usage: usage,
      if (references != $none) #references: references,
      if (serviceTier != $none) #serviceTier: serviceTier,
      if (systemFingerprint != $none) #systemFingerprint: systemFingerprint,
    }),
  );
  @override
  ChatCompletionChunkResponse $make(CopyWithData data) =>
      ChatCompletionChunkResponse(
        id: data.get(#id, or: $value.id),
        object: data.get(#object, or: $value.object),
        created: data.get(#created, or: $value.created),
        model: data.get(#model, or: $value.model),
        choices: data.get(#choices, or: $value.choices),
        usage: data.get(#usage, or: $value.usage),
        references: data.get(#references, or: $value.references),
        serviceTier: data.get(#serviceTier, or: $value.serviceTier),
        systemFingerprint: data.get(
          #systemFingerprint,
          or: $value.systemFingerprint,
        ),
      );

  @override
  ChatCompletionChunkResponseCopyWith<$R2, ChatCompletionChunkResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChatCompletionChunkResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatContentMapper extends ClassMapperBase<ChatContent> {
  ChatContentMapper._();

  static ChatContentMapper? _instance;
  static ChatContentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatContentMapper._());
      TextContentMapper.ensureInitialized();
      ImageContentMapper.ensureInitialized();
      AudioContentMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatContent';

  @override
  final MappableFields<ChatContent> fields = const {};

  static ChatContent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'ChatContent',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatContent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatContent>(map);
  }

  static ChatContent fromJson(String json) {
    return ensureInitialized().decodeJson<ChatContent>(json);
  }
}

mixin ChatContentMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ChatContentCopyWith<ChatContent, ChatContent, ChatContent> get copyWith;
}

abstract class ChatContentCopyWith<$R, $In extends ChatContent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ChatContentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class ChatContentS3Mapper extends ClassMapperBase<ChatContentS3> {
  ChatContentS3Mapper._();

  static ChatContentS3Mapper? _instance;
  static ChatContentS3Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatContentS3Mapper._());
      TextContentMapper.ensureInitialized();
      S3ContentMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatContentS3';

  @override
  final MappableFields<ChatContentS3> fields = const {};

  static ChatContentS3 _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'ChatContentS3',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatContentS3 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatContentS3>(map);
  }

  static ChatContentS3 fromJson(String json) {
    return ensureInitialized().decodeJson<ChatContentS3>(json);
  }
}

mixin ChatContentS3Mappable {
  String toJson();
  Map<String, dynamic> toMap();
  ChatContentS3CopyWith<ChatContentS3, ChatContentS3, ChatContentS3>
  get copyWith;
}

abstract class ChatContentS3CopyWith<$R, $In extends ChatContentS3, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ChatContentS3CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class TextContentMapper extends SubClassMapperBase<TextContent> {
  TextContentMapper._();

  static TextContentMapper? _instance;
  static TextContentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextContentMapper._());
      ChatContentMapper.ensureInitialized().addSubMapper(_instance!);
      ContentTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TextContent';

  static ContentType _$type(TextContent v) => v.type;
  static const Field<TextContent, ContentType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: ContentType.text,
  );
  static String? _$text(TextContent v) => v.text;
  static const Field<TextContent, String> _f$text = Field(
    'text',
    _$text,
    opt: true,
  );

  @override
  final MappableFields<TextContent> fields = const {
    #type: _f$type,
    #text: _f$text,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'text';
  @override
  late final ClassMapperBase superMapper =
      ChatContentMapper.ensureInitialized();

  static TextContent _instantiate(DecodingData data) {
    return TextContent(type: data.dec(_f$type), text: data.dec(_f$text));
  }

  @override
  final Function instantiate = _instantiate;

  static TextContent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextContent>(map);
  }

  static TextContent fromJson(String json) {
    return ensureInitialized().decodeJson<TextContent>(json);
  }
}

mixin TextContentMappable {
  String toJson() {
    return TextContentMapper.ensureInitialized().encodeJson<TextContent>(
      this as TextContent,
    );
  }

  Map<String, dynamic> toMap() {
    return TextContentMapper.ensureInitialized().encodeMap<TextContent>(
      this as TextContent,
    );
  }

  TextContentCopyWith<TextContent, TextContent, TextContent> get copyWith =>
      _TextContentCopyWithImpl<TextContent, TextContent>(
        this as TextContent,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TextContentMapper.ensureInitialized().stringifyValue(
      this as TextContent,
    );
  }

  @override
  bool operator ==(Object other) {
    return TextContentMapper.ensureInitialized().equalsValue(
      this as TextContent,
      other,
    );
  }

  @override
  int get hashCode {
    return TextContentMapper.ensureInitialized().hashValue(this as TextContent);
  }
}

extension TextContentValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextContent, $Out> {
  TextContentCopyWith<$R, TextContent, $Out> get $asTextContent =>
      $base.as((v, t, t2) => _TextContentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TextContentCopyWith<$R, $In extends TextContent, $Out>
    implements
        ChatContentCopyWith<$R, $In, $Out>,
        ChatContentS3CopyWith<$R, $In, $Out> {
  @override
  $R call({ContentType? type, String? text});
  TextContentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TextContentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextContent, $Out>
    implements TextContentCopyWith<$R, TextContent, $Out> {
  _TextContentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextContent> $mapper =
      TextContentMapper.ensureInitialized();
  @override
  $R call({ContentType? type, Object? text = $none}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (text != $none) #text: text,
    }),
  );
  @override
  TextContent $make(CopyWithData data) => TextContent(
    type: data.get(#type, or: $value.type),
    text: data.get(#text, or: $value.text),
  );

  @override
  TextContentCopyWith<$R2, TextContent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TextContentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ImageContentDataMapper extends ClassMapperBase<ImageContentData> {
  ImageContentDataMapper._();

  static ImageContentDataMapper? _instance;
  static ImageContentDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageContentDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImageContentData';

  static String _$url(ImageContentData v) => v.url;
  static const Field<ImageContentData, String> _f$url = Field('url', _$url);

  @override
  final MappableFields<ImageContentData> fields = const {#url: _f$url};

  static ImageContentData _instantiate(DecodingData data) {
    return ImageContentData(url: data.dec(_f$url));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageContentData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageContentData>(map);
  }

  static ImageContentData fromJson(String json) {
    return ensureInitialized().decodeJson<ImageContentData>(json);
  }
}

mixin ImageContentDataMappable {
  String toJson() {
    return ImageContentDataMapper.ensureInitialized()
        .encodeJson<ImageContentData>(this as ImageContentData);
  }

  Map<String, dynamic> toMap() {
    return ImageContentDataMapper.ensureInitialized()
        .encodeMap<ImageContentData>(this as ImageContentData);
  }

  ImageContentDataCopyWith<ImageContentData, ImageContentData, ImageContentData>
  get copyWith =>
      _ImageContentDataCopyWithImpl<ImageContentData, ImageContentData>(
        this as ImageContentData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ImageContentDataMapper.ensureInitialized().stringifyValue(
      this as ImageContentData,
    );
  }

  @override
  bool operator ==(Object other) {
    return ImageContentDataMapper.ensureInitialized().equalsValue(
      this as ImageContentData,
      other,
    );
  }

  @override
  int get hashCode {
    return ImageContentDataMapper.ensureInitialized().hashValue(
      this as ImageContentData,
    );
  }
}

extension ImageContentDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageContentData, $Out> {
  ImageContentDataCopyWith<$R, ImageContentData, $Out>
  get $asImageContentData =>
      $base.as((v, t, t2) => _ImageContentDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImageContentDataCopyWith<$R, $In extends ImageContentData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? url});
  ImageContentDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ImageContentDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageContentData, $Out>
    implements ImageContentDataCopyWith<$R, ImageContentData, $Out> {
  _ImageContentDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageContentData> $mapper =
      ImageContentDataMapper.ensureInitialized();
  @override
  $R call({String? url}) =>
      $apply(FieldCopyWithData({if (url != null) #url: url}));
  @override
  ImageContentData $make(CopyWithData data) =>
      ImageContentData(url: data.get(#url, or: $value.url));

  @override
  ImageContentDataCopyWith<$R2, ImageContentData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImageContentDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ImageContentMapper extends SubClassMapperBase<ImageContent> {
  ImageContentMapper._();

  static ImageContentMapper? _instance;
  static ImageContentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageContentMapper._());
      ChatContentMapper.ensureInitialized().addSubMapper(_instance!);
      ContentTypeMapper.ensureInitialized();
      ImageContentDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageContent';

  static ContentType _$type(ImageContent v) => v.type;
  static const Field<ImageContent, ContentType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: ContentType.imageUrl,
  );
  static ImageContentData _$imageUrl(ImageContent v) => v.imageUrl;
  static const Field<ImageContent, ImageContentData> _f$imageUrl = Field(
    'imageUrl',
    _$imageUrl,
    key: r'image_url',
  );

  @override
  final MappableFields<ImageContent> fields = const {
    #type: _f$type,
    #imageUrl: _f$imageUrl,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'image_url';
  @override
  late final ClassMapperBase superMapper =
      ChatContentMapper.ensureInitialized();

  static ImageContent _instantiate(DecodingData data) {
    return ImageContent(
      type: data.dec(_f$type),
      imageUrl: data.dec(_f$imageUrl),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ImageContent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageContent>(map);
  }

  static ImageContent fromJson(String json) {
    return ensureInitialized().decodeJson<ImageContent>(json);
  }
}

mixin ImageContentMappable {
  String toJson() {
    return ImageContentMapper.ensureInitialized().encodeJson<ImageContent>(
      this as ImageContent,
    );
  }

  Map<String, dynamic> toMap() {
    return ImageContentMapper.ensureInitialized().encodeMap<ImageContent>(
      this as ImageContent,
    );
  }

  ImageContentCopyWith<ImageContent, ImageContent, ImageContent> get copyWith =>
      _ImageContentCopyWithImpl<ImageContent, ImageContent>(
        this as ImageContent,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ImageContentMapper.ensureInitialized().stringifyValue(
      this as ImageContent,
    );
  }

  @override
  bool operator ==(Object other) {
    return ImageContentMapper.ensureInitialized().equalsValue(
      this as ImageContent,
      other,
    );
  }

  @override
  int get hashCode {
    return ImageContentMapper.ensureInitialized().hashValue(
      this as ImageContent,
    );
  }
}

extension ImageContentValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageContent, $Out> {
  ImageContentCopyWith<$R, ImageContent, $Out> get $asImageContent =>
      $base.as((v, t, t2) => _ImageContentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImageContentCopyWith<$R, $In extends ImageContent, $Out>
    implements ChatContentCopyWith<$R, $In, $Out> {
  ImageContentDataCopyWith<$R, ImageContentData, ImageContentData> get imageUrl;
  @override
  $R call({ContentType? type, ImageContentData? imageUrl});
  ImageContentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageContentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageContent, $Out>
    implements ImageContentCopyWith<$R, ImageContent, $Out> {
  _ImageContentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageContent> $mapper =
      ImageContentMapper.ensureInitialized();
  @override
  ImageContentDataCopyWith<$R, ImageContentData, ImageContentData>
  get imageUrl => $value.imageUrl.copyWith.$chain((v) => call(imageUrl: v));
  @override
  $R call({ContentType? type, ImageContentData? imageUrl}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (imageUrl != null) #imageUrl: imageUrl,
    }),
  );
  @override
  ImageContent $make(CopyWithData data) => ImageContent(
    type: data.get(#type, or: $value.type),
    imageUrl: data.get(#imageUrl, or: $value.imageUrl),
  );

  @override
  ImageContentCopyWith<$R2, ImageContent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImageContentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AudioContentDataMapper extends ClassMapperBase<AudioContentData> {
  AudioContentDataMapper._();

  static AudioContentDataMapper? _instance;
  static AudioContentDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AudioContentDataMapper._());
      AudioFormatMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AudioContentData';

  static String _$data(AudioContentData v) => v.data;
  static const Field<AudioContentData, String> _f$data = Field('data', _$data);
  static AudioFormat _$format(AudioContentData v) => v.format;
  static const Field<AudioContentData, AudioFormat> _f$format = Field(
    'format',
    _$format,
    opt: true,
    def: AudioFormat.wav,
  );

  @override
  final MappableFields<AudioContentData> fields = const {
    #data: _f$data,
    #format: _f$format,
  };

  static AudioContentData _instantiate(DecodingData data) {
    return AudioContentData(
      data: data.dec(_f$data),
      format: data.dec(_f$format),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AudioContentData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AudioContentData>(map);
  }

  static AudioContentData fromJson(String json) {
    return ensureInitialized().decodeJson<AudioContentData>(json);
  }
}

mixin AudioContentDataMappable {
  String toJson() {
    return AudioContentDataMapper.ensureInitialized()
        .encodeJson<AudioContentData>(this as AudioContentData);
  }

  Map<String, dynamic> toMap() {
    return AudioContentDataMapper.ensureInitialized()
        .encodeMap<AudioContentData>(this as AudioContentData);
  }

  AudioContentDataCopyWith<AudioContentData, AudioContentData, AudioContentData>
  get copyWith =>
      _AudioContentDataCopyWithImpl<AudioContentData, AudioContentData>(
        this as AudioContentData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AudioContentDataMapper.ensureInitialized().stringifyValue(
      this as AudioContentData,
    );
  }

  @override
  bool operator ==(Object other) {
    return AudioContentDataMapper.ensureInitialized().equalsValue(
      this as AudioContentData,
      other,
    );
  }

  @override
  int get hashCode {
    return AudioContentDataMapper.ensureInitialized().hashValue(
      this as AudioContentData,
    );
  }
}

extension AudioContentDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AudioContentData, $Out> {
  AudioContentDataCopyWith<$R, AudioContentData, $Out>
  get $asAudioContentData =>
      $base.as((v, t, t2) => _AudioContentDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AudioContentDataCopyWith<$R, $In extends AudioContentData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? data, AudioFormat? format});
  AudioContentDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AudioContentDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AudioContentData, $Out>
    implements AudioContentDataCopyWith<$R, AudioContentData, $Out> {
  _AudioContentDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AudioContentData> $mapper =
      AudioContentDataMapper.ensureInitialized();
  @override
  $R call({String? data, AudioFormat? format}) => $apply(
    FieldCopyWithData({
      if (data != null) #data: data,
      if (format != null) #format: format,
    }),
  );
  @override
  AudioContentData $make(CopyWithData data) => AudioContentData(
    data: data.get(#data, or: $value.data),
    format: data.get(#format, or: $value.format),
  );

  @override
  AudioContentDataCopyWith<$R2, AudioContentData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AudioContentDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AudioContentMapper extends SubClassMapperBase<AudioContent> {
  AudioContentMapper._();

  static AudioContentMapper? _instance;
  static AudioContentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AudioContentMapper._());
      ChatContentMapper.ensureInitialized().addSubMapper(_instance!);
      ContentTypeMapper.ensureInitialized();
      AudioContentDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AudioContent';

  static ContentType _$type(AudioContent v) => v.type;
  static const Field<AudioContent, ContentType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: ContentType.inputAudio,
  );
  static AudioContentData _$inputAudio(AudioContent v) => v.inputAudio;
  static const Field<AudioContent, AudioContentData> _f$inputAudio = Field(
    'inputAudio',
    _$inputAudio,
    key: r'input_audio',
  );

  @override
  final MappableFields<AudioContent> fields = const {
    #type: _f$type,
    #inputAudio: _f$inputAudio,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'input_audio';
  @override
  late final ClassMapperBase superMapper =
      ChatContentMapper.ensureInitialized();

  static AudioContent _instantiate(DecodingData data) {
    return AudioContent(
      type: data.dec(_f$type),
      inputAudio: data.dec(_f$inputAudio),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AudioContent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AudioContent>(map);
  }

  static AudioContent fromJson(String json) {
    return ensureInitialized().decodeJson<AudioContent>(json);
  }
}

mixin AudioContentMappable {
  String toJson() {
    return AudioContentMapper.ensureInitialized().encodeJson<AudioContent>(
      this as AudioContent,
    );
  }

  Map<String, dynamic> toMap() {
    return AudioContentMapper.ensureInitialized().encodeMap<AudioContent>(
      this as AudioContent,
    );
  }

  AudioContentCopyWith<AudioContent, AudioContent, AudioContent> get copyWith =>
      _AudioContentCopyWithImpl<AudioContent, AudioContent>(
        this as AudioContent,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AudioContentMapper.ensureInitialized().stringifyValue(
      this as AudioContent,
    );
  }

  @override
  bool operator ==(Object other) {
    return AudioContentMapper.ensureInitialized().equalsValue(
      this as AudioContent,
      other,
    );
  }

  @override
  int get hashCode {
    return AudioContentMapper.ensureInitialized().hashValue(
      this as AudioContent,
    );
  }
}

extension AudioContentValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AudioContent, $Out> {
  AudioContentCopyWith<$R, AudioContent, $Out> get $asAudioContent =>
      $base.as((v, t, t2) => _AudioContentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AudioContentCopyWith<$R, $In extends AudioContent, $Out>
    implements ChatContentCopyWith<$R, $In, $Out> {
  AudioContentDataCopyWith<$R, AudioContentData, AudioContentData>
  get inputAudio;
  @override
  $R call({ContentType? type, AudioContentData? inputAudio});
  AudioContentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AudioContentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AudioContent, $Out>
    implements AudioContentCopyWith<$R, AudioContent, $Out> {
  _AudioContentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AudioContent> $mapper =
      AudioContentMapper.ensureInitialized();
  @override
  AudioContentDataCopyWith<$R, AudioContentData, AudioContentData>
  get inputAudio =>
      $value.inputAudio.copyWith.$chain((v) => call(inputAudio: v));
  @override
  $R call({ContentType? type, AudioContentData? inputAudio}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (inputAudio != null) #inputAudio: inputAudio,
    }),
  );
  @override
  AudioContent $make(CopyWithData data) => AudioContent(
    type: data.get(#type, or: $value.type),
    inputAudio: data.get(#inputAudio, or: $value.inputAudio),
  );

  @override
  AudioContentCopyWith<$R2, AudioContent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AudioContentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class S3ContentMapper extends SubClassMapperBase<S3Content> {
  S3ContentMapper._();

  static S3ContentMapper? _instance;
  static S3ContentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = S3ContentMapper._());
      ChatContentS3Mapper.ensureInitialized().addSubMapper(_instance!);
      ContentTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'S3Content';

  static ContentType _$type(S3Content v) => v.type;
  static const Field<S3Content, ContentType> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: ContentType.inputS3,
  );
  static String _$uri(S3Content v) => v.uri;
  static const Field<S3Content, String> _f$uri = Field('uri', _$uri);
  static String _$columnName(S3Content v) => v.columnName;
  static const Field<S3Content, String> _f$columnName = Field(
    'columnName',
    _$columnName,
  );

  @override
  final MappableFields<S3Content> fields = const {
    #type: _f$type,
    #uri: _f$uri,
    #columnName: _f$columnName,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'input_s3';
  @override
  late final ClassMapperBase superMapper =
      ChatContentS3Mapper.ensureInitialized();

  static S3Content _instantiate(DecodingData data) {
    return S3Content(
      type: data.dec(_f$type),
      uri: data.dec(_f$uri),
      columnName: data.dec(_f$columnName),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static S3Content fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<S3Content>(map);
  }

  static S3Content fromJson(String json) {
    return ensureInitialized().decodeJson<S3Content>(json);
  }
}

mixin S3ContentMappable {
  String toJson() {
    return S3ContentMapper.ensureInitialized().encodeJson<S3Content>(
      this as S3Content,
    );
  }

  Map<String, dynamic> toMap() {
    return S3ContentMapper.ensureInitialized().encodeMap<S3Content>(
      this as S3Content,
    );
  }

  S3ContentCopyWith<S3Content, S3Content, S3Content> get copyWith =>
      _S3ContentCopyWithImpl<S3Content, S3Content>(
        this as S3Content,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return S3ContentMapper.ensureInitialized().stringifyValue(
      this as S3Content,
    );
  }

  @override
  bool operator ==(Object other) {
    return S3ContentMapper.ensureInitialized().equalsValue(
      this as S3Content,
      other,
    );
  }

  @override
  int get hashCode {
    return S3ContentMapper.ensureInitialized().hashValue(this as S3Content);
  }
}

extension S3ContentValueCopy<$R, $Out> on ObjectCopyWith<$R, S3Content, $Out> {
  S3ContentCopyWith<$R, S3Content, $Out> get $asS3Content =>
      $base.as((v, t, t2) => _S3ContentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class S3ContentCopyWith<$R, $In extends S3Content, $Out>
    implements ChatContentS3CopyWith<$R, $In, $Out> {
  @override
  $R call({ContentType? type, String? uri, String? columnName});
  S3ContentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _S3ContentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, S3Content, $Out>
    implements S3ContentCopyWith<$R, S3Content, $Out> {
  _S3ContentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<S3Content> $mapper =
      S3ContentMapper.ensureInitialized();
  @override
  $R call({ContentType? type, String? uri, String? columnName}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (uri != null) #uri: uri,
      if (columnName != null) #columnName: columnName,
    }),
  );
  @override
  S3Content $make(CopyWithData data) => S3Content(
    type: data.get(#type, or: $value.type),
    uri: data.get(#uri, or: $value.uri),
    columnName: data.get(#columnName, or: $value.columnName),
  );

  @override
  S3ContentCopyWith<$R2, S3Content, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _S3ContentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatThreadEntryMapper extends ClassMapperBase<ChatThreadEntry> {
  ChatThreadEntryMapper._();

  static ChatThreadEntryMapper? _instance;
  static ChatThreadEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatThreadEntryMapper._());
      ChatEntryMapper.ensureInitialized();
      ChatRoleMapper.ensureInitialized();
      ReferencesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatThreadEntry';

  static ChatRole _$role(ChatThreadEntry v) => v.role;
  static const Field<ChatThreadEntry, ChatRole> _f$role = Field('role', _$role);
  static ChatEntryContent _$content(ChatThreadEntry v) => v.content;
  static const Field<ChatThreadEntry, ChatEntryContent> _f$content = Field(
    'content',
    _$content,
    hook: ChatEntryContentHook(),
  );
  static String? _$name(ChatThreadEntry v) => v.name;
  static const Field<ChatThreadEntry, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
  );
  static String? _$userPrompt(ChatThreadEntry v) => v.userPrompt;
  static const Field<ChatThreadEntry, String> _f$userPrompt = Field(
    'userPrompt',
    _$userPrompt,
    key: r'user_prompt',
    opt: true,
  );
  static References? _$references(ChatThreadEntry v) => v.references;
  static const Field<ChatThreadEntry, References> _f$references = Field(
    'references',
    _$references,
    opt: true,
  );
  static String? _$rowId(ChatThreadEntry v) => v.rowId;
  static const Field<ChatThreadEntry, String> _f$rowId = Field(
    'rowId',
    _$rowId,
    key: r'row_id',
    opt: true,
  );
  static String _$textContent(ChatThreadEntry v) => v.textContent;
  static const Field<ChatThreadEntry, String> _f$textContent = Field(
    'textContent',
    _$textContent,
    key: r'text_content',
    mode: FieldMode.member,
  );
  static bool _$hasTextOnly(ChatThreadEntry v) => v.hasTextOnly;
  static const Field<ChatThreadEntry, bool> _f$hasTextOnly = Field(
    'hasTextOnly',
    _$hasTextOnly,
    key: r'has_text_only',
    mode: FieldMode.member,
  );
  static bool _$hasImage(ChatThreadEntry v) => v.hasImage;
  static const Field<ChatThreadEntry, bool> _f$hasImage = Field(
    'hasImage',
    _$hasImage,
    key: r'has_image',
    mode: FieldMode.member,
  );
  static bool _$hasAudio(ChatThreadEntry v) => v.hasAudio;
  static const Field<ChatThreadEntry, bool> _f$hasAudio = Field(
    'hasAudio',
    _$hasAudio,
    key: r'has_audio',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ChatThreadEntry> fields = const {
    #role: _f$role,
    #content: _f$content,
    #name: _f$name,
    #userPrompt: _f$userPrompt,
    #references: _f$references,
    #rowId: _f$rowId,
    #textContent: _f$textContent,
    #hasTextOnly: _f$hasTextOnly,
    #hasImage: _f$hasImage,
    #hasAudio: _f$hasAudio,
  };

  static ChatThreadEntry _instantiate(DecodingData data) {
    return ChatThreadEntry(
      role: data.dec(_f$role),
      content: data.dec(_f$content),
      name: data.dec(_f$name),
      userPrompt: data.dec(_f$userPrompt),
      references: data.dec(_f$references),
      rowId: data.dec(_f$rowId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatThreadEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatThreadEntry>(map);
  }

  static ChatThreadEntry fromJson(String json) {
    return ensureInitialized().decodeJson<ChatThreadEntry>(json);
  }
}

mixin ChatThreadEntryMappable {
  String toJson() {
    return ChatThreadEntryMapper.ensureInitialized()
        .encodeJson<ChatThreadEntry>(this as ChatThreadEntry);
  }

  Map<String, dynamic> toMap() {
    return ChatThreadEntryMapper.ensureInitialized().encodeMap<ChatThreadEntry>(
      this as ChatThreadEntry,
    );
  }

  ChatThreadEntryCopyWith<ChatThreadEntry, ChatThreadEntry, ChatThreadEntry>
  get copyWith =>
      _ChatThreadEntryCopyWithImpl<ChatThreadEntry, ChatThreadEntry>(
        this as ChatThreadEntry,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChatThreadEntryMapper.ensureInitialized().stringifyValue(
      this as ChatThreadEntry,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatThreadEntryMapper.ensureInitialized().equalsValue(
      this as ChatThreadEntry,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatThreadEntryMapper.ensureInitialized().hashValue(
      this as ChatThreadEntry,
    );
  }
}

extension ChatThreadEntryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatThreadEntry, $Out> {
  ChatThreadEntryCopyWith<$R, ChatThreadEntry, $Out> get $asChatThreadEntry =>
      $base.as((v, t, t2) => _ChatThreadEntryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChatThreadEntryCopyWith<$R, $In extends ChatThreadEntry, $Out>
    implements ChatEntryCopyWith<$R, $In, $Out> {
  ReferencesCopyWith<$R, References, References>? get references;
  @override
  $R call({
    ChatRole? role,
    ChatEntryContent? content,
    String? name,
    String? userPrompt,
    References? references,
    String? rowId,
  });
  ChatThreadEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatThreadEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatThreadEntry, $Out>
    implements ChatThreadEntryCopyWith<$R, ChatThreadEntry, $Out> {
  _ChatThreadEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatThreadEntry> $mapper =
      ChatThreadEntryMapper.ensureInitialized();
  @override
  ReferencesCopyWith<$R, References, References>? get references =>
      $value.references?.copyWith.$chain((v) => call(references: v));
  @override
  $R call({
    ChatRole? role,
    ChatEntryContent? content,
    Object? name = $none,
    Object? userPrompt = $none,
    Object? references = $none,
    Object? rowId = $none,
  }) => $apply(
    FieldCopyWithData({
      if (role != null) #role: role,
      if (content != null) #content: content,
      if (name != $none) #name: name,
      if (userPrompt != $none) #userPrompt: userPrompt,
      if (references != $none) #references: references,
      if (rowId != $none) #rowId: rowId,
    }),
  );
  @override
  ChatThreadEntry $make(CopyWithData data) => ChatThreadEntry(
    role: data.get(#role, or: $value.role),
    content: data.get(#content, or: $value.content),
    name: data.get(#name, or: $value.name),
    userPrompt: data.get(#userPrompt, or: $value.userPrompt),
    references: data.get(#references, or: $value.references),
    rowId: data.get(#rowId, or: $value.rowId),
  );

  @override
  ChatThreadEntryCopyWith<$R2, ChatThreadEntry, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ChatThreadEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatThreadResponseMapper extends ClassMapperBase<ChatThreadResponse> {
  ChatThreadResponseMapper._();

  static ChatThreadResponseMapper? _instance;
  static ChatThreadResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatThreadResponseMapper._());
      ObjectTypeMapper.ensureInitialized();
      ChatThreadEntryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatThreadResponse';

  static ObjectType _$object(ChatThreadResponse v) => v.object;
  static const Field<ChatThreadResponse, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.chatThread,
  );
  static List<ChatThreadEntry> _$thread(ChatThreadResponse v) => v.thread;
  static const Field<ChatThreadResponse, List<ChatThreadEntry>> _f$thread =
      Field('thread', _$thread, opt: true, def: const []);
  static String _$columnId(ChatThreadResponse v) => v.columnId;
  static const Field<ChatThreadResponse, String> _f$columnId = Field(
    'columnId',
    _$columnId,
    key: r'column_id',
    opt: true,
    def: '',
  );

  @override
  final MappableFields<ChatThreadResponse> fields = const {
    #object: _f$object,
    #thread: _f$thread,
    #columnId: _f$columnId,
  };

  static ChatThreadResponse _instantiate(DecodingData data) {
    return ChatThreadResponse(
      object: data.dec(_f$object),
      thread: data.dec(_f$thread),
      columnId: data.dec(_f$columnId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatThreadResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatThreadResponse>(map);
  }

  static ChatThreadResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ChatThreadResponse>(json);
  }
}

mixin ChatThreadResponseMappable {
  String toJson() {
    return ChatThreadResponseMapper.ensureInitialized()
        .encodeJson<ChatThreadResponse>(this as ChatThreadResponse);
  }

  Map<String, dynamic> toMap() {
    return ChatThreadResponseMapper.ensureInitialized()
        .encodeMap<ChatThreadResponse>(this as ChatThreadResponse);
  }

  ChatThreadResponseCopyWith<
    ChatThreadResponse,
    ChatThreadResponse,
    ChatThreadResponse
  >
  get copyWith =>
      _ChatThreadResponseCopyWithImpl<ChatThreadResponse, ChatThreadResponse>(
        this as ChatThreadResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChatThreadResponseMapper.ensureInitialized().stringifyValue(
      this as ChatThreadResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatThreadResponseMapper.ensureInitialized().equalsValue(
      this as ChatThreadResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatThreadResponseMapper.ensureInitialized().hashValue(
      this as ChatThreadResponse,
    );
  }
}

extension ChatThreadResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatThreadResponse, $Out> {
  ChatThreadResponseCopyWith<$R, ChatThreadResponse, $Out>
  get $asChatThreadResponse => $base.as(
    (v, t, t2) => _ChatThreadResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ChatThreadResponseCopyWith<
  $R,
  $In extends ChatThreadResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ChatThreadEntry,
    ChatThreadEntryCopyWith<$R, ChatThreadEntry, ChatThreadEntry>
  >
  get thread;
  $R call({
    ObjectType? object,
    List<ChatThreadEntry>? thread,
    String? columnId,
  });
  ChatThreadResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatThreadResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatThreadResponse, $Out>
    implements ChatThreadResponseCopyWith<$R, ChatThreadResponse, $Out> {
  _ChatThreadResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatThreadResponse> $mapper =
      ChatThreadResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ChatThreadEntry,
    ChatThreadEntryCopyWith<$R, ChatThreadEntry, ChatThreadEntry>
  >
  get thread => ListCopyWith(
    $value.thread,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(thread: v),
  );
  @override
  $R call({
    ObjectType? object,
    List<ChatThreadEntry>? thread,
    String? columnId,
  }) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (thread != null) #thread: thread,
      if (columnId != null) #columnId: columnId,
    }),
  );
  @override
  ChatThreadResponse $make(CopyWithData data) => ChatThreadResponse(
    object: data.get(#object, or: $value.object),
    thread: data.get(#thread, or: $value.thread),
    columnId: data.get(#columnId, or: $value.columnId),
  );

  @override
  ChatThreadResponseCopyWith<$R2, ChatThreadResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ChatThreadResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatThreadsBaseMapper extends ClassMapperBase<ChatThreadsBase> {
  ChatThreadsBaseMapper._();

  static ChatThreadsBaseMapper? _instance;
  static ChatThreadsBaseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatThreadsBaseMapper._());
      ChatThreadsResponseMapper.ensureInitialized();
      ObjectTypeMapper.ensureInitialized();
      ChatThreadResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatThreadsBase';

  static ObjectType _$object(ChatThreadsBase v) => v.object;
  static const Field<ChatThreadsBase, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.chatThreads,
  );
  static Map<String, ChatThreadResponse> _$threads(ChatThreadsBase v) =>
      v.threads;
  static const Field<ChatThreadsBase, Map<String, ChatThreadResponse>>
  _f$threads = Field('threads', _$threads, opt: true, def: const {});

  @override
  final MappableFields<ChatThreadsBase> fields = const {
    #object: _f$object,
    #threads: _f$threads,
  };

  static ChatThreadsBase _instantiate(DecodingData data) {
    return ChatThreadsBase(
      object: data.dec(_f$object),
      threads: data.dec(_f$threads),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatThreadsBase fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatThreadsBase>(map);
  }

  static ChatThreadsBase fromJson(String json) {
    return ensureInitialized().decodeJson<ChatThreadsBase>(json);
  }
}

mixin ChatThreadsBaseMappable {
  String toJson() {
    return ChatThreadsBaseMapper.ensureInitialized()
        .encodeJson<ChatThreadsBase>(this as ChatThreadsBase);
  }

  Map<String, dynamic> toMap() {
    return ChatThreadsBaseMapper.ensureInitialized().encodeMap<ChatThreadsBase>(
      this as ChatThreadsBase,
    );
  }

  ChatThreadsBaseCopyWith<ChatThreadsBase, ChatThreadsBase, ChatThreadsBase>
  get copyWith =>
      _ChatThreadsBaseCopyWithImpl<ChatThreadsBase, ChatThreadsBase>(
        this as ChatThreadsBase,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChatThreadsBaseMapper.ensureInitialized().stringifyValue(
      this as ChatThreadsBase,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatThreadsBaseMapper.ensureInitialized().equalsValue(
      this as ChatThreadsBase,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatThreadsBaseMapper.ensureInitialized().hashValue(
      this as ChatThreadsBase,
    );
  }
}

extension ChatThreadsBaseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatThreadsBase, $Out> {
  ChatThreadsBaseCopyWith<$R, ChatThreadsBase, $Out> get $asChatThreadsBase =>
      $base.as((v, t, t2) => _ChatThreadsBaseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChatThreadsBaseCopyWith<$R, $In extends ChatThreadsBase, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
    $R,
    String,
    ChatThreadResponse,
    ChatThreadResponseCopyWith<$R, ChatThreadResponse, ChatThreadResponse>
  >
  get threads;
  $R call({ObjectType? object, Map<String, ChatThreadResponse>? threads});
  ChatThreadsBaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatThreadsBaseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatThreadsBase, $Out>
    implements ChatThreadsBaseCopyWith<$R, ChatThreadsBase, $Out> {
  _ChatThreadsBaseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatThreadsBase> $mapper =
      ChatThreadsBaseMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    String,
    ChatThreadResponse,
    ChatThreadResponseCopyWith<$R, ChatThreadResponse, ChatThreadResponse>
  >
  get threads => MapCopyWith(
    $value.threads,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(threads: v),
  );
  @override
  $R call({ObjectType? object, Map<String, ChatThreadResponse>? threads}) =>
      $apply(
        FieldCopyWithData({
          if (object != null) #object: object,
          if (threads != null) #threads: threads,
        }),
      );
  @override
  ChatThreadsBase $make(CopyWithData data) => ChatThreadsBase(
    object: data.get(#object, or: $value.object),
    threads: data.get(#threads, or: $value.threads),
  );

  @override
  ChatThreadsBaseCopyWith<$R2, ChatThreadsBase, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ChatThreadsBaseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChatThreadsResponseMapper extends ClassMapperBase<ChatThreadsResponse> {
  ChatThreadsResponseMapper._();

  static ChatThreadsResponseMapper? _instance;
  static ChatThreadsResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatThreadsResponseMapper._());
      ChatThreadsBaseMapper.ensureInitialized();
      ObjectTypeMapper.ensureInitialized();
      ChatThreadResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatThreadsResponse';

  static ObjectType _$object(ChatThreadsResponse v) => v.object;
  static const Field<ChatThreadsResponse, ObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: ObjectType.chatThreads,
  );
  static Map<String, ChatThreadResponse> _$threads(ChatThreadsResponse v) =>
      v.threads;
  static const Field<ChatThreadsResponse, Map<String, ChatThreadResponse>>
  _f$threads = Field('threads', _$threads, opt: true, def: const {});
  static String _$tableId(ChatThreadsResponse v) => v.tableId;
  static const Field<ChatThreadsResponse, String> _f$tableId = Field(
    'tableId',
    _$tableId,
    key: r'table_id',
    opt: true,
    def: '',
  );

  @override
  final MappableFields<ChatThreadsResponse> fields = const {
    #object: _f$object,
    #threads: _f$threads,
    #tableId: _f$tableId,
  };

  static ChatThreadsResponse _instantiate(DecodingData data) {
    return ChatThreadsResponse(
      object: data.dec(_f$object),
      threads: data.dec(_f$threads),
      tableId: data.dec(_f$tableId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChatThreadsResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatThreadsResponse>(map);
  }

  static ChatThreadsResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ChatThreadsResponse>(json);
  }
}

mixin ChatThreadsResponseMappable {
  String toJson() {
    return ChatThreadsResponseMapper.ensureInitialized()
        .encodeJson<ChatThreadsResponse>(this as ChatThreadsResponse);
  }

  Map<String, dynamic> toMap() {
    return ChatThreadsResponseMapper.ensureInitialized()
        .encodeMap<ChatThreadsResponse>(this as ChatThreadsResponse);
  }

  ChatThreadsResponseCopyWith<
    ChatThreadsResponse,
    ChatThreadsResponse,
    ChatThreadsResponse
  >
  get copyWith =>
      _ChatThreadsResponseCopyWithImpl<
        ChatThreadsResponse,
        ChatThreadsResponse
      >(this as ChatThreadsResponse, $identity, $identity);
  @override
  String toString() {
    return ChatThreadsResponseMapper.ensureInitialized().stringifyValue(
      this as ChatThreadsResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChatThreadsResponseMapper.ensureInitialized().equalsValue(
      this as ChatThreadsResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return ChatThreadsResponseMapper.ensureInitialized().hashValue(
      this as ChatThreadsResponse,
    );
  }
}

extension ChatThreadsResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatThreadsResponse, $Out> {
  ChatThreadsResponseCopyWith<$R, ChatThreadsResponse, $Out>
  get $asChatThreadsResponse => $base.as(
    (v, t, t2) => _ChatThreadsResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ChatThreadsResponseCopyWith<
  $R,
  $In extends ChatThreadsResponse,
  $Out
>
    implements ChatThreadsBaseCopyWith<$R, $In, $Out> {
  @override
  MapCopyWith<
    $R,
    String,
    ChatThreadResponse,
    ChatThreadResponseCopyWith<$R, ChatThreadResponse, ChatThreadResponse>
  >
  get threads;
  @override
  $R call({
    ObjectType? object,
    Map<String, ChatThreadResponse>? threads,
    String? tableId,
  });
  ChatThreadsResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChatThreadsResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatThreadsResponse, $Out>
    implements ChatThreadsResponseCopyWith<$R, ChatThreadsResponse, $Out> {
  _ChatThreadsResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatThreadsResponse> $mapper =
      ChatThreadsResponseMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    String,
    ChatThreadResponse,
    ChatThreadResponseCopyWith<$R, ChatThreadResponse, ChatThreadResponse>
  >
  get threads => MapCopyWith(
    $value.threads,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(threads: v),
  );
  @override
  $R call({
    ObjectType? object,
    Map<String, ChatThreadResponse>? threads,
    String? tableId,
  }) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (threads != null) #threads: threads,
      if (tableId != null) #tableId: tableId,
    }),
  );
  @override
  ChatThreadsResponse $make(CopyWithData data) => ChatThreadsResponse(
    object: data.get(#object, or: $value.object),
    threads: data.get(#threads, or: $value.threads),
    tableId: data.get(#tableId, or: $value.tableId),
  );

  @override
  ChatThreadsResponseCopyWith<$R2, ChatThreadsResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChatThreadsResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

