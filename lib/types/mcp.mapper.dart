// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'mcp.dart';

class JSONRPCErrorCodeMapper extends EnumMapper<JSONRPCErrorCode> {
  JSONRPCErrorCodeMapper._();

  static JSONRPCErrorCodeMapper? _instance;
  static JSONRPCErrorCodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JSONRPCErrorCodeMapper._());
    }
    return _instance!;
  }

  static JSONRPCErrorCode fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  JSONRPCErrorCode decode(dynamic value) {
    switch (value) {
      case -32700:
        return JSONRPCErrorCode.parseError;
      case -32600:
        return JSONRPCErrorCode.invalidRequest;
      case -32601:
        return JSONRPCErrorCode.methodNotFound;
      case -32602:
        return JSONRPCErrorCode.invalidParams;
      case -32603:
        return JSONRPCErrorCode.internalError;
      case -32001:
        return JSONRPCErrorCode.unauthorized;
      case -32003:
        return JSONRPCErrorCode.forbidden;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(JSONRPCErrorCode self) {
    switch (self) {
      case JSONRPCErrorCode.parseError:
        return -32700;
      case JSONRPCErrorCode.invalidRequest:
        return -32600;
      case JSONRPCErrorCode.methodNotFound:
        return -32601;
      case JSONRPCErrorCode.invalidParams:
        return -32602;
      case JSONRPCErrorCode.internalError:
        return -32603;
      case JSONRPCErrorCode.unauthorized:
        return -32001;
      case JSONRPCErrorCode.forbidden:
        return -32003;
    }
  }
}

extension JSONRPCErrorCodeMapperExtension on JSONRPCErrorCode {
  dynamic toValue() {
    JSONRPCErrorCodeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<JSONRPCErrorCode>(this);
  }
}

class MCPRoleMapper extends EnumMapper<MCPRole> {
  MCPRoleMapper._();

  static MCPRoleMapper? _instance;
  static MCPRoleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MCPRoleMapper._());
    }
    return _instance!;
  }

  static MCPRole fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MCPRole decode(dynamic value) {
    switch (value) {
      case 'user':
        return MCPRole.user;
      case 'assistant':
        return MCPRole.assistant;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MCPRole self) {
    switch (self) {
      case MCPRole.user:
        return 'user';
      case MCPRole.assistant:
        return 'assistant';
    }
  }
}

extension MCPRoleMapperExtension on MCPRole {
  dynamic toValue() {
    MCPRoleMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MCPRole>(this);
  }
}

class RequestParamsMetaMapper extends ClassMapperBase<RequestParamsMeta> {
  RequestParamsMetaMapper._();

  static RequestParamsMetaMapper? _instance;
  static RequestParamsMetaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RequestParamsMetaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RequestParamsMeta';

  static dynamic _$progressToken(RequestParamsMeta v) => v.progressToken;
  static const Field<RequestParamsMeta, dynamic> _f$progressToken = Field(
    'progressToken',
    _$progressToken,
    key: r'progress_token',
    opt: true,
  );

  @override
  final MappableFields<RequestParamsMeta> fields = const {
    #progressToken: _f$progressToken,
  };

  static RequestParamsMeta _instantiate(DecodingData data) {
    return RequestParamsMeta(progressToken: data.dec(_f$progressToken));
  }

  @override
  final Function instantiate = _instantiate;

  static RequestParamsMeta fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RequestParamsMeta>(map);
  }

  static RequestParamsMeta fromJson(String json) {
    return ensureInitialized().decodeJson<RequestParamsMeta>(json);
  }
}

mixin RequestParamsMetaMappable {
  String toJson() {
    return RequestParamsMetaMapper.ensureInitialized()
        .encodeJson<RequestParamsMeta>(this as RequestParamsMeta);
  }

  Map<String, dynamic> toMap() {
    return RequestParamsMetaMapper.ensureInitialized()
        .encodeMap<RequestParamsMeta>(this as RequestParamsMeta);
  }

  RequestParamsMetaCopyWith<
    RequestParamsMeta,
    RequestParamsMeta,
    RequestParamsMeta
  >
  get copyWith =>
      _RequestParamsMetaCopyWithImpl<RequestParamsMeta, RequestParamsMeta>(
        this as RequestParamsMeta,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RequestParamsMetaMapper.ensureInitialized().stringifyValue(
      this as RequestParamsMeta,
    );
  }

  @override
  bool operator ==(Object other) {
    return RequestParamsMetaMapper.ensureInitialized().equalsValue(
      this as RequestParamsMeta,
      other,
    );
  }

  @override
  int get hashCode {
    return RequestParamsMetaMapper.ensureInitialized().hashValue(
      this as RequestParamsMeta,
    );
  }
}

