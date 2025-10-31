// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'billing.dart';

class BaseUsageDataMapper extends ClassMapperBase<BaseUsageData> {
  BaseUsageDataMapper._();

  static BaseUsageDataMapper? _instance;
  static BaseUsageDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BaseUsageDataMapper._());
      LlmUsageDataMapper.ensureInitialized();
      EmbedUsageDataMapper.ensureInitialized();
      RerankUsageDataMapper.ensureInitialized();
      EgressUsageDataMapper.ensureInitialized();
      FileStorageUsageDataMapper.ensureInitialized();
      DBStorageUsageDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BaseUsageData';

  static String _$id(BaseUsageData v) => v.id;
  static const Field<BaseUsageData, String> _f$id = Field(
    'id',
    _$id,
    opt: true,
  );
  static String _$orgId(BaseUsageData v) => v.orgId;
  static const Field<BaseUsageData, String> _f$orgId = Field(
    'orgId',
    _$orgId,
    key: r'org_id',
  );
  static String _$projId(BaseUsageData v) => v.projId;
  static const Field<BaseUsageData, String> _f$projId = Field(
    'projId',
    _$projId,
    key: r'proj_id',
  );
  static String _$userId(BaseUsageData v) => v.userId;
  static const Field<BaseUsageData, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static DateTime _$timestamp(BaseUsageData v) => v.timestamp;
  static const Field<BaseUsageData, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
    opt: true,
  );
  static double _$cost(BaseUsageData v) => v.cost;
  static const Field<BaseUsageData, double> _f$cost = Field('cost', _$cost);

  @override
  final MappableFields<BaseUsageData> fields = const {
    #id: _f$id,
    #orgId: _f$orgId,
    #projId: _f$projId,
    #userId: _f$userId,
    #timestamp: _f$timestamp,
    #cost: _f$cost,
  };

  static BaseUsageData _instantiate(DecodingData data) {
    return BaseUsageData(
      id: data.dec(_f$id),
      orgId: data.dec(_f$orgId),
      projId: data.dec(_f$projId),
      userId: data.dec(_f$userId),
      timestamp: data.dec(_f$timestamp),
      cost: data.dec(_f$cost),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BaseUsageData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BaseUsageData>(map);
  }

  static BaseUsageData fromJson(String json) {
    return ensureInitialized().decodeJson<BaseUsageData>(json);
  }
}

mixin BaseUsageDataMappable {
  String toJson() {
    return BaseUsageDataMapper.ensureInitialized().encodeJson<BaseUsageData>(
      this as BaseUsageData,
    );
  }

  Map<String, dynamic> toMap() {
    return BaseUsageDataMapper.ensureInitialized().encodeMap<BaseUsageData>(
      this as BaseUsageData,
    );
  }

  BaseUsageDataCopyWith<BaseUsageData, BaseUsageData, BaseUsageData>
  get copyWith => _BaseUsageDataCopyWithImpl<BaseUsageData, BaseUsageData>(
    this as BaseUsageData,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return BaseUsageDataMapper.ensureInitialized().stringifyValue(
      this as BaseUsageData,
    );
  }

  @override
  bool operator ==(Object other) {
    return BaseUsageDataMapper.ensureInitialized().equalsValue(
      this as BaseUsageData,
      other,
    );
  }

  @override
  int get hashCode {
    return BaseUsageDataMapper.ensureInitialized().hashValue(
      this as BaseUsageData,
    );
  }
}

