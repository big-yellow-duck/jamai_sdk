// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'conversations.dart';

class MetaResponseMapper extends ClassMapperBase<MetaResponse> {
  MetaResponseMapper._();

  static MetaResponseMapper? _instance;
  static MetaResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MetaResponseMapper._());
      ColumnSchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MetaResponse';

  static Map<String, dynamic>? _$meta(MetaResponse v) => v.meta;
  static const Field<MetaResponse, Map<String, dynamic>> _f$meta = Field(
    'meta',
    _$meta,
    opt: true,
  );
  static List<ColumnSchema> _$cols(MetaResponse v) => v.cols;
  static const Field<MetaResponse, List<ColumnSchema>> _f$cols = Field(
    'cols',
    _$cols,
  );
  static String _$title(MetaResponse v) => v.title;
  static const Field<MetaResponse, String> _f$title = Field('title', _$title);
  static String? _$createdBy(MetaResponse v) => v.createdBy;
  static const Field<MetaResponse, String> _f$createdBy = Field(
    'createdBy',
    _$createdBy,
    key: r'created_by',
  );
  static DateTime _$updatedAt(MetaResponse v) => v.updatedAt;
  static const Field<MetaResponse, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static int _$numRows(MetaResponse v) => v.numRows;
  static const Field<MetaResponse, int> _f$numRows = Field(
    'numRows',
    _$numRows,
    key: r'num_rows',
    opt: true,
    def: -1,
  );
  static String _$version(MetaResponse v) => v.version;
  static const Field<MetaResponse, String> _f$version = Field(
    'version',
    _$version,
  );

  @override
  final MappableFields<MetaResponse> fields = const {
    #meta: _f$meta,
    #cols: _f$cols,
    #title: _f$title,
    #createdBy: _f$createdBy,
    #updatedAt: _f$updatedAt,
    #numRows: _f$numRows,
    #version: _f$version,
  };

  static MetaResponse _instantiate(DecodingData data) {
    return MetaResponse(
      meta: data.dec(_f$meta),
      cols: data.dec(_f$cols),
      title: data.dec(_f$title),
      createdBy: data.dec(_f$createdBy),
      updatedAt: data.dec(_f$updatedAt),
      numRows: data.dec(_f$numRows),
      version: data.dec(_f$version),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MetaResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MetaResponse>(map);
  }

  static MetaResponse fromJson(String json) {
    return ensureInitialized().decodeJson<MetaResponse>(json);
  }
}