extension RequestParamsMetaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RequestParamsMeta, $Out> {
  RequestParamsMetaCopyWith<$R, RequestParamsMeta, $Out>
  get $asRequestParamsMeta => $base.as(
    (v, t, t2) => _RequestParamsMetaCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RequestParamsMetaCopyWith<
  $R,
  $In extends RequestParamsMeta,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({dynamic progressToken});
  RequestParamsMetaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RequestParamsMetaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RequestParamsMeta, $Out>
    implements RequestParamsMetaCopyWith<$R, RequestParamsMeta, $Out> {
  _RequestParamsMetaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RequestParamsMeta> $mapper =
      RequestParamsMetaMapper.ensureInitialized();
  @override
  $R call({Object? progressToken = $none}) => $apply(
    FieldCopyWithData({
      if (progressToken != $none) #progressToken: progressToken,
    }),
  );
  @override
  RequestParamsMeta $make(CopyWithData data) => RequestParamsMeta(
    progressToken: data.get(#progressToken, or: $value.progressToken),
  );

  @override
  RequestParamsMetaCopyWith<$R2, RequestParamsMeta, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RequestParamsMetaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ParamsMapper extends ClassMapperBase<Params> {
  ParamsMapper._();

  static ParamsMapper? _instance;
  static ParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ParamsMapper._());
      PaginatedRequestParamsMapper.ensureInitialized();
      CallToolRequestParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Params';

  static Map<String, dynamic>? _$meta(Params v) => v.meta;
  static const Field<Params, Map<String, dynamic>> _f$meta = Field(
    'meta',
    _$meta,
    opt: true,
  );

  @override
  final MappableFields<Params> fields = const {#meta: _f$meta};

  static Params _instantiate(DecodingData data) {
    return Params(meta: data.dec(_f$meta));
  }

  @override
  final Function instantiate = _instantiate;

  static Params fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Params>(map);
  }

  static Params fromJson(String json) {
    return ensureInitialized().decodeJson<Params>(json);
  }
}

mixin ParamsMappable {
  String toJson() {
    return ParamsMapper.ensureInitialized().encodeJson<Params>(this as Params);
  }

  Map<String, dynamic> toMap() {
    return ParamsMapper.ensureInitialized().encodeMap<Params>(this as Params);
  }

  ParamsCopyWith<Params, Params, Params> get copyWith =>
      _ParamsCopyWithImpl<Params, Params>(this as Params, $identity, $identity);
  @override
  String toString() {
    return ParamsMapper.ensureInitialized().stringifyValue(this as Params);
  }

  @override
  bool operator ==(Object other) {
    return ParamsMapper.ensureInitialized().equalsValue(this as Params, other);
  }

  @override
  int get hashCode {
    return ParamsMapper.ensureInitialized().hashValue(this as Params);
  }
}

extension ParamsValueCopy<$R, $Out> on ObjectCopyWith<$R, Params, $Out> {
  ParamsCopyWith<$R, Params, $Out> get $asParams =>
      $base.as((v, t, t2) => _ParamsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ParamsCopyWith<$R, $In extends Params, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get meta;
  $R call({Map<String, dynamic>? meta});
  ParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ParamsCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Params, $Out>
    implements ParamsCopyWith<$R, Params, $Out> {
  _ParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Params> $mapper = ParamsMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get meta => $value.meta != null
      ? MapCopyWith(
          $value.meta!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(meta: v),
        )
      : null;
  @override
  $R call({Object? meta = $none}) =>
      $apply(FieldCopyWithData({if (meta != $none) #meta: meta}));
  @override
  Params $make(CopyWithData data) =>
      Params(meta: data.get(#meta, or: $value.meta));

  @override
  ParamsCopyWith<$R2, Params, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ParamsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PaginatedRequestParamsMapper
    extends ClassMapperBase<PaginatedRequestParams> {
  PaginatedRequestParamsMapper._();

  static PaginatedRequestParamsMapper? _instance;
  static PaginatedRequestParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaginatedRequestParamsMapper._());
      ParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PaginatedRequestParams';

  static String? _$cursor(PaginatedRequestParams v) => v.cursor;
  static const Field<PaginatedRequestParams, String> _f$cursor = Field(
    'cursor',
    _$cursor,
    opt: true,
  );
  static Map<String, dynamic>? _$meta(PaginatedRequestParams v) => v.meta;
  static const Field<PaginatedRequestParams, Map<String, dynamic>> _f$meta =
      Field('meta', _$meta, opt: true);

  @override
  final MappableFields<PaginatedRequestParams> fields = const {
    #cursor: _f$cursor,
    #meta: _f$meta,
  };

  static PaginatedRequestParams _instantiate(DecodingData data) {
    return PaginatedRequestParams(
      cursor: data.dec(_f$cursor),
      meta: data.dec(_f$meta),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PaginatedRequestParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaginatedRequestParams>(map);
  }

  static PaginatedRequestParams fromJson(String json) {
    return ensureInitialized().decodeJson<PaginatedRequestParams>(json);
  }
}

mixin PaginatedRequestParamsMappable {
  String toJson() {
    return PaginatedRequestParamsMapper.ensureInitialized()
        .encodeJson<PaginatedRequestParams>(this as PaginatedRequestParams);
  }

  Map<String, dynamic> toMap() {
    return PaginatedRequestParamsMapper.ensureInitialized()
        .encodeMap<PaginatedRequestParams>(this as PaginatedRequestParams);
  }

  PaginatedRequestParamsCopyWith<
    PaginatedRequestParams,
    PaginatedRequestParams,
    PaginatedRequestParams
  >
  get copyWith =>
      _PaginatedRequestParamsCopyWithImpl<
        PaginatedRequestParams,
        PaginatedRequestParams
      >(this as PaginatedRequestParams, $identity, $identity);
  @override
  String toString() {
    return PaginatedRequestParamsMapper.ensureInitialized().stringifyValue(
      this as PaginatedRequestParams,
    );
  }

  @override
  bool operator ==(Object other) {
    return PaginatedRequestParamsMapper.ensureInitialized().equalsValue(
      this as PaginatedRequestParams,
      other,
    );
  }

  @override
  int get hashCode {
    return PaginatedRequestParamsMapper.ensureInitialized().hashValue(
      this as PaginatedRequestParams,
    );
  }
}

extension PaginatedRequestParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaginatedRequestParams, $Out> {
  PaginatedRequestParamsCopyWith<$R, PaginatedRequestParams, $Out>
  get $asPaginatedRequestParams => $base.as(
    (v, t, t2) => _PaginatedRequestParamsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PaginatedRequestParamsCopyWith<
  $R,
  $In extends PaginatedRequestParams,
  $Out
>
    implements ParamsCopyWith<$R, $In, $Out> {
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta;
  @override
  $R call({String? cursor, Map<String, dynamic>? meta});
  PaginatedRequestParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PaginatedRequestParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaginatedRequestParams, $Out>
    implements
        PaginatedRequestParamsCopyWith<$R, PaginatedRequestParams, $Out> {
  _PaginatedRequestParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaginatedRequestParams> $mapper =
      PaginatedRequestParamsMapper.ensureInitialized();
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
  $R call({Object? cursor = $none, Object? meta = $none}) => $apply(
    FieldCopyWithData({
      if (cursor != $none) #cursor: cursor,
      if (meta != $none) #meta: meta,
    }),
  );
  @override
  PaginatedRequestParams $make(CopyWithData data) => PaginatedRequestParams(
    cursor: data.get(#cursor, or: $value.cursor),
    meta: data.get(#meta, or: $value.meta),
  );

  @override
  PaginatedRequestParamsCopyWith<$R2, PaginatedRequestParams, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PaginatedRequestParamsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JSONRPCBaseMapper extends ClassMapperBase<JSONRPCBase> {
  JSONRPCBaseMapper._();

  static JSONRPCBaseMapper? _instance;
  static JSONRPCBaseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JSONRPCBaseMapper._());
      JSONRPCRequestMapper.ensureInitialized();
      JSONRPCNotificationMapper.ensureInitialized();
      JSONRPCResponseMapper.ensureInitialized();
      JSONRPCEmptyResponseMapper.ensureInitialized();
      JSONRPCErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JSONRPCBase';

  static String _$jsonrpc(JSONRPCBase v) => v.jsonrpc;
  static const Field<JSONRPCBase, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    opt: true,
    def: '2.0',
  );

  @override
  final MappableFields<JSONRPCBase> fields = const {#jsonrpc: _f$jsonrpc};

  static JSONRPCBase _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('JSONRPCBase');
  }

  @override
  final Function instantiate = _instantiate;

  static JSONRPCBase fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JSONRPCBase>(map);
  }

  static JSONRPCBase fromJson(String json) {
    return ensureInitialized().decodeJson<JSONRPCBase>(json);
  }
}

mixin JSONRPCBaseMappable {
  String toJson();
  Map<String, dynamic> toMap();
  JSONRPCBaseCopyWith<JSONRPCBase, JSONRPCBase, JSONRPCBase> get copyWith;
}

abstract class JSONRPCBaseCopyWith<$R, $In extends JSONRPCBase, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  JSONRPCBaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class JSONRPCRequestMapper extends ClassMapperBase<JSONRPCRequest> {
  JSONRPCRequestMapper._();

  static JSONRPCRequestMapper? _instance;
  static JSONRPCRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JSONRPCRequestMapper._());
      JSONRPCBaseMapper.ensureInitialized();
      PaginatedRequestMapper.ensureInitialized();
      InitializeRequestMapper.ensureInitialized();
      CallToolRequestMapper.ensureInitialized();
      ParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JSONRPCRequest';
  @override
  Function get typeFactory =>
      <T extends Params>(f) => f<JSONRPCRequest<T>>();

  static dynamic _$id(JSONRPCRequest v) => v.id;
  static const Field<JSONRPCRequest, dynamic> _f$id = Field('id', _$id);
  static String _$method(JSONRPCRequest v) => v.method;
  static const Field<JSONRPCRequest, String> _f$method = Field(
    'method',
    _$method,
  );
  static Params? _$params(JSONRPCRequest v) => v.params;
  static dynamic _arg$params<T extends Params>(f) => f<T>();
  static const Field<JSONRPCRequest, Params> _f$params = Field(
    'params',
    _$params,
    opt: true,
    arg: _arg$params,
  );
  static String _$jsonrpc(JSONRPCRequest v) => v.jsonrpc;
  static const Field<JSONRPCRequest, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    opt: true,
    def: '2.0',
  );

  @override
  final MappableFields<JSONRPCRequest> fields = const {
    #id: _f$id,
    #method: _f$method,
    #params: _f$params,
    #jsonrpc: _f$jsonrpc,
  };

  static JSONRPCRequest<T> _instantiate<T extends Params>(DecodingData data) {
    return JSONRPCRequest(
      id: data.dec(_f$id),
      method: data.dec(_f$method),
      params: data.dec(_f$params),
      jsonrpc: data.dec(_f$jsonrpc),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static JSONRPCRequest<T> fromMap<T extends Params>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JSONRPCRequest<T>>(map);
  }

  static JSONRPCRequest<T> fromJson<T extends Params>(String json) {
    return ensureInitialized().decodeJson<JSONRPCRequest<T>>(json);
  }
}

mixin JSONRPCRequestMappable<T extends Params> {
  String toJson() {
    return JSONRPCRequestMapper.ensureInitialized()
        .encodeJson<JSONRPCRequest<T>>(this as JSONRPCRequest<T>);
  }

  Map<String, dynamic> toMap() {
    return JSONRPCRequestMapper.ensureInitialized()
        .encodeMap<JSONRPCRequest<T>>(this as JSONRPCRequest<T>);
  }

  JSONRPCRequestCopyWith<
    JSONRPCRequest<T>,
    JSONRPCRequest<T>,
    JSONRPCRequest<T>,
    T
  >
  get copyWith =>
      _JSONRPCRequestCopyWithImpl<JSONRPCRequest<T>, JSONRPCRequest<T>, T>(
        this as JSONRPCRequest<T>,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JSONRPCRequestMapper.ensureInitialized().stringifyValue(
      this as JSONRPCRequest<T>,
    );
  }

  @override
  bool operator ==(Object other) {
    return JSONRPCRequestMapper.ensureInitialized().equalsValue(
      this as JSONRPCRequest<T>,
      other,
    );
  }

  @override
  int get hashCode {
    return JSONRPCRequestMapper.ensureInitialized().hashValue(
      this as JSONRPCRequest<T>,
    );
  }
}

extension JSONRPCRequestValueCopy<$R, $Out, T extends Params>
    on ObjectCopyWith<$R, JSONRPCRequest<T>, $Out> {
  JSONRPCRequestCopyWith<$R, JSONRPCRequest<T>, $Out, T>
  get $asJSONRPCRequest => $base.as(
    (v, t, t2) => _JSONRPCRequestCopyWithImpl<$R, $Out, T>(v, t, t2),
  );
}

abstract class JSONRPCRequestCopyWith<
  $R,
  $In extends JSONRPCRequest<T>,
  $Out,
  T extends Params
>
    implements JSONRPCBaseCopyWith<$R, $In, $Out> {
  ParamsCopyWith<$R, Params, T>? get params;
  @override
  $R call({dynamic id, T? params});
  JSONRPCRequestCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _JSONRPCRequestCopyWithImpl<$R, $Out, T extends Params>
    extends ClassCopyWithBase<$R, JSONRPCRequest<T>, $Out>
    implements JSONRPCRequestCopyWith<$R, JSONRPCRequest<T>, $Out, T> {
  _JSONRPCRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JSONRPCRequest> $mapper =
      JSONRPCRequestMapper.ensureInitialized();
  @override
  ParamsCopyWith<$R, Params, T>? get params =>
      $value.params?.copyWith.$chain((v) => call(params: v));
  @override
  $R call({Object? id = $none, Object? params = $none}) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (params != $none) #params: params,
    }),
  );
  @override
  JSONRPCRequest<T> $make(CopyWithData data) => JSONRPCRequest(
    id: data.get(#id, or: $value.id),
    method: data.get(#method, or: $value.method),
    params: data.get(#params, or: $value.params),
    jsonrpc: data.get(#jsonrpc, or: $value.jsonrpc),
  );

  @override
  JSONRPCRequestCopyWith<$R2, JSONRPCRequest<T>, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JSONRPCRequestCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

class PaginatedRequestMapper extends ClassMapperBase<PaginatedRequest> {
  PaginatedRequestMapper._();

  static PaginatedRequestMapper? _instance;
  static PaginatedRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaginatedRequestMapper._());
      JSONRPCRequestMapper.ensureInitialized();
      ListToolsRequestMapper.ensureInitialized();
      PaginatedRequestParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PaginatedRequest';

  static dynamic _$id(PaginatedRequest v) => v.id;
  static const Field<PaginatedRequest, dynamic> _f$id = Field('id', _$id);
  static String _$method(PaginatedRequest v) => v.method;
  static const Field<PaginatedRequest, String> _f$method = Field(
    'method',
    _$method,
  );
  static PaginatedRequestParams? _$params(PaginatedRequest v) => v.params;
  static const Field<PaginatedRequest, PaginatedRequestParams> _f$params =
      Field('params', _$params, opt: true);
  static String _$jsonrpc(PaginatedRequest v) => v.jsonrpc;
  static const Field<PaginatedRequest, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<PaginatedRequest> fields = const {
    #id: _f$id,
    #method: _f$method,
    #params: _f$params,
    #jsonrpc: _f$jsonrpc,
  };

  static PaginatedRequest _instantiate(DecodingData data) {
    return PaginatedRequest(
      id: data.dec(_f$id),
      method: data.dec(_f$method),
      params: data.dec(_f$params),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PaginatedRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaginatedRequest>(map);
  }

  static PaginatedRequest fromJson(String json) {
    return ensureInitialized().decodeJson<PaginatedRequest>(json);
  }
}

mixin PaginatedRequestMappable {
  String toJson() {
    return PaginatedRequestMapper.ensureInitialized()
        .encodeJson<PaginatedRequest>(this as PaginatedRequest);
  }

  Map<String, dynamic> toMap() {
    return PaginatedRequestMapper.ensureInitialized()
        .encodeMap<PaginatedRequest>(this as PaginatedRequest);
  }

  PaginatedRequestCopyWith<PaginatedRequest, PaginatedRequest, PaginatedRequest>
  get copyWith =>
      _PaginatedRequestCopyWithImpl<PaginatedRequest, PaginatedRequest>(
        this as PaginatedRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PaginatedRequestMapper.ensureInitialized().stringifyValue(
      this as PaginatedRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return PaginatedRequestMapper.ensureInitialized().equalsValue(
      this as PaginatedRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return PaginatedRequestMapper.ensureInitialized().hashValue(
      this as PaginatedRequest,
    );
  }
}

extension PaginatedRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaginatedRequest, $Out> {
  PaginatedRequestCopyWith<$R, PaginatedRequest, $Out>
  get $asPaginatedRequest =>
      $base.as((v, t, t2) => _PaginatedRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PaginatedRequestCopyWith<$R, $In extends PaginatedRequest, $Out>
    implements JSONRPCRequestCopyWith<$R, $In, $Out, PaginatedRequestParams> {
  @override
  PaginatedRequestParamsCopyWith<
    $R,
    PaginatedRequestParams,
    PaginatedRequestParams
  >?
  get params;
  @override
  $R call({dynamic id, PaginatedRequestParams? params});
  PaginatedRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PaginatedRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaginatedRequest, $Out>
    implements PaginatedRequestCopyWith<$R, PaginatedRequest, $Out> {
  _PaginatedRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaginatedRequest> $mapper =
      PaginatedRequestMapper.ensureInitialized();
  @override
  PaginatedRequestParamsCopyWith<
    $R,
    PaginatedRequestParams,
    PaginatedRequestParams
  >?
  get params => ($value.params as PaginatedRequestParams?)?.copyWith.$chain(
    (v) => call(params: v),
  );
  @override
  $R call({Object? id = $none, Object? params = $none}) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (params != $none) #params: params,
    }),
  );
  @override
  PaginatedRequest $make(CopyWithData data) => PaginatedRequest(
    id: data.get(#id, or: $value.id),
    method: data.get(#method, or: $value.method),
    params: data.get(#params, or: $value.params),
  );

  @override
  PaginatedRequestCopyWith<$R2, PaginatedRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PaginatedRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JSONRPCNotificationMapper extends ClassMapperBase<JSONRPCNotification> {
  JSONRPCNotificationMapper._();

  static JSONRPCNotificationMapper? _instance;
  static JSONRPCNotificationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JSONRPCNotificationMapper._());
      JSONRPCBaseMapper.ensureInitialized();
      InitializedNotificationMapper.ensureInitialized();
      ParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JSONRPCNotification';
  @override
  Function get typeFactory =>
      <T extends Params>(f) => f<JSONRPCNotification<T>>();

  static String _$method(JSONRPCNotification v) => v.method;
  static const Field<JSONRPCNotification, String> _f$method = Field(
    'method',
    _$method,
  );
  static Params? _$params(JSONRPCNotification v) => v.params;
  static dynamic _arg$params<T extends Params>(f) => f<T>();
  static const Field<JSONRPCNotification, Params> _f$params = Field(
    'params',
    _$params,
    opt: true,
    arg: _arg$params,
  );
  static String _$jsonrpc(JSONRPCNotification v) => v.jsonrpc;
  static const Field<JSONRPCNotification, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    opt: true,
    def: '2.0',
  );

  @override
  final MappableFields<JSONRPCNotification> fields = const {
    #method: _f$method,
    #params: _f$params,
    #jsonrpc: _f$jsonrpc,
  };

  static JSONRPCNotification<T> _instantiate<T extends Params>(
    DecodingData data,
  ) {
    return JSONRPCNotification(
      method: data.dec(_f$method),
      params: data.dec(_f$params),
      jsonrpc: data.dec(_f$jsonrpc),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static JSONRPCNotification<T> fromMap<T extends Params>(
    Map<String, dynamic> map,
  ) {
    return ensureInitialized().decodeMap<JSONRPCNotification<T>>(map);
  }

  static JSONRPCNotification<T> fromJson<T extends Params>(String json) {
    return ensureInitialized().decodeJson<JSONRPCNotification<T>>(json);
  }
}

mixin JSONRPCNotificationMappable<T extends Params> {
  String toJson() {
    return JSONRPCNotificationMapper.ensureInitialized()
        .encodeJson<JSONRPCNotification<T>>(this as JSONRPCNotification<T>);
  }

  Map<String, dynamic> toMap() {
    return JSONRPCNotificationMapper.ensureInitialized()
        .encodeMap<JSONRPCNotification<T>>(this as JSONRPCNotification<T>);
  }

  JSONRPCNotificationCopyWith<
    JSONRPCNotification<T>,
    JSONRPCNotification<T>,
    JSONRPCNotification<T>,
    T
  >
  get copyWith =>
      _JSONRPCNotificationCopyWithImpl<
        JSONRPCNotification<T>,
        JSONRPCNotification<T>,
        T
      >(this as JSONRPCNotification<T>, $identity, $identity);
  @override
  String toString() {
    return JSONRPCNotificationMapper.ensureInitialized().stringifyValue(
      this as JSONRPCNotification<T>,
    );
  }

  @override
  bool operator ==(Object other) {
    return JSONRPCNotificationMapper.ensureInitialized().equalsValue(
      this as JSONRPCNotification<T>,
      other,
    );
  }

  @override
  int get hashCode {
    return JSONRPCNotificationMapper.ensureInitialized().hashValue(
      this as JSONRPCNotification<T>,
    );
  }
}

extension JSONRPCNotificationValueCopy<$R, $Out, T extends Params>
    on ObjectCopyWith<$R, JSONRPCNotification<T>, $Out> {
  JSONRPCNotificationCopyWith<$R, JSONRPCNotification<T>, $Out, T>
  get $asJSONRPCNotification => $base.as(
    (v, t, t2) => _JSONRPCNotificationCopyWithImpl<$R, $Out, T>(v, t, t2),
  );
}

abstract class JSONRPCNotificationCopyWith<
  $R,
  $In extends JSONRPCNotification<T>,
  $Out,
  T extends Params
>
    implements JSONRPCBaseCopyWith<$R, $In, $Out> {
  ParamsCopyWith<$R, Params, T>? get params;
  @override
  $R call({T? params});
  JSONRPCNotificationCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _JSONRPCNotificationCopyWithImpl<$R, $Out, T extends Params>
    extends ClassCopyWithBase<$R, JSONRPCNotification<T>, $Out>
    implements
        JSONRPCNotificationCopyWith<$R, JSONRPCNotification<T>, $Out, T> {
  _JSONRPCNotificationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JSONRPCNotification> $mapper =
      JSONRPCNotificationMapper.ensureInitialized();
  @override
  ParamsCopyWith<$R, Params, T>? get params =>
      $value.params?.copyWith.$chain((v) => call(params: v));
  @override
  $R call({Object? params = $none}) =>
      $apply(FieldCopyWithData({if (params != $none) #params: params}));
  @override
  JSONRPCNotification<T> $make(CopyWithData data) => JSONRPCNotification(
    method: data.get(#method, or: $value.method),
    params: data.get(#params, or: $value.params),
    jsonrpc: data.get(#jsonrpc, or: $value.jsonrpc),
  );

  @override
  JSONRPCNotificationCopyWith<$R2, JSONRPCNotification<T>, $Out2, T>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _JSONRPCNotificationCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

class InitializedNotificationMapper
    extends ClassMapperBase<InitializedNotification> {
  InitializedNotificationMapper._();

  static InitializedNotificationMapper? _instance;
  static InitializedNotificationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = InitializedNotificationMapper._(),
      );
      JSONRPCNotificationMapper.ensureInitialized();
      ParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InitializedNotification';

  static Params? _$params(InitializedNotification v) => v.params;
  static const Field<InitializedNotification, Params> _f$params = Field(
    'params',
    _$params,
    opt: true,
  );
  static String _$jsonrpc(InitializedNotification v) => v.jsonrpc;
  static const Field<InitializedNotification, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    mode: FieldMode.member,
  );
  static String _$method(InitializedNotification v) => v.method;
  static const Field<InitializedNotification, String> _f$method = Field(
    'method',
    _$method,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<InitializedNotification> fields = const {
    #params: _f$params,
    #jsonrpc: _f$jsonrpc,
    #method: _f$method,
  };

  static InitializedNotification _instantiate(DecodingData data) {
    return InitializedNotification(params: data.dec(_f$params));
  }

  @override
  final Function instantiate = _instantiate;

  static InitializedNotification fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InitializedNotification>(map);
  }

  static InitializedNotification fromJson(String json) {
    return ensureInitialized().decodeJson<InitializedNotification>(json);
  }
}

mixin InitializedNotificationMappable {
  String toJson() {
    return InitializedNotificationMapper.ensureInitialized()
        .encodeJson<InitializedNotification>(this as InitializedNotification);
  }

  Map<String, dynamic> toMap() {
    return InitializedNotificationMapper.ensureInitialized()
        .encodeMap<InitializedNotification>(this as InitializedNotification);
  }

  InitializedNotificationCopyWith<
    InitializedNotification,
    InitializedNotification,
    InitializedNotification
  >
  get copyWith =>
      _InitializedNotificationCopyWithImpl<
        InitializedNotification,
        InitializedNotification
      >(this as InitializedNotification, $identity, $identity);
  @override
  String toString() {
    return InitializedNotificationMapper.ensureInitialized().stringifyValue(
      this as InitializedNotification,
    );
  }

  @override
  bool operator ==(Object other) {
    return InitializedNotificationMapper.ensureInitialized().equalsValue(
      this as InitializedNotification,
      other,
    );
  }

  @override
  int get hashCode {
    return InitializedNotificationMapper.ensureInitialized().hashValue(
      this as InitializedNotification,
    );
  }
}

extension InitializedNotificationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InitializedNotification, $Out> {
  InitializedNotificationCopyWith<$R, InitializedNotification, $Out>
  get $asInitializedNotification => $base.as(
    (v, t, t2) => _InitializedNotificationCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class InitializedNotificationCopyWith<
  $R,
  $In extends InitializedNotification,
  $Out
>
    implements JSONRPCNotificationCopyWith<$R, $In, $Out, Params> {
  @override
  ParamsCopyWith<$R, Params, Params>? get params;
  @override
  $R call({Params? params});
  InitializedNotificationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _InitializedNotificationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InitializedNotification, $Out>
    implements
        InitializedNotificationCopyWith<$R, InitializedNotification, $Out> {
  _InitializedNotificationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InitializedNotification> $mapper =
      InitializedNotificationMapper.ensureInitialized();
  @override
  ParamsCopyWith<$R, Params, Params>? get params =>
      ($value.params as Params?)?.copyWith.$chain((v) => call(params: v));
  @override
  $R call({Object? params = $none}) =>
      $apply(FieldCopyWithData({if (params != $none) #params: params}));
  @override
  InitializedNotification $make(CopyWithData data) =>
      InitializedNotification(params: data.get(#params, or: $value.params));

  @override
  InitializedNotificationCopyWith<$R2, InitializedNotification, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _InitializedNotificationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ResultMapper extends ClassMapperBase<Result> {
  ResultMapper._();

  static ResultMapper? _instance;
  static ResultMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResultMapper._());
      InitializeResultMapper.ensureInitialized();
      ListToolsResultMapper.ensureInitialized();
      CallToolResultMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Result';

  static Map<String, dynamic>? _$meta(Result v) => v.meta;
  static const Field<Result, Map<String, dynamic>> _f$meta = Field(
    'meta',
    _$meta,
    opt: true,
  );

  @override
  final MappableFields<Result> fields = const {#meta: _f$meta};

  static Result _instantiate(DecodingData data) {
    return Result(meta: data.dec(_f$meta));
  }

  @override
  final Function instantiate = _instantiate;

  static Result fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Result>(map);
  }

  static Result fromJson(String json) {
    return ensureInitialized().decodeJson<Result>(json);
  }
}

mixin ResultMappable {
  String toJson() {
    return ResultMapper.ensureInitialized().encodeJson<Result>(this as Result);
  }

  Map<String, dynamic> toMap() {
    return ResultMapper.ensureInitialized().encodeMap<Result>(this as Result);
  }

  ResultCopyWith<Result, Result, Result> get copyWith =>
      _ResultCopyWithImpl<Result, Result>(this as Result, $identity, $identity);
  @override
  String toString() {
    return ResultMapper.ensureInitialized().stringifyValue(this as Result);
  }

  @override
  bool operator ==(Object other) {
    return ResultMapper.ensureInitialized().equalsValue(this as Result, other);
  }

  @override
  int get hashCode {
    return ResultMapper.ensureInitialized().hashValue(this as Result);
  }
}

extension ResultValueCopy<$R, $Out> on ObjectCopyWith<$R, Result, $Out> {
  ResultCopyWith<$R, Result, $Out> get $asResult =>
      $base.as((v, t, t2) => _ResultCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ResultCopyWith<$R, $In extends Result, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get meta;
  $R call({Map<String, dynamic>? meta});
  ResultCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResultCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Result, $Out>
    implements ResultCopyWith<$R, Result, $Out> {
  _ResultCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Result> $mapper = ResultMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get meta => $value.meta != null
      ? MapCopyWith(
          $value.meta!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(meta: v),
        )
      : null;
  @override
  $R call({Object? meta = $none}) =>
      $apply(FieldCopyWithData({if (meta != $none) #meta: meta}));
  @override
  Result $make(CopyWithData data) =>
      Result(meta: data.get(#meta, or: $value.meta));

  @override
  ResultCopyWith<$R2, Result, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ResultCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JSONRPCResponseMapper extends ClassMapperBase<JSONRPCResponse> {
  JSONRPCResponseMapper._();

  static JSONRPCResponseMapper? _instance;
  static JSONRPCResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JSONRPCResponseMapper._());
      JSONRPCBaseMapper.ensureInitialized();
      ResultMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JSONRPCResponse';
  @override
  Function get typeFactory =>
      <T extends Result>(f) => f<JSONRPCResponse<T>>();

  static dynamic _$id(JSONRPCResponse v) => v.id;
  static const Field<JSONRPCResponse, dynamic> _f$id = Field('id', _$id);
  static Result? _$result(JSONRPCResponse v) => v.result;
  static dynamic _arg$result<T extends Result>(f) => f<T>();
  static const Field<JSONRPCResponse, Result> _f$result = Field(
    'result',
    _$result,
    opt: true,
    arg: _arg$result,
  );
  static String _$jsonrpc(JSONRPCResponse v) => v.jsonrpc;
  static const Field<JSONRPCResponse, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    opt: true,
    def: '2.0',
  );

  @override
  final MappableFields<JSONRPCResponse> fields = const {
    #id: _f$id,
    #result: _f$result,
    #jsonrpc: _f$jsonrpc,
  };

  static JSONRPCResponse<T> _instantiate<T extends Result>(DecodingData data) {
    return JSONRPCResponse(
      id: data.dec(_f$id),
      result: data.dec(_f$result),
      jsonrpc: data.dec(_f$jsonrpc),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static JSONRPCResponse<T> fromMap<T extends Result>(
    Map<String, dynamic> map,
  ) {
    return ensureInitialized().decodeMap<JSONRPCResponse<T>>(map);
  }

  static JSONRPCResponse<T> fromJson<T extends Result>(String json) {
    return ensureInitialized().decodeJson<JSONRPCResponse<T>>(json);
  }
}

mixin JSONRPCResponseMappable<T extends Result> {
  String toJson() {
    return JSONRPCResponseMapper.ensureInitialized()
        .encodeJson<JSONRPCResponse<T>>(this as JSONRPCResponse<T>);
  }

  Map<String, dynamic> toMap() {
    return JSONRPCResponseMapper.ensureInitialized()
        .encodeMap<JSONRPCResponse<T>>(this as JSONRPCResponse<T>);
  }

  JSONRPCResponseCopyWith<
    JSONRPCResponse<T>,
    JSONRPCResponse<T>,
    JSONRPCResponse<T>,
    T
  >
  get copyWith =>
      _JSONRPCResponseCopyWithImpl<JSONRPCResponse<T>, JSONRPCResponse<T>, T>(
        this as JSONRPCResponse<T>,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JSONRPCResponseMapper.ensureInitialized().stringifyValue(
      this as JSONRPCResponse<T>,
    );
  }

  @override
  bool operator ==(Object other) {
    return JSONRPCResponseMapper.ensureInitialized().equalsValue(
      this as JSONRPCResponse<T>,
      other,
    );
  }

  @override
  int get hashCode {
    return JSONRPCResponseMapper.ensureInitialized().hashValue(
      this as JSONRPCResponse<T>,
    );
  }
}

extension JSONRPCResponseValueCopy<$R, $Out, T extends Result>
    on ObjectCopyWith<$R, JSONRPCResponse<T>, $Out> {
  JSONRPCResponseCopyWith<$R, JSONRPCResponse<T>, $Out, T>
  get $asJSONRPCResponse => $base.as(
    (v, t, t2) => _JSONRPCResponseCopyWithImpl<$R, $Out, T>(v, t, t2),
  );
}

abstract class JSONRPCResponseCopyWith<
  $R,
  $In extends JSONRPCResponse<T>,
  $Out,
  T extends Result
>
    implements JSONRPCBaseCopyWith<$R, $In, $Out> {
  ResultCopyWith<$R, Result, T>? get result;
  @override
  $R call({dynamic id, T? result, String? jsonrpc});
  JSONRPCResponseCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _JSONRPCResponseCopyWithImpl<$R, $Out, T extends Result>
    extends ClassCopyWithBase<$R, JSONRPCResponse<T>, $Out>
    implements JSONRPCResponseCopyWith<$R, JSONRPCResponse<T>, $Out, T> {
  _JSONRPCResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JSONRPCResponse> $mapper =
      JSONRPCResponseMapper.ensureInitialized();
  @override
  ResultCopyWith<$R, Result, T>? get result =>
      $value.result?.copyWith.$chain((v) => call(result: v));
  @override
  $R call({Object? id = $none, Object? result = $none, String? jsonrpc}) =>
      $apply(
        FieldCopyWithData({
          if (id != $none) #id: id,
          if (result != $none) #result: result,
          if (jsonrpc != null) #jsonrpc: jsonrpc,
        }),
      );
  @override
  JSONRPCResponse<T> $make(CopyWithData data) => JSONRPCResponse(
    id: data.get(#id, or: $value.id),
    result: data.get(#result, or: $value.result),
    jsonrpc: data.get(#jsonrpc, or: $value.jsonrpc),
  );

  @override
  JSONRPCResponseCopyWith<$R2, JSONRPCResponse<T>, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JSONRPCResponseCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

class JSONRPCEmptyResponseMapper extends ClassMapperBase<JSONRPCEmptyResponse> {
  JSONRPCEmptyResponseMapper._();

  static JSONRPCEmptyResponseMapper? _instance;
  static JSONRPCEmptyResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JSONRPCEmptyResponseMapper._());
      JSONRPCBaseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JSONRPCEmptyResponse';

  static dynamic _$id(JSONRPCEmptyResponse v) => v.id;
  static const Field<JSONRPCEmptyResponse, dynamic> _f$id = Field('id', _$id);
  static Map<String, dynamic> _$result(JSONRPCEmptyResponse v) => v.result;
  static const Field<JSONRPCEmptyResponse, Map<String, dynamic>> _f$result =
      Field('result', _$result, opt: true, def: const {});
  static String _$jsonrpc(JSONRPCEmptyResponse v) => v.jsonrpc;
  static const Field<JSONRPCEmptyResponse, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    opt: true,
    def: '2.0',
  );

  @override
  final MappableFields<JSONRPCEmptyResponse> fields = const {
    #id: _f$id,
    #result: _f$result,
    #jsonrpc: _f$jsonrpc,
  };

  static JSONRPCEmptyResponse _instantiate(DecodingData data) {
    return JSONRPCEmptyResponse(
      id: data.dec(_f$id),
      result: data.dec(_f$result),
      jsonrpc: data.dec(_f$jsonrpc),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static JSONRPCEmptyResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JSONRPCEmptyResponse>(map);
  }

  static JSONRPCEmptyResponse fromJson(String json) {
    return ensureInitialized().decodeJson<JSONRPCEmptyResponse>(json);
  }
}

mixin JSONRPCEmptyResponseMappable {
  String toJson() {
    return JSONRPCEmptyResponseMapper.ensureInitialized()
        .encodeJson<JSONRPCEmptyResponse>(this as JSONRPCEmptyResponse);
  }

  Map<String, dynamic> toMap() {
    return JSONRPCEmptyResponseMapper.ensureInitialized()
        .encodeMap<JSONRPCEmptyResponse>(this as JSONRPCEmptyResponse);
  }

  JSONRPCEmptyResponseCopyWith<
    JSONRPCEmptyResponse,
    JSONRPCEmptyResponse,
    JSONRPCEmptyResponse
  >
  get copyWith =>
      _JSONRPCEmptyResponseCopyWithImpl<
        JSONRPCEmptyResponse,
        JSONRPCEmptyResponse
      >(this as JSONRPCEmptyResponse, $identity, $identity);
  @override
  String toString() {
    return JSONRPCEmptyResponseMapper.ensureInitialized().stringifyValue(
      this as JSONRPCEmptyResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return JSONRPCEmptyResponseMapper.ensureInitialized().equalsValue(
      this as JSONRPCEmptyResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return JSONRPCEmptyResponseMapper.ensureInitialized().hashValue(
      this as JSONRPCEmptyResponse,
    );
  }
}

extension JSONRPCEmptyResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, JSONRPCEmptyResponse, $Out> {
  JSONRPCEmptyResponseCopyWith<$R, JSONRPCEmptyResponse, $Out>
  get $asJSONRPCEmptyResponse => $base.as(
    (v, t, t2) => _JSONRPCEmptyResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class JSONRPCEmptyResponseCopyWith<
  $R,
  $In extends JSONRPCEmptyResponse,
  $Out
>
    implements JSONRPCBaseCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get result;
  @override
  $R call({dynamic id, Map<String, dynamic>? result, String? jsonrpc});
  JSONRPCEmptyResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _JSONRPCEmptyResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JSONRPCEmptyResponse, $Out>
    implements JSONRPCEmptyResponseCopyWith<$R, JSONRPCEmptyResponse, $Out> {
  _JSONRPCEmptyResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JSONRPCEmptyResponse> $mapper =
      JSONRPCEmptyResponseMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get result => MapCopyWith(
    $value.result,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(result: v),
  );
  @override
  $R call({
    Object? id = $none,
    Map<String, dynamic>? result,
    String? jsonrpc,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (result != null) #result: result,
      if (jsonrpc != null) #jsonrpc: jsonrpc,
    }),
  );
  @override
  JSONRPCEmptyResponse $make(CopyWithData data) => JSONRPCEmptyResponse(
    id: data.get(#id, or: $value.id),
    result: data.get(#result, or: $value.result),
    jsonrpc: data.get(#jsonrpc, or: $value.jsonrpc),
  );

  @override
  JSONRPCEmptyResponseCopyWith<$R2, JSONRPCEmptyResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _JSONRPCEmptyResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ErrorDataMapper extends ClassMapperBase<ErrorData> {
  ErrorDataMapper._();

  static ErrorDataMapper? _instance;
  static ErrorDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ErrorDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ErrorData';

  static int _$code(ErrorData v) => v.code;
  static const Field<ErrorData, int> _f$code = Field('code', _$code);
  static String _$message(ErrorData v) => v.message;
  static const Field<ErrorData, String> _f$message = Field(
    'message',
    _$message,
  );
  static dynamic _$data(ErrorData v) => v.data;
  static const Field<ErrorData, dynamic> _f$data = Field(
    'data',
    _$data,
    opt: true,
  );

  @override
  final MappableFields<ErrorData> fields = const {
    #code: _f$code,
    #message: _f$message,
    #data: _f$data,
  };

  static ErrorData _instantiate(DecodingData data) {
    return ErrorData(
      code: data.dec(_f$code),
      message: data.dec(_f$message),
      data: data.dec(_f$data),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ErrorData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ErrorData>(map);
  }

  static ErrorData fromJson(String json) {
    return ensureInitialized().decodeJson<ErrorData>(json);
  }
}

mixin ErrorDataMappable {
  String toJson() {
    return ErrorDataMapper.ensureInitialized().encodeJson<ErrorData>(
      this as ErrorData,
    );
  }

  Map<String, dynamic> toMap() {
    return ErrorDataMapper.ensureInitialized().encodeMap<ErrorData>(
      this as ErrorData,
    );
  }

  ErrorDataCopyWith<ErrorData, ErrorData, ErrorData> get copyWith =>
      _ErrorDataCopyWithImpl<ErrorData, ErrorData>(
        this as ErrorData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ErrorDataMapper.ensureInitialized().stringifyValue(
      this as ErrorData,
    );
  }

  @override
  bool operator ==(Object other) {
    return ErrorDataMapper.ensureInitialized().equalsValue(
      this as ErrorData,
      other,
    );
  }

  @override
  int get hashCode {
    return ErrorDataMapper.ensureInitialized().hashValue(this as ErrorData);
  }
}

extension ErrorDataValueCopy<$R, $Out> on ObjectCopyWith<$R, ErrorData, $Out> {
  ErrorDataCopyWith<$R, ErrorData, $Out> get $asErrorData =>
      $base.as((v, t, t2) => _ErrorDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ErrorDataCopyWith<$R, $In extends ErrorData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? code, String? message, dynamic data});
  ErrorDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ErrorDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ErrorData, $Out>
    implements ErrorDataCopyWith<$R, ErrorData, $Out> {
  _ErrorDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ErrorData> $mapper =
      ErrorDataMapper.ensureInitialized();
  @override
  $R call({int? code, String? message, Object? data = $none}) => $apply(
    FieldCopyWithData({
      if (code != null) #code: code,
      if (message != null) #message: message,
      if (data != $none) #data: data,
    }),
  );
  @override
  ErrorData $make(CopyWithData data) => ErrorData(
    code: data.get(#code, or: $value.code),
    message: data.get(#message, or: $value.message),
    data: data.get(#data, or: $value.data),
  );

  @override
  ErrorDataCopyWith<$R2, ErrorData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ErrorDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JSONRPCErrorMapper extends ClassMapperBase<JSONRPCError> {
  JSONRPCErrorMapper._();

  static JSONRPCErrorMapper? _instance;
  static JSONRPCErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JSONRPCErrorMapper._());
      JSONRPCBaseMapper.ensureInitialized();
      ErrorDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JSONRPCError';

  static dynamic _$id(JSONRPCError v) => v.id;
  static const Field<JSONRPCError, dynamic> _f$id = Field('id', _$id);
  static ErrorData _$error(JSONRPCError v) => v.error;
  static const Field<JSONRPCError, ErrorData> _f$error = Field(
    'error',
    _$error,
  );
  static String _$jsonrpc(JSONRPCError v) => v.jsonrpc;
  static const Field<JSONRPCError, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    opt: true,
    def: '2.0',
  );

  @override
  final MappableFields<JSONRPCError> fields = const {
    #id: _f$id,
    #error: _f$error,
    #jsonrpc: _f$jsonrpc,
  };

  static JSONRPCError _instantiate(DecodingData data) {
    return JSONRPCError(
      id: data.dec(_f$id),
      error: data.dec(_f$error),
      jsonrpc: data.dec(_f$jsonrpc),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static JSONRPCError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JSONRPCError>(map);
  }

  static JSONRPCError fromJson(String json) {
    return ensureInitialized().decodeJson<JSONRPCError>(json);
  }
}

mixin JSONRPCErrorMappable {
  String toJson() {
    return JSONRPCErrorMapper.ensureInitialized().encodeJson<JSONRPCError>(
      this as JSONRPCError,
    );
  }

  Map<String, dynamic> toMap() {
    return JSONRPCErrorMapper.ensureInitialized().encodeMap<JSONRPCError>(
      this as JSONRPCError,
    );
  }

  JSONRPCErrorCopyWith<JSONRPCError, JSONRPCError, JSONRPCError> get copyWith =>
      _JSONRPCErrorCopyWithImpl<JSONRPCError, JSONRPCError>(
        this as JSONRPCError,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JSONRPCErrorMapper.ensureInitialized().stringifyValue(
      this as JSONRPCError,
    );
  }

  @override
  bool operator ==(Object other) {
    return JSONRPCErrorMapper.ensureInitialized().equalsValue(
      this as JSONRPCError,
      other,
    );
  }

  @override
  int get hashCode {
    return JSONRPCErrorMapper.ensureInitialized().hashValue(
      this as JSONRPCError,
    );
  }
}

extension JSONRPCErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, JSONRPCError, $Out> {
  JSONRPCErrorCopyWith<$R, JSONRPCError, $Out> get $asJSONRPCError =>
      $base.as((v, t, t2) => _JSONRPCErrorCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JSONRPCErrorCopyWith<$R, $In extends JSONRPCError, $Out>
    implements JSONRPCBaseCopyWith<$R, $In, $Out> {
  ErrorDataCopyWith<$R, ErrorData, ErrorData> get error;
  @override
  $R call({dynamic id, ErrorData? error, String? jsonrpc});
  JSONRPCErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JSONRPCErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JSONRPCError, $Out>
    implements JSONRPCErrorCopyWith<$R, JSONRPCError, $Out> {
  _JSONRPCErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JSONRPCError> $mapper =
      JSONRPCErrorMapper.ensureInitialized();
  @override
  ErrorDataCopyWith<$R, ErrorData, ErrorData> get error =>
      $value.error.copyWith.$chain((v) => call(error: v));
  @override
  $R call({Object? id = $none, ErrorData? error, String? jsonrpc}) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (error != null) #error: error,
      if (jsonrpc != null) #jsonrpc: jsonrpc,
    }),
  );
  @override
  JSONRPCError $make(CopyWithData data) => JSONRPCError(
    id: data.get(#id, or: $value.id),
    error: data.get(#error, or: $value.error),
    jsonrpc: data.get(#jsonrpc, or: $value.jsonrpc),
  );

  @override
  JSONRPCErrorCopyWith<$R2, JSONRPCError, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JSONRPCErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CapabilityMapper extends ClassMapperBase<Capability> {
  CapabilityMapper._();

  static CapabilityMapper? _instance;
  static CapabilityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CapabilityMapper._());
      ResourcesCapabilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Capability';

  static bool _$listChanged(Capability v) => v.listChanged;
  static const Field<Capability, bool> _f$listChanged = Field(
    'listChanged',
    _$listChanged,
    key: r'list_changed',
    opt: true,
    def: false,
  );

  @override
  final MappableFields<Capability> fields = const {
    #listChanged: _f$listChanged,
  };

  static Capability _instantiate(DecodingData data) {
    return Capability(listChanged: data.dec(_f$listChanged));
  }

  @override
  final Function instantiate = _instantiate;

  static Capability fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Capability>(map);
  }

  static Capability fromJson(String json) {
    return ensureInitialized().decodeJson<Capability>(json);
  }
}

mixin CapabilityMappable {
  String toJson() {
    return CapabilityMapper.ensureInitialized().encodeJson<Capability>(
      this as Capability,
    );
  }

  Map<String, dynamic> toMap() {
    return CapabilityMapper.ensureInitialized().encodeMap<Capability>(
      this as Capability,
    );
  }

  CapabilityCopyWith<Capability, Capability, Capability> get copyWith =>
      _CapabilityCopyWithImpl<Capability, Capability>(
        this as Capability,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CapabilityMapper.ensureInitialized().stringifyValue(
      this as Capability,
    );
  }

  @override
  bool operator ==(Object other) {
    return CapabilityMapper.ensureInitialized().equalsValue(
      this as Capability,
      other,
    );
  }

  @override
  int get hashCode {
    return CapabilityMapper.ensureInitialized().hashValue(this as Capability);
  }
}

extension CapabilityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Capability, $Out> {
  CapabilityCopyWith<$R, Capability, $Out> get $asCapability =>
      $base.as((v, t, t2) => _CapabilityCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CapabilityCopyWith<$R, $In extends Capability, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? listChanged});
  CapabilityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CapabilityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Capability, $Out>
    implements CapabilityCopyWith<$R, Capability, $Out> {
  _CapabilityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Capability> $mapper =
      CapabilityMapper.ensureInitialized();
  @override
  $R call({bool? listChanged}) => $apply(
    FieldCopyWithData({if (listChanged != null) #listChanged: listChanged}),
  );
  @override
  Capability $make(CopyWithData data) =>
      Capability(listChanged: data.get(#listChanged, or: $value.listChanged));

  @override
  CapabilityCopyWith<$R2, Capability, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CapabilityCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ResourcesCapabilityMapper extends ClassMapperBase<ResourcesCapability> {
  ResourcesCapabilityMapper._();

  static ResourcesCapabilityMapper? _instance;
  static ResourcesCapabilityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResourcesCapabilityMapper._());
      CapabilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ResourcesCapability';

  static bool? _$subscribe(ResourcesCapability v) => v.subscribe;
  static const Field<ResourcesCapability, bool> _f$subscribe = Field(
    'subscribe',
    _$subscribe,
    opt: true,
  );
  static bool _$listChanged(ResourcesCapability v) => v.listChanged;
  static const Field<ResourcesCapability, bool> _f$listChanged = Field(
    'listChanged',
    _$listChanged,
    key: r'list_changed',
    opt: true,
    def: false,
  );

  @override
  final MappableFields<ResourcesCapability> fields = const {
    #subscribe: _f$subscribe,
    #listChanged: _f$listChanged,
  };

  static ResourcesCapability _instantiate(DecodingData data) {
    return ResourcesCapability(
      subscribe: data.dec(_f$subscribe),
      listChanged: data.dec(_f$listChanged),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ResourcesCapability fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResourcesCapability>(map);
  }

  static ResourcesCapability fromJson(String json) {
    return ensureInitialized().decodeJson<ResourcesCapability>(json);
  }
}

mixin ResourcesCapabilityMappable {
  String toJson() {
    return ResourcesCapabilityMapper.ensureInitialized()
        .encodeJson<ResourcesCapability>(this as ResourcesCapability);
  }

  Map<String, dynamic> toMap() {
    return ResourcesCapabilityMapper.ensureInitialized()
        .encodeMap<ResourcesCapability>(this as ResourcesCapability);
  }

  ResourcesCapabilityCopyWith<
    ResourcesCapability,
    ResourcesCapability,
    ResourcesCapability
  >
  get copyWith =>
      _ResourcesCapabilityCopyWithImpl<
        ResourcesCapability,
        ResourcesCapability
      >(this as ResourcesCapability, $identity, $identity);
  @override
  String toString() {
    return ResourcesCapabilityMapper.ensureInitialized().stringifyValue(
      this as ResourcesCapability,
    );
  }

  @override
  bool operator ==(Object other) {
    return ResourcesCapabilityMapper.ensureInitialized().equalsValue(
      this as ResourcesCapability,
      other,
    );
  }

  @override
  int get hashCode {
    return ResourcesCapabilityMapper.ensureInitialized().hashValue(
      this as ResourcesCapability,
    );
  }
}

extension ResourcesCapabilityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResourcesCapability, $Out> {
  ResourcesCapabilityCopyWith<$R, ResourcesCapability, $Out>
  get $asResourcesCapability => $base.as(
    (v, t, t2) => _ResourcesCapabilityCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ResourcesCapabilityCopyWith<
  $R,
  $In extends ResourcesCapability,
  $Out
>
    implements CapabilityCopyWith<$R, $In, $Out> {
  @override
  $R call({bool? subscribe, bool? listChanged});
  ResourcesCapabilityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ResourcesCapabilityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResourcesCapability, $Out>
    implements ResourcesCapabilityCopyWith<$R, ResourcesCapability, $Out> {
  _ResourcesCapabilityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResourcesCapability> $mapper =
      ResourcesCapabilityMapper.ensureInitialized();
  @override
  $R call({Object? subscribe = $none, bool? listChanged}) => $apply(
    FieldCopyWithData({
      if (subscribe != $none) #subscribe: subscribe,
      if (listChanged != null) #listChanged: listChanged,
    }),
  );
  @override
  ResourcesCapability $make(CopyWithData data) => ResourcesCapability(
    subscribe: data.get(#subscribe, or: $value.subscribe),
    listChanged: data.get(#listChanged, or: $value.listChanged),
  );

  @override
  ResourcesCapabilityCopyWith<$R2, ResourcesCapability, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ResourcesCapabilityCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ServerCapabilitiesMapper extends ClassMapperBase<ServerCapabilities> {
  ServerCapabilitiesMapper._();

  static ServerCapabilitiesMapper? _instance;
  static ServerCapabilitiesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerCapabilitiesMapper._());
      CapabilityMapper.ensureInitialized();
      ResourcesCapabilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerCapabilities';

  static Map<String, Map<String, dynamic>>? _$experimental(
    ServerCapabilities v,
  ) => v.experimental;
  static const Field<ServerCapabilities, Map<String, Map<String, dynamic>>>
  _f$experimental = Field('experimental', _$experimental, opt: true);
  static Map<String, dynamic>? _$logging(ServerCapabilities v) => v.logging;
  static const Field<ServerCapabilities, Map<String, dynamic>> _f$logging =
      Field('logging', _$logging, opt: true);
  static Map<String, dynamic>? _$completions(ServerCapabilities v) =>
      v.completions;
  static const Field<ServerCapabilities, Map<String, dynamic>> _f$completions =
      Field('completions', _$completions, opt: true);
  static Capability? _$prompts(ServerCapabilities v) => v.prompts;
  static const Field<ServerCapabilities, Capability> _f$prompts = Field(
    'prompts',
    _$prompts,
    opt: true,
  );
  static ResourcesCapability? _$resources(ServerCapabilities v) => v.resources;
  static const Field<ServerCapabilities, ResourcesCapability> _f$resources =
      Field('resources', _$resources, opt: true);
  static Capability? _$tools(ServerCapabilities v) => v.tools;
  static const Field<ServerCapabilities, Capability> _f$tools = Field(
    'tools',
    _$tools,
    opt: true,
    def: const Capability(listChanged: false),
  );

  @override
  final MappableFields<ServerCapabilities> fields = const {
    #experimental: _f$experimental,
    #logging: _f$logging,
    #completions: _f$completions,
    #prompts: _f$prompts,
    #resources: _f$resources,
    #tools: _f$tools,
  };

  static ServerCapabilities _instantiate(DecodingData data) {
    return ServerCapabilities(
      experimental: data.dec(_f$experimental),
      logging: data.dec(_f$logging),
      completions: data.dec(_f$completions),
      prompts: data.dec(_f$prompts),
      resources: data.dec(_f$resources),
      tools: data.dec(_f$tools),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ServerCapabilities fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerCapabilities>(map);
  }

  static ServerCapabilities fromJson(String json) {
    return ensureInitialized().decodeJson<ServerCapabilities>(json);
  }
}

mixin ServerCapabilitiesMappable {
  String toJson() {
    return ServerCapabilitiesMapper.ensureInitialized()
        .encodeJson<ServerCapabilities>(this as ServerCapabilities);
  }

  Map<String, dynamic> toMap() {
    return ServerCapabilitiesMapper.ensureInitialized()
        .encodeMap<ServerCapabilities>(this as ServerCapabilities);
  }

  ServerCapabilitiesCopyWith<
    ServerCapabilities,
    ServerCapabilities,
    ServerCapabilities
  >
  get copyWith =>
      _ServerCapabilitiesCopyWithImpl<ServerCapabilities, ServerCapabilities>(
        this as ServerCapabilities,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ServerCapabilitiesMapper.ensureInitialized().stringifyValue(
      this as ServerCapabilities,
    );
  }

  @override
  bool operator ==(Object other) {
    return ServerCapabilitiesMapper.ensureInitialized().equalsValue(
      this as ServerCapabilities,
      other,
    );
  }

  @override
  int get hashCode {
    return ServerCapabilitiesMapper.ensureInitialized().hashValue(
      this as ServerCapabilities,
    );
  }
}

extension ServerCapabilitiesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerCapabilities, $Out> {
  ServerCapabilitiesCopyWith<$R, ServerCapabilities, $Out>
  get $asServerCapabilities => $base.as(
    (v, t, t2) => _ServerCapabilitiesCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ServerCapabilitiesCopyWith<
  $R,
  $In extends ServerCapabilities,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
    $R,
    String,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >?
  get experimental;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get logging;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get completions;
  CapabilityCopyWith<$R, Capability, Capability>? get prompts;
  ResourcesCapabilityCopyWith<$R, ResourcesCapability, ResourcesCapability>?
  get resources;
  CapabilityCopyWith<$R, Capability, Capability>? get tools;
  $R call({
    Map<String, Map<String, dynamic>>? experimental,
    Map<String, dynamic>? logging,
    Map<String, dynamic>? completions,
    Capability? prompts,
    ResourcesCapability? resources,
    Capability? tools,
  });
  ServerCapabilitiesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ServerCapabilitiesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerCapabilities, $Out>
    implements ServerCapabilitiesCopyWith<$R, ServerCapabilities, $Out> {
  _ServerCapabilitiesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerCapabilities> $mapper =
      ServerCapabilitiesMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    String,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >?
  get experimental => $value.experimental != null
      ? MapCopyWith(
          $value.experimental!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(experimental: v),
        )
      : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get logging => $value.logging != null
      ? MapCopyWith(
          $value.logging!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(logging: v),
        )
      : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get completions => $value.completions != null
      ? MapCopyWith(
          $value.completions!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(completions: v),
        )
      : null;
  @override
  CapabilityCopyWith<$R, Capability, Capability>? get prompts =>
      $value.prompts?.copyWith.$chain((v) => call(prompts: v));
  @override
  ResourcesCapabilityCopyWith<$R, ResourcesCapability, ResourcesCapability>?
  get resources => $value.resources?.copyWith.$chain((v) => call(resources: v));
  @override
  CapabilityCopyWith<$R, Capability, Capability>? get tools =>
      $value.tools?.copyWith.$chain((v) => call(tools: v));
  @override
  $R call({
    Object? experimental = $none,
    Object? logging = $none,
    Object? completions = $none,
    Object? prompts = $none,
    Object? resources = $none,
    Object? tools = $none,
  }) => $apply(
    FieldCopyWithData({
      if (experimental != $none) #experimental: experimental,
      if (logging != $none) #logging: logging,
      if (completions != $none) #completions: completions,
      if (prompts != $none) #prompts: prompts,
      if (resources != $none) #resources: resources,
      if (tools != $none) #tools: tools,
    }),
  );
  @override
  ServerCapabilities $make(CopyWithData data) => ServerCapabilities(
    experimental: data.get(#experimental, or: $value.experimental),
    logging: data.get(#logging, or: $value.logging),
    completions: data.get(#completions, or: $value.completions),
    prompts: data.get(#prompts, or: $value.prompts),
    resources: data.get(#resources, or: $value.resources),
    tools: data.get(#tools, or: $value.tools),
  );

  @override
  ServerCapabilitiesCopyWith<$R2, ServerCapabilities, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ServerCapabilitiesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ImplementationMapper extends ClassMapperBase<Implementation> {
  ImplementationMapper._();

  static ImplementationMapper? _instance;
  static ImplementationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImplementationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Implementation';

  static String _$name(Implementation v) => v.name;
  static const Field<Implementation, String> _f$name = Field('name', _$name);
  static String _$version(Implementation v) => v.version;
  static const Field<Implementation, String> _f$version = Field(
    'version',
    _$version,
  );

  @override
  final MappableFields<Implementation> fields = const {
    #name: _f$name,
    #version: _f$version,
  };

  static Implementation _instantiate(DecodingData data) {
    return Implementation(
      name: data.dec(_f$name),
      version: data.dec(_f$version),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Implementation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Implementation>(map);
  }

  static Implementation fromJson(String json) {
    return ensureInitialized().decodeJson<Implementation>(json);
  }
}

mixin ImplementationMappable {
  String toJson() {
    return ImplementationMapper.ensureInitialized().encodeJson<Implementation>(
      this as Implementation,
    );
  }

  Map<String, dynamic> toMap() {
    return ImplementationMapper.ensureInitialized().encodeMap<Implementation>(
      this as Implementation,
    );
  }

  ImplementationCopyWith<Implementation, Implementation, Implementation>
  get copyWith => _ImplementationCopyWithImpl<Implementation, Implementation>(
    this as Implementation,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ImplementationMapper.ensureInitialized().stringifyValue(
      this as Implementation,
    );
  }

  @override
  bool operator ==(Object other) {
    return ImplementationMapper.ensureInitialized().equalsValue(
      this as Implementation,
      other,
    );
  }

  @override
  int get hashCode {
    return ImplementationMapper.ensureInitialized().hashValue(
      this as Implementation,
    );
  }
}

extension ImplementationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Implementation, $Out> {
  ImplementationCopyWith<$R, Implementation, $Out> get $asImplementation =>
      $base.as((v, t, t2) => _ImplementationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImplementationCopyWith<$R, $In extends Implementation, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? version});
  ImplementationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ImplementationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Implementation, $Out>
    implements ImplementationCopyWith<$R, Implementation, $Out> {
  _ImplementationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Implementation> $mapper =
      ImplementationMapper.ensureInitialized();
  @override
  $R call({String? name, String? version}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (version != null) #version: version,
    }),
  );
  @override
  Implementation $make(CopyWithData data) => Implementation(
    name: data.get(#name, or: $value.name),
    version: data.get(#version, or: $value.version),
  );

  @override
  ImplementationCopyWith<$R2, Implementation, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImplementationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class InitializeRequestParamsMapper
    extends ClassMapperBase<InitializeRequestParams> {
  InitializeRequestParamsMapper._();

  static InitializeRequestParamsMapper? _instance;
  static InitializeRequestParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = InitializeRequestParamsMapper._(),
      );
      ImplementationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InitializeRequestParams';

  static String _$protocolVersion(InitializeRequestParams v) =>
      v.protocolVersion;
  static const Field<InitializeRequestParams, String> _f$protocolVersion =
      Field('protocolVersion', _$protocolVersion, key: r'protocol_version');
  static Map<String, dynamic> _$capabilities(InitializeRequestParams v) =>
      v.capabilities;
  static const Field<InitializeRequestParams, Map<String, dynamic>>
  _f$capabilities = Field('capabilities', _$capabilities);
  static Implementation _$clientInfo(InitializeRequestParams v) => v.clientInfo;
  static const Field<InitializeRequestParams, Implementation> _f$clientInfo =
      Field('clientInfo', _$clientInfo, key: r'client_info');

  @override
  final MappableFields<InitializeRequestParams> fields = const {
    #protocolVersion: _f$protocolVersion,
    #capabilities: _f$capabilities,
    #clientInfo: _f$clientInfo,
  };

  static InitializeRequestParams _instantiate(DecodingData data) {
    return InitializeRequestParams(
      protocolVersion: data.dec(_f$protocolVersion),
      capabilities: data.dec(_f$capabilities),
      clientInfo: data.dec(_f$clientInfo),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static InitializeRequestParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InitializeRequestParams>(map);
  }

  static InitializeRequestParams fromJson(String json) {
    return ensureInitialized().decodeJson<InitializeRequestParams>(json);
  }
}

mixin InitializeRequestParamsMappable {
  String toJson() {
    return InitializeRequestParamsMapper.ensureInitialized()
        .encodeJson<InitializeRequestParams>(this as InitializeRequestParams);
  }

  Map<String, dynamic> toMap() {
    return InitializeRequestParamsMapper.ensureInitialized()
        .encodeMap<InitializeRequestParams>(this as InitializeRequestParams);
  }

  InitializeRequestParamsCopyWith<
    InitializeRequestParams,
    InitializeRequestParams,
    InitializeRequestParams
  >
  get copyWith =>
      _InitializeRequestParamsCopyWithImpl<
        InitializeRequestParams,
        InitializeRequestParams
      >(this as InitializeRequestParams, $identity, $identity);
  @override
  String toString() {
    return InitializeRequestParamsMapper.ensureInitialized().stringifyValue(
      this as InitializeRequestParams,
    );
  }

  @override
  bool operator ==(Object other) {
    return InitializeRequestParamsMapper.ensureInitialized().equalsValue(
      this as InitializeRequestParams,
      other,
    );
  }

  @override
  int get hashCode {
    return InitializeRequestParamsMapper.ensureInitialized().hashValue(
      this as InitializeRequestParams,
    );
  }
}

extension InitializeRequestParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InitializeRequestParams, $Out> {
  InitializeRequestParamsCopyWith<$R, InitializeRequestParams, $Out>
  get $asInitializeRequestParams => $base.as(
    (v, t, t2) => _InitializeRequestParamsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class InitializeRequestParamsCopyWith<
  $R,
  $In extends InitializeRequestParams,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get capabilities;
  ImplementationCopyWith<$R, Implementation, Implementation> get clientInfo;
  $R call({
    String? protocolVersion,
    Map<String, dynamic>? capabilities,
    Implementation? clientInfo,
  });
  InitializeRequestParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _InitializeRequestParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InitializeRequestParams, $Out>
    implements
        InitializeRequestParamsCopyWith<$R, InitializeRequestParams, $Out> {
  _InitializeRequestParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InitializeRequestParams> $mapper =
      InitializeRequestParamsMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get capabilities => MapCopyWith(
    $value.capabilities,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(capabilities: v),
  );
  @override
  ImplementationCopyWith<$R, Implementation, Implementation> get clientInfo =>
      $value.clientInfo.copyWith.$chain((v) => call(clientInfo: v));
  @override
  $R call({
    String? protocolVersion,
    Map<String, dynamic>? capabilities,
    Implementation? clientInfo,
  }) => $apply(
    FieldCopyWithData({
      if (protocolVersion != null) #protocolVersion: protocolVersion,
      if (capabilities != null) #capabilities: capabilities,
      if (clientInfo != null) #clientInfo: clientInfo,
    }),
  );
  @override
  InitializeRequestParams $make(CopyWithData data) => InitializeRequestParams(
    protocolVersion: data.get(#protocolVersion, or: $value.protocolVersion),
    capabilities: data.get(#capabilities, or: $value.capabilities),
    clientInfo: data.get(#clientInfo, or: $value.clientInfo),
  );

  @override
  InitializeRequestParamsCopyWith<$R2, InitializeRequestParams, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _InitializeRequestParamsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class InitializeRequestMapper extends ClassMapperBase<InitializeRequest> {
  InitializeRequestMapper._();

  static InitializeRequestMapper? _instance;
  static InitializeRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitializeRequestMapper._());
      JSONRPCRequestMapper.ensureInitialized();
      ParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InitializeRequest';

  static dynamic _$id(InitializeRequest v) => v.id;
  static const Field<InitializeRequest, dynamic> _f$id = Field('id', _$id);
  static Params? _$params(InitializeRequest v) => v.params;
  static const Field<InitializeRequest, Params> _f$params = Field(
    'params',
    _$params,
    opt: true,
  );
  static String _$jsonrpc(InitializeRequest v) => v.jsonrpc;
  static const Field<InitializeRequest, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    mode: FieldMode.member,
  );
  static String _$method(InitializeRequest v) => v.method;
  static const Field<InitializeRequest, String> _f$method = Field(
    'method',
    _$method,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<InitializeRequest> fields = const {
    #id: _f$id,
    #params: _f$params,
    #jsonrpc: _f$jsonrpc,
    #method: _f$method,
  };

  static InitializeRequest _instantiate(DecodingData data) {
    return InitializeRequest(id: data.dec(_f$id), params: data.dec(_f$params));
  }

  @override
  final Function instantiate = _instantiate;

  static InitializeRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InitializeRequest>(map);
  }

  static InitializeRequest fromJson(String json) {
    return ensureInitialized().decodeJson<InitializeRequest>(json);
  }
}

mixin InitializeRequestMappable {
  String toJson() {
    return InitializeRequestMapper.ensureInitialized()
        .encodeJson<InitializeRequest>(this as InitializeRequest);
  }

  Map<String, dynamic> toMap() {
    return InitializeRequestMapper.ensureInitialized()
        .encodeMap<InitializeRequest>(this as InitializeRequest);
  }

  InitializeRequestCopyWith<
    InitializeRequest,
    InitializeRequest,
    InitializeRequest
  >
  get copyWith =>
      _InitializeRequestCopyWithImpl<InitializeRequest, InitializeRequest>(
        this as InitializeRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return InitializeRequestMapper.ensureInitialized().stringifyValue(
      this as InitializeRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return InitializeRequestMapper.ensureInitialized().equalsValue(
      this as InitializeRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return InitializeRequestMapper.ensureInitialized().hashValue(
      this as InitializeRequest,
    );
  }
}

extension InitializeRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InitializeRequest, $Out> {
  InitializeRequestCopyWith<$R, InitializeRequest, $Out>
  get $asInitializeRequest => $base.as(
    (v, t, t2) => _InitializeRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class InitializeRequestCopyWith<
  $R,
  $In extends InitializeRequest,
  $Out
>
    implements JSONRPCRequestCopyWith<$R, $In, $Out, Params> {
  @override
  ParamsCopyWith<$R, Params, Params>? get params;
  @override
  $R call({dynamic id, Params? params});
  InitializeRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _InitializeRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InitializeRequest, $Out>
    implements InitializeRequestCopyWith<$R, InitializeRequest, $Out> {
  _InitializeRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InitializeRequest> $mapper =
      InitializeRequestMapper.ensureInitialized();
  @override
  ParamsCopyWith<$R, Params, Params>? get params =>
      ($value.params as Params?)?.copyWith.$chain((v) => call(params: v));
  @override
  $R call({Object? id = $none, Object? params = $none}) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (params != $none) #params: params,
    }),
  );
  @override
  InitializeRequest $make(CopyWithData data) => InitializeRequest(
    id: data.get(#id, or: $value.id),
    params: data.get(#params, or: $value.params),
  );

  @override
  InitializeRequestCopyWith<$R2, InitializeRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _InitializeRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class InitializeResultMapper extends ClassMapperBase<InitializeResult> {
  InitializeResultMapper._();

  static InitializeResultMapper? _instance;
  static InitializeResultMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InitializeResultMapper._());
      ResultMapper.ensureInitialized();
      ServerCapabilitiesMapper.ensureInitialized();
      ImplementationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InitializeResult';

  static String _$protocolVersion(InitializeResult v) => v.protocolVersion;
  static const Field<InitializeResult, String> _f$protocolVersion = Field(
    'protocolVersion',
    _$protocolVersion,
    key: r'protocol_version',
    opt: true,
    def: '2025-03-26',
  );
  static ServerCapabilities _$capabilities(InitializeResult v) =>
      v.capabilities;
  static const Field<InitializeResult, ServerCapabilities> _f$capabilities =
      Field('capabilities', _$capabilities);
  static Implementation _$serverInfo(InitializeResult v) => v.serverInfo;
  static const Field<InitializeResult, Implementation> _f$serverInfo = Field(
    'serverInfo',
    _$serverInfo,
    key: r'server_info',
  );
  static String? _$instructions(InitializeResult v) => v.instructions;
  static const Field<InitializeResult, String> _f$instructions = Field(
    'instructions',
    _$instructions,
    opt: true,
  );
  static Map<String, dynamic>? _$meta(InitializeResult v) => v.meta;
  static const Field<InitializeResult, Map<String, dynamic>> _f$meta = Field(
    'meta',
    _$meta,
    opt: true,
  );

  @override
  final MappableFields<InitializeResult> fields = const {
    #protocolVersion: _f$protocolVersion,
    #capabilities: _f$capabilities,
    #serverInfo: _f$serverInfo,
    #instructions: _f$instructions,
    #meta: _f$meta,
  };

  static InitializeResult _instantiate(DecodingData data) {
    return InitializeResult(
      protocolVersion: data.dec(_f$protocolVersion),
      capabilities: data.dec(_f$capabilities),
      serverInfo: data.dec(_f$serverInfo),
      instructions: data.dec(_f$instructions),
      meta: data.dec(_f$meta),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static InitializeResult fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InitializeResult>(map);
  }

  static InitializeResult fromJson(String json) {
    return ensureInitialized().decodeJson<InitializeResult>(json);
  }
}

mixin InitializeResultMappable {
  String toJson() {
    return InitializeResultMapper.ensureInitialized()
        .encodeJson<InitializeResult>(this as InitializeResult);
  }

  Map<String, dynamic> toMap() {
    return InitializeResultMapper.ensureInitialized()
        .encodeMap<InitializeResult>(this as InitializeResult);
  }

  InitializeResultCopyWith<InitializeResult, InitializeResult, InitializeResult>
  get copyWith =>
      _InitializeResultCopyWithImpl<InitializeResult, InitializeResult>(
        this as InitializeResult,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return InitializeResultMapper.ensureInitialized().stringifyValue(
      this as InitializeResult,
    );
  }

  @override
  bool operator ==(Object other) {
    return InitializeResultMapper.ensureInitialized().equalsValue(
      this as InitializeResult,
      other,
    );
  }

  @override
  int get hashCode {
    return InitializeResultMapper.ensureInitialized().hashValue(
      this as InitializeResult,
    );
  }
}

extension InitializeResultValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InitializeResult, $Out> {
  InitializeResultCopyWith<$R, InitializeResult, $Out>
  get $asInitializeResult =>
      $base.as((v, t, t2) => _InitializeResultCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InitializeResultCopyWith<$R, $In extends InitializeResult, $Out>
    implements ResultCopyWith<$R, $In, $Out> {
  ServerCapabilitiesCopyWith<$R, ServerCapabilities, ServerCapabilities>
  get capabilities;
  ImplementationCopyWith<$R, Implementation, Implementation> get serverInfo;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta;
  @override
  $R call({
    String? protocolVersion,
    ServerCapabilities? capabilities,
    Implementation? serverInfo,
    String? instructions,
    Map<String, dynamic>? meta,
  });
  InitializeResultCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _InitializeResultCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InitializeResult, $Out>
    implements InitializeResultCopyWith<$R, InitializeResult, $Out> {
  _InitializeResultCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InitializeResult> $mapper =
      InitializeResultMapper.ensureInitialized();
  @override
  ServerCapabilitiesCopyWith<$R, ServerCapabilities, ServerCapabilities>
  get capabilities =>
      $value.capabilities.copyWith.$chain((v) => call(capabilities: v));
  @override
  ImplementationCopyWith<$R, Implementation, Implementation> get serverInfo =>
      $value.serverInfo.copyWith.$chain((v) => call(serverInfo: v));
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
  $R call({
    String? protocolVersion,
    ServerCapabilities? capabilities,
    Implementation? serverInfo,
    Object? instructions = $none,
    Object? meta = $none,
  }) => $apply(
    FieldCopyWithData({
      if (protocolVersion != null) #protocolVersion: protocolVersion,
      if (capabilities != null) #capabilities: capabilities,
      if (serverInfo != null) #serverInfo: serverInfo,
      if (instructions != $none) #instructions: instructions,
      if (meta != $none) #meta: meta,
    }),
  );
  @override
  InitializeResult $make(CopyWithData data) => InitializeResult(
    protocolVersion: data.get(#protocolVersion, or: $value.protocolVersion),
    capabilities: data.get(#capabilities, or: $value.capabilities),
    serverInfo: data.get(#serverInfo, or: $value.serverInfo),
    instructions: data.get(#instructions, or: $value.instructions),
    meta: data.get(#meta, or: $value.meta),
  );

  @override
  InitializeResultCopyWith<$R2, InitializeResult, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _InitializeResultCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ListToolsRequestMapper extends ClassMapperBase<ListToolsRequest> {
  ListToolsRequestMapper._();

  static ListToolsRequestMapper? _instance;
  static ListToolsRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ListToolsRequestMapper._());
      PaginatedRequestMapper.ensureInitialized();
      PaginatedRequestParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ListToolsRequest';

  static dynamic _$id(ListToolsRequest v) => v.id;
  static const Field<ListToolsRequest, dynamic> _f$id = Field('id', _$id);
  static PaginatedRequestParams? _$params(ListToolsRequest v) => v.params;
  static const Field<ListToolsRequest, PaginatedRequestParams> _f$params =
      Field('params', _$params, opt: true);
  static String _$jsonrpc(ListToolsRequest v) => v.jsonrpc;
  static const Field<ListToolsRequest, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    mode: FieldMode.member,
  );
  static String _$method(ListToolsRequest v) => v.method;
  static const Field<ListToolsRequest, String> _f$method = Field(
    'method',
    _$method,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ListToolsRequest> fields = const {
    #id: _f$id,
    #params: _f$params,
    #jsonrpc: _f$jsonrpc,
    #method: _f$method,
  };

  static ListToolsRequest _instantiate(DecodingData data) {
    return ListToolsRequest(id: data.dec(_f$id), params: data.dec(_f$params));
  }

  @override
  final Function instantiate = _instantiate;

  static ListToolsRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ListToolsRequest>(map);
  }

  static ListToolsRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ListToolsRequest>(json);
  }
}

mixin ListToolsRequestMappable {
  String toJson() {
    return ListToolsRequestMapper.ensureInitialized()
        .encodeJson<ListToolsRequest>(this as ListToolsRequest);
  }

  Map<String, dynamic> toMap() {
    return ListToolsRequestMapper.ensureInitialized()
        .encodeMap<ListToolsRequest>(this as ListToolsRequest);
  }

  ListToolsRequestCopyWith<ListToolsRequest, ListToolsRequest, ListToolsRequest>
  get copyWith =>
      _ListToolsRequestCopyWithImpl<ListToolsRequest, ListToolsRequest>(
        this as ListToolsRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ListToolsRequestMapper.ensureInitialized().stringifyValue(
      this as ListToolsRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return ListToolsRequestMapper.ensureInitialized().equalsValue(
      this as ListToolsRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return ListToolsRequestMapper.ensureInitialized().hashValue(
      this as ListToolsRequest,
    );
  }
}

extension ListToolsRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ListToolsRequest, $Out> {
  ListToolsRequestCopyWith<$R, ListToolsRequest, $Out>
  get $asListToolsRequest =>
      $base.as((v, t, t2) => _ListToolsRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ListToolsRequestCopyWith<$R, $In extends ListToolsRequest, $Out>
    implements PaginatedRequestCopyWith<$R, $In, $Out> {
  @override
  PaginatedRequestParamsCopyWith<
    $R,
    PaginatedRequestParams,
    PaginatedRequestParams
  >?
  get params;
  @override
  $R call({dynamic id, PaginatedRequestParams? params});
  ListToolsRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ListToolsRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ListToolsRequest, $Out>
    implements ListToolsRequestCopyWith<$R, ListToolsRequest, $Out> {
  _ListToolsRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ListToolsRequest> $mapper =
      ListToolsRequestMapper.ensureInitialized();
  @override
  PaginatedRequestParamsCopyWith<
    $R,
    PaginatedRequestParams,
    PaginatedRequestParams
  >?
  get params => ($value.params as PaginatedRequestParams?)?.copyWith.$chain(
    (v) => call(params: v),
  );
  @override
  $R call({Object? id = $none, Object? params = $none}) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (params != $none) #params: params,
    }),
  );
  @override
  ListToolsRequest $make(CopyWithData data) => ListToolsRequest(
    id: data.get(#id, or: $value.id),
    params: data.get(#params, or: $value.params),
  );

  @override
  ListToolsRequestCopyWith<$R2, ListToolsRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ListToolsRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolAnnotationsMapper extends ClassMapperBase<ToolAnnotations> {
  ToolAnnotationsMapper._();

  static ToolAnnotationsMapper? _instance;
  static ToolAnnotationsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolAnnotationsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ToolAnnotations';

  static String? _$title(ToolAnnotations v) => v.title;
  static const Field<ToolAnnotations, String> _f$title = Field(
    'title',
    _$title,
    opt: true,
  );
  static bool? _$readOnlyHint(ToolAnnotations v) => v.readOnlyHint;
  static const Field<ToolAnnotations, bool> _f$readOnlyHint = Field(
    'readOnlyHint',
    _$readOnlyHint,
    key: r'read_only_hint',
    opt: true,
    def: false,
  );
  static bool? _$destructiveHint(ToolAnnotations v) => v.destructiveHint;
  static const Field<ToolAnnotations, bool> _f$destructiveHint = Field(
    'destructiveHint',
    _$destructiveHint,
    key: r'destructive_hint',
    opt: true,
    def: true,
  );
  static bool? _$idempotentHint(ToolAnnotations v) => v.idempotentHint;
  static const Field<ToolAnnotations, bool> _f$idempotentHint = Field(
    'idempotentHint',
    _$idempotentHint,
    key: r'idempotent_hint',
    opt: true,
    def: false,
  );
  static bool? _$openWorldHint(ToolAnnotations v) => v.openWorldHint;
  static const Field<ToolAnnotations, bool> _f$openWorldHint = Field(
    'openWorldHint',
    _$openWorldHint,
    key: r'open_world_hint',
    opt: true,
    def: true,
  );

  @override
  final MappableFields<ToolAnnotations> fields = const {
    #title: _f$title,
    #readOnlyHint: _f$readOnlyHint,
    #destructiveHint: _f$destructiveHint,
    #idempotentHint: _f$idempotentHint,
    #openWorldHint: _f$openWorldHint,
  };

  static ToolAnnotations _instantiate(DecodingData data) {
    return ToolAnnotations(
      title: data.dec(_f$title),
      readOnlyHint: data.dec(_f$readOnlyHint),
      destructiveHint: data.dec(_f$destructiveHint),
      idempotentHint: data.dec(_f$idempotentHint),
      openWorldHint: data.dec(_f$openWorldHint),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ToolAnnotations fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToolAnnotations>(map);
  }

  static ToolAnnotations fromJson(String json) {
    return ensureInitialized().decodeJson<ToolAnnotations>(json);
  }
}

mixin ToolAnnotationsMappable {
  String toJson() {
    return ToolAnnotationsMapper.ensureInitialized()
        .encodeJson<ToolAnnotations>(this as ToolAnnotations);
  }

  Map<String, dynamic> toMap() {
    return ToolAnnotationsMapper.ensureInitialized().encodeMap<ToolAnnotations>(
      this as ToolAnnotations,
    );
  }

  ToolAnnotationsCopyWith<ToolAnnotations, ToolAnnotations, ToolAnnotations>
  get copyWith =>
      _ToolAnnotationsCopyWithImpl<ToolAnnotations, ToolAnnotations>(
        this as ToolAnnotations,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ToolAnnotationsMapper.ensureInitialized().stringifyValue(
      this as ToolAnnotations,
    );
  }

  @override
  bool operator ==(Object other) {
    return ToolAnnotationsMapper.ensureInitialized().equalsValue(
      this as ToolAnnotations,
      other,
    );
  }

  @override
  int get hashCode {
    return ToolAnnotationsMapper.ensureInitialized().hashValue(
      this as ToolAnnotations,
    );
  }
}

extension ToolAnnotationsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ToolAnnotations, $Out> {
  ToolAnnotationsCopyWith<$R, ToolAnnotations, $Out> get $asToolAnnotations =>
      $base.as((v, t, t2) => _ToolAnnotationsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToolAnnotationsCopyWith<$R, $In extends ToolAnnotations, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? title,
    bool? readOnlyHint,
    bool? destructiveHint,
    bool? idempotentHint,
    bool? openWorldHint,
  });
  ToolAnnotationsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ToolAnnotationsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToolAnnotations, $Out>
    implements ToolAnnotationsCopyWith<$R, ToolAnnotations, $Out> {
  _ToolAnnotationsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToolAnnotations> $mapper =
      ToolAnnotationsMapper.ensureInitialized();
  @override
  $R call({
    Object? title = $none,
    Object? readOnlyHint = $none,
    Object? destructiveHint = $none,
    Object? idempotentHint = $none,
    Object? openWorldHint = $none,
  }) => $apply(
    FieldCopyWithData({
      if (title != $none) #title: title,
      if (readOnlyHint != $none) #readOnlyHint: readOnlyHint,
      if (destructiveHint != $none) #destructiveHint: destructiveHint,
      if (idempotentHint != $none) #idempotentHint: idempotentHint,
      if (openWorldHint != $none) #openWorldHint: openWorldHint,
    }),
  );
  @override
  ToolAnnotations $make(CopyWithData data) => ToolAnnotations(
    title: data.get(#title, or: $value.title),
    readOnlyHint: data.get(#readOnlyHint, or: $value.readOnlyHint),
    destructiveHint: data.get(#destructiveHint, or: $value.destructiveHint),
    idempotentHint: data.get(#idempotentHint, or: $value.idempotentHint),
    openWorldHint: data.get(#openWorldHint, or: $value.openWorldHint),
  );

  @override
  ToolAnnotationsCopyWith<$R2, ToolAnnotations, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ToolAnnotationsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolInputSchemaMapper extends ClassMapperBase<ToolInputSchema> {
  ToolInputSchemaMapper._();

  static ToolInputSchemaMapper? _instance;
  static ToolInputSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolInputSchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ToolInputSchema';

  static String _$type(ToolInputSchema v) => v.type;
  static const Field<ToolInputSchema, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: 'object',
  );
  static Map<String, Map<String, dynamic>>? _$properties(ToolInputSchema v) =>
      v.properties;
  static const Field<ToolInputSchema, Map<String, Map<String, dynamic>>>
  _f$properties = Field('properties', _$properties, opt: true);
  static List<String>? _$required(ToolInputSchema v) => v.required;
  static const Field<ToolInputSchema, List<String>> _f$required = Field(
    'required',
    _$required,
    opt: true,
  );

  @override
  final MappableFields<ToolInputSchema> fields = const {
    #type: _f$type,
    #properties: _f$properties,
    #required: _f$required,
  };

  static ToolInputSchema _instantiate(DecodingData data) {
    return ToolInputSchema(
      type: data.dec(_f$type),
      properties: data.dec(_f$properties),
      required: data.dec(_f$required),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ToolInputSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToolInputSchema>(map);
  }

  static ToolInputSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ToolInputSchema>(json);
  }
}

mixin ToolInputSchemaMappable {
  String toJson() {
    return ToolInputSchemaMapper.ensureInitialized()
        .encodeJson<ToolInputSchema>(this as ToolInputSchema);
  }

  Map<String, dynamic> toMap() {
    return ToolInputSchemaMapper.ensureInitialized().encodeMap<ToolInputSchema>(
      this as ToolInputSchema,
    );
  }

  ToolInputSchemaCopyWith<ToolInputSchema, ToolInputSchema, ToolInputSchema>
  get copyWith =>
      _ToolInputSchemaCopyWithImpl<ToolInputSchema, ToolInputSchema>(
        this as ToolInputSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ToolInputSchemaMapper.ensureInitialized().stringifyValue(
      this as ToolInputSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return ToolInputSchemaMapper.ensureInitialized().equalsValue(
      this as ToolInputSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return ToolInputSchemaMapper.ensureInitialized().hashValue(
      this as ToolInputSchema,
    );
  }
}

extension ToolInputSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ToolInputSchema, $Out> {
  ToolInputSchemaCopyWith<$R, ToolInputSchema, $Out> get $asToolInputSchema =>
      $base.as((v, t, t2) => _ToolInputSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToolInputSchemaCopyWith<$R, $In extends ToolInputSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
    $R,
    String,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >?
  get properties;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get required;
  $R call({
    String? type,
    Map<String, Map<String, dynamic>>? properties,
    List<String>? required,
  });
  ToolInputSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ToolInputSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToolInputSchema, $Out>
    implements ToolInputSchemaCopyWith<$R, ToolInputSchema, $Out> {
  _ToolInputSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToolInputSchema> $mapper =
      ToolInputSchemaMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    String,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >?
  get properties => $value.properties != null
      ? MapCopyWith(
          $value.properties!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(properties: v),
        )
      : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get required =>
      $value.required != null
      ? ListCopyWith(
          $value.required!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(required: v),
        )
      : null;
  @override
  $R call({
    String? type,
    Object? properties = $none,
    Object? required = $none,
  }) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (properties != $none) #properties: properties,
      if (required != $none) #required: required,
    }),
  );
  @override
  ToolInputSchema $make(CopyWithData data) => ToolInputSchema(
    type: data.get(#type, or: $value.type),
    properties: data.get(#properties, or: $value.properties),
    required: data.get(#required, or: $value.required),
  );

  @override
  ToolInputSchemaCopyWith<$R2, ToolInputSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ToolInputSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolAPIInfoMapper extends ClassMapperBase<ToolAPIInfo> {
  ToolAPIInfoMapper._();

  static ToolAPIInfoMapper? _instance;
  static ToolAPIInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolAPIInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ToolAPIInfo';

  static String _$path(ToolAPIInfo v) => v.path;
  static const Field<ToolAPIInfo, String> _f$path = Field('path', _$path);
  static String _$method(ToolAPIInfo v) => v.method;
  static const Field<ToolAPIInfo, String> _f$method = Field('method', _$method);
  static Map<String, String> _$argsTypes(ToolAPIInfo v) => v.argsTypes;
  static const Field<ToolAPIInfo, Map<String, String>> _f$argsTypes = Field(
    'argsTypes',
    _$argsTypes,
    key: r'args_types',
  );
  static Map<String, dynamic> _$methodInfo(ToolAPIInfo v) => v.methodInfo;
  static const Field<ToolAPIInfo, Map<String, dynamic>> _f$methodInfo = Field(
    'methodInfo',
    _$methodInfo,
    key: r'method_info',
  );

  @override
  final MappableFields<ToolAPIInfo> fields = const {
    #path: _f$path,
    #method: _f$method,
    #argsTypes: _f$argsTypes,
    #methodInfo: _f$methodInfo,
  };

  static ToolAPIInfo _instantiate(DecodingData data) {
    return ToolAPIInfo(
      path: data.dec(_f$path),
      method: data.dec(_f$method),
      argsTypes: data.dec(_f$argsTypes),
      methodInfo: data.dec(_f$methodInfo),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ToolAPIInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToolAPIInfo>(map);
  }

  static ToolAPIInfo fromJson(String json) {
    return ensureInitialized().decodeJson<ToolAPIInfo>(json);
  }
}

mixin ToolAPIInfoMappable {
  String toJson() {
    return ToolAPIInfoMapper.ensureInitialized().encodeJson<ToolAPIInfo>(
      this as ToolAPIInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return ToolAPIInfoMapper.ensureInitialized().encodeMap<ToolAPIInfo>(
      this as ToolAPIInfo,
    );
  }

  ToolAPIInfoCopyWith<ToolAPIInfo, ToolAPIInfo, ToolAPIInfo> get copyWith =>
      _ToolAPIInfoCopyWithImpl<ToolAPIInfo, ToolAPIInfo>(
        this as ToolAPIInfo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ToolAPIInfoMapper.ensureInitialized().stringifyValue(
      this as ToolAPIInfo,
    );
  }

  @override
  bool operator ==(Object other) {
    return ToolAPIInfoMapper.ensureInitialized().equalsValue(
      this as ToolAPIInfo,
      other,
    );
  }

  @override
  int get hashCode {
    return ToolAPIInfoMapper.ensureInitialized().hashValue(this as ToolAPIInfo);
  }
}

extension ToolAPIInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ToolAPIInfo, $Out> {
  ToolAPIInfoCopyWith<$R, ToolAPIInfo, $Out> get $asToolAPIInfo =>
      $base.as((v, t, t2) => _ToolAPIInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToolAPIInfoCopyWith<$R, $In extends ToolAPIInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get argsTypes;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get methodInfo;
  $R call({
    String? path,
    String? method,
    Map<String, String>? argsTypes,
    Map<String, dynamic>? methodInfo,
  });
  ToolAPIInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ToolAPIInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToolAPIInfo, $Out>
    implements ToolAPIInfoCopyWith<$R, ToolAPIInfo, $Out> {
  _ToolAPIInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToolAPIInfo> $mapper =
      ToolAPIInfoMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get argsTypes => MapCopyWith(
    $value.argsTypes,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(argsTypes: v),
  );
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get methodInfo => MapCopyWith(
    $value.methodInfo,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(methodInfo: v),
  );
  @override
  $R call({
    String? path,
    String? method,
    Map<String, String>? argsTypes,
    Map<String, dynamic>? methodInfo,
  }) => $apply(
    FieldCopyWithData({
      if (path != null) #path: path,
      if (method != null) #method: method,
      if (argsTypes != null) #argsTypes: argsTypes,
      if (methodInfo != null) #methodInfo: methodInfo,
    }),
  );
  @override
  ToolAPIInfo $make(CopyWithData data) => ToolAPIInfo(
    path: data.get(#path, or: $value.path),
    method: data.get(#method, or: $value.method),
    argsTypes: data.get(#argsTypes, or: $value.argsTypes),
    methodInfo: data.get(#methodInfo, or: $value.methodInfo),
  );

  @override
  ToolAPIInfoCopyWith<$R2, ToolAPIInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ToolAPIInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolMapper extends ClassMapperBase<Tool> {
  ToolMapper._();

  static ToolMapper? _instance;
  static ToolMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolMapper._());
      ToolAPIMapper.ensureInitialized();
      ToolInputSchemaMapper.ensureInitialized();
      ToolAnnotationsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Tool';

  static String _$name(Tool v) => v.name;
  static const Field<Tool, String> _f$name = Field('name', _$name);
  static String? _$description(Tool v) => v.description;
  static const Field<Tool, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );
  static ToolInputSchema _$inputSchema(Tool v) => v.inputSchema;
  static const Field<Tool, ToolInputSchema> _f$inputSchema = Field(
    'inputSchema',
    _$inputSchema,
    key: r'input_schema',
  );
  static ToolAnnotations? _$annotations(Tool v) => v.annotations;
  static const Field<Tool, ToolAnnotations> _f$annotations = Field(
    'annotations',
    _$annotations,
    opt: true,
  );

  @override
  final MappableFields<Tool> fields = const {
    #name: _f$name,
    #description: _f$description,
    #inputSchema: _f$inputSchema,
    #annotations: _f$annotations,
  };

  static Tool _instantiate(DecodingData data) {
    return Tool(
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      inputSchema: data.dec(_f$inputSchema),
      annotations: data.dec(_f$annotations),
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
  String toJson() {
    return ToolMapper.ensureInitialized().encodeJson<Tool>(this as Tool);
  }

  Map<String, dynamic> toMap() {
    return ToolMapper.ensureInitialized().encodeMap<Tool>(this as Tool);
  }

  ToolCopyWith<Tool, Tool, Tool> get copyWith =>
      _ToolCopyWithImpl<Tool, Tool>(this as Tool, $identity, $identity);
  @override
  String toString() {
    return ToolMapper.ensureInitialized().stringifyValue(this as Tool);
  }

  @override
  bool operator ==(Object other) {
    return ToolMapper.ensureInitialized().equalsValue(this as Tool, other);
  }

  @override
  int get hashCode {
    return ToolMapper.ensureInitialized().hashValue(this as Tool);
  }
}

extension ToolValueCopy<$R, $Out> on ObjectCopyWith<$R, Tool, $Out> {
  ToolCopyWith<$R, Tool, $Out> get $asTool =>
      $base.as((v, t, t2) => _ToolCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToolCopyWith<$R, $In extends Tool, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ToolInputSchemaCopyWith<$R, ToolInputSchema, ToolInputSchema> get inputSchema;
  ToolAnnotationsCopyWith<$R, ToolAnnotations, ToolAnnotations>?
  get annotations;
  $R call({
    String? name,
    String? description,
    ToolInputSchema? inputSchema,
    ToolAnnotations? annotations,
  });
  ToolCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ToolCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Tool, $Out>
    implements ToolCopyWith<$R, Tool, $Out> {
  _ToolCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Tool> $mapper = ToolMapper.ensureInitialized();
  @override
  ToolInputSchemaCopyWith<$R, ToolInputSchema, ToolInputSchema>
  get inputSchema =>
      $value.inputSchema.copyWith.$chain((v) => call(inputSchema: v));
  @override
  ToolAnnotationsCopyWith<$R, ToolAnnotations, ToolAnnotations>?
  get annotations =>
      $value.annotations?.copyWith.$chain((v) => call(annotations: v));
  @override
  $R call({
    String? name,
    Object? description = $none,
    ToolInputSchema? inputSchema,
    Object? annotations = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (inputSchema != null) #inputSchema: inputSchema,
      if (annotations != $none) #annotations: annotations,
    }),
  );
  @override
  Tool $make(CopyWithData data) => Tool(
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    inputSchema: data.get(#inputSchema, or: $value.inputSchema),
    annotations: data.get(#annotations, or: $value.annotations),
  );

  @override
  ToolCopyWith<$R2, Tool, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ToolCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ToolAPIMapper extends ClassMapperBase<ToolAPI> {
  ToolAPIMapper._();

  static ToolAPIMapper? _instance;
  static ToolAPIMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToolAPIMapper._());
      ToolMapper.ensureInitialized();
      ToolInputSchemaMapper.ensureInitialized();
      ToolAnnotationsMapper.ensureInitialized();
      ToolAPIInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ToolAPI';

  static String _$name(ToolAPI v) => v.name;
  static const Field<ToolAPI, String> _f$name = Field('name', _$name);
  static String? _$description(ToolAPI v) => v.description;
  static const Field<ToolAPI, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );
  static ToolInputSchema _$inputSchema(ToolAPI v) => v.inputSchema;
  static const Field<ToolAPI, ToolInputSchema> _f$inputSchema = Field(
    'inputSchema',
    _$inputSchema,
    key: r'input_schema',
  );
  static ToolAnnotations? _$annotations(ToolAPI v) => v.annotations;
  static const Field<ToolAPI, ToolAnnotations> _f$annotations = Field(
    'annotations',
    _$annotations,
    opt: true,
  );
  static ToolAPIInfo? _$apiInfo(ToolAPI v) => v.apiInfo;
  static const Field<ToolAPI, ToolAPIInfo> _f$apiInfo = Field(
    'apiInfo',
    _$apiInfo,
    key: r'api_info',
    opt: true,
  );

  @override
  final MappableFields<ToolAPI> fields = const {
    #name: _f$name,
    #description: _f$description,
    #inputSchema: _f$inputSchema,
    #annotations: _f$annotations,
    #apiInfo: _f$apiInfo,
  };

  static ToolAPI _instantiate(DecodingData data) {
    return ToolAPI(
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      inputSchema: data.dec(_f$inputSchema),
      annotations: data.dec(_f$annotations),
      apiInfo: data.dec(_f$apiInfo),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ToolAPI fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ToolAPI>(map);
  }

  static ToolAPI fromJson(String json) {
    return ensureInitialized().decodeJson<ToolAPI>(json);
  }
}

mixin ToolAPIMappable {
  String toJson() {
    return ToolAPIMapper.ensureInitialized().encodeJson<ToolAPI>(
      this as ToolAPI,
    );
  }

  Map<String, dynamic> toMap() {
    return ToolAPIMapper.ensureInitialized().encodeMap<ToolAPI>(
      this as ToolAPI,
    );
  }

  ToolAPICopyWith<ToolAPI, ToolAPI, ToolAPI> get copyWith =>
      _ToolAPICopyWithImpl<ToolAPI, ToolAPI>(
        this as ToolAPI,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ToolAPIMapper.ensureInitialized().stringifyValue(this as ToolAPI);
  }

  @override
  bool operator ==(Object other) {
    return ToolAPIMapper.ensureInitialized().equalsValue(
      this as ToolAPI,
      other,
    );
  }

  @override
  int get hashCode {
    return ToolAPIMapper.ensureInitialized().hashValue(this as ToolAPI);
  }
}

extension ToolAPIValueCopy<$R, $Out> on ObjectCopyWith<$R, ToolAPI, $Out> {
  ToolAPICopyWith<$R, ToolAPI, $Out> get $asToolAPI =>
      $base.as((v, t, t2) => _ToolAPICopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToolAPICopyWith<$R, $In extends ToolAPI, $Out>
    implements ToolCopyWith<$R, $In, $Out> {
  @override
  ToolInputSchemaCopyWith<$R, ToolInputSchema, ToolInputSchema> get inputSchema;
  @override
  ToolAnnotationsCopyWith<$R, ToolAnnotations, ToolAnnotations>?
  get annotations;
  ToolAPIInfoCopyWith<$R, ToolAPIInfo, ToolAPIInfo>? get apiInfo;
  @override
  $R call({
    String? name,
    String? description,
    ToolInputSchema? inputSchema,
    ToolAnnotations? annotations,
    ToolAPIInfo? apiInfo,
  });
  ToolAPICopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ToolAPICopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ToolAPI, $Out>
    implements ToolAPICopyWith<$R, ToolAPI, $Out> {
  _ToolAPICopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ToolAPI> $mapper =
      ToolAPIMapper.ensureInitialized();
  @override
  ToolInputSchemaCopyWith<$R, ToolInputSchema, ToolInputSchema>
  get inputSchema =>
      $value.inputSchema.copyWith.$chain((v) => call(inputSchema: v));
  @override
  ToolAnnotationsCopyWith<$R, ToolAnnotations, ToolAnnotations>?
  get annotations =>
      $value.annotations?.copyWith.$chain((v) => call(annotations: v));
  @override
  ToolAPIInfoCopyWith<$R, ToolAPIInfo, ToolAPIInfo>? get apiInfo =>
      $value.apiInfo?.copyWith.$chain((v) => call(apiInfo: v));
  @override
  $R call({
    String? name,
    Object? description = $none,
    ToolInputSchema? inputSchema,
    Object? annotations = $none,
    Object? apiInfo = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (inputSchema != null) #inputSchema: inputSchema,
      if (annotations != $none) #annotations: annotations,
      if (apiInfo != $none) #apiInfo: apiInfo,
    }),
  );
  @override
  ToolAPI $make(CopyWithData data) => ToolAPI(
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    inputSchema: data.get(#inputSchema, or: $value.inputSchema),
    annotations: data.get(#annotations, or: $value.annotations),
    apiInfo: data.get(#apiInfo, or: $value.apiInfo),
  );

  @override
  ToolAPICopyWith<$R2, ToolAPI, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ToolAPICopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ListToolsResultMapper extends ClassMapperBase<ListToolsResult> {
  ListToolsResultMapper._();

  static ListToolsResultMapper? _instance;
  static ListToolsResultMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ListToolsResultMapper._());
      ResultMapper.ensureInitialized();
      ToolMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ListToolsResult';

  static List<Tool> _$tools(ListToolsResult v) => v.tools;
  static const Field<ListToolsResult, List<Tool>> _f$tools = Field(
    'tools',
    _$tools,
  );
  static Map<String, dynamic>? _$meta(ListToolsResult v) => v.meta;
  static const Field<ListToolsResult, Map<String, dynamic>> _f$meta = Field(
    'meta',
    _$meta,
    opt: true,
  );

  @override
  final MappableFields<ListToolsResult> fields = const {
    #tools: _f$tools,
    #meta: _f$meta,
  };

  static ListToolsResult _instantiate(DecodingData data) {
    return ListToolsResult(tools: data.dec(_f$tools), meta: data.dec(_f$meta));
  }

  @override
  final Function instantiate = _instantiate;

  static ListToolsResult fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ListToolsResult>(map);
  }

  static ListToolsResult fromJson(String json) {
    return ensureInitialized().decodeJson<ListToolsResult>(json);
  }
}

mixin ListToolsResultMappable {
  String toJson() {
    return ListToolsResultMapper.ensureInitialized()
        .encodeJson<ListToolsResult>(this as ListToolsResult);
  }

  Map<String, dynamic> toMap() {
    return ListToolsResultMapper.ensureInitialized().encodeMap<ListToolsResult>(
      this as ListToolsResult,
    );
  }

  ListToolsResultCopyWith<ListToolsResult, ListToolsResult, ListToolsResult>
  get copyWith =>
      _ListToolsResultCopyWithImpl<ListToolsResult, ListToolsResult>(
        this as ListToolsResult,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ListToolsResultMapper.ensureInitialized().stringifyValue(
      this as ListToolsResult,
    );
  }

  @override
  bool operator ==(Object other) {
    return ListToolsResultMapper.ensureInitialized().equalsValue(
      this as ListToolsResult,
      other,
    );
  }

  @override
  int get hashCode {
    return ListToolsResultMapper.ensureInitialized().hashValue(
      this as ListToolsResult,
    );
  }
}

extension ListToolsResultValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ListToolsResult, $Out> {
  ListToolsResultCopyWith<$R, ListToolsResult, $Out> get $asListToolsResult =>
      $base.as((v, t, t2) => _ListToolsResultCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ListToolsResultCopyWith<$R, $In extends ListToolsResult, $Out>
    implements ResultCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Tool, ToolCopyWith<$R, Tool, Tool>> get tools;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta;
  @override
  $R call({List<Tool>? tools, Map<String, dynamic>? meta});
  ListToolsResultCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ListToolsResultCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ListToolsResult, $Out>
    implements ListToolsResultCopyWith<$R, ListToolsResult, $Out> {
  _ListToolsResultCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ListToolsResult> $mapper =
      ListToolsResultMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Tool, ToolCopyWith<$R, Tool, Tool>> get tools =>
      ListCopyWith(
        $value.tools,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(tools: v),
      );
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
  $R call({List<Tool>? tools, Object? meta = $none}) => $apply(
    FieldCopyWithData({
      if (tools != null) #tools: tools,
      if (meta != $none) #meta: meta,
    }),
  );
  @override
  ListToolsResult $make(CopyWithData data) => ListToolsResult(
    tools: data.get(#tools, or: $value.tools),
    meta: data.get(#meta, or: $value.meta),
  );

  @override
  ListToolsResultCopyWith<$R2, ListToolsResult, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ListToolsResultCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CallToolRequestParamsMapper
    extends ClassMapperBase<CallToolRequestParams> {
  CallToolRequestParamsMapper._();

  static CallToolRequestParamsMapper? _instance;
  static CallToolRequestParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CallToolRequestParamsMapper._());
      ParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CallToolRequestParams';

  static String _$name(CallToolRequestParams v) => v.name;
  static const Field<CallToolRequestParams, String> _f$name = Field(
    'name',
    _$name,
  );
  static Map<String, dynamic>? _$arguments(CallToolRequestParams v) =>
      v.arguments;
  static const Field<CallToolRequestParams, Map<String, dynamic>> _f$arguments =
      Field('arguments', _$arguments, opt: true);
  static Map<String, dynamic>? _$meta(CallToolRequestParams v) => v.meta;
  static const Field<CallToolRequestParams, Map<String, dynamic>> _f$meta =
      Field('meta', _$meta, opt: true);

  @override
  final MappableFields<CallToolRequestParams> fields = const {
    #name: _f$name,
    #arguments: _f$arguments,
    #meta: _f$meta,
  };

  static CallToolRequestParams _instantiate(DecodingData data) {
    return CallToolRequestParams(
      name: data.dec(_f$name),
      arguments: data.dec(_f$arguments),
      meta: data.dec(_f$meta),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CallToolRequestParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CallToolRequestParams>(map);
  }

  static CallToolRequestParams fromJson(String json) {
    return ensureInitialized().decodeJson<CallToolRequestParams>(json);
  }
}

mixin CallToolRequestParamsMappable {
  String toJson() {
    return CallToolRequestParamsMapper.ensureInitialized()
        .encodeJson<CallToolRequestParams>(this as CallToolRequestParams);
  }

  Map<String, dynamic> toMap() {
    return CallToolRequestParamsMapper.ensureInitialized()
        .encodeMap<CallToolRequestParams>(this as CallToolRequestParams);
  }

  CallToolRequestParamsCopyWith<
    CallToolRequestParams,
    CallToolRequestParams,
    CallToolRequestParams
  >
  get copyWith =>
      _CallToolRequestParamsCopyWithImpl<
        CallToolRequestParams,
        CallToolRequestParams
      >(this as CallToolRequestParams, $identity, $identity);
  @override
  String toString() {
    return CallToolRequestParamsMapper.ensureInitialized().stringifyValue(
      this as CallToolRequestParams,
    );
  }

  @override
  bool operator ==(Object other) {
    return CallToolRequestParamsMapper.ensureInitialized().equalsValue(
      this as CallToolRequestParams,
      other,
    );
  }

  @override
  int get hashCode {
    return CallToolRequestParamsMapper.ensureInitialized().hashValue(
      this as CallToolRequestParams,
    );
  }
}

extension CallToolRequestParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CallToolRequestParams, $Out> {
  CallToolRequestParamsCopyWith<$R, CallToolRequestParams, $Out>
  get $asCallToolRequestParams => $base.as(
    (v, t, t2) => _CallToolRequestParamsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CallToolRequestParamsCopyWith<
  $R,
  $In extends CallToolRequestParams,
  $Out
>
    implements ParamsCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get arguments;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta;
  @override
  $R call({
    String? name,
    Map<String, dynamic>? arguments,
    Map<String, dynamic>? meta,
  });
  CallToolRequestParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CallToolRequestParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CallToolRequestParams, $Out>
    implements CallToolRequestParamsCopyWith<$R, CallToolRequestParams, $Out> {
  _CallToolRequestParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CallToolRequestParams> $mapper =
      CallToolRequestParamsMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get arguments => $value.arguments != null
      ? MapCopyWith(
          $value.arguments!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(arguments: v),
        )
      : null;
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
  $R call({String? name, Object? arguments = $none, Object? meta = $none}) =>
      $apply(
        FieldCopyWithData({
          if (name != null) #name: name,
          if (arguments != $none) #arguments: arguments,
          if (meta != $none) #meta: meta,
        }),
      );
  @override
  CallToolRequestParams $make(CopyWithData data) => CallToolRequestParams(
    name: data.get(#name, or: $value.name),
    arguments: data.get(#arguments, or: $value.arguments),
    meta: data.get(#meta, or: $value.meta),
  );

  @override
  CallToolRequestParamsCopyWith<$R2, CallToolRequestParams, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CallToolRequestParamsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CallToolRequestMapper extends ClassMapperBase<CallToolRequest> {
  CallToolRequestMapper._();

  static CallToolRequestMapper? _instance;
  static CallToolRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CallToolRequestMapper._());
      JSONRPCRequestMapper.ensureInitialized();
      CallToolRequestParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CallToolRequest';

  static dynamic _$id(CallToolRequest v) => v.id;
  static const Field<CallToolRequest, dynamic> _f$id = Field('id', _$id);
  static CallToolRequestParams? _$params(CallToolRequest v) => v.params;
  static const Field<CallToolRequest, CallToolRequestParams> _f$params = Field(
    'params',
    _$params,
    opt: true,
  );
  static String _$jsonrpc(CallToolRequest v) => v.jsonrpc;
  static const Field<CallToolRequest, String> _f$jsonrpc = Field(
    'jsonrpc',
    _$jsonrpc,
    mode: FieldMode.member,
  );
  static String _$method(CallToolRequest v) => v.method;
  static const Field<CallToolRequest, String> _f$method = Field(
    'method',
    _$method,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<CallToolRequest> fields = const {
    #id: _f$id,
    #params: _f$params,
    #jsonrpc: _f$jsonrpc,
    #method: _f$method,
  };

  static CallToolRequest _instantiate(DecodingData data) {
    return CallToolRequest(id: data.dec(_f$id), params: data.dec(_f$params));
  }

  @override
  final Function instantiate = _instantiate;

  static CallToolRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CallToolRequest>(map);
  }

  static CallToolRequest fromJson(String json) {
    return ensureInitialized().decodeJson<CallToolRequest>(json);
  }
}

mixin CallToolRequestMappable {
  String toJson() {
    return CallToolRequestMapper.ensureInitialized()
        .encodeJson<CallToolRequest>(this as CallToolRequest);
  }

  Map<String, dynamic> toMap() {
    return CallToolRequestMapper.ensureInitialized().encodeMap<CallToolRequest>(
      this as CallToolRequest,
    );
  }

  CallToolRequestCopyWith<CallToolRequest, CallToolRequest, CallToolRequest>
  get copyWith =>
      _CallToolRequestCopyWithImpl<CallToolRequest, CallToolRequest>(
        this as CallToolRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CallToolRequestMapper.ensureInitialized().stringifyValue(
      this as CallToolRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return CallToolRequestMapper.ensureInitialized().equalsValue(
      this as CallToolRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return CallToolRequestMapper.ensureInitialized().hashValue(
      this as CallToolRequest,
    );
  }
}

extension CallToolRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CallToolRequest, $Out> {
  CallToolRequestCopyWith<$R, CallToolRequest, $Out> get $asCallToolRequest =>
      $base.as((v, t, t2) => _CallToolRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CallToolRequestCopyWith<$R, $In extends CallToolRequest, $Out>
    implements JSONRPCRequestCopyWith<$R, $In, $Out, CallToolRequestParams> {
  @override
  CallToolRequestParamsCopyWith<
    $R,
    CallToolRequestParams,
    CallToolRequestParams
  >?
  get params;
  @override
  $R call({dynamic id, CallToolRequestParams? params});
  CallToolRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CallToolRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CallToolRequest, $Out>
    implements CallToolRequestCopyWith<$R, CallToolRequest, $Out> {
  _CallToolRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CallToolRequest> $mapper =
      CallToolRequestMapper.ensureInitialized();
  @override
  CallToolRequestParamsCopyWith<
    $R,
    CallToolRequestParams,
    CallToolRequestParams
  >?
  get params => ($value.params as CallToolRequestParams?)?.copyWith.$chain(
    (v) => call(params: v),
  );
  @override
  $R call({Object? id = $none, Object? params = $none}) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (params != $none) #params: params,
    }),
  );
  @override
  CallToolRequest $make(CopyWithData data) => CallToolRequest(
    id: data.get(#id, or: $value.id),
    params: data.get(#params, or: $value.params),
  );

  @override
  CallToolRequestCopyWith<$R2, CallToolRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CallToolRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AnnotationsMapper extends ClassMapperBase<Annotations> {
  AnnotationsMapper._();

  static AnnotationsMapper? _instance;
  static AnnotationsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AnnotationsMapper._());
      MCPRoleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Annotations';

  static List<MCPRole>? _$audience(Annotations v) => v.audience;
  static const Field<Annotations, List<MCPRole>> _f$audience = Field(
    'audience',
    _$audience,
    opt: true,
  );
  static double? _$priority(Annotations v) => v.priority;
  static const Field<Annotations, double> _f$priority = Field(
    'priority',
    _$priority,
    opt: true,
  );

  @override
  final MappableFields<Annotations> fields = const {
    #audience: _f$audience,
    #priority: _f$priority,
  };

  static Annotations _instantiate(DecodingData data) {
    return Annotations(
      audience: data.dec(_f$audience),
      priority: data.dec(_f$priority),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Annotations fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Annotations>(map);
  }

  static Annotations fromJson(String json) {
    return ensureInitialized().decodeJson<Annotations>(json);
  }
}

mixin AnnotationsMappable {
  String toJson() {
    return AnnotationsMapper.ensureInitialized().encodeJson<Annotations>(
      this as Annotations,
    );
  }

  Map<String, dynamic> toMap() {
    return AnnotationsMapper.ensureInitialized().encodeMap<Annotations>(
      this as Annotations,
    );
  }

  AnnotationsCopyWith<Annotations, Annotations, Annotations> get copyWith =>
      _AnnotationsCopyWithImpl<Annotations, Annotations>(
        this as Annotations,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AnnotationsMapper.ensureInitialized().stringifyValue(
      this as Annotations,
    );
  }

  @override
  bool operator ==(Object other) {
    return AnnotationsMapper.ensureInitialized().equalsValue(
      this as Annotations,
      other,
    );
  }

  @override
  int get hashCode {
    return AnnotationsMapper.ensureInitialized().hashValue(this as Annotations);
  }
}

extension AnnotationsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Annotations, $Out> {
  AnnotationsCopyWith<$R, Annotations, $Out> get $asAnnotations =>
      $base.as((v, t, t2) => _AnnotationsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AnnotationsCopyWith<$R, $In extends Annotations, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MCPRole, ObjectCopyWith<$R, MCPRole, MCPRole>>? get audience;
  $R call({List<MCPRole>? audience, double? priority});
  AnnotationsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AnnotationsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Annotations, $Out>
    implements AnnotationsCopyWith<$R, Annotations, $Out> {
  _AnnotationsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Annotations> $mapper =
      AnnotationsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, MCPRole, ObjectCopyWith<$R, MCPRole, MCPRole>>?
  get audience => $value.audience != null
      ? ListCopyWith(
          $value.audience!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(audience: v),
        )
      : null;
  @override
  $R call({Object? audience = $none, Object? priority = $none}) => $apply(
    FieldCopyWithData({
      if (audience != $none) #audience: audience,
      if (priority != $none) #priority: priority,
    }),
  );
  @override
  Annotations $make(CopyWithData data) => Annotations(
    audience: data.get(#audience, or: $value.audience),
    priority: data.get(#priority, or: $value.priority),
  );

  @override
  AnnotationsCopyWith<$R2, Annotations, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AnnotationsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ContentMapper extends ClassMapperBase<Content> {
  ContentMapper._();

  static ContentMapper? _instance;
  static ContentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ContentMapper._());
      TextContentMapper.ensureInitialized();
      ImageContentMapper.ensureInitialized();
      AudioContentMapper.ensureInitialized();
      EmbeddedResourceMapper.ensureInitialized();
      AnnotationsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Content';

  static Annotations? _$annotations(Content v) => v.annotations;
  static const Field<Content, Annotations> _f$annotations = Field(
    'annotations',
    _$annotations,
    opt: true,
  );

  @override
  final MappableFields<Content> fields = const {#annotations: _f$annotations};

  static Content _instantiate(DecodingData data) {
    return Content(annotations: data.dec(_f$annotations));
  }

  @override
  final Function instantiate = _instantiate;

  static Content fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Content>(map);
  }

  static Content fromJson(String json) {
    return ensureInitialized().decodeJson<Content>(json);
  }
}

mixin ContentMappable {
  String toJson() {
    return ContentMapper.ensureInitialized().encodeJson<Content>(
      this as Content,
    );
  }

  Map<String, dynamic> toMap() {
    return ContentMapper.ensureInitialized().encodeMap<Content>(
      this as Content,
    );
  }

  ContentCopyWith<Content, Content, Content> get copyWith =>
      _ContentCopyWithImpl<Content, Content>(
        this as Content,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ContentMapper.ensureInitialized().stringifyValue(this as Content);
  }

  @override
  bool operator ==(Object other) {
    return ContentMapper.ensureInitialized().equalsValue(
      this as Content,
      other,
    );
  }

  @override
  int get hashCode {
    return ContentMapper.ensureInitialized().hashValue(this as Content);
  }
}

extension ContentValueCopy<$R, $Out> on ObjectCopyWith<$R, Content, $Out> {
  ContentCopyWith<$R, Content, $Out> get $asContent =>
      $base.as((v, t, t2) => _ContentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ContentCopyWith<$R, $In extends Content, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  AnnotationsCopyWith<$R, Annotations, Annotations>? get annotations;
  $R call({Annotations? annotations});
  ContentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ContentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Content, $Out>
    implements ContentCopyWith<$R, Content, $Out> {
  _ContentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Content> $mapper =
      ContentMapper.ensureInitialized();
  @override
  AnnotationsCopyWith<$R, Annotations, Annotations>? get annotations =>
      $value.annotations?.copyWith.$chain((v) => call(annotations: v));
  @override
  $R call({Object? annotations = $none}) => $apply(
    FieldCopyWithData({if (annotations != $none) #annotations: annotations}),
  );
  @override
  Content $make(CopyWithData data) =>
      Content(annotations: data.get(#annotations, or: $value.annotations));

  @override
  ContentCopyWith<$R2, Content, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ContentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TextContentMapper extends ClassMapperBase<TextContent> {
  TextContentMapper._();

  static TextContentMapper? _instance;
  static TextContentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextContentMapper._());
      ContentMapper.ensureInitialized();
      AnnotationsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TextContent';

  static String _$text(TextContent v) => v.text;
  static const Field<TextContent, String> _f$text = Field('text', _$text);
  static Annotations? _$annotations(TextContent v) => v.annotations;
  static const Field<TextContent, Annotations> _f$annotations = Field(
    'annotations',
    _$annotations,
    opt: true,
  );

  @override
  final MappableFields<TextContent> fields = const {
    #text: _f$text,
    #annotations: _f$annotations,
  };

  static TextContent _instantiate(DecodingData data) {
    return TextContent(
      text: data.dec(_f$text),
      annotations: data.dec(_f$annotations),
    );
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
    implements ContentCopyWith<$R, $In, $Out> {
  @override
  AnnotationsCopyWith<$R, Annotations, Annotations>? get annotations;
  @override
  $R call({String? text, Annotations? annotations});
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
  AnnotationsCopyWith<$R, Annotations, Annotations>? get annotations =>
      $value.annotations?.copyWith.$chain((v) => call(annotations: v));
  @override
  $R call({String? text, Object? annotations = $none}) => $apply(
    FieldCopyWithData({
      if (text != null) #text: text,
      if (annotations != $none) #annotations: annotations,
    }),
  );
  @override
  TextContent $make(CopyWithData data) => TextContent(
    text: data.get(#text, or: $value.text),
    annotations: data.get(#annotations, or: $value.annotations),
  );

  @override
  TextContentCopyWith<$R2, TextContent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TextContentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ImageContentMapper extends ClassMapperBase<ImageContent> {
  ImageContentMapper._();

  static ImageContentMapper? _instance;
  static ImageContentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageContentMapper._());
      ContentMapper.ensureInitialized();
      AnnotationsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageContent';

  static String _$data(ImageContent v) => v.data;
  static const Field<ImageContent, String> _f$data = Field('data', _$data);
  static String _$mimeType(ImageContent v) => v.mimeType;
  static const Field<ImageContent, String> _f$mimeType = Field(
    'mimeType',
    _$mimeType,
    key: r'mime_type',
  );
  static Annotations? _$annotations(ImageContent v) => v.annotations;
  static const Field<ImageContent, Annotations> _f$annotations = Field(
    'annotations',
    _$annotations,
    opt: true,
  );

  @override
  final MappableFields<ImageContent> fields = const {
    #data: _f$data,
    #mimeType: _f$mimeType,
    #annotations: _f$annotations,
  };

  static ImageContent _instantiate(DecodingData data) {
    return ImageContent(
      data: data.dec(_f$data),
      mimeType: data.dec(_f$mimeType),
      annotations: data.dec(_f$annotations),
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
    implements ContentCopyWith<$R, $In, $Out> {
  @override
  AnnotationsCopyWith<$R, Annotations, Annotations>? get annotations;
  @override
  $R call({String? data, String? mimeType, Annotations? annotations});
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
  AnnotationsCopyWith<$R, Annotations, Annotations>? get annotations =>
      $value.annotations?.copyWith.$chain((v) => call(annotations: v));
  @override
  $R call({String? data, String? mimeType, Object? annotations = $none}) =>
      $apply(
        FieldCopyWithData({
          if (data != null) #data: data,
          if (mimeType != null) #mimeType: mimeType,
          if (annotations != $none) #annotations: annotations,
        }),
      );
  @override
  ImageContent $make(CopyWithData data) => ImageContent(
    data: data.get(#data, or: $value.data),
    mimeType: data.get(#mimeType, or: $value.mimeType),
    annotations: data.get(#annotations, or: $value.annotations),
  );

  @override
  ImageContentCopyWith<$R2, ImageContent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImageContentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AudioContentMapper extends ClassMapperBase<AudioContent> {
  AudioContentMapper._();

  static AudioContentMapper? _instance;
  static AudioContentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AudioContentMapper._());
      ContentMapper.ensureInitialized();
      AnnotationsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AudioContent';

  static String _$data(AudioContent v) => v.data;
  static const Field<AudioContent, String> _f$data = Field('data', _$data);
  static String _$mimeType(AudioContent v) => v.mimeType;
  static const Field<AudioContent, String> _f$mimeType = Field(
    'mimeType',
    _$mimeType,
    key: r'mime_type',
  );
  static Annotations? _$annotations(AudioContent v) => v.annotations;
  static const Field<AudioContent, Annotations> _f$annotations = Field(
    'annotations',
    _$annotations,
    opt: true,
  );

  @override
  final MappableFields<AudioContent> fields = const {
    #data: _f$data,
    #mimeType: _f$mimeType,
    #annotations: _f$annotations,
  };

  static AudioContent _instantiate(DecodingData data) {
    return AudioContent(
      data: data.dec(_f$data),
      mimeType: data.dec(_f$mimeType),
      annotations: data.dec(_f$annotations),
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
    implements ContentCopyWith<$R, $In, $Out> {
  @override
  AnnotationsCopyWith<$R, Annotations, Annotations>? get annotations;
  @override
  $R call({String? data, String? mimeType, Annotations? annotations});
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
  AnnotationsCopyWith<$R, Annotations, Annotations>? get annotations =>
      $value.annotations?.copyWith.$chain((v) => call(annotations: v));
  @override
  $R call({String? data, String? mimeType, Object? annotations = $none}) =>
      $apply(
        FieldCopyWithData({
          if (data != null) #data: data,
          if (mimeType != null) #mimeType: mimeType,
          if (annotations != $none) #annotations: annotations,
        }),
      );
  @override
  AudioContent $make(CopyWithData data) => AudioContent(
    data: data.get(#data, or: $value.data),
    mimeType: data.get(#mimeType, or: $value.mimeType),
    annotations: data.get(#annotations, or: $value.annotations),
  );

  @override
  AudioContentCopyWith<$R2, AudioContent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AudioContentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ResourceContentsMapper extends ClassMapperBase<ResourceContents> {
  ResourceContentsMapper._();

  static ResourceContentsMapper? _instance;
  static ResourceContentsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResourceContentsMapper._());
      TextResourceContentsMapper.ensureInitialized();
      BlobResourceContentsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ResourceContents';

  static String _$uri(ResourceContents v) => v.uri;
  static const Field<ResourceContents, String> _f$uri = Field('uri', _$uri);
  static String? _$mimeType(ResourceContents v) => v.mimeType;
  static const Field<ResourceContents, String> _f$mimeType = Field(
    'mimeType',
    _$mimeType,
    key: r'mime_type',
    opt: true,
  );

  @override
  final MappableFields<ResourceContents> fields = const {
    #uri: _f$uri,
    #mimeType: _f$mimeType,
  };

  static ResourceContents _instantiate(DecodingData data) {
    return ResourceContents(
      uri: data.dec(_f$uri),
      mimeType: data.dec(_f$mimeType),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ResourceContents fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResourceContents>(map);
  }

  static ResourceContents fromJson(String json) {
    return ensureInitialized().decodeJson<ResourceContents>(json);
  }
}

mixin ResourceContentsMappable {
  String toJson() {
    return ResourceContentsMapper.ensureInitialized()
        .encodeJson<ResourceContents>(this as ResourceContents);
  }

  Map<String, dynamic> toMap() {
    return ResourceContentsMapper.ensureInitialized()
        .encodeMap<ResourceContents>(this as ResourceContents);
  }

  ResourceContentsCopyWith<ResourceContents, ResourceContents, ResourceContents>
  get copyWith =>
      _ResourceContentsCopyWithImpl<ResourceContents, ResourceContents>(
        this as ResourceContents,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ResourceContentsMapper.ensureInitialized().stringifyValue(
      this as ResourceContents,
    );
  }

  @override
  bool operator ==(Object other) {
    return ResourceContentsMapper.ensureInitialized().equalsValue(
      this as ResourceContents,
      other,
    );
  }

  @override
  int get hashCode {
    return ResourceContentsMapper.ensureInitialized().hashValue(
      this as ResourceContents,
    );
  }
}

extension ResourceContentsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResourceContents, $Out> {
  ResourceContentsCopyWith<$R, ResourceContents, $Out>
  get $asResourceContents =>
      $base.as((v, t, t2) => _ResourceContentsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ResourceContentsCopyWith<$R, $In extends ResourceContents, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? uri, String? mimeType});
  ResourceContentsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ResourceContentsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResourceContents, $Out>
    implements ResourceContentsCopyWith<$R, ResourceContents, $Out> {
  _ResourceContentsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResourceContents> $mapper =
      ResourceContentsMapper.ensureInitialized();
  @override
  $R call({String? uri, Object? mimeType = $none}) => $apply(
    FieldCopyWithData({
      if (uri != null) #uri: uri,
      if (mimeType != $none) #mimeType: mimeType,
    }),
  );
  @override
  ResourceContents $make(CopyWithData data) => ResourceContents(
    uri: data.get(#uri, or: $value.uri),
    mimeType: data.get(#mimeType, or: $value.mimeType),
  );

  @override
  ResourceContentsCopyWith<$R2, ResourceContents, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ResourceContentsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TextResourceContentsMapper extends ClassMapperBase<TextResourceContents> {
  TextResourceContentsMapper._();

  static TextResourceContentsMapper? _instance;
  static TextResourceContentsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextResourceContentsMapper._());
      ResourceContentsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TextResourceContents';

  static String _$uri(TextResourceContents v) => v.uri;
  static const Field<TextResourceContents, String> _f$uri = Field('uri', _$uri);
  static String? _$mimeType(TextResourceContents v) => v.mimeType;
  static const Field<TextResourceContents, String> _f$mimeType = Field(
    'mimeType',
    _$mimeType,
    key: r'mime_type',
    opt: true,
  );
  static String _$text(TextResourceContents v) => v.text;
  static const Field<TextResourceContents, String> _f$text = Field(
    'text',
    _$text,
  );

  @override
  final MappableFields<TextResourceContents> fields = const {
    #uri: _f$uri,
    #mimeType: _f$mimeType,
    #text: _f$text,
  };

  static TextResourceContents _instantiate(DecodingData data) {
    return TextResourceContents(
      uri: data.dec(_f$uri),
      mimeType: data.dec(_f$mimeType),
      text: data.dec(_f$text),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TextResourceContents fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextResourceContents>(map);
  }

  static TextResourceContents fromJson(String json) {
    return ensureInitialized().decodeJson<TextResourceContents>(json);
  }
}

mixin TextResourceContentsMappable {
  String toJson() {
    return TextResourceContentsMapper.ensureInitialized()
        .encodeJson<TextResourceContents>(this as TextResourceContents);
  }

  Map<String, dynamic> toMap() {
    return TextResourceContentsMapper.ensureInitialized()
        .encodeMap<TextResourceContents>(this as TextResourceContents);
  }

  TextResourceContentsCopyWith<
    TextResourceContents,
    TextResourceContents,
    TextResourceContents
  >
  get copyWith =>
      _TextResourceContentsCopyWithImpl<
        TextResourceContents,
        TextResourceContents
      >(this as TextResourceContents, $identity, $identity);
  @override
  String toString() {
    return TextResourceContentsMapper.ensureInitialized().stringifyValue(
      this as TextResourceContents,
    );
  }

  @override
  bool operator ==(Object other) {
    return TextResourceContentsMapper.ensureInitialized().equalsValue(
      this as TextResourceContents,
      other,
    );
  }

  @override
  int get hashCode {
    return TextResourceContentsMapper.ensureInitialized().hashValue(
      this as TextResourceContents,
    );
  }
}

extension TextResourceContentsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextResourceContents, $Out> {
  TextResourceContentsCopyWith<$R, TextResourceContents, $Out>
  get $asTextResourceContents => $base.as(
    (v, t, t2) => _TextResourceContentsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TextResourceContentsCopyWith<
  $R,
  $In extends TextResourceContents,
  $Out
>
    implements ResourceContentsCopyWith<$R, $In, $Out> {
  @override
  $R call({String? uri, String? mimeType, String? text});
  TextResourceContentsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TextResourceContentsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextResourceContents, $Out>
    implements TextResourceContentsCopyWith<$R, TextResourceContents, $Out> {
  _TextResourceContentsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextResourceContents> $mapper =
      TextResourceContentsMapper.ensureInitialized();
  @override
  $R call({String? uri, Object? mimeType = $none, String? text}) => $apply(
    FieldCopyWithData({
      if (uri != null) #uri: uri,
      if (mimeType != $none) #mimeType: mimeType,
      if (text != null) #text: text,
    }),
  );
  @override
  TextResourceContents $make(CopyWithData data) => TextResourceContents(
    uri: data.get(#uri, or: $value.uri),
    mimeType: data.get(#mimeType, or: $value.mimeType),
    text: data.get(#text, or: $value.text),
  );

  @override
  TextResourceContentsCopyWith<$R2, TextResourceContents, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TextResourceContentsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BlobResourceContentsMapper extends ClassMapperBase<BlobResourceContents> {
  BlobResourceContentsMapper._();

  static BlobResourceContentsMapper? _instance;
  static BlobResourceContentsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BlobResourceContentsMapper._());
      ResourceContentsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BlobResourceContents';

  static String _$uri(BlobResourceContents v) => v.uri;
  static const Field<BlobResourceContents, String> _f$uri = Field('uri', _$uri);
  static String? _$mimeType(BlobResourceContents v) => v.mimeType;
  static const Field<BlobResourceContents, String> _f$mimeType = Field(
    'mimeType',
    _$mimeType,
    key: r'mime_type',
    opt: true,
  );
  static String _$blob(BlobResourceContents v) => v.blob;
  static const Field<BlobResourceContents, String> _f$blob = Field(
    'blob',
    _$blob,
  );

  @override
  final MappableFields<BlobResourceContents> fields = const {
    #uri: _f$uri,
    #mimeType: _f$mimeType,
    #blob: _f$blob,
  };

  static BlobResourceContents _instantiate(DecodingData data) {
    return BlobResourceContents(
      uri: data.dec(_f$uri),
      mimeType: data.dec(_f$mimeType),
      blob: data.dec(_f$blob),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BlobResourceContents fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BlobResourceContents>(map);
  }

  static BlobResourceContents fromJson(String json) {
    return ensureInitialized().decodeJson<BlobResourceContents>(json);
  }
}

mixin BlobResourceContentsMappable {
  String toJson() {
    return BlobResourceContentsMapper.ensureInitialized()
        .encodeJson<BlobResourceContents>(this as BlobResourceContents);
  }

  Map<String, dynamic> toMap() {
    return BlobResourceContentsMapper.ensureInitialized()
        .encodeMap<BlobResourceContents>(this as BlobResourceContents);
  }

  BlobResourceContentsCopyWith<
    BlobResourceContents,
    BlobResourceContents,
    BlobResourceContents
  >
  get copyWith =>
      _BlobResourceContentsCopyWithImpl<
        BlobResourceContents,
        BlobResourceContents
      >(this as BlobResourceContents, $identity, $identity);
  @override
  String toString() {
    return BlobResourceContentsMapper.ensureInitialized().stringifyValue(
      this as BlobResourceContents,
    );
  }

  @override
  bool operator ==(Object other) {
    return BlobResourceContentsMapper.ensureInitialized().equalsValue(
      this as BlobResourceContents,
      other,
    );
  }

  @override
  int get hashCode {
    return BlobResourceContentsMapper.ensureInitialized().hashValue(
      this as BlobResourceContents,
    );
  }
}

extension BlobResourceContentsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BlobResourceContents, $Out> {
  BlobResourceContentsCopyWith<$R, BlobResourceContents, $Out>
  get $asBlobResourceContents => $base.as(
    (v, t, t2) => _BlobResourceContentsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class BlobResourceContentsCopyWith<
  $R,
  $In extends BlobResourceContents,
  $Out
>
    implements ResourceContentsCopyWith<$R, $In, $Out> {
  @override
  $R call({String? uri, String? mimeType, String? blob});
  BlobResourceContentsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _BlobResourceContentsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BlobResourceContents, $Out>
    implements BlobResourceContentsCopyWith<$R, BlobResourceContents, $Out> {
  _BlobResourceContentsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BlobResourceContents> $mapper =
      BlobResourceContentsMapper.ensureInitialized();
  @override
  $R call({String? uri, Object? mimeType = $none, String? blob}) => $apply(
    FieldCopyWithData({
      if (uri != null) #uri: uri,
      if (mimeType != $none) #mimeType: mimeType,
      if (blob != null) #blob: blob,
    }),
  );
  @override
  BlobResourceContents $make(CopyWithData data) => BlobResourceContents(
    uri: data.get(#uri, or: $value.uri),
    mimeType: data.get(#mimeType, or: $value.mimeType),
    blob: data.get(#blob, or: $value.blob),
  );

  @override
  BlobResourceContentsCopyWith<$R2, BlobResourceContents, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BlobResourceContentsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EmbeddedResourceMapper extends ClassMapperBase<EmbeddedResource> {
  EmbeddedResourceMapper._();

  static EmbeddedResourceMapper? _instance;
  static EmbeddedResourceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmbeddedResourceMapper._());
      ContentMapper.ensureInitialized();
      TextResourceContentsMapper.ensureInitialized();
      AnnotationsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EmbeddedResource';

  static TextResourceContents _$resource(EmbeddedResource v) => v.resource;
  static const Field<EmbeddedResource, TextResourceContents> _f$resource =
      Field('resource', _$resource);
  static Annotations? _$annotations(EmbeddedResource v) => v.annotations;
  static const Field<EmbeddedResource, Annotations> _f$annotations = Field(
    'annotations',
    _$annotations,
    opt: true,
  );

  @override
  final MappableFields<EmbeddedResource> fields = const {
    #resource: _f$resource,
    #annotations: _f$annotations,
  };

  static EmbeddedResource _instantiate(DecodingData data) {
    return EmbeddedResource(
      resource: data.dec(_f$resource),
      annotations: data.dec(_f$annotations),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EmbeddedResource fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmbeddedResource>(map);
  }

  static EmbeddedResource fromJson(String json) {
    return ensureInitialized().decodeJson<EmbeddedResource>(json);
  }
}

mixin EmbeddedResourceMappable {
  String toJson() {
    return EmbeddedResourceMapper.ensureInitialized()
        .encodeJson<EmbeddedResource>(this as EmbeddedResource);
  }

  Map<String, dynamic> toMap() {
    return EmbeddedResourceMapper.ensureInitialized()
        .encodeMap<EmbeddedResource>(this as EmbeddedResource);
  }

  EmbeddedResourceCopyWith<EmbeddedResource, EmbeddedResource, EmbeddedResource>
  get copyWith =>
      _EmbeddedResourceCopyWithImpl<EmbeddedResource, EmbeddedResource>(
        this as EmbeddedResource,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EmbeddedResourceMapper.ensureInitialized().stringifyValue(
      this as EmbeddedResource,
    );
  }

  @override
  bool operator ==(Object other) {
    return EmbeddedResourceMapper.ensureInitialized().equalsValue(
      this as EmbeddedResource,
      other,
    );
  }

  @override
  int get hashCode {
    return EmbeddedResourceMapper.ensureInitialized().hashValue(
      this as EmbeddedResource,
    );
  }
}

extension EmbeddedResourceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmbeddedResource, $Out> {
  EmbeddedResourceCopyWith<$R, EmbeddedResource, $Out>
  get $asEmbeddedResource =>
      $base.as((v, t, t2) => _EmbeddedResourceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EmbeddedResourceCopyWith<$R, $In extends EmbeddedResource, $Out>
    implements ContentCopyWith<$R, $In, $Out> {
  TextResourceContentsCopyWith<$R, TextResourceContents, TextResourceContents>
  get resource;
  @override
  AnnotationsCopyWith<$R, Annotations, Annotations>? get annotations;
  @override
  $R call({TextResourceContents? resource, Annotations? annotations});
  EmbeddedResourceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EmbeddedResourceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmbeddedResource, $Out>
    implements EmbeddedResourceCopyWith<$R, EmbeddedResource, $Out> {
  _EmbeddedResourceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmbeddedResource> $mapper =
      EmbeddedResourceMapper.ensureInitialized();
  @override
  TextResourceContentsCopyWith<$R, TextResourceContents, TextResourceContents>
  get resource => $value.resource.copyWith.$chain((v) => call(resource: v));
  @override
  AnnotationsCopyWith<$R, Annotations, Annotations>? get annotations =>
      $value.annotations?.copyWith.$chain((v) => call(annotations: v));
  @override
  $R call({TextResourceContents? resource, Object? annotations = $none}) =>
      $apply(
        FieldCopyWithData({
          if (resource != null) #resource: resource,
          if (annotations != $none) #annotations: annotations,
        }),
      );
  @override
  EmbeddedResource $make(CopyWithData data) => EmbeddedResource(
    resource: data.get(#resource, or: $value.resource),
    annotations: data.get(#annotations, or: $value.annotations),
  );

  @override
  EmbeddedResourceCopyWith<$R2, EmbeddedResource, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EmbeddedResourceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CallToolResultMapper extends ClassMapperBase<CallToolResult> {
  CallToolResultMapper._();

  static CallToolResultMapper? _instance;
  static CallToolResultMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CallToolResultMapper._());
      ResultMapper.ensureInitialized();
      ContentMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CallToolResult';

  static List<Content> _$content(CallToolResult v) => v.content;
  static const Field<CallToolResult, List<Content>> _f$content = Field(
    'content',
    _$content,
  );
  static bool? _$isError(CallToolResult v) => v.isError;
  static const Field<CallToolResult, bool> _f$isError = Field(
    'isError',
    _$isError,
    key: r'is_error',
    opt: true,
    def: false,
  );
  static Map<String, dynamic>? _$meta(CallToolResult v) => v.meta;
  static const Field<CallToolResult, Map<String, dynamic>> _f$meta = Field(
    'meta',
    _$meta,
    opt: true,
  );

  @override
  final MappableFields<CallToolResult> fields = const {
    #content: _f$content,
    #isError: _f$isError,
    #meta: _f$meta,
  };

  static CallToolResult _instantiate(DecodingData data) {
    return CallToolResult(
      content: data.dec(_f$content),
      isError: data.dec(_f$isError),
      meta: data.dec(_f$meta),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CallToolResult fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CallToolResult>(map);
  }

  static CallToolResult fromJson(String json) {
    return ensureInitialized().decodeJson<CallToolResult>(json);
  }
}

mixin CallToolResultMappable {
  String toJson() {
    return CallToolResultMapper.ensureInitialized().encodeJson<CallToolResult>(
      this as CallToolResult,
    );
  }

  Map<String, dynamic> toMap() {
    return CallToolResultMapper.ensureInitialized().encodeMap<CallToolResult>(
      this as CallToolResult,
    );
  }

  CallToolResultCopyWith<CallToolResult, CallToolResult, CallToolResult>
  get copyWith => _CallToolResultCopyWithImpl<CallToolResult, CallToolResult>(
    this as CallToolResult,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return CallToolResultMapper.ensureInitialized().stringifyValue(
      this as CallToolResult,
    );
  }

  @override
  bool operator ==(Object other) {
    return CallToolResultMapper.ensureInitialized().equalsValue(
      this as CallToolResult,
      other,
    );
  }

  @override
  int get hashCode {
    return CallToolResultMapper.ensureInitialized().hashValue(
      this as CallToolResult,
    );
  }
}

extension CallToolResultValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CallToolResult, $Out> {
  CallToolResultCopyWith<$R, CallToolResult, $Out> get $asCallToolResult =>
      $base.as((v, t, t2) => _CallToolResultCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CallToolResultCopyWith<$R, $In extends CallToolResult, $Out>
    implements ResultCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Content, ContentCopyWith<$R, Content, Content>> get content;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get meta;
  @override
  $R call({List<Content>? content, bool? isError, Map<String, dynamic>? meta});
  CallToolResultCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CallToolResultCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CallToolResult, $Out>
    implements CallToolResultCopyWith<$R, CallToolResult, $Out> {
  _CallToolResultCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CallToolResult> $mapper =
      CallToolResultMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Content, ContentCopyWith<$R, Content, Content>>
  get content => ListCopyWith(
    $value.content,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(content: v),
  );
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
  $R call({
    List<Content>? content,
    Object? isError = $none,
    Object? meta = $none,
  }) => $apply(
    FieldCopyWithData({
      if (content != null) #content: content,
      if (isError != $none) #isError: isError,
      if (meta != $none) #meta: meta,
    }),
  );
  @override
  CallToolResult $make(CopyWithData data) => CallToolResult(
    content: data.get(#content, or: $value.content),
    isError: data.get(#isError, or: $value.isError),
    meta: data.get(#meta, or: $value.meta),
  );

  @override
  CallToolResultCopyWith<$R2, CallToolResult, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CallToolResultCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