extension BaseUsageDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BaseUsageData, $Out> {
  BaseUsageDataCopyWith<$R, BaseUsageData, $Out> get $asBaseUsageData =>
      $base.as((v, t, t2) => _BaseUsageDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BaseUsageDataCopyWith<$R, $In extends BaseUsageData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? orgId,
    String? projId,
    String? userId,
    DateTime? timestamp,
    double? cost,
  });
  BaseUsageDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BaseUsageDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BaseUsageData, $Out>
    implements BaseUsageDataCopyWith<$R, BaseUsageData, $Out> {
  _BaseUsageDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BaseUsageData> $mapper =
      BaseUsageDataMapper.ensureInitialized();
  @override
  $R call({
    Object? id = $none,
    String? orgId,
    String? projId,
    String? userId,
    Object? timestamp = $none,
    double? cost,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (orgId != null) #orgId: orgId,
      if (projId != null) #projId: projId,
      if (userId != null) #userId: userId,
      if (timestamp != $none) #timestamp: timestamp,
      if (cost != null) #cost: cost,
    }),
  );
  @override
  BaseUsageData $make(CopyWithData data) => BaseUsageData(
    id: data.get(#id, or: $value.id),
    orgId: data.get(#orgId, or: $value.orgId),
    projId: data.get(#projId, or: $value.projId),
    userId: data.get(#userId, or: $value.userId),
    timestamp: data.get(#timestamp, or: $value.timestamp),
    cost: data.get(#cost, or: $value.cost),
  );

  @override
  BaseUsageDataCopyWith<$R2, BaseUsageData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BaseUsageDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LlmUsageDataMapper extends ClassMapperBase<LlmUsageData> {
  LlmUsageDataMapper._();

  static LlmUsageDataMapper? _instance;
  static LlmUsageDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LlmUsageDataMapper._());
      BaseUsageDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LlmUsageData';

  static String _$id(LlmUsageData v) => v.id;
  static const Field<LlmUsageData, String> _f$id = Field('id', _$id, opt: true);
  static String _$orgId(LlmUsageData v) => v.orgId;
  static const Field<LlmUsageData, String> _f$orgId = Field(
    'orgId',
    _$orgId,
    key: r'org_id',
  );
  static String _$projId(LlmUsageData v) => v.projId;
  static const Field<LlmUsageData, String> _f$projId = Field(
    'projId',
    _$projId,
    key: r'proj_id',
  );
  static String _$userId(LlmUsageData v) => v.userId;
  static const Field<LlmUsageData, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static DateTime _$timestamp(LlmUsageData v) => v.timestamp;
  static const Field<LlmUsageData, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
    opt: true,
  );
  static double _$cost(LlmUsageData v) => v.cost;
  static const Field<LlmUsageData, double> _f$cost = Field('cost', _$cost);
  static String _$model(LlmUsageData v) => v.model;
  static const Field<LlmUsageData, String> _f$model = Field('model', _$model);
  static int _$inputToken(LlmUsageData v) => v.inputToken;
  static const Field<LlmUsageData, int> _f$inputToken = Field(
    'inputToken',
    _$inputToken,
    key: r'input_token',
  );
  static int _$outputToken(LlmUsageData v) => v.outputToken;
  static const Field<LlmUsageData, int> _f$outputToken = Field(
    'outputToken',
    _$outputToken,
    key: r'output_token',
  );
  static double _$inputCost(LlmUsageData v) => v.inputCost;
  static const Field<LlmUsageData, double> _f$inputCost = Field(
    'inputCost',
    _$inputCost,
    key: r'input_cost',
  );
  static double _$outputCost(LlmUsageData v) => v.outputCost;
  static const Field<LlmUsageData, double> _f$outputCost = Field(
    'outputCost',
    _$outputCost,
    key: r'output_cost',
  );

  @override
  final MappableFields<LlmUsageData> fields = const {
    #id: _f$id,
    #orgId: _f$orgId,
    #projId: _f$projId,
    #userId: _f$userId,
    #timestamp: _f$timestamp,
    #cost: _f$cost,
    #model: _f$model,
    #inputToken: _f$inputToken,
    #outputToken: _f$outputToken,
    #inputCost: _f$inputCost,
    #outputCost: _f$outputCost,
  };

  static LlmUsageData _instantiate(DecodingData data) {
    return LlmUsageData(
      id: data.dec(_f$id),
      orgId: data.dec(_f$orgId),
      projId: data.dec(_f$projId),
      userId: data.dec(_f$userId),
      timestamp: data.dec(_f$timestamp),
      cost: data.dec(_f$cost),
      model: data.dec(_f$model),
      inputToken: data.dec(_f$inputToken),
      outputToken: data.dec(_f$outputToken),
      inputCost: data.dec(_f$inputCost),
      outputCost: data.dec(_f$outputCost),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LlmUsageData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LlmUsageData>(map);
  }

  static LlmUsageData fromJson(String json) {
    return ensureInitialized().decodeJson<LlmUsageData>(json);
  }
}

mixin LlmUsageDataMappable {
  String toJson() {
    return LlmUsageDataMapper.ensureInitialized().encodeJson<LlmUsageData>(
      this as LlmUsageData,
    );
  }

  Map<String, dynamic> toMap() {
    return LlmUsageDataMapper.ensureInitialized().encodeMap<LlmUsageData>(
      this as LlmUsageData,
    );
  }

  LlmUsageDataCopyWith<LlmUsageData, LlmUsageData, LlmUsageData> get copyWith =>
      _LlmUsageDataCopyWithImpl<LlmUsageData, LlmUsageData>(
        this as LlmUsageData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LlmUsageDataMapper.ensureInitialized().stringifyValue(
      this as LlmUsageData,
    );
  }

  @override
  bool operator ==(Object other) {
    return LlmUsageDataMapper.ensureInitialized().equalsValue(
      this as LlmUsageData,
      other,
    );
  }

  @override
  int get hashCode {
    return LlmUsageDataMapper.ensureInitialized().hashValue(
      this as LlmUsageData,
    );
  }
}

extension LlmUsageDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LlmUsageData, $Out> {
  LlmUsageDataCopyWith<$R, LlmUsageData, $Out> get $asLlmUsageData =>
      $base.as((v, t, t2) => _LlmUsageDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LlmUsageDataCopyWith<$R, $In extends LlmUsageData, $Out>
    implements BaseUsageDataCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    String? orgId,
    String? projId,
    String? userId,
    DateTime? timestamp,
    double? cost,
    String? model,
    int? inputToken,
    int? outputToken,
    double? inputCost,
    double? outputCost,
  });
  LlmUsageDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LlmUsageDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LlmUsageData, $Out>
    implements LlmUsageDataCopyWith<$R, LlmUsageData, $Out> {
  _LlmUsageDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LlmUsageData> $mapper =
      LlmUsageDataMapper.ensureInitialized();
  @override
  $R call({
    Object? id = $none,
    String? orgId,
    String? projId,
    String? userId,
    Object? timestamp = $none,
    double? cost,
    String? model,
    int? inputToken,
    int? outputToken,
    double? inputCost,
    double? outputCost,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (orgId != null) #orgId: orgId,
      if (projId != null) #projId: projId,
      if (userId != null) #userId: userId,
      if (timestamp != $none) #timestamp: timestamp,
      if (cost != null) #cost: cost,
      if (model != null) #model: model,
      if (inputToken != null) #inputToken: inputToken,
      if (outputToken != null) #outputToken: outputToken,
      if (inputCost != null) #inputCost: inputCost,
      if (outputCost != null) #outputCost: outputCost,
    }),
  );
  @override
  LlmUsageData $make(CopyWithData data) => LlmUsageData(
    id: data.get(#id, or: $value.id),
    orgId: data.get(#orgId, or: $value.orgId),
    projId: data.get(#projId, or: $value.projId),
    userId: data.get(#userId, or: $value.userId),
    timestamp: data.get(#timestamp, or: $value.timestamp),
    cost: data.get(#cost, or: $value.cost),
    model: data.get(#model, or: $value.model),
    inputToken: data.get(#inputToken, or: $value.inputToken),
    outputToken: data.get(#outputToken, or: $value.outputToken),
    inputCost: data.get(#inputCost, or: $value.inputCost),
    outputCost: data.get(#outputCost, or: $value.outputCost),
  );

  @override
  LlmUsageDataCopyWith<$R2, LlmUsageData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LlmUsageDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EmbedUsageDataMapper extends ClassMapperBase<EmbedUsageData> {
  EmbedUsageDataMapper._();

  static EmbedUsageDataMapper? _instance;
  static EmbedUsageDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmbedUsageDataMapper._());
      BaseUsageDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EmbedUsageData';

  static String _$id(EmbedUsageData v) => v.id;
  static const Field<EmbedUsageData, String> _f$id = Field(
    'id',
    _$id,
    opt: true,
  );
  static String _$orgId(EmbedUsageData v) => v.orgId;
  static const Field<EmbedUsageData, String> _f$orgId = Field(
    'orgId',
    _$orgId,
    key: r'org_id',
  );
  static String _$projId(EmbedUsageData v) => v.projId;
  static const Field<EmbedUsageData, String> _f$projId = Field(
    'projId',
    _$projId,
    key: r'proj_id',
  );
  static String _$userId(EmbedUsageData v) => v.userId;
  static const Field<EmbedUsageData, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static DateTime _$timestamp(EmbedUsageData v) => v.timestamp;
  static const Field<EmbedUsageData, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
    opt: true,
  );
  static double _$cost(EmbedUsageData v) => v.cost;
  static const Field<EmbedUsageData, double> _f$cost = Field('cost', _$cost);
  static String _$model(EmbedUsageData v) => v.model;
  static const Field<EmbedUsageData, String> _f$model = Field('model', _$model);
  static int _$token(EmbedUsageData v) => v.token;
  static const Field<EmbedUsageData, int> _f$token = Field('token', _$token);

  @override
  final MappableFields<EmbedUsageData> fields = const {
    #id: _f$id,
    #orgId: _f$orgId,
    #projId: _f$projId,
    #userId: _f$userId,
    #timestamp: _f$timestamp,
    #cost: _f$cost,
    #model: _f$model,
    #token: _f$token,
  };

  static EmbedUsageData _instantiate(DecodingData data) {
    return EmbedUsageData(
      id: data.dec(_f$id),
      orgId: data.dec(_f$orgId),
      projId: data.dec(_f$projId),
      userId: data.dec(_f$userId),
      timestamp: data.dec(_f$timestamp),
      cost: data.dec(_f$cost),
      model: data.dec(_f$model),
      token: data.dec(_f$token),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EmbedUsageData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmbedUsageData>(map);
  }

  static EmbedUsageData fromJson(String json) {
    return ensureInitialized().decodeJson<EmbedUsageData>(json);
  }
}

mixin EmbedUsageDataMappable {
  String toJson() {
    return EmbedUsageDataMapper.ensureInitialized().encodeJson<EmbedUsageData>(
      this as EmbedUsageData,
    );
  }

  Map<String, dynamic> toMap() {
    return EmbedUsageDataMapper.ensureInitialized().encodeMap<EmbedUsageData>(
      this as EmbedUsageData,
    );
  }

  EmbedUsageDataCopyWith<EmbedUsageData, EmbedUsageData, EmbedUsageData>
  get copyWith => _EmbedUsageDataCopyWithImpl<EmbedUsageData, EmbedUsageData>(
    this as EmbedUsageData,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return EmbedUsageDataMapper.ensureInitialized().stringifyValue(
      this as EmbedUsageData,
    );
  }

  @override
  bool operator ==(Object other) {
    return EmbedUsageDataMapper.ensureInitialized().equalsValue(
      this as EmbedUsageData,
      other,
    );
  }

  @override
  int get hashCode {
    return EmbedUsageDataMapper.ensureInitialized().hashValue(
      this as EmbedUsageData,
    );
  }
}

extension EmbedUsageDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmbedUsageData, $Out> {
  EmbedUsageDataCopyWith<$R, EmbedUsageData, $Out> get $asEmbedUsageData =>
      $base.as((v, t, t2) => _EmbedUsageDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EmbedUsageDataCopyWith<$R, $In extends EmbedUsageData, $Out>
    implements BaseUsageDataCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    String? orgId,
    String? projId,
    String? userId,
    DateTime? timestamp,
    double? cost,
    String? model,
    int? token,
  });
  EmbedUsageDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EmbedUsageDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmbedUsageData, $Out>
    implements EmbedUsageDataCopyWith<$R, EmbedUsageData, $Out> {
  _EmbedUsageDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmbedUsageData> $mapper =
      EmbedUsageDataMapper.ensureInitialized();
  @override
  $R call({
    Object? id = $none,
    String? orgId,
    String? projId,
    String? userId,
    Object? timestamp = $none,
    double? cost,
    String? model,
    int? token,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (orgId != null) #orgId: orgId,
      if (projId != null) #projId: projId,
      if (userId != null) #userId: userId,
      if (timestamp != $none) #timestamp: timestamp,
      if (cost != null) #cost: cost,
      if (model != null) #model: model,
      if (token != null) #token: token,
    }),
  );
  @override
  EmbedUsageData $make(CopyWithData data) => EmbedUsageData(
    id: data.get(#id, or: $value.id),
    orgId: data.get(#orgId, or: $value.orgId),
    projId: data.get(#projId, or: $value.projId),
    userId: data.get(#userId, or: $value.userId),
    timestamp: data.get(#timestamp, or: $value.timestamp),
    cost: data.get(#cost, or: $value.cost),
    model: data.get(#model, or: $value.model),
    token: data.get(#token, or: $value.token),
  );

  @override
  EmbedUsageDataCopyWith<$R2, EmbedUsageData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EmbedUsageDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RerankUsageDataMapper extends ClassMapperBase<RerankUsageData> {
  RerankUsageDataMapper._();

  static RerankUsageDataMapper? _instance;
  static RerankUsageDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RerankUsageDataMapper._());
      BaseUsageDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RerankUsageData';

  static String _$id(RerankUsageData v) => v.id;
  static const Field<RerankUsageData, String> _f$id = Field(
    'id',
    _$id,
    opt: true,
  );
  static String _$orgId(RerankUsageData v) => v.orgId;
  static const Field<RerankUsageData, String> _f$orgId = Field(
    'orgId',
    _$orgId,
    key: r'org_id',
  );
  static String _$projId(RerankUsageData v) => v.projId;
  static const Field<RerankUsageData, String> _f$projId = Field(
    'projId',
    _$projId,
    key: r'proj_id',
  );
  static String _$userId(RerankUsageData v) => v.userId;
  static const Field<RerankUsageData, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static DateTime _$timestamp(RerankUsageData v) => v.timestamp;
  static const Field<RerankUsageData, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
    opt: true,
  );
  static double _$cost(RerankUsageData v) => v.cost;
  static const Field<RerankUsageData, double> _f$cost = Field('cost', _$cost);
  static String _$model(RerankUsageData v) => v.model;
  static const Field<RerankUsageData, String> _f$model = Field(
    'model',
    _$model,
  );
  static int _$numberOfSearch(RerankUsageData v) => v.numberOfSearch;
  static const Field<RerankUsageData, int> _f$numberOfSearch = Field(
    'numberOfSearch',
    _$numberOfSearch,
    key: r'number_of_search',
  );

  @override
  final MappableFields<RerankUsageData> fields = const {
    #id: _f$id,
    #orgId: _f$orgId,
    #projId: _f$projId,
    #userId: _f$userId,
    #timestamp: _f$timestamp,
    #cost: _f$cost,
    #model: _f$model,
    #numberOfSearch: _f$numberOfSearch,
  };

  static RerankUsageData _instantiate(DecodingData data) {
    return RerankUsageData(
      id: data.dec(_f$id),
      orgId: data.dec(_f$orgId),
      projId: data.dec(_f$projId),
      userId: data.dec(_f$userId),
      timestamp: data.dec(_f$timestamp),
      cost: data.dec(_f$cost),
      model: data.dec(_f$model),
      numberOfSearch: data.dec(_f$numberOfSearch),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RerankUsageData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RerankUsageData>(map);
  }

  static RerankUsageData fromJson(String json) {
    return ensureInitialized().decodeJson<RerankUsageData>(json);
  }
}

mixin RerankUsageDataMappable {
  String toJson() {
    return RerankUsageDataMapper.ensureInitialized()
        .encodeJson<RerankUsageData>(this as RerankUsageData);
  }

  Map<String, dynamic> toMap() {
    return RerankUsageDataMapper.ensureInitialized().encodeMap<RerankUsageData>(
      this as RerankUsageData,
    );
  }

  RerankUsageDataCopyWith<RerankUsageData, RerankUsageData, RerankUsageData>
  get copyWith =>
      _RerankUsageDataCopyWithImpl<RerankUsageData, RerankUsageData>(
        this as RerankUsageData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RerankUsageDataMapper.ensureInitialized().stringifyValue(
      this as RerankUsageData,
    );
  }

  @override
  bool operator ==(Object other) {
    return RerankUsageDataMapper.ensureInitialized().equalsValue(
      this as RerankUsageData,
      other,
    );
  }

  @override
  int get hashCode {
    return RerankUsageDataMapper.ensureInitialized().hashValue(
      this as RerankUsageData,
    );
  }
}

extension RerankUsageDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RerankUsageData, $Out> {
  RerankUsageDataCopyWith<$R, RerankUsageData, $Out> get $asRerankUsageData =>
      $base.as((v, t, t2) => _RerankUsageDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RerankUsageDataCopyWith<$R, $In extends RerankUsageData, $Out>
    implements BaseUsageDataCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    String? orgId,
    String? projId,
    String? userId,
    DateTime? timestamp,
    double? cost,
    String? model,
    int? numberOfSearch,
  });
  RerankUsageDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RerankUsageDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RerankUsageData, $Out>
    implements RerankUsageDataCopyWith<$R, RerankUsageData, $Out> {
  _RerankUsageDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RerankUsageData> $mapper =
      RerankUsageDataMapper.ensureInitialized();
  @override
  $R call({
    Object? id = $none,
    String? orgId,
    String? projId,
    String? userId,
    Object? timestamp = $none,
    double? cost,
    String? model,
    int? numberOfSearch,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (orgId != null) #orgId: orgId,
      if (projId != null) #projId: projId,
      if (userId != null) #userId: userId,
      if (timestamp != $none) #timestamp: timestamp,
      if (cost != null) #cost: cost,
      if (model != null) #model: model,
      if (numberOfSearch != null) #numberOfSearch: numberOfSearch,
    }),
  );
  @override
  RerankUsageData $make(CopyWithData data) => RerankUsageData(
    id: data.get(#id, or: $value.id),
    orgId: data.get(#orgId, or: $value.orgId),
    projId: data.get(#projId, or: $value.projId),
    userId: data.get(#userId, or: $value.userId),
    timestamp: data.get(#timestamp, or: $value.timestamp),
    cost: data.get(#cost, or: $value.cost),
    model: data.get(#model, or: $value.model),
    numberOfSearch: data.get(#numberOfSearch, or: $value.numberOfSearch),
  );

  @override
  RerankUsageDataCopyWith<$R2, RerankUsageData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RerankUsageDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EgressUsageDataMapper extends ClassMapperBase<EgressUsageData> {
  EgressUsageDataMapper._();

  static EgressUsageDataMapper? _instance;
  static EgressUsageDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EgressUsageDataMapper._());
      BaseUsageDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EgressUsageData';

  static String _$id(EgressUsageData v) => v.id;
  static const Field<EgressUsageData, String> _f$id = Field(
    'id',
    _$id,
    opt: true,
  );
  static String _$orgId(EgressUsageData v) => v.orgId;
  static const Field<EgressUsageData, String> _f$orgId = Field(
    'orgId',
    _$orgId,
    key: r'org_id',
  );
  static String _$projId(EgressUsageData v) => v.projId;
  static const Field<EgressUsageData, String> _f$projId = Field(
    'projId',
    _$projId,
    key: r'proj_id',
  );
  static String _$userId(EgressUsageData v) => v.userId;
  static const Field<EgressUsageData, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static DateTime _$timestamp(EgressUsageData v) => v.timestamp;
  static const Field<EgressUsageData, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
    opt: true,
  );
  static double _$cost(EgressUsageData v) => v.cost;
  static const Field<EgressUsageData, double> _f$cost = Field('cost', _$cost);
  static double _$amountGib(EgressUsageData v) => v.amountGib;
  static const Field<EgressUsageData, double> _f$amountGib = Field(
    'amountGib',
    _$amountGib,
    key: r'amount_gib',
  );

  @override
  final MappableFields<EgressUsageData> fields = const {
    #id: _f$id,
    #orgId: _f$orgId,
    #projId: _f$projId,
    #userId: _f$userId,
    #timestamp: _f$timestamp,
    #cost: _f$cost,
    #amountGib: _f$amountGib,
  };

  static EgressUsageData _instantiate(DecodingData data) {
    return EgressUsageData(
      id: data.dec(_f$id),
      orgId: data.dec(_f$orgId),
      projId: data.dec(_f$projId),
      userId: data.dec(_f$userId),
      timestamp: data.dec(_f$timestamp),
      cost: data.dec(_f$cost),
      amountGib: data.dec(_f$amountGib),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EgressUsageData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EgressUsageData>(map);
  }

  static EgressUsageData fromJson(String json) {
    return ensureInitialized().decodeJson<EgressUsageData>(json);
  }
}

mixin EgressUsageDataMappable {
  String toJson() {
    return EgressUsageDataMapper.ensureInitialized()
        .encodeJson<EgressUsageData>(this as EgressUsageData);
  }

  Map<String, dynamic> toMap() {
    return EgressUsageDataMapper.ensureInitialized().encodeMap<EgressUsageData>(
      this as EgressUsageData,
    );
  }

  EgressUsageDataCopyWith<EgressUsageData, EgressUsageData, EgressUsageData>
  get copyWith =>
      _EgressUsageDataCopyWithImpl<EgressUsageData, EgressUsageData>(
        this as EgressUsageData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EgressUsageDataMapper.ensureInitialized().stringifyValue(
      this as EgressUsageData,
    );
  }

  @override
  bool operator ==(Object other) {
    return EgressUsageDataMapper.ensureInitialized().equalsValue(
      this as EgressUsageData,
      other,
    );
  }

  @override
  int get hashCode {
    return EgressUsageDataMapper.ensureInitialized().hashValue(
      this as EgressUsageData,
    );
  }
}

extension EgressUsageDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EgressUsageData, $Out> {
  EgressUsageDataCopyWith<$R, EgressUsageData, $Out> get $asEgressUsageData =>
      $base.as((v, t, t2) => _EgressUsageDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EgressUsageDataCopyWith<$R, $In extends EgressUsageData, $Out>
    implements BaseUsageDataCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    String? orgId,
    String? projId,
    String? userId,
    DateTime? timestamp,
    double? cost,
    double? amountGib,
  });
  EgressUsageDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EgressUsageDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EgressUsageData, $Out>
    implements EgressUsageDataCopyWith<$R, EgressUsageData, $Out> {
  _EgressUsageDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EgressUsageData> $mapper =
      EgressUsageDataMapper.ensureInitialized();
  @override
  $R call({
    Object? id = $none,
    String? orgId,
    String? projId,
    String? userId,
    Object? timestamp = $none,
    double? cost,
    double? amountGib,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (orgId != null) #orgId: orgId,
      if (projId != null) #projId: projId,
      if (userId != null) #userId: userId,
      if (timestamp != $none) #timestamp: timestamp,
      if (cost != null) #cost: cost,
      if (amountGib != null) #amountGib: amountGib,
    }),
  );
  @override
  EgressUsageData $make(CopyWithData data) => EgressUsageData(
    id: data.get(#id, or: $value.id),
    orgId: data.get(#orgId, or: $value.orgId),
    projId: data.get(#projId, or: $value.projId),
    userId: data.get(#userId, or: $value.userId),
    timestamp: data.get(#timestamp, or: $value.timestamp),
    cost: data.get(#cost, or: $value.cost),
    amountGib: data.get(#amountGib, or: $value.amountGib),
  );

  @override
  EgressUsageDataCopyWith<$R2, EgressUsageData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EgressUsageDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FileStorageUsageDataMapper extends ClassMapperBase<FileStorageUsageData> {
  FileStorageUsageDataMapper._();

  static FileStorageUsageDataMapper? _instance;
  static FileStorageUsageDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FileStorageUsageDataMapper._());
      BaseUsageDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FileStorageUsageData';

  static String _$id(FileStorageUsageData v) => v.id;
  static const Field<FileStorageUsageData, String> _f$id = Field(
    'id',
    _$id,
    opt: true,
  );
  static String _$orgId(FileStorageUsageData v) => v.orgId;
  static const Field<FileStorageUsageData, String> _f$orgId = Field(
    'orgId',
    _$orgId,
    key: r'org_id',
  );
  static String _$projId(FileStorageUsageData v) => v.projId;
  static const Field<FileStorageUsageData, String> _f$projId = Field(
    'projId',
    _$projId,
    key: r'proj_id',
  );
  static String _$userId(FileStorageUsageData v) => v.userId;
  static const Field<FileStorageUsageData, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static DateTime _$timestamp(FileStorageUsageData v) => v.timestamp;
  static const Field<FileStorageUsageData, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
    opt: true,
  );
  static double _$cost(FileStorageUsageData v) => v.cost;
  static const Field<FileStorageUsageData, double> _f$cost = Field(
    'cost',
    _$cost,
  );
  static double _$amountGib(FileStorageUsageData v) => v.amountGib;
  static const Field<FileStorageUsageData, double> _f$amountGib = Field(
    'amountGib',
    _$amountGib,
    key: r'amount_gib',
  );
  static double _$snapshotGib(FileStorageUsageData v) => v.snapshotGib;
  static const Field<FileStorageUsageData, double> _f$snapshotGib = Field(
    'snapshotGib',
    _$snapshotGib,
    key: r'snapshot_gib',
  );

  @override
  final MappableFields<FileStorageUsageData> fields = const {
    #id: _f$id,
    #orgId: _f$orgId,
    #projId: _f$projId,
    #userId: _f$userId,
    #timestamp: _f$timestamp,
    #cost: _f$cost,
    #amountGib: _f$amountGib,
    #snapshotGib: _f$snapshotGib,
  };

  static FileStorageUsageData _instantiate(DecodingData data) {
    return FileStorageUsageData(
      id: data.dec(_f$id),
      orgId: data.dec(_f$orgId),
      projId: data.dec(_f$projId),
      userId: data.dec(_f$userId),
      timestamp: data.dec(_f$timestamp),
      cost: data.dec(_f$cost),
      amountGib: data.dec(_f$amountGib),
      snapshotGib: data.dec(_f$snapshotGib),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FileStorageUsageData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FileStorageUsageData>(map);
  }

  static FileStorageUsageData fromJson(String json) {
    return ensureInitialized().decodeJson<FileStorageUsageData>(json);
  }
}

mixin FileStorageUsageDataMappable {
  String toJson() {
    return FileStorageUsageDataMapper.ensureInitialized()
        .encodeJson<FileStorageUsageData>(this as FileStorageUsageData);
  }

  Map<String, dynamic> toMap() {
    return FileStorageUsageDataMapper.ensureInitialized()
        .encodeMap<FileStorageUsageData>(this as FileStorageUsageData);
  }

  FileStorageUsageDataCopyWith<
    FileStorageUsageData,
    FileStorageUsageData,
    FileStorageUsageData
  >
  get copyWith =>
      _FileStorageUsageDataCopyWithImpl<
        FileStorageUsageData,
        FileStorageUsageData
      >(this as FileStorageUsageData, $identity, $identity);
  @override
  String toString() {
    return FileStorageUsageDataMapper.ensureInitialized().stringifyValue(
      this as FileStorageUsageData,
    );
  }

  @override
  bool operator ==(Object other) {
    return FileStorageUsageDataMapper.ensureInitialized().equalsValue(
      this as FileStorageUsageData,
      other,
    );
  }

  @override
  int get hashCode {
    return FileStorageUsageDataMapper.ensureInitialized().hashValue(
      this as FileStorageUsageData,
    );
  }
}

extension FileStorageUsageDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FileStorageUsageData, $Out> {
  FileStorageUsageDataCopyWith<$R, FileStorageUsageData, $Out>
  get $asFileStorageUsageData => $base.as(
    (v, t, t2) => _FileStorageUsageDataCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FileStorageUsageDataCopyWith<
  $R,
  $In extends FileStorageUsageData,
  $Out
>
    implements BaseUsageDataCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    String? orgId,
    String? projId,
    String? userId,
    DateTime? timestamp,
    double? cost,
    double? amountGib,
    double? snapshotGib,
  });
  FileStorageUsageDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FileStorageUsageDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FileStorageUsageData, $Out>
    implements FileStorageUsageDataCopyWith<$R, FileStorageUsageData, $Out> {
  _FileStorageUsageDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FileStorageUsageData> $mapper =
      FileStorageUsageDataMapper.ensureInitialized();
  @override
  $R call({
    Object? id = $none,
    String? orgId,
    String? projId,
    String? userId,
    Object? timestamp = $none,
    double? cost,
    double? amountGib,
    double? snapshotGib,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (orgId != null) #orgId: orgId,
      if (projId != null) #projId: projId,
      if (userId != null) #userId: userId,
      if (timestamp != $none) #timestamp: timestamp,
      if (cost != null) #cost: cost,
      if (amountGib != null) #amountGib: amountGib,
      if (snapshotGib != null) #snapshotGib: snapshotGib,
    }),
  );
  @override
  FileStorageUsageData $make(CopyWithData data) => FileStorageUsageData(
    id: data.get(#id, or: $value.id),
    orgId: data.get(#orgId, or: $value.orgId),
    projId: data.get(#projId, or: $value.projId),
    userId: data.get(#userId, or: $value.userId),
    timestamp: data.get(#timestamp, or: $value.timestamp),
    cost: data.get(#cost, or: $value.cost),
    amountGib: data.get(#amountGib, or: $value.amountGib),
    snapshotGib: data.get(#snapshotGib, or: $value.snapshotGib),
  );

  @override
  FileStorageUsageDataCopyWith<$R2, FileStorageUsageData, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FileStorageUsageDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DBStorageUsageDataMapper extends ClassMapperBase<DBStorageUsageData> {
  DBStorageUsageDataMapper._();

  static DBStorageUsageDataMapper? _instance;
  static DBStorageUsageDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DBStorageUsageDataMapper._());
      BaseUsageDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DBStorageUsageData';

  static String _$id(DBStorageUsageData v) => v.id;
  static const Field<DBStorageUsageData, String> _f$id = Field(
    'id',
    _$id,
    opt: true,
  );
  static String _$orgId(DBStorageUsageData v) => v.orgId;
  static const Field<DBStorageUsageData, String> _f$orgId = Field(
    'orgId',
    _$orgId,
    key: r'org_id',
  );
  static String _$projId(DBStorageUsageData v) => v.projId;
  static const Field<DBStorageUsageData, String> _f$projId = Field(
    'projId',
    _$projId,
    key: r'proj_id',
  );
  static String _$userId(DBStorageUsageData v) => v.userId;
  static const Field<DBStorageUsageData, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );
  static DateTime _$timestamp(DBStorageUsageData v) => v.timestamp;
  static const Field<DBStorageUsageData, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
    opt: true,
  );
  static double _$cost(DBStorageUsageData v) => v.cost;
  static const Field<DBStorageUsageData, double> _f$cost = Field(
    'cost',
    _$cost,
  );
  static double _$amountGib(DBStorageUsageData v) => v.amountGib;
  static const Field<DBStorageUsageData, double> _f$amountGib = Field(
    'amountGib',
    _$amountGib,
    key: r'amount_gib',
  );
  static double _$snapshotGib(DBStorageUsageData v) => v.snapshotGib;
  static const Field<DBStorageUsageData, double> _f$snapshotGib = Field(
    'snapshotGib',
    _$snapshotGib,
    key: r'snapshot_gib',
  );

  @override
  final MappableFields<DBStorageUsageData> fields = const {
    #id: _f$id,
    #orgId: _f$orgId,
    #projId: _f$projId,
    #userId: _f$userId,
    #timestamp: _f$timestamp,
    #cost: _f$cost,
    #amountGib: _f$amountGib,
    #snapshotGib: _f$snapshotGib,
  };

  static DBStorageUsageData _instantiate(DecodingData data) {
    return DBStorageUsageData(
      id: data.dec(_f$id),
      orgId: data.dec(_f$orgId),
      projId: data.dec(_f$projId),
      userId: data.dec(_f$userId),
      timestamp: data.dec(_f$timestamp),
      cost: data.dec(_f$cost),
      amountGib: data.dec(_f$amountGib),
      snapshotGib: data.dec(_f$snapshotGib),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DBStorageUsageData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DBStorageUsageData>(map);
  }

  static DBStorageUsageData fromJson(String json) {
    return ensureInitialized().decodeJson<DBStorageUsageData>(json);
  }
}

mixin DBStorageUsageDataMappable {
  String toJson() {
    return DBStorageUsageDataMapper.ensureInitialized()
        .encodeJson<DBStorageUsageData>(this as DBStorageUsageData);
  }

  Map<String, dynamic> toMap() {
    return DBStorageUsageDataMapper.ensureInitialized()
        .encodeMap<DBStorageUsageData>(this as DBStorageUsageData);
  }

  DBStorageUsageDataCopyWith<
    DBStorageUsageData,
    DBStorageUsageData,
    DBStorageUsageData
  >
  get copyWith =>
      _DBStorageUsageDataCopyWithImpl<DBStorageUsageData, DBStorageUsageData>(
        this as DBStorageUsageData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DBStorageUsageDataMapper.ensureInitialized().stringifyValue(
      this as DBStorageUsageData,
    );
  }

  @override
  bool operator ==(Object other) {
    return DBStorageUsageDataMapper.ensureInitialized().equalsValue(
      this as DBStorageUsageData,
      other,
    );
  }

  @override
  int get hashCode {
    return DBStorageUsageDataMapper.ensureInitialized().hashValue(
      this as DBStorageUsageData,
    );
  }
}

extension DBStorageUsageDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DBStorageUsageData, $Out> {
  DBStorageUsageDataCopyWith<$R, DBStorageUsageData, $Out>
  get $asDBStorageUsageData => $base.as(
    (v, t, t2) => _DBStorageUsageDataCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class DBStorageUsageDataCopyWith<
  $R,
  $In extends DBStorageUsageData,
  $Out
>
    implements BaseUsageDataCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? id,
    String? orgId,
    String? projId,
    String? userId,
    DateTime? timestamp,
    double? cost,
    double? amountGib,
    double? snapshotGib,
  });
  DBStorageUsageDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DBStorageUsageDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DBStorageUsageData, $Out>
    implements DBStorageUsageDataCopyWith<$R, DBStorageUsageData, $Out> {
  _DBStorageUsageDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DBStorageUsageData> $mapper =
      DBStorageUsageDataMapper.ensureInitialized();
  @override
  $R call({
    Object? id = $none,
    String? orgId,
    String? projId,
    String? userId,
    Object? timestamp = $none,
    double? cost,
    double? amountGib,
    double? snapshotGib,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (orgId != null) #orgId: orgId,
      if (projId != null) #projId: projId,
      if (userId != null) #userId: userId,
      if (timestamp != $none) #timestamp: timestamp,
      if (cost != null) #cost: cost,
      if (amountGib != null) #amountGib: amountGib,
      if (snapshotGib != null) #snapshotGib: snapshotGib,
    }),
  );
  @override
  DBStorageUsageData $make(CopyWithData data) => DBStorageUsageData(
    id: data.get(#id, or: $value.id),
    orgId: data.get(#orgId, or: $value.orgId),
    projId: data.get(#projId, or: $value.projId),
    userId: data.get(#userId, or: $value.userId),
    timestamp: data.get(#timestamp, or: $value.timestamp),
    cost: data.get(#cost, or: $value.cost),
    amountGib: data.get(#amountGib, or: $value.amountGib),
    snapshotGib: data.get(#snapshotGib, or: $value.snapshotGib),
  );

  @override
  DBStorageUsageDataCopyWith<$R2, DBStorageUsageData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DBStorageUsageDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UsageDataMapper extends ClassMapperBase<UsageData> {
  UsageDataMapper._();

  static UsageDataMapper? _instance;
  static UsageDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UsageDataMapper._());
      LlmUsageDataMapper.ensureInitialized();
      EmbedUsageDataMapper.ensureInitialized();
      RerankUsageDataMapper.ensureInitialized();
      EgressUsageDataMapper.ensureInitialized();
      FileStorageUsageDataMapper.ensureInitialized();
      DBStorageUsageDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UsageData';

  static List<LlmUsageData> _$llmUsage(UsageData v) => v.llmUsage;
  static const Field<UsageData, List<LlmUsageData>> _f$llmUsage = Field(
    'llmUsage',
    _$llmUsage,
    key: r'llm_usage',
    opt: true,
    def: const [],
  );
  static List<EmbedUsageData> _$embedUsage(UsageData v) => v.embedUsage;
  static const Field<UsageData, List<EmbedUsageData>> _f$embedUsage = Field(
    'embedUsage',
    _$embedUsage,
    key: r'embed_usage',
    opt: true,
    def: const [],
  );
  static List<RerankUsageData> _$rerankUsage(UsageData v) => v.rerankUsage;
  static const Field<UsageData, List<RerankUsageData>> _f$rerankUsage = Field(
    'rerankUsage',
    _$rerankUsage,
    key: r'rerank_usage',
    opt: true,
    def: const [],
  );
  static List<EgressUsageData> _$egressUsage(UsageData v) => v.egressUsage;
  static const Field<UsageData, List<EgressUsageData>> _f$egressUsage = Field(
    'egressUsage',
    _$egressUsage,
    key: r'egress_usage',
    opt: true,
    def: const [],
  );
  static List<FileStorageUsageData> _$fileStorageUsage(UsageData v) =>
      v.fileStorageUsage;
  static const Field<UsageData, List<FileStorageUsageData>>
  _f$fileStorageUsage = Field(
    'fileStorageUsage',
    _$fileStorageUsage,
    key: r'file_storage_usage',
    opt: true,
    def: const [],
  );
  static List<DBStorageUsageData> _$dbStorageUsage(UsageData v) =>
      v.dbStorageUsage;
  static const Field<UsageData, List<DBStorageUsageData>> _f$dbStorageUsage =
      Field(
        'dbStorageUsage',
        _$dbStorageUsage,
        key: r'db_storage_usage',
        opt: true,
        def: const [],
      );
  static int _$totalUsageEvents(UsageData v) => v.totalUsageEvents;
  static const Field<UsageData, int> _f$totalUsageEvents = Field(
    'totalUsageEvents',
    _$totalUsageEvents,
    key: r'total_usage_events',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<UsageData> fields = const {
    #llmUsage: _f$llmUsage,
    #embedUsage: _f$embedUsage,
    #rerankUsage: _f$rerankUsage,
    #egressUsage: _f$egressUsage,
    #fileStorageUsage: _f$fileStorageUsage,
    #dbStorageUsage: _f$dbStorageUsage,
    #totalUsageEvents: _f$totalUsageEvents,
  };

  static UsageData _instantiate(DecodingData data) {
    return UsageData(
      llmUsage: data.dec(_f$llmUsage),
      embedUsage: data.dec(_f$embedUsage),
      rerankUsage: data.dec(_f$rerankUsage),
      egressUsage: data.dec(_f$egressUsage),
      fileStorageUsage: data.dec(_f$fileStorageUsage),
      dbStorageUsage: data.dec(_f$dbStorageUsage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UsageData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UsageData>(map);
  }

  static UsageData fromJson(String json) {
    return ensureInitialized().decodeJson<UsageData>(json);
  }
}

mixin UsageDataMappable {
  String toJson() {
    return UsageDataMapper.ensureInitialized().encodeJson<UsageData>(
      this as UsageData,
    );
  }

  Map<String, dynamic> toMap() {
    return UsageDataMapper.ensureInitialized().encodeMap<UsageData>(
      this as UsageData,
    );
  }

  UsageDataCopyWith<UsageData, UsageData, UsageData> get copyWith =>
      _UsageDataCopyWithImpl<UsageData, UsageData>(
        this as UsageData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UsageDataMapper.ensureInitialized().stringifyValue(
      this as UsageData,
    );
  }

  @override
  bool operator ==(Object other) {
    return UsageDataMapper.ensureInitialized().equalsValue(
      this as UsageData,
      other,
    );
  }

  @override
  int get hashCode {
    return UsageDataMapper.ensureInitialized().hashValue(this as UsageData);
  }
}

extension UsageDataValueCopy<$R, $Out> on ObjectCopyWith<$R, UsageData, $Out> {
  UsageDataCopyWith<$R, UsageData, $Out> get $asUsageData =>
      $base.as((v, t, t2) => _UsageDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UsageDataCopyWith<$R, $In extends UsageData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    LlmUsageData,
    LlmUsageDataCopyWith<$R, LlmUsageData, LlmUsageData>
  >
  get llmUsage;
  ListCopyWith<
    $R,
    EmbedUsageData,
    EmbedUsageDataCopyWith<$R, EmbedUsageData, EmbedUsageData>
  >
  get embedUsage;
  ListCopyWith<
    $R,
    RerankUsageData,
    RerankUsageDataCopyWith<$R, RerankUsageData, RerankUsageData>
  >
  get rerankUsage;
  ListCopyWith<
    $R,
    EgressUsageData,
    EgressUsageDataCopyWith<$R, EgressUsageData, EgressUsageData>
  >
  get egressUsage;
  ListCopyWith<
    $R,
    FileStorageUsageData,
    FileStorageUsageDataCopyWith<$R, FileStorageUsageData, FileStorageUsageData>
  >
  get fileStorageUsage;
  ListCopyWith<
    $R,
    DBStorageUsageData,
    DBStorageUsageDataCopyWith<$R, DBStorageUsageData, DBStorageUsageData>
  >
  get dbStorageUsage;
  $R call({
    List<LlmUsageData>? llmUsage,
    List<EmbedUsageData>? embedUsage,
    List<RerankUsageData>? rerankUsage,
    List<EgressUsageData>? egressUsage,
    List<FileStorageUsageData>? fileStorageUsage,
    List<DBStorageUsageData>? dbStorageUsage,
  });
  UsageDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UsageDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UsageData, $Out>
    implements UsageDataCopyWith<$R, UsageData, $Out> {
  _UsageDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UsageData> $mapper =
      UsageDataMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    LlmUsageData,
    LlmUsageDataCopyWith<$R, LlmUsageData, LlmUsageData>
  >
  get llmUsage => ListCopyWith(
    $value.llmUsage,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(llmUsage: v),
  );
  @override
  ListCopyWith<
    $R,
    EmbedUsageData,
    EmbedUsageDataCopyWith<$R, EmbedUsageData, EmbedUsageData>
  >
  get embedUsage => ListCopyWith(
    $value.embedUsage,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(embedUsage: v),
  );
  @override
  ListCopyWith<
    $R,
    RerankUsageData,
    RerankUsageDataCopyWith<$R, RerankUsageData, RerankUsageData>
  >
  get rerankUsage => ListCopyWith(
    $value.rerankUsage,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(rerankUsage: v),
  );
  @override
  ListCopyWith<
    $R,
    EgressUsageData,
    EgressUsageDataCopyWith<$R, EgressUsageData, EgressUsageData>
  >
  get egressUsage => ListCopyWith(
    $value.egressUsage,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(egressUsage: v),
  );
  @override
  ListCopyWith<
    $R,
    FileStorageUsageData,
    FileStorageUsageDataCopyWith<$R, FileStorageUsageData, FileStorageUsageData>
  >
  get fileStorageUsage => ListCopyWith(
    $value.fileStorageUsage,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(fileStorageUsage: v),
  );
  @override
  ListCopyWith<
    $R,
    DBStorageUsageData,
    DBStorageUsageDataCopyWith<$R, DBStorageUsageData, DBStorageUsageData>
  >
  get dbStorageUsage => ListCopyWith(
    $value.dbStorageUsage,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(dbStorageUsage: v),
  );
  @override
  $R call({
    List<LlmUsageData>? llmUsage,
    List<EmbedUsageData>? embedUsage,
    List<RerankUsageData>? rerankUsage,
    List<EgressUsageData>? egressUsage,
    List<FileStorageUsageData>? fileStorageUsage,
    List<DBStorageUsageData>? dbStorageUsage,
  }) => $apply(
    FieldCopyWithData({
      if (llmUsage != null) #llmUsage: llmUsage,
      if (embedUsage != null) #embedUsage: embedUsage,
      if (rerankUsage != null) #rerankUsage: rerankUsage,
      if (egressUsage != null) #egressUsage: egressUsage,
      if (fileStorageUsage != null) #fileStorageUsage: fileStorageUsage,
      if (dbStorageUsage != null) #dbStorageUsage: dbStorageUsage,
    }),
  );
  @override
  UsageData $make(CopyWithData data) => UsageData(
    llmUsage: data.get(#llmUsage, or: $value.llmUsage),
    embedUsage: data.get(#embedUsage, or: $value.embedUsage),
    rerankUsage: data.get(#rerankUsage, or: $value.rerankUsage),
    egressUsage: data.get(#egressUsage, or: $value.egressUsage),
    fileStorageUsage: data.get(#fileStorageUsage, or: $value.fileStorageUsage),
    dbStorageUsage: data.get(#dbStorageUsage, or: $value.dbStorageUsage),
  );

  @override
  UsageDataCopyWith<$R2, UsageData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UsageDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