mixin MetaResponseMappable {
  String toJson() {
    return MetaResponseMapper.ensureInitialized().encodeJson<MetaResponse>(
      this as MetaResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return MetaResponseMapper.ensureInitialized().encodeMap<MetaResponse>(
      this as MetaResponse,
    );
  }

  MetaResponseCopyWith<MetaResponse, MetaResponse, MetaResponse> get copyWith =>
      _MetaResponseCopyWithImpl<MetaResponse, MetaResponse>(
        this as MetaResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MetaResponseMapper.ensureInitialized().stringifyValue(
      this as MetaResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return MetaResponseMapper.ensureInitialized().equalsValue(
      this as MetaResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return MetaResponseMapper.ensureInitialized().hashValue(
      this as MetaResponse,
    );
  }
}

extension MetaResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MetaResponse, $Out> {
  MetaResponseCopyWith<$R, MetaResponse, $Out> get $asMetaResponse =>
      $base.as((v, t, t2) => _MetaResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MetaResponseCopyWith<$R, $In extends MetaResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta;
  ListCopyWith<
    $R,
    ColumnSchema,
    ColumnSchemaCopyWith<$R, ColumnSchema, ColumnSchema>
  >
  get cols;
  $R call({
    Map<String, dynamic>? meta,
    List<ColumnSchema>? cols,
    String? title,
    String? createdBy,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  });
  MetaResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MetaResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MetaResponse, $Out>
    implements MetaResponseCopyWith<$R, MetaResponse, $Out> {
  _MetaResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MetaResponse> $mapper =
      MetaResponseMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta => $value.meta != null
      ? MapCopyWith(
          $value.meta!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(meta: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    ColumnSchema,
    ColumnSchemaCopyWith<$R, ColumnSchema, ColumnSchema>
  >
  get cols => ListCopyWith(
    $value.cols,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(cols: v),
  );
  @override
  $R call({
    Object? meta = $none,
    List<ColumnSchema>? cols,
    String? title,
    Object? createdBy = $none,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  }) => $apply(
    FieldCopyWithData({
      if (meta != $none) #meta: meta,
      if (cols != null) #cols: cols,
      if (title != null) #title: title,
      if (createdBy != $none) #createdBy: createdBy,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (numRows != null) #numRows: numRows,
      if (version != null) #version: version,
    }),
  );
  @override
  MetaResponse $make(CopyWithData data) => MetaResponse(
    meta: data.get(#meta, or: $value.meta),
    cols: data.get(#cols, or: $value.cols),
    title: data.get(#title, or: $value.title),
    createdBy: data.get(#createdBy, or: $value.createdBy),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    numRows: data.get(#numRows, or: $value.numRows),
    version: data.get(#version, or: $value.version),
  );

  @override
  MetaResponseCopyWith<$R2, MetaResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MetaResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AgentMetaResponseMapper extends ClassMapperBase<AgentMetaResponse> {
  AgentMetaResponseMapper._();

  static AgentMetaResponseMapper? _instance;
  static AgentMetaResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AgentMetaResponseMapper._());
      ColumnSchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AgentMetaResponse';

  static String _$agentId(AgentMetaResponse v) => v.agentId;
  static const Field<AgentMetaResponse, String> _f$agentId = Field(
    'agentId',
    _$agentId,
    key: r'agent_id',
  );
  static Map<String, dynamic>? _$meta(AgentMetaResponse v) => v.meta;
  static const Field<AgentMetaResponse, Map<String, dynamic>> _f$meta = Field(
    'meta',
    _$meta,
    opt: true,
  );
  static List<ColumnSchema> _$cols(AgentMetaResponse v) => v.cols;
  static const Field<AgentMetaResponse, List<ColumnSchema>> _f$cols = Field(
    'cols',
    _$cols,
  );
  static String _$title(AgentMetaResponse v) => v.title;
  static const Field<AgentMetaResponse, String> _f$title = Field(
    'title',
    _$title,
  );
  static String? _$createdBy(AgentMetaResponse v) => v.createdBy;
  static const Field<AgentMetaResponse, String> _f$createdBy = Field(
    'createdBy',
    _$createdBy,
    key: r'created_by',
  );
  static DateTime _$updatedAt(AgentMetaResponse v) => v.updatedAt;
  static const Field<AgentMetaResponse, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static int _$numRows(AgentMetaResponse v) => v.numRows;
  static const Field<AgentMetaResponse, int> _f$numRows = Field(
    'numRows',
    _$numRows,
    key: r'num_rows',
    opt: true,
    def: -1,
  );
  static String _$version(AgentMetaResponse v) => v.version;
  static const Field<AgentMetaResponse, String> _f$version = Field(
    'version',
    _$version,
  );

  @override
  final MappableFields<AgentMetaResponse> fields = const {
    #agentId: _f$agentId,
    #meta: _f$meta,
    #cols: _f$cols,
    #title: _f$title,
    #createdBy: _f$createdBy,
    #updatedAt: _f$updatedAt,
    #numRows: _f$numRows,
    #version: _f$version,
  };

  static AgentMetaResponse _instantiate(DecodingData data) {
    return AgentMetaResponse(
      agentId: data.dec(_f$agentId),
      meta: data.dec(_f$meta),
      cols: data.dec(_f$cols),
      title: data.dec(_f$title),
      createdBy: data.dec(_f$createdBy),
      updatedAt: data.dec(_f$updatedAt),
      numRows: data.dec(_f$numRows),
      version: data.dec(_f$version),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AgentMetaResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AgentMetaResponse>(map);
  }

  static AgentMetaResponse fromJson(String json) {
    return ensureInitialized().decodeJson<AgentMetaResponse>(json);
  }
}

mixin AgentMetaResponseMappable {
  String toJson() {
    return AgentMetaResponseMapper.ensureInitialized()
        .encodeJson<AgentMetaResponse>(this as AgentMetaResponse);
  }

  Map<String, dynamic> toMap() {
    return AgentMetaResponseMapper.ensureInitialized()
        .encodeMap<AgentMetaResponse>(this as AgentMetaResponse);
  }

  AgentMetaResponseCopyWith<
    AgentMetaResponse,
    AgentMetaResponse,
    AgentMetaResponse
  >
  get copyWith =>
      _AgentMetaResponseCopyWithImpl<AgentMetaResponse, AgentMetaResponse>(
        this as AgentMetaResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AgentMetaResponseMapper.ensureInitialized().stringifyValue(
      this as AgentMetaResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return AgentMetaResponseMapper.ensureInitialized().equalsValue(
      this as AgentMetaResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return AgentMetaResponseMapper.ensureInitialized().hashValue(
      this as AgentMetaResponse,
    );
  }
}

extension AgentMetaResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AgentMetaResponse, $Out> {
  AgentMetaResponseCopyWith<$R, AgentMetaResponse, $Out>
  get $asAgentMetaResponse => $base.as(
    (v, t, t2) => _AgentMetaResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class AgentMetaResponseCopyWith<
  $R,
  $In extends AgentMetaResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta;
  ListCopyWith<
    $R,
    ColumnSchema,
    ColumnSchemaCopyWith<$R, ColumnSchema, ColumnSchema>
  >
  get cols;
  $R call({
    String? agentId,
    Map<String, dynamic>? meta,
    List<ColumnSchema>? cols,
    String? title,
    String? createdBy,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  });
  AgentMetaResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AgentMetaResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AgentMetaResponse, $Out>
    implements AgentMetaResponseCopyWith<$R, AgentMetaResponse, $Out> {
  _AgentMetaResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AgentMetaResponse> $mapper =
      AgentMetaResponseMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta => $value.meta != null
      ? MapCopyWith(
          $value.meta!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(meta: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    ColumnSchema,
    ColumnSchemaCopyWith<$R, ColumnSchema, ColumnSchema>
  >
  get cols => ListCopyWith(
    $value.cols,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(cols: v),
  );
  @override
  $R call({
    String? agentId,
    Object? meta = $none,
    List<ColumnSchema>? cols,
    String? title,
    Object? createdBy = $none,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  }) => $apply(
    FieldCopyWithData({
      if (agentId != null) #agentId: agentId,
      if (meta != $none) #meta: meta,
      if (cols != null) #cols: cols,
      if (title != null) #title: title,
      if (createdBy != $none) #createdBy: createdBy,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (numRows != null) #numRows: numRows,
      if (version != null) #version: version,
    }),
  );
  @override
  AgentMetaResponse $make(CopyWithData data) => AgentMetaResponse(
    agentId: data.get(#agentId, or: $value.agentId),
    meta: data.get(#meta, or: $value.meta),
    cols: data.get(#cols, or: $value.cols),
    title: data.get(#title, or: $value.title),
    createdBy: data.get(#createdBy, or: $value.createdBy),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    numRows: data.get(#numRows, or: $value.numRows),
    version: data.get(#version, or: $value.version),
  );

  @override
  AgentMetaResponseCopyWith<$R2, AgentMetaResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AgentMetaResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ConversationMetaResponseMapper
    extends ClassMapperBase<ConversationMetaResponse> {
  ConversationMetaResponseMapper._();

  static ConversationMetaResponseMapper? _instance;
  static ConversationMetaResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = ConversationMetaResponseMapper._(),
      );
      ColumnSchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ConversationMetaResponse';

  static String _$conversationId(ConversationMetaResponse v) =>
      v.conversationId;
  static const Field<ConversationMetaResponse, String> _f$conversationId =
      Field('conversationId', _$conversationId, key: r'conversation_id');
  static String? _$parentId(ConversationMetaResponse v) => v.parentId;
  static const Field<ConversationMetaResponse, String> _f$parentId = Field(
    'parentId',
    _$parentId,
    key: r'parent_id',
    opt: true,
  );
  static Map<String, dynamic>? _$meta(ConversationMetaResponse v) => v.meta;
  static const Field<ConversationMetaResponse, Map<String, dynamic>> _f$meta =
      Field('meta', _$meta, opt: true);
  static List<ColumnSchema> _$cols(ConversationMetaResponse v) => v.cols;
  static const Field<ConversationMetaResponse, List<ColumnSchema>> _f$cols =
      Field('cols', _$cols);
  static String _$title(ConversationMetaResponse v) => v.title;
  static const Field<ConversationMetaResponse, String> _f$title = Field(
    'title',
    _$title,
  );
  static String? _$createdBy(ConversationMetaResponse v) => v.createdBy;
  static const Field<ConversationMetaResponse, String> _f$createdBy = Field(
    'createdBy',
    _$createdBy,
    key: r'created_by',
  );
  static DateTime _$updatedAt(ConversationMetaResponse v) => v.updatedAt;
  static const Field<ConversationMetaResponse, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static int _$numRows(ConversationMetaResponse v) => v.numRows;
  static const Field<ConversationMetaResponse, int> _f$numRows = Field(
    'numRows',
    _$numRows,
    key: r'num_rows',
    opt: true,
    def: -1,
  );
  static String _$version(ConversationMetaResponse v) => v.version;
  static const Field<ConversationMetaResponse, String> _f$version = Field(
    'version',
    _$version,
  );

  @override
  final MappableFields<ConversationMetaResponse> fields = const {
    #conversationId: _f$conversationId,
    #parentId: _f$parentId,
    #meta: _f$meta,
    #cols: _f$cols,
    #title: _f$title,
    #createdBy: _f$createdBy,
    #updatedAt: _f$updatedAt,
    #numRows: _f$numRows,
    #version: _f$version,
  };

  static ConversationMetaResponse _instantiate(DecodingData data) {
    return ConversationMetaResponse(
      conversationId: data.dec(_f$conversationId),
      parentId: data.dec(_f$parentId),
      meta: data.dec(_f$meta),
      cols: data.dec(_f$cols),
      title: data.dec(_f$title),
      createdBy: data.dec(_f$createdBy),
      updatedAt: data.dec(_f$updatedAt),
      numRows: data.dec(_f$numRows),
      version: data.dec(_f$version),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ConversationMetaResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ConversationMetaResponse>(map);
  }

  static ConversationMetaResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ConversationMetaResponse>(json);
  }
}

mixin ConversationMetaResponseMappable {
  String toJson() {
    return ConversationMetaResponseMapper.ensureInitialized()
        .encodeJson<ConversationMetaResponse>(this as ConversationMetaResponse);
  }

  Map<String, dynamic> toMap() {
    return ConversationMetaResponseMapper.ensureInitialized()
        .encodeMap<ConversationMetaResponse>(this as ConversationMetaResponse);
  }

  ConversationMetaResponseCopyWith<
    ConversationMetaResponse,
    ConversationMetaResponse,
    ConversationMetaResponse
  >
  get copyWith =>
      _ConversationMetaResponseCopyWithImpl<
        ConversationMetaResponse,
        ConversationMetaResponse
      >(this as ConversationMetaResponse, $identity, $identity);
  @override
  String toString() {
    return ConversationMetaResponseMapper.ensureInitialized().stringifyValue(
      this as ConversationMetaResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return ConversationMetaResponseMapper.ensureInitialized().equalsValue(
      this as ConversationMetaResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return ConversationMetaResponseMapper.ensureInitialized().hashValue(
      this as ConversationMetaResponse,
    );
  }
}

extension ConversationMetaResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ConversationMetaResponse, $Out> {
  ConversationMetaResponseCopyWith<$R, ConversationMetaResponse, $Out>
  get $asConversationMetaResponse => $base.as(
    (v, t, t2) => _ConversationMetaResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ConversationMetaResponseCopyWith<
  $R,
  $In extends ConversationMetaResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta;
  ListCopyWith<
    $R,
    ColumnSchema,
    ColumnSchemaCopyWith<$R, ColumnSchema, ColumnSchema>
  >
  get cols;
  $R call({
    String? conversationId,
    String? parentId,
    Map<String, dynamic>? meta,
    List<ColumnSchema>? cols,
    String? title,
    String? createdBy,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  });
  ConversationMetaResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ConversationMetaResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ConversationMetaResponse, $Out>
    implements
        ConversationMetaResponseCopyWith<$R, ConversationMetaResponse, $Out> {
  _ConversationMetaResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ConversationMetaResponse> $mapper =
      ConversationMetaResponseMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta => $value.meta != null
      ? MapCopyWith(
          $value.meta!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(meta: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    ColumnSchema,
    ColumnSchemaCopyWith<$R, ColumnSchema, ColumnSchema>
  >
  get cols => ListCopyWith(
    $value.cols,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(cols: v),
  );
  @override
  $R call({
    String? conversationId,
    Object? parentId = $none,
    Object? meta = $none,
    List<ColumnSchema>? cols,
    String? title,
    Object? createdBy = $none,
    DateTime? updatedAt,
    int? numRows,
    String? version,
  }) => $apply(
    FieldCopyWithData({
      if (conversationId != null) #conversationId: conversationId,
      if (parentId != $none) #parentId: parentId,
      if (meta != $none) #meta: meta,
      if (cols != null) #cols: cols,
      if (title != null) #title: title,
      if (createdBy != $none) #createdBy: createdBy,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (numRows != null) #numRows: numRows,
      if (version != null) #version: version,
    }),
  );
  @override
  ConversationMetaResponse $make(CopyWithData data) => ConversationMetaResponse(
    conversationId: data.get(#conversationId, or: $value.conversationId),
    parentId: data.get(#parentId, or: $value.parentId),
    meta: data.get(#meta, or: $value.meta),
    cols: data.get(#cols, or: $value.cols),
    title: data.get(#title, or: $value.title),
    createdBy: data.get(#createdBy, or: $value.createdBy),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    numRows: data.get(#numRows, or: $value.numRows),
    version: data.get(#version, or: $value.version),
  );

  @override
  ConversationMetaResponseCopyWith<$R2, ConversationMetaResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ConversationMetaResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MessageBaseMapper extends ClassMapperBase<MessageBase> {
  MessageBaseMapper._();

  static MessageBaseMapper? _instance;
  static MessageBaseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MessageBaseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MessageBase';

  static Map<String, dynamic> _$data(MessageBase v) => v.data;
  static const Field<MessageBase, Map<String, dynamic>> _f$data = Field(
    'data',
    _$data,
  );

  @override
  final MappableFields<MessageBase> fields = const {#data: _f$data};

  static MessageBase _instantiate(DecodingData data) {
    return MessageBase(data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static MessageBase fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MessageBase>(map);
  }

  static MessageBase fromJson(String json) {
    return ensureInitialized().decodeJson<MessageBase>(json);
  }
}

mixin MessageBaseMappable {
  String toJson() {
    return MessageBaseMapper.ensureInitialized().encodeJson<MessageBase>(
      this as MessageBase,
    );
  }

  Map<String, dynamic> toMap() {
    return MessageBaseMapper.ensureInitialized().encodeMap<MessageBase>(
      this as MessageBase,
    );
  }

  MessageBaseCopyWith<MessageBase, MessageBase, MessageBase> get copyWith =>
      _MessageBaseCopyWithImpl<MessageBase, MessageBase>(
        this as MessageBase,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MessageBaseMapper.ensureInitialized().stringifyValue(
      this as MessageBase,
    );
  }

  @override
  bool operator ==(Object other) {
    return MessageBaseMapper.ensureInitialized().equalsValue(
      this as MessageBase,
      other,
    );
  }

  @override
  int get hashCode {
    return MessageBaseMapper.ensureInitialized().hashValue(this as MessageBase);
  }
}

extension MessageBaseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MessageBase, $Out> {
  MessageBaseCopyWith<$R, MessageBase, $Out> get $asMessageBase =>
      $base.as((v, t, t2) => _MessageBaseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MessageBaseCopyWith<$R, $In extends MessageBase, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data;
  $R call({Map<String, dynamic>? data});
  MessageBaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MessageBaseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MessageBase, $Out>
    implements MessageBaseCopyWith<$R, MessageBase, $Out> {
  _MessageBaseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MessageBase> $mapper =
      MessageBaseMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data => MapCopyWith(
    $value.data,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(data: v),
  );
  @override
  $R call({Map<String, dynamic>? data}) =>
      $apply(FieldCopyWithData({if (data != null) #data: data}));
  @override
  MessageBase $make(CopyWithData data) =>
      MessageBase(data: data.get(#data, or: $value.data));

  @override
  MessageBaseCopyWith<$R2, MessageBase, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MessageBaseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ConversationCreateRequestMapper
    extends ClassMapperBase<ConversationCreateRequest> {
  ConversationCreateRequestMapper._();

  static ConversationCreateRequestMapper? _instance;
  static ConversationCreateRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = ConversationCreateRequestMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'ConversationCreateRequest';

  static String _$agentId(ConversationCreateRequest v) => v.agentId;
  static const Field<ConversationCreateRequest, String> _f$agentId = Field(
    'agentId',
    _$agentId,
    key: r'agent_id',
  );
  static String? _$title(ConversationCreateRequest v) => v.title;
  static const Field<ConversationCreateRequest, String> _f$title = Field(
    'title',
    _$title,
    opt: true,
  );
  static Map<String, dynamic> _$data(ConversationCreateRequest v) => v.data;
  static const Field<ConversationCreateRequest, Map<String, dynamic>> _f$data =
      Field('data', _$data);

  @override
  final MappableFields<ConversationCreateRequest> fields = const {
    #agentId: _f$agentId,
    #title: _f$title,
    #data: _f$data,
  };

  static ConversationCreateRequest _instantiate(DecodingData data) {
    return ConversationCreateRequest(
      agentId: data.dec(_f$agentId),
      title: data.dec(_f$title),
      data: data.dec(_f$data),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ConversationCreateRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ConversationCreateRequest>(map);
  }

  static ConversationCreateRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ConversationCreateRequest>(json);
  }
}

mixin ConversationCreateRequestMappable {
  String toJson() {
    return ConversationCreateRequestMapper.ensureInitialized()
        .encodeJson<ConversationCreateRequest>(
          this as ConversationCreateRequest,
        );
  }

  Map<String, dynamic> toMap() {
    return ConversationCreateRequestMapper.ensureInitialized()
        .encodeMap<ConversationCreateRequest>(
          this as ConversationCreateRequest,
        );
  }

  ConversationCreateRequestCopyWith<
    ConversationCreateRequest,
    ConversationCreateRequest,
    ConversationCreateRequest
  >
  get copyWith =>
      _ConversationCreateRequestCopyWithImpl<
        ConversationCreateRequest,
        ConversationCreateRequest
      >(this as ConversationCreateRequest, $identity, $identity);
  @override
  String toString() {
    return ConversationCreateRequestMapper.ensureInitialized().stringifyValue(
      this as ConversationCreateRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return ConversationCreateRequestMapper.ensureInitialized().equalsValue(
      this as ConversationCreateRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return ConversationCreateRequestMapper.ensureInitialized().hashValue(
      this as ConversationCreateRequest,
    );
  }
}

extension ConversationCreateRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ConversationCreateRequest, $Out> {
  ConversationCreateRequestCopyWith<$R, ConversationCreateRequest, $Out>
  get $asConversationCreateRequest => $base.as(
    (v, t, t2) => _ConversationCreateRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ConversationCreateRequestCopyWith<
  $R,
  $In extends ConversationCreateRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data;
  $R call({String? agentId, String? title, Map<String, dynamic>? data});
  ConversationCreateRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ConversationCreateRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ConversationCreateRequest, $Out>
    implements
        ConversationCreateRequestCopyWith<$R, ConversationCreateRequest, $Out> {
  _ConversationCreateRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ConversationCreateRequest> $mapper =
      ConversationCreateRequestMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data => MapCopyWith(
    $value.data,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(data: v),
  );
  @override
  $R call({
    String? agentId,
    Object? title = $none,
    Map<String, dynamic>? data,
  }) => $apply(
    FieldCopyWithData({
      if (agentId != null) #agentId: agentId,
      if (title != $none) #title: title,
      if (data != null) #data: data,
    }),
  );
  @override
  ConversationCreateRequest $make(CopyWithData data) =>
      ConversationCreateRequest(
        agentId: data.get(#agentId, or: $value.agentId),
        title: data.get(#title, or: $value.title),
        data: data.get(#data, or: $value.data),
      );

  @override
  ConversationCreateRequestCopyWith<$R2, ConversationCreateRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ConversationCreateRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MessageAddRequestMapper extends ClassMapperBase<MessageAddRequest> {
  MessageAddRequestMapper._();

  static MessageAddRequestMapper? _instance;
  static MessageAddRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MessageAddRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MessageAddRequest';

  static String _$conversationId(MessageAddRequest v) => v.conversationId;
  static const Field<MessageAddRequest, String> _f$conversationId = Field(
    'conversationId',
    _$conversationId,
    key: r'conversation_id',
  );
  static Map<String, dynamic> _$data(MessageAddRequest v) => v.data;
  static const Field<MessageAddRequest, Map<String, dynamic>> _f$data = Field(
    'data',
    _$data,
  );

  @override
  final MappableFields<MessageAddRequest> fields = const {
    #conversationId: _f$conversationId,
    #data: _f$data,
  };

  static MessageAddRequest _instantiate(DecodingData data) {
    return MessageAddRequest(
      conversationId: data.dec(_f$conversationId),
      data: data.dec(_f$data),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MessageAddRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MessageAddRequest>(map);
  }

  static MessageAddRequest fromJson(String json) {
    return ensureInitialized().decodeJson<MessageAddRequest>(json);
  }
}

mixin MessageAddRequestMappable {
  String toJson() {
    return MessageAddRequestMapper.ensureInitialized()
        .encodeJson<MessageAddRequest>(this as MessageAddRequest);
  }

  Map<String, dynamic> toMap() {
    return MessageAddRequestMapper.ensureInitialized()
        .encodeMap<MessageAddRequest>(this as MessageAddRequest);
  }

  MessageAddRequestCopyWith<
    MessageAddRequest,
    MessageAddRequest,
    MessageAddRequest
  >
  get copyWith =>
      _MessageAddRequestCopyWithImpl<MessageAddRequest, MessageAddRequest>(
        this as MessageAddRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MessageAddRequestMapper.ensureInitialized().stringifyValue(
      this as MessageAddRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return MessageAddRequestMapper.ensureInitialized().equalsValue(
      this as MessageAddRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return MessageAddRequestMapper.ensureInitialized().hashValue(
      this as MessageAddRequest,
    );
  }
}

extension MessageAddRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MessageAddRequest, $Out> {
  MessageAddRequestCopyWith<$R, MessageAddRequest, $Out>
  get $asMessageAddRequest => $base.as(
    (v, t, t2) => _MessageAddRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MessageAddRequestCopyWith<
  $R,
  $In extends MessageAddRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data;
  $R call({String? conversationId, Map<String, dynamic>? data});
  MessageAddRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MessageAddRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MessageAddRequest, $Out>
    implements MessageAddRequestCopyWith<$R, MessageAddRequest, $Out> {
  _MessageAddRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MessageAddRequest> $mapper =
      MessageAddRequestMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data => MapCopyWith(
    $value.data,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(data: v),
  );
  @override
  $R call({String? conversationId, Map<String, dynamic>? data}) => $apply(
    FieldCopyWithData({
      if (conversationId != null) #conversationId: conversationId,
      if (data != null) #data: data,
    }),
  );
  @override
  MessageAddRequest $make(CopyWithData data) => MessageAddRequest(
    conversationId: data.get(#conversationId, or: $value.conversationId),
    data: data.get(#data, or: $value.data),
  );

  @override
  MessageAddRequestCopyWith<$R2, MessageAddRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MessageAddRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MessageUpdateRequestMapper extends ClassMapperBase<MessageUpdateRequest> {
  MessageUpdateRequestMapper._();

  static MessageUpdateRequestMapper? _instance;
  static MessageUpdateRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MessageUpdateRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MessageUpdateRequest';

  static String _$conversationId(MessageUpdateRequest v) => v.conversationId;
  static const Field<MessageUpdateRequest, String> _f$conversationId = Field(
    'conversationId',
    _$conversationId,
    key: r'conversation_id',
  );
  static String _$rowId(MessageUpdateRequest v) => v.rowId;
  static const Field<MessageUpdateRequest, String> _f$rowId = Field(
    'rowId',
    _$rowId,
    key: r'row_id',
  );
  static Map<String, dynamic> _$data(MessageUpdateRequest v) => v.data;
  static const Field<MessageUpdateRequest, Map<String, dynamic>> _f$data =
      Field('data', _$data);

  @override
  final MappableFields<MessageUpdateRequest> fields = const {
    #conversationId: _f$conversationId,
    #rowId: _f$rowId,
    #data: _f$data,
  };

  static MessageUpdateRequest _instantiate(DecodingData data) {
    return MessageUpdateRequest(
      conversationId: data.dec(_f$conversationId),
      rowId: data.dec(_f$rowId),
      data: data.dec(_f$data),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MessageUpdateRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MessageUpdateRequest>(map);
  }

  static MessageUpdateRequest fromJson(String json) {
    return ensureInitialized().decodeJson<MessageUpdateRequest>(json);
  }
}

mixin MessageUpdateRequestMappable {
  String toJson() {
    return MessageUpdateRequestMapper.ensureInitialized()
        .encodeJson<MessageUpdateRequest>(this as MessageUpdateRequest);
  }

  Map<String, dynamic> toMap() {
    return MessageUpdateRequestMapper.ensureInitialized()
        .encodeMap<MessageUpdateRequest>(this as MessageUpdateRequest);
  }

  MessageUpdateRequestCopyWith<
    MessageUpdateRequest,
    MessageUpdateRequest,
    MessageUpdateRequest
  >
  get copyWith =>
      _MessageUpdateRequestCopyWithImpl<
        MessageUpdateRequest,
        MessageUpdateRequest
      >(this as MessageUpdateRequest, $identity, $identity);
  @override
  String toString() {
    return MessageUpdateRequestMapper.ensureInitialized().stringifyValue(
      this as MessageUpdateRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return MessageUpdateRequestMapper.ensureInitialized().equalsValue(
      this as MessageUpdateRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return MessageUpdateRequestMapper.ensureInitialized().hashValue(
      this as MessageUpdateRequest,
    );
  }
}

extension MessageUpdateRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MessageUpdateRequest, $Out> {
  MessageUpdateRequestCopyWith<$R, MessageUpdateRequest, $Out>
  get $asMessageUpdateRequest => $base.as(
    (v, t, t2) => _MessageUpdateRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MessageUpdateRequestCopyWith<
  $R,
  $In extends MessageUpdateRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data;
  $R call({String? conversationId, String? rowId, Map<String, dynamic>? data});
  MessageUpdateRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MessageUpdateRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MessageUpdateRequest, $Out>
    implements MessageUpdateRequestCopyWith<$R, MessageUpdateRequest, $Out> {
  _MessageUpdateRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MessageUpdateRequest> $mapper =
      MessageUpdateRequestMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data => MapCopyWith(
    $value.data,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(data: v),
  );
  @override
  $R call({
    String? conversationId,
    String? rowId,
    Map<String, dynamic>? data,
  }) => $apply(
    FieldCopyWithData({
      if (conversationId != null) #conversationId: conversationId,
      if (rowId != null) #rowId: rowId,
      if (data != null) #data: data,
    }),
  );
  @override
  MessageUpdateRequest $make(CopyWithData data) => MessageUpdateRequest(
    conversationId: data.get(#conversationId, or: $value.conversationId),
    rowId: data.get(#rowId, or: $value.rowId),
    data: data.get(#data, or: $value.data),
  );

  @override
  MessageUpdateRequestCopyWith<$R2, MessageUpdateRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MessageUpdateRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MessagesRegenRequestMapper extends ClassMapperBase<MessagesRegenRequest> {
  MessagesRegenRequestMapper._();

  static MessagesRegenRequestMapper? _instance;
  static MessagesRegenRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MessagesRegenRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MessagesRegenRequest';

  static String _$conversationId(MessagesRegenRequest v) => v.conversationId;
  static const Field<MessagesRegenRequest, String> _f$conversationId = Field(
    'conversationId',
    _$conversationId,
    key: r'conversation_id',
  );
  static String _$rowId(MessagesRegenRequest v) => v.rowId;
  static const Field<MessagesRegenRequest, String> _f$rowId = Field(
    'rowId',
    _$rowId,
    key: r'row_id',
  );

  @override
  final MappableFields<MessagesRegenRequest> fields = const {
    #conversationId: _f$conversationId,
    #rowId: _f$rowId,
  };

  static MessagesRegenRequest _instantiate(DecodingData data) {
    return MessagesRegenRequest(
      conversationId: data.dec(_f$conversationId),
      rowId: data.dec(_f$rowId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MessagesRegenRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MessagesRegenRequest>(map);
  }

  static MessagesRegenRequest fromJson(String json) {
    return ensureInitialized().decodeJson<MessagesRegenRequest>(json);
  }
}

mixin MessagesRegenRequestMappable {
  String toJson() {
    return MessagesRegenRequestMapper.ensureInitialized()
        .encodeJson<MessagesRegenRequest>(this as MessagesRegenRequest);
  }

  Map<String, dynamic> toMap() {
    return MessagesRegenRequestMapper.ensureInitialized()
        .encodeMap<MessagesRegenRequest>(this as MessagesRegenRequest);
  }

  MessagesRegenRequestCopyWith<
    MessagesRegenRequest,
    MessagesRegenRequest,
    MessagesRegenRequest
  >
  get copyWith =>
      _MessagesRegenRequestCopyWithImpl<
        MessagesRegenRequest,
        MessagesRegenRequest
      >(this as MessagesRegenRequest, $identity, $identity);
  @override
  String toString() {
    return MessagesRegenRequestMapper.ensureInitialized().stringifyValue(
      this as MessagesRegenRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return MessagesRegenRequestMapper.ensureInitialized().equalsValue(
      this as MessagesRegenRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return MessagesRegenRequestMapper.ensureInitialized().hashValue(
      this as MessagesRegenRequest,
    );
  }
}

extension MessagesRegenRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MessagesRegenRequest, $Out> {
  MessagesRegenRequestCopyWith<$R, MessagesRegenRequest, $Out>
  get $asMessagesRegenRequest => $base.as(
    (v, t, t2) => _MessagesRegenRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class MessagesRegenRequestCopyWith<
  $R,
  $In extends MessagesRegenRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? conversationId, String? rowId});
  MessagesRegenRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MessagesRegenRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MessagesRegenRequest, $Out>
    implements MessagesRegenRequestCopyWith<$R, MessagesRegenRequest, $Out> {
  _MessagesRegenRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MessagesRegenRequest> $mapper =
      MessagesRegenRequestMapper.ensureInitialized();
  @override
  $R call({String? conversationId, String? rowId}) => $apply(
    FieldCopyWithData({
      if (conversationId != null) #conversationId: conversationId,
      if (rowId != null) #rowId: rowId,
    }),
  );
  @override
  MessagesRegenRequest $make(CopyWithData data) => MessagesRegenRequest(
    conversationId: data.get(#conversationId, or: $value.conversationId),
    rowId: data.get(#rowId, or: $value.rowId),
  );

  @override
  MessagesRegenRequestCopyWith<$R2, MessagesRegenRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MessagesRegenRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

