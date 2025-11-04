// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'common.dart';

class OrderByMapper extends EnumMapper<OrderBy> {
  OrderByMapper._();

  static OrderByMapper? _instance;
  static OrderByMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderByMapper._());
    }
    return _instance!;
  }

  static OrderBy fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  OrderBy decode(dynamic value) {
    switch (value) {
      case r'id':
        return OrderBy.id;
      case r'name':
        return OrderBy.name;
      case r'created_at':
        return OrderBy.createdAt;
      case r'updated_at':
        return OrderBy.updatedAt;
      default:
        return OrderBy.values[3];
    }
  }

  @override
  dynamic encode(OrderBy self) {
    switch (self) {
      case OrderBy.id:
        return r'id';
      case OrderBy.name:
        return r'name';
      case OrderBy.createdAt:
        return r'created_at';
      case OrderBy.updatedAt:
        return r'updated_at';
    }
  }
}

extension OrderByMapperExtension on OrderBy {
  String toValue() {
    OrderByMapper.ensureInitialized();
    return MapperContainer.globals.toValue<OrderBy>(this) as String;
  }
}

class TableTypeMapper extends EnumMapper<TableType> {
  TableTypeMapper._();

  static TableTypeMapper? _instance;
  static TableTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TableTypeMapper._());
    }
    return _instance!;
  }

  static TableType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TableType decode(dynamic value) {
    switch (value) {
      case r'action':
        return TableType.action;
      case r'chat':
        return TableType.chat;
      case r'knowledge':
        return TableType.knowledge;
      default:
        return TableType.values[0];
    }
  }

  @override
  dynamic encode(TableType self) {
    switch (self) {
      case TableType.action:
        return r'action';
      case TableType.chat:
        return r'chat';
      case TableType.knowledge:
        return r'knowledge';
    }
  }
}

extension TableTypeMapperExtension on TableType {
  String toValue() {
    TableTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<TableType>(this) as String;
  }
}

class ProgressStateMapper extends EnumMapper<ProgressState> {
  ProgressStateMapper._();

  static ProgressStateMapper? _instance;
  static ProgressStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProgressStateMapper._());
    }
    return _instance!;
  }

  static ProgressState fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ProgressState decode(dynamic value) {
    switch (value) {
      case r'STARTED':
        return ProgressState.started;
      case r'COMPLETED':
        return ProgressState.completed;
      case r'FAILED':
        return ProgressState.failed;
      default:
        return ProgressState.values[0];
    }
  }

  @override
  dynamic encode(ProgressState self) {
    switch (self) {
      case ProgressState.started:
        return r'STARTED';
      case ProgressState.completed:
        return r'COMPLETED';
      case ProgressState.failed:
        return r'FAILED';
    }
  }
}

extension ProgressStateMapperExtension on ProgressState {
  String toValue() {
    ProgressStateMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ProgressState>(this) as String;
  }
}

class ShortStringMapper extends ClassMapperBase<ShortString> {
  ShortStringMapper._();

  static ShortStringMapper? _instance;
  static ShortStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShortStringMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ShortString';

  static const Field<ShortString, String> _f$input = Field(
    'input',
    null,
    mode: FieldMode.param,
  );
  static String _$value(ShortString v) => v.value;
  static const Field<ShortString, String> _f$value = Field(
    'value',
    _$value,
    hook: ShortStringHook(),
  );

  @override
  final MappableFields<ShortString> fields = const {
    #input: _f$input,
    #value: _f$value,
  };

  static ShortString _instantiate(DecodingData data) {
    return ShortString(data.dec(_f$input));
  }

  @override
  final Function instantiate = _instantiate;

  static ShortString fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ShortString>(map);
  }

  static ShortString fromJson(String json) {
    return ensureInitialized().decodeJson<ShortString>(json);
  }
}

mixin ShortStringMappable {
  String toJson() {
    return ShortStringMapper.ensureInitialized().encodeJson<ShortString>(
      this as ShortString,
    );
  }

  Map<String, dynamic> toMap() {
    return ShortStringMapper.ensureInitialized().encodeMap<ShortString>(
      this as ShortString,
    );
  }

  ShortStringCopyWith<ShortString, ShortString, ShortString> get copyWith =>
      _ShortStringCopyWithImpl<ShortString, ShortString>(
        this as ShortString,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ShortStringMapper.ensureInitialized().stringifyValue(
      this as ShortString,
    );
  }

  @override
  bool operator ==(Object other) {
    return ShortStringMapper.ensureInitialized().equalsValue(
      this as ShortString,
      other,
    );
  }

  @override
  int get hashCode {
    return ShortStringMapper.ensureInitialized().hashValue(this as ShortString);
  }
}

extension ShortStringValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ShortString, $Out> {
  ShortStringCopyWith<$R, ShortString, $Out> get $asShortString =>
      $base.as((v, t, t2) => _ShortStringCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ShortStringCopyWith<$R, $In extends ShortString, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({required String input});
  ShortStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ShortStringCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ShortString, $Out>
    implements ShortStringCopyWith<$R, ShortString, $Out> {
  _ShortStringCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ShortString> $mapper =
      ShortStringMapper.ensureInitialized();
  @override
  $R call({required String input}) =>
      $apply(FieldCopyWithData({#input: input}));
  @override
  ShortString $make(CopyWithData data) => ShortString(data.get(#input));

  @override
  ShortStringCopyWith<$R2, ShortString, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ShortStringCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProgressMapper extends ClassMapperBase<Progress> {
  ProgressMapper._();

  static ProgressMapper? _instance;
  static ProgressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProgressMapper._());
      TableImportProgressMapper.ensureInitialized();
      ProgressStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Progress';

  static String _$key(Progress v) => v.key;
  static const Field<Progress, String> _f$key = Field('key', _$key);
  static Map<String, dynamic> _$data(Progress v) => v.data;
  static const Field<Progress, Map<String, dynamic>> _f$data = Field(
    'data',
    _$data,
    opt: true,
    def: const {},
  );
  static ProgressState _$state(Progress v) => v.state;
  static const Field<Progress, ProgressState> _f$state = Field(
    'state',
    _$state,
    opt: true,
    def: ProgressState.started,
  );
  static String? _$error(Progress v) => v.error;
  static const Field<Progress, String> _f$error = Field(
    'error',
    _$error,
    opt: true,
  );

  @override
  final MappableFields<Progress> fields = const {
    #key: _f$key,
    #data: _f$data,
    #state: _f$state,
    #error: _f$error,
  };

  static Progress _instantiate(DecodingData data) {
    return Progress(
      key: data.dec(_f$key),
      data: data.dec(_f$data),
      state: data.dec(_f$state),
      error: data.dec(_f$error),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Progress fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Progress>(map);
  }

  static Progress fromJson(String json) {
    return ensureInitialized().decodeJson<Progress>(json);
  }
}

mixin ProgressMappable {
  String toJson() {
    return ProgressMapper.ensureInitialized().encodeJson<Progress>(
      this as Progress,
    );
  }

  Map<String, dynamic> toMap() {
    return ProgressMapper.ensureInitialized().encodeMap<Progress>(
      this as Progress,
    );
  }

  ProgressCopyWith<Progress, Progress, Progress> get copyWith =>
      _ProgressCopyWithImpl<Progress, Progress>(
        this as Progress,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProgressMapper.ensureInitialized().stringifyValue(this as Progress);
  }

  @override
  bool operator ==(Object other) {
    return ProgressMapper.ensureInitialized().equalsValue(
      this as Progress,
      other,
    );
  }

  @override
  int get hashCode {
    return ProgressMapper.ensureInitialized().hashValue(this as Progress);
  }
}

extension ProgressValueCopy<$R, $Out> on ObjectCopyWith<$R, Progress, $Out> {
  ProgressCopyWith<$R, Progress, $Out> get $asProgress =>
      $base.as((v, t, t2) => _ProgressCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProgressCopyWith<$R, $In extends Progress, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>
  get data;
  $R call({
    String? key,
    Map<String, dynamic>? data,
    ProgressState? state,
    String? error,
  });
  ProgressCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProgressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Progress, $Out>
    implements ProgressCopyWith<$R, Progress, $Out> {
  _ProgressCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Progress> $mapper =
      ProgressMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>
  get data => MapCopyWith(
    $value.data,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(data: v),
  );
  @override
  $R call({
    String? key,
    Map<String, dynamic>? data,
    ProgressState? state,
    Object? error = $none,
  }) => $apply(
    FieldCopyWithData({
      if (key != null) #key: key,
      if (data != null) #data: data,
      if (state != null) #state: state,
      if (error != $none) #error: error,
    }),
  );
  @override
  Progress $make(CopyWithData data) => Progress(
    key: data.get(#key, or: $value.key),
    data: data.get(#data, or: $value.data),
    state: data.get(#state, or: $value.state),
    error: data.get(#error, or: $value.error),
  );

  @override
  ProgressCopyWith<$R2, Progress, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProgressCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProgressStageMapper extends ClassMapperBase<ProgressStage> {
  ProgressStageMapper._();

  static ProgressStageMapper? _instance;
  static ProgressStageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProgressStageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProgressStage';

  static String _$name(ProgressStage v) => v.name;
  static const Field<ProgressStage, String> _f$name = Field('name', _$name);
  static int _$progress(ProgressStage v) => v.progress;
  static const Field<ProgressStage, int> _f$progress = Field(
    'progress',
    _$progress,
    opt: true,
    def: 0,
  );

  @override
  final MappableFields<ProgressStage> fields = const {
    #name: _f$name,
    #progress: _f$progress,
  };

  static ProgressStage _instantiate(DecodingData data) {
    return ProgressStage(
      name: data.dec(_f$name),
      progress: data.dec(_f$progress),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProgressStage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProgressStage>(map);
  }

  static ProgressStage fromJson(String json) {
    return ensureInitialized().decodeJson<ProgressStage>(json);
  }
}

mixin ProgressStageMappable {
  String toJson() {
    return ProgressStageMapper.ensureInitialized().encodeJson<ProgressStage>(
      this as ProgressStage,
    );
  }

  Map<String, dynamic> toMap() {
    return ProgressStageMapper.ensureInitialized().encodeMap<ProgressStage>(
      this as ProgressStage,
    );
  }

  ProgressStageCopyWith<ProgressStage, ProgressStage, ProgressStage>
  get copyWith => _ProgressStageCopyWithImpl<ProgressStage, ProgressStage>(
    this as ProgressStage,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ProgressStageMapper.ensureInitialized().stringifyValue(
      this as ProgressStage,
    );
  }

  @override
  bool operator ==(Object other) {
    return ProgressStageMapper.ensureInitialized().equalsValue(
      this as ProgressStage,
      other,
    );
  }

  @override
  int get hashCode {
    return ProgressStageMapper.ensureInitialized().hashValue(
      this as ProgressStage,
    );
  }
}

extension ProgressStageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProgressStage, $Out> {
  ProgressStageCopyWith<$R, ProgressStage, $Out> get $asProgressStage =>
      $base.as((v, t, t2) => _ProgressStageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProgressStageCopyWith<$R, $In extends ProgressStage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, int? progress});
  ProgressStageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProgressStageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProgressStage, $Out>
    implements ProgressStageCopyWith<$R, ProgressStage, $Out> {
  _ProgressStageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProgressStage> $mapper =
      ProgressStageMapper.ensureInitialized();
  @override
  $R call({String? name, int? progress}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (progress != null) #progress: progress,
    }),
  );
  @override
  ProgressStage $make(CopyWithData data) => ProgressStage(
    name: data.get(#name, or: $value.name),
    progress: data.get(#progress, or: $value.progress),
  );

  @override
  ProgressStageCopyWith<$R2, ProgressStage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProgressStageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TableImportProgressMapper
    extends SubClassMapperBase<TableImportProgress> {
  TableImportProgressMapper._();

  static TableImportProgressMapper? _instance;
  static TableImportProgressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TableImportProgressMapper._());
      ProgressMapper.ensureInitialized().addSubMapper(_instance!);
      ProgressStateMapper.ensureInitialized();
      ProgressStageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TableImportProgress';

  static String _$key(TableImportProgress v) => v.key;
  static const Field<TableImportProgress, String> _f$key = Field('key', _$key);
  static Map<String, dynamic> _$data(TableImportProgress v) => v.data;
  static const Field<TableImportProgress, Map<String, dynamic>> _f$data = Field(
    'data',
    _$data,
    opt: true,
    def: const {},
  );
  static ProgressState _$state(TableImportProgress v) => v.state;
  static const Field<TableImportProgress, ProgressState> _f$state = Field(
    'state',
    _$state,
    opt: true,
    def: ProgressState.started,
  );
  static String? _$error(TableImportProgress v) => v.error;
  static const Field<TableImportProgress, String> _f$error = Field(
    'error',
    _$error,
    opt: true,
  );
  static ProgressStage _$loadData(TableImportProgress v) => v.loadData;
  static const Field<TableImportProgress, ProgressStage> _f$loadData = Field(
    'loadData',
    _$loadData,
    opt: true,
    def: const ProgressStage(name: "Load data"),
  );
  static ProgressStage _$parseData(TableImportProgress v) => v.parseData;
  static const Field<TableImportProgress, ProgressStage> _f$parseData = Field(
    'parseData',
    _$parseData,
    opt: true,
    def: const ProgressStage(name: "Parse data"),
  );
  static ProgressStage _$uploadFiles(TableImportProgress v) => v.uploadFiles;
  static const Field<TableImportProgress, ProgressStage> _f$uploadFiles = Field(
    'uploadFiles',
    _$uploadFiles,
    opt: true,
    def: const ProgressStage(name: "Upload files"),
  );
  static ProgressStage _$addRows(TableImportProgress v) => v.addRows;
  static const Field<TableImportProgress, ProgressStage> _f$addRows = Field(
    'addRows',
    _$addRows,
    opt: true,
    def: const ProgressStage(name: "Add rows"),
  );
  static ProgressStage _$index(TableImportProgress v) => v.index;
  static const Field<TableImportProgress, ProgressStage> _f$index = Field(
    'index',
    _$index,
    opt: true,
    def: const ProgressStage(name: "Indexing"),
  );

  @override
  final MappableFields<TableImportProgress> fields = const {
    #key: _f$key,
    #data: _f$data,
    #state: _f$state,
    #error: _f$error,
    #loadData: _f$loadData,
    #parseData: _f$parseData,
    #uploadFiles: _f$uploadFiles,
    #addRows: _f$addRows,
    #index: _f$index,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'tableImportProgress';
  @override
  late final ClassMapperBase superMapper = ProgressMapper.ensureInitialized();

  static TableImportProgress _instantiate(DecodingData data) {
    return TableImportProgress(
      key: data.dec(_f$key),
      data: data.dec(_f$data),
      state: data.dec(_f$state),
      error: data.dec(_f$error),
      loadData: data.dec(_f$loadData),
      parseData: data.dec(_f$parseData),
      uploadFiles: data.dec(_f$uploadFiles),
      addRows: data.dec(_f$addRows),
      index: data.dec(_f$index),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TableImportProgress fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TableImportProgress>(map);
  }

  static TableImportProgress fromJson(String json) {
    return ensureInitialized().decodeJson<TableImportProgress>(json);
  }
}

mixin TableImportProgressMappable {
  String toJson() {
    return TableImportProgressMapper.ensureInitialized()
        .encodeJson<TableImportProgress>(this as TableImportProgress);
  }

  Map<String, dynamic> toMap() {
    return TableImportProgressMapper.ensureInitialized()
        .encodeMap<TableImportProgress>(this as TableImportProgress);
  }

  TableImportProgressCopyWith<
    TableImportProgress,
    TableImportProgress,
    TableImportProgress
  >
  get copyWith =>
      _TableImportProgressCopyWithImpl<
        TableImportProgress,
        TableImportProgress
      >(this as TableImportProgress, $identity, $identity);
  @override
  String toString() {
    return TableImportProgressMapper.ensureInitialized().stringifyValue(
      this as TableImportProgress,
    );
  }

  @override
  bool operator ==(Object other) {
    return TableImportProgressMapper.ensureInitialized().equalsValue(
      this as TableImportProgress,
      other,
    );
  }

  @override
  int get hashCode {
    return TableImportProgressMapper.ensureInitialized().hashValue(
      this as TableImportProgress,
    );
  }
}

extension TableImportProgressValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TableImportProgress, $Out> {
  TableImportProgressCopyWith<$R, TableImportProgress, $Out>
  get $asTableImportProgress => $base.as(
    (v, t, t2) => _TableImportProgressCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TableImportProgressCopyWith<
  $R,
  $In extends TableImportProgress,
  $Out
>
    implements ProgressCopyWith<$R, $In, $Out> {
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data;
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get loadData;
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get parseData;
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get uploadFiles;
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get addRows;
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get index;
  @override
  $R call({
    String? key,
    Map<String, dynamic>? data,
    ProgressState? state,
    String? error,
    ProgressStage? loadData,
    ProgressStage? parseData,
    ProgressStage? uploadFiles,
    ProgressStage? addRows,
    ProgressStage? index,
  });
  TableImportProgressCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TableImportProgressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TableImportProgress, $Out>
    implements TableImportProgressCopyWith<$R, TableImportProgress, $Out> {
  _TableImportProgressCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TableImportProgress> $mapper =
      TableImportProgressMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data => MapCopyWith(
    $value.data,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(data: v),
  );
  @override
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get loadData =>
      $value.loadData.copyWith.$chain((v) => call(loadData: v));
  @override
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get parseData =>
      $value.parseData.copyWith.$chain((v) => call(parseData: v));
  @override
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get uploadFiles =>
      $value.uploadFiles.copyWith.$chain((v) => call(uploadFiles: v));
  @override
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get addRows =>
      $value.addRows.copyWith.$chain((v) => call(addRows: v));
  @override
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get index =>
      $value.index.copyWith.$chain((v) => call(index: v));
  @override
  $R call({
    String? key,
    Map<String, dynamic>? data,
    ProgressState? state,
    Object? error = $none,
    ProgressStage? loadData,
    ProgressStage? parseData,
    ProgressStage? uploadFiles,
    ProgressStage? addRows,
    ProgressStage? index,
  }) => $apply(
    FieldCopyWithData({
      if (key != null) #key: key,
      if (data != null) #data: data,
      if (state != null) #state: state,
      if (error != $none) #error: error,
      if (loadData != null) #loadData: loadData,
      if (parseData != null) #parseData: parseData,
      if (uploadFiles != null) #uploadFiles: uploadFiles,
      if (addRows != null) #addRows: addRows,
      if (index != null) #index: index,
    }),
  );
  @override
  TableImportProgress $make(CopyWithData data) => TableImportProgress(
    key: data.get(#key, or: $value.key),
    data: data.get(#data, or: $value.data),
    state: data.get(#state, or: $value.state),
    error: data.get(#error, or: $value.error),
    loadData: data.get(#loadData, or: $value.loadData),
    parseData: data.get(#parseData, or: $value.parseData),
    uploadFiles: data.get(#uploadFiles, or: $value.uploadFiles),
    addRows: data.get(#addRows, or: $value.addRows),
    index: data.get(#index, or: $value.index),
  );

  @override
  TableImportProgressCopyWith<$R2, TableImportProgress, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TableImportProgressCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OkResponseMapper extends ClassMapperBase<OkResponse> {
  OkResponseMapper._();

  static OkResponseMapper? _instance;
  static OkResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OkResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OkResponse';

  static bool _$ok(OkResponse v) => v.ok;
  static const Field<OkResponse, bool> _f$ok = Field(
    'ok',
    _$ok,
    opt: true,
    def: true,
  );
  static String _$progressKey(OkResponse v) => v.progressKey;
  static const Field<OkResponse, String> _f$progressKey = Field(
    'progressKey',
    _$progressKey,
    opt: true,
    def: "",
  );

  @override
  final MappableFields<OkResponse> fields = const {
    #ok: _f$ok,
    #progressKey: _f$progressKey,
  };

  static OkResponse _instantiate(DecodingData data) {
    return OkResponse(
      ok: data.dec(_f$ok),
      progressKey: data.dec(_f$progressKey),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static OkResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OkResponse>(map);
  }

  static OkResponse fromJson(String json) {
    return ensureInitialized().decodeJson<OkResponse>(json);
  }
}

mixin OkResponseMappable {
  String toJson() {
    return OkResponseMapper.ensureInitialized().encodeJson<OkResponse>(
      this as OkResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return OkResponseMapper.ensureInitialized().encodeMap<OkResponse>(
      this as OkResponse,
    );
  }

  OkResponseCopyWith<OkResponse, OkResponse, OkResponse> get copyWith =>
      _OkResponseCopyWithImpl<OkResponse, OkResponse>(
        this as OkResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OkResponseMapper.ensureInitialized().stringifyValue(
      this as OkResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return OkResponseMapper.ensureInitialized().equalsValue(
      this as OkResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return OkResponseMapper.ensureInitialized().hashValue(this as OkResponse);
  }
}

extension OkResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OkResponse, $Out> {
  OkResponseCopyWith<$R, OkResponse, $Out> get $asOkResponse =>
      $base.as((v, t, t2) => _OkResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OkResponseCopyWith<$R, $In extends OkResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? ok, String? progressKey});
  OkResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OkResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OkResponse, $Out>
    implements OkResponseCopyWith<$R, OkResponse, $Out> {
  _OkResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OkResponse> $mapper =
      OkResponseMapper.ensureInitialized();
  @override
  $R call({bool? ok, String? progressKey}) => $apply(
    FieldCopyWithData({
      if (ok != null) #ok: ok,
      if (progressKey != null) #progressKey: progressKey,
    }),
  );
  @override
  OkResponse $make(CopyWithData data) => OkResponse(
    ok: data.get(#ok, or: $value.ok),
    progressKey: data.get(#progressKey, or: $value.progressKey),
  );

  @override
  OkResponseCopyWith<$R2, OkResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OkResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PageMapper extends ClassMapperBase<Page> {
  PageMapper._();

  static PageMapper? _instance;
  static PageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Page';
  @override
  Function get typeFactory =>
      <T>(f) => f<Page<T>>();

  static List<dynamic> _$items(Page v) => v.items;
  static dynamic _arg$items<T>(f) => f<List<T>>();
  static const Field<Page, List<dynamic>> _f$items = Field(
    'items',
    _$items,
    opt: true,
    def: const [],
    arg: _arg$items,
  );
  static int _$offset(Page v) => v.offset;
  static const Field<Page, int> _f$offset = Field(
    'offset',
    _$offset,
    opt: true,
    def: 0,
  );
  static int _$limit(Page v) => v.limit;
  static const Field<Page, int> _f$limit = Field(
    'limit',
    _$limit,
    opt: true,
    def: 0,
  );
  static int _$total(Page v) => v.total;
  static const Field<Page, int> _f$total = Field(
    'total',
    _$total,
    opt: true,
    def: 0,
  );
  static String? _$endCursor(Page v) => v.endCursor;
  static const Field<Page, String> _f$endCursor = Field(
    'endCursor',
    _$endCursor,
    opt: true,
  );

  @override
  final MappableFields<Page> fields = const {
    #items: _f$items,
    #offset: _f$offset,
    #limit: _f$limit,
    #total: _f$total,
    #endCursor: _f$endCursor,
  };

  static Page<T> _instantiate<T>(DecodingData data) {
    return Page(
      items: data.dec(_f$items),
      offset: data.dec(_f$offset),
      limit: data.dec(_f$limit),
      total: data.dec(_f$total),
      endCursor: data.dec(_f$endCursor),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Page<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Page<T>>(map);
  }

  static Page<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<Page<T>>(json);
  }
}

mixin PageMappable<T> {
  String toJson() {
    return PageMapper.ensureInitialized().encodeJson<Page<T>>(this as Page<T>);
  }

  Map<String, dynamic> toMap() {
    return PageMapper.ensureInitialized().encodeMap<Page<T>>(this as Page<T>);
  }

  PageCopyWith<Page<T>, Page<T>, Page<T>, T> get copyWith =>
      _PageCopyWithImpl<Page<T>, Page<T>, T>(
        this as Page<T>,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PageMapper.ensureInitialized().stringifyValue(this as Page<T>);
  }

  @override
  bool operator ==(Object other) {
    return PageMapper.ensureInitialized().equalsValue(this as Page<T>, other);
  }

  @override
  int get hashCode {
    return PageMapper.ensureInitialized().hashValue(this as Page<T>);
  }
}

extension PageValueCopy<$R, $Out, T> on ObjectCopyWith<$R, Page<T>, $Out> {
  PageCopyWith<$R, Page<T>, $Out, T> get $asPage =>
      $base.as((v, t, t2) => _PageCopyWithImpl<$R, $Out, T>(v, t, t2));
}

abstract class PageCopyWith<$R, $In extends Page<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get items;
  $R call({
    List<T>? items,
    int? offset,
    int? limit,
    int? total,
    String? endCursor,
  });
  PageCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PageCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, Page<T>, $Out>
    implements PageCopyWith<$R, Page<T>, $Out, T> {
  _PageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Page> $mapper = PageMapper.ensureInitialized();
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get items => ListCopyWith(
    $value.items,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(items: v),
  );
  @override
  $R call({
    List<T>? items,
    int? offset,
    int? limit,
    int? total,
    Object? endCursor = $none,
  }) => $apply(
    FieldCopyWithData({
      if (items != null) #items: items,
      if (offset != null) #offset: offset,
      if (limit != null) #limit: limit,
      if (total != null) #total: total,
      if (endCursor != $none) #endCursor: endCursor,
    }),
  );
  @override
  Page<T> $make(CopyWithData data) => Page(
    items: data.get(#items, or: $value.items),
    offset: data.get(#offset, or: $value.offset),
    limit: data.get(#limit, or: $value.limit),
    total: data.get(#total, or: $value.total),
    endCursor: data.get(#endCursor, or: $value.endCursor),
  );

  @override
  PageCopyWith<$R2, Page<T>, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PageCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

class UserAgentMapper extends ClassMapperBase<UserAgent> {
  UserAgentMapper._();

  static UserAgentMapper? _instance;
  static UserAgentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserAgentMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserAgent';

  static bool _$isBrowser(UserAgent v) => v.isBrowser;
  static const Field<UserAgent, bool> _f$isBrowser = Field(
    'isBrowser',
    _$isBrowser,
    key: r'is_browser',
    opt: true,
    def: true,
  );
  static String _$agent(UserAgent v) => v.agent;
  static const Field<UserAgent, String> _f$agent = Field('agent', _$agent);
  static String _$agentVersion(UserAgent v) => v.agentVersion;
  static const Field<UserAgent, String> _f$agentVersion = Field(
    'agentVersion',
    _$agentVersion,
    key: r'agent_version',
    opt: true,
    def: "",
  );
  static String _$os(UserAgent v) => v.os;
  static const Field<UserAgent, String> _f$os = Field(
    'os',
    _$os,
    opt: true,
    def: "",
  );
  static String _$architecture(UserAgent v) => v.architecture;
  static const Field<UserAgent, String> _f$architecture = Field(
    'architecture',
    _$architecture,
    opt: true,
    def: "",
  );
  static String _$language(UserAgent v) => v.language;
  static const Field<UserAgent, String> _f$language = Field(
    'language',
    _$language,
    opt: true,
    def: "",
  );
  static String _$languageVersion(UserAgent v) => v.languageVersion;
  static const Field<UserAgent, String> _f$languageVersion = Field(
    'languageVersion',
    _$languageVersion,
    key: r'language_version',
    opt: true,
    def: "",
  );
  static String _$system(UserAgent v) => v.system;
  static const Field<UserAgent, String> _f$system = Field(
    'system',
    _$system,
    mode: FieldMode.member,
  );
  static String _$systemVersion(UserAgent v) => v.systemVersion;
  static const Field<UserAgent, String> _f$systemVersion = Field(
    'systemVersion',
    _$systemVersion,
    key: r'system_version',
    mode: FieldMode.member,
  );

  @override
  final MappableFields<UserAgent> fields = const {
    #isBrowser: _f$isBrowser,
    #agent: _f$agent,
    #agentVersion: _f$agentVersion,
    #os: _f$os,
    #architecture: _f$architecture,
    #language: _f$language,
    #languageVersion: _f$languageVersion,
    #system: _f$system,
    #systemVersion: _f$systemVersion,
  };

  static UserAgent _instantiate(DecodingData data) {
    return UserAgent(
      isBrowser: data.dec(_f$isBrowser),
      agent: data.dec(_f$agent),
      agentVersion: data.dec(_f$agentVersion),
      os: data.dec(_f$os),
      architecture: data.dec(_f$architecture),
      language: data.dec(_f$language),
      languageVersion: data.dec(_f$languageVersion),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserAgent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserAgent>(map);
  }

  static UserAgent fromJson(String json) {
    return ensureInitialized().decodeJson<UserAgent>(json);
  }
}

mixin UserAgentMappable {
  String toJson() {
    return UserAgentMapper.ensureInitialized().encodeJson<UserAgent>(
      this as UserAgent,
    );
  }

  Map<String, dynamic> toMap() {
    return UserAgentMapper.ensureInitialized().encodeMap<UserAgent>(
      this as UserAgent,
    );
  }

  UserAgentCopyWith<UserAgent, UserAgent, UserAgent> get copyWith =>
      _UserAgentCopyWithImpl<UserAgent, UserAgent>(
        this as UserAgent,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserAgentMapper.ensureInitialized().stringifyValue(
      this as UserAgent,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserAgentMapper.ensureInitialized().equalsValue(
      this as UserAgent,
      other,
    );
  }

  @override
  int get hashCode {
    return UserAgentMapper.ensureInitialized().hashValue(this as UserAgent);
  }
}

extension UserAgentValueCopy<$R, $Out> on ObjectCopyWith<$R, UserAgent, $Out> {
  UserAgentCopyWith<$R, UserAgent, $Out> get $asUserAgent =>
      $base.as((v, t, t2) => _UserAgentCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserAgentCopyWith<$R, $In extends UserAgent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    bool? isBrowser,
    String? agent,
    String? agentVersion,
    String? os,
    String? architecture,
    String? language,
    String? languageVersion,
  });
  UserAgentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserAgentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserAgent, $Out>
    implements UserAgentCopyWith<$R, UserAgent, $Out> {
  _UserAgentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserAgent> $mapper =
      UserAgentMapper.ensureInitialized();
  @override
  $R call({
    bool? isBrowser,
    String? agent,
    String? agentVersion,
    String? os,
    String? architecture,
    String? language,
    String? languageVersion,
  }) => $apply(
    FieldCopyWithData({
      if (isBrowser != null) #isBrowser: isBrowser,
      if (agent != null) #agent: agent,
      if (agentVersion != null) #agentVersion: agentVersion,
      if (os != null) #os: os,
      if (architecture != null) #architecture: architecture,
      if (language != null) #language: language,
      if (languageVersion != null) #languageVersion: languageVersion,
    }),
  );
  @override
  UserAgent $make(CopyWithData data) => UserAgent(
    isBrowser: data.get(#isBrowser, or: $value.isBrowser),
    agent: data.get(#agent, or: $value.agent),
    agentVersion: data.get(#agentVersion, or: $value.agentVersion),
    os: data.get(#os, or: $value.os),
    architecture: data.get(#architecture, or: $value.architecture),
    language: data.get(#language, or: $value.language),
    languageVersion: data.get(#languageVersion, or: $value.languageVersion),
  );

  @override
  UserAgentCopyWith<$R2, UserAgent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserAgentCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PasswordLoginRequestMapper extends ClassMapperBase<PasswordLoginRequest> {
  PasswordLoginRequestMapper._();

  static PasswordLoginRequestMapper? _instance;
  static PasswordLoginRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PasswordLoginRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PasswordLoginRequest';

  static String _$email(PasswordLoginRequest v) => v.email;
  static const Field<PasswordLoginRequest, String> _f$email = Field(
    'email',
    _$email,
  );
  static String _$password(PasswordLoginRequest v) => v.password;
  static const Field<PasswordLoginRequest, String> _f$password = Field(
    'password',
    _$password,
  );

  @override
  final MappableFields<PasswordLoginRequest> fields = const {
    #email: _f$email,
    #password: _f$password,
  };

  static PasswordLoginRequest _instantiate(DecodingData data) {
    return PasswordLoginRequest(
      email: data.dec(_f$email),
      password: data.dec(_f$password),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PasswordLoginRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PasswordLoginRequest>(map);
  }

  static PasswordLoginRequest fromJson(String json) {
    return ensureInitialized().decodeJson<PasswordLoginRequest>(json);
  }
}

mixin PasswordLoginRequestMappable {
  String toJson() {
    return PasswordLoginRequestMapper.ensureInitialized()
        .encodeJson<PasswordLoginRequest>(this as PasswordLoginRequest);
  }

  Map<String, dynamic> toMap() {
    return PasswordLoginRequestMapper.ensureInitialized()
        .encodeMap<PasswordLoginRequest>(this as PasswordLoginRequest);
  }

  PasswordLoginRequestCopyWith<
    PasswordLoginRequest,
    PasswordLoginRequest,
    PasswordLoginRequest
  >
  get copyWith =>
      _PasswordLoginRequestCopyWithImpl<
        PasswordLoginRequest,
        PasswordLoginRequest
      >(this as PasswordLoginRequest, $identity, $identity);
  @override
  String toString() {
    return PasswordLoginRequestMapper.ensureInitialized().stringifyValue(
      this as PasswordLoginRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return PasswordLoginRequestMapper.ensureInitialized().equalsValue(
      this as PasswordLoginRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return PasswordLoginRequestMapper.ensureInitialized().hashValue(
      this as PasswordLoginRequest,
    );
  }
}

extension PasswordLoginRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PasswordLoginRequest, $Out> {
  PasswordLoginRequestCopyWith<$R, PasswordLoginRequest, $Out>
  get $asPasswordLoginRequest => $base.as(
    (v, t, t2) => _PasswordLoginRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PasswordLoginRequestCopyWith<
  $R,
  $In extends PasswordLoginRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password});
  PasswordLoginRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PasswordLoginRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PasswordLoginRequest, $Out>
    implements PasswordLoginRequestCopyWith<$R, PasswordLoginRequest, $Out> {
  _PasswordLoginRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PasswordLoginRequest> $mapper =
      PasswordLoginRequestMapper.ensureInitialized();
  @override
  $R call({String? email, String? password}) => $apply(
    FieldCopyWithData({
      if (email != null) #email: email,
      if (password != null) #password: password,
    }),
  );
  @override
  PasswordLoginRequest $make(CopyWithData data) => PasswordLoginRequest(
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
  );

  @override
  PasswordLoginRequestCopyWith<$R2, PasswordLoginRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PasswordLoginRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PasswordChangeRequestMapper
    extends ClassMapperBase<PasswordChangeRequest> {
  PasswordChangeRequestMapper._();

  static PasswordChangeRequestMapper? _instance;
  static PasswordChangeRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PasswordChangeRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PasswordChangeRequest';

  static String _$email(PasswordChangeRequest v) => v.email;
  static const Field<PasswordChangeRequest, String> _f$email = Field(
    'email',
    _$email,
  );
  static String _$password(PasswordChangeRequest v) => v.password;
  static const Field<PasswordChangeRequest, String> _f$password = Field(
    'password',
    _$password,
  );
  static String _$newPassword(PasswordChangeRequest v) => v.newPassword;
  static const Field<PasswordChangeRequest, String> _f$newPassword = Field(
    'newPassword',
    _$newPassword,
  );

  @override
  final MappableFields<PasswordChangeRequest> fields = const {
    #email: _f$email,
    #password: _f$password,
    #newPassword: _f$newPassword,
  };

  static PasswordChangeRequest _instantiate(DecodingData data) {
    return PasswordChangeRequest(
      email: data.dec(_f$email),
      password: data.dec(_f$password),
      newPassword: data.dec(_f$newPassword),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PasswordChangeRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PasswordChangeRequest>(map);
  }

  static PasswordChangeRequest fromJson(String json) {
    return ensureInitialized().decodeJson<PasswordChangeRequest>(json);
  }
}

mixin PasswordChangeRequestMappable {
  String toJson() {
    return PasswordChangeRequestMapper.ensureInitialized()
        .encodeJson<PasswordChangeRequest>(this as PasswordChangeRequest);
  }

  Map<String, dynamic> toMap() {
    return PasswordChangeRequestMapper.ensureInitialized()
        .encodeMap<PasswordChangeRequest>(this as PasswordChangeRequest);
  }

  PasswordChangeRequestCopyWith<
    PasswordChangeRequest,
    PasswordChangeRequest,
    PasswordChangeRequest
  >
  get copyWith =>
      _PasswordChangeRequestCopyWithImpl<
        PasswordChangeRequest,
        PasswordChangeRequest
      >(this as PasswordChangeRequest, $identity, $identity);
  @override
  String toString() {
    return PasswordChangeRequestMapper.ensureInitialized().stringifyValue(
      this as PasswordChangeRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return PasswordChangeRequestMapper.ensureInitialized().equalsValue(
      this as PasswordChangeRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return PasswordChangeRequestMapper.ensureInitialized().hashValue(
      this as PasswordChangeRequest,
    );
  }
}

extension PasswordChangeRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PasswordChangeRequest, $Out> {
  PasswordChangeRequestCopyWith<$R, PasswordChangeRequest, $Out>
  get $asPasswordChangeRequest => $base.as(
    (v, t, t2) => _PasswordChangeRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PasswordChangeRequestCopyWith<
  $R,
  $In extends PasswordChangeRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password, String? newPassword});
  PasswordChangeRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PasswordChangeRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PasswordChangeRequest, $Out>
    implements PasswordChangeRequestCopyWith<$R, PasswordChangeRequest, $Out> {
  _PasswordChangeRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PasswordChangeRequest> $mapper =
      PasswordChangeRequestMapper.ensureInitialized();
  @override
  $R call({String? email, String? password, String? newPassword}) => $apply(
    FieldCopyWithData({
      if (email != null) #email: email,
      if (password != null) #password: password,
      if (newPassword != null) #newPassword: newPassword,
    }),
  );
  @override
  PasswordChangeRequest $make(CopyWithData data) => PasswordChangeRequest(
    email: data.get(#email, or: $value.email),
    password: data.get(#password, or: $value.password),
    newPassword: data.get(#newPassword, or: $value.newPassword),
  );

  @override
  PasswordChangeRequestCopyWith<$R2, PasswordChangeRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PasswordChangeRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class StripePaymentInfoMapper extends ClassMapperBase<StripePaymentInfo> {
  StripePaymentInfoMapper._();

  static StripePaymentInfoMapper? _instance;
  static StripePaymentInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StripePaymentInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'StripePaymentInfo';

  static String _$status(StripePaymentInfo v) => v.status;
  static const Field<StripePaymentInfo, String> _f$status = Field(
    'status',
    _$status,
  );
  static String? _$subscriptionId(StripePaymentInfo v) => v.subscriptionId;
  static const Field<StripePaymentInfo, String> _f$subscriptionId = Field(
    'subscriptionId',
    _$subscriptionId,
    key: r'subscription_id',
    opt: true,
  );
  static String? _$paymentIntentId(StripePaymentInfo v) => v.paymentIntentId;
  static const Field<StripePaymentInfo, String> _f$paymentIntentId = Field(
    'paymentIntentId',
    _$paymentIntentId,
    key: r'payment_intent_id',
    opt: true,
  );
  static String? _$clientSecret(StripePaymentInfo v) => v.clientSecret;
  static const Field<StripePaymentInfo, String> _f$clientSecret = Field(
    'clientSecret',
    _$clientSecret,
    key: r'client_secret',
    opt: true,
  );
  static double _$amountDue(StripePaymentInfo v) => v.amountDue;
  static const Field<StripePaymentInfo, double> _f$amountDue = Field(
    'amountDue',
    _$amountDue,
    key: r'amount_due',
  );
  static double _$amountOverpaid(StripePaymentInfo v) => v.amountOverpaid;
  static const Field<StripePaymentInfo, double> _f$amountOverpaid = Field(
    'amountOverpaid',
    _$amountOverpaid,
    key: r'amount_overpaid',
  );
  static double _$amountPaid(StripePaymentInfo v) => v.amountPaid;
  static const Field<StripePaymentInfo, double> _f$amountPaid = Field(
    'amountPaid',
    _$amountPaid,
    key: r'amount_paid',
  );
  static double _$amountRemaining(StripePaymentInfo v) => v.amountRemaining;
  static const Field<StripePaymentInfo, double> _f$amountRemaining = Field(
    'amountRemaining',
    _$amountRemaining,
    key: r'amount_remaining',
  );
  static String _$currency(StripePaymentInfo v) => v.currency;
  static const Field<StripePaymentInfo, String> _f$currency = Field(
    'currency',
    _$currency,
  );

  @override
  final MappableFields<StripePaymentInfo> fields = const {
    #status: _f$status,
    #subscriptionId: _f$subscriptionId,
    #paymentIntentId: _f$paymentIntentId,
    #clientSecret: _f$clientSecret,
    #amountDue: _f$amountDue,
    #amountOverpaid: _f$amountOverpaid,
    #amountPaid: _f$amountPaid,
    #amountRemaining: _f$amountRemaining,
    #currency: _f$currency,
  };

  static StripePaymentInfo _instantiate(DecodingData data) {
    return StripePaymentInfo(
      status: data.dec(_f$status),
      subscriptionId: data.dec(_f$subscriptionId),
      paymentIntentId: data.dec(_f$paymentIntentId),
      clientSecret: data.dec(_f$clientSecret),
      amountDue: data.dec(_f$amountDue),
      amountOverpaid: data.dec(_f$amountOverpaid),
      amountPaid: data.dec(_f$amountPaid),
      amountRemaining: data.dec(_f$amountRemaining),
      currency: data.dec(_f$currency),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static StripePaymentInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StripePaymentInfo>(map);
  }

  static StripePaymentInfo fromJson(String json) {
    return ensureInitialized().decodeJson<StripePaymentInfo>(json);
  }
}

mixin StripePaymentInfoMappable {
  String toJson() {
    return StripePaymentInfoMapper.ensureInitialized()
        .encodeJson<StripePaymentInfo>(this as StripePaymentInfo);
  }

  Map<String, dynamic> toMap() {
    return StripePaymentInfoMapper.ensureInitialized()
        .encodeMap<StripePaymentInfo>(this as StripePaymentInfo);
  }

  StripePaymentInfoCopyWith<
    StripePaymentInfo,
    StripePaymentInfo,
    StripePaymentInfo
  >
  get copyWith =>
      _StripePaymentInfoCopyWithImpl<StripePaymentInfo, StripePaymentInfo>(
        this as StripePaymentInfo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return StripePaymentInfoMapper.ensureInitialized().stringifyValue(
      this as StripePaymentInfo,
    );
  }

  @override
  bool operator ==(Object other) {
    return StripePaymentInfoMapper.ensureInitialized().equalsValue(
      this as StripePaymentInfo,
      other,
    );
  }

  @override
  int get hashCode {
    return StripePaymentInfoMapper.ensureInitialized().hashValue(
      this as StripePaymentInfo,
    );
  }
}

extension StripePaymentInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StripePaymentInfo, $Out> {
  StripePaymentInfoCopyWith<$R, StripePaymentInfo, $Out>
  get $asStripePaymentInfo => $base.as(
    (v, t, t2) => _StripePaymentInfoCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class StripePaymentInfoCopyWith<
  $R,
  $In extends StripePaymentInfo,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? status,
    String? subscriptionId,
    String? paymentIntentId,
    String? clientSecret,
    double? amountDue,
    double? amountOverpaid,
    double? amountPaid,
    double? amountRemaining,
    String? currency,
  });
  StripePaymentInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _StripePaymentInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StripePaymentInfo, $Out>
    implements StripePaymentInfoCopyWith<$R, StripePaymentInfo, $Out> {
  _StripePaymentInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StripePaymentInfo> $mapper =
      StripePaymentInfoMapper.ensureInitialized();
  @override
  $R call({
    String? status,
    Object? subscriptionId = $none,
    Object? paymentIntentId = $none,
    Object? clientSecret = $none,
    double? amountDue,
    double? amountOverpaid,
    double? amountPaid,
    double? amountRemaining,
    String? currency,
  }) => $apply(
    FieldCopyWithData({
      if (status != null) #status: status,
      if (subscriptionId != $none) #subscriptionId: subscriptionId,
      if (paymentIntentId != $none) #paymentIntentId: paymentIntentId,
      if (clientSecret != $none) #clientSecret: clientSecret,
      if (amountDue != null) #amountDue: amountDue,
      if (amountOverpaid != null) #amountOverpaid: amountOverpaid,
      if (amountPaid != null) #amountPaid: amountPaid,
      if (amountRemaining != null) #amountRemaining: amountRemaining,
      if (currency != null) #currency: currency,
    }),
  );
  @override
  StripePaymentInfo $make(CopyWithData data) => StripePaymentInfo(
    status: data.get(#status, or: $value.status),
    subscriptionId: data.get(#subscriptionId, or: $value.subscriptionId),
    paymentIntentId: data.get(#paymentIntentId, or: $value.paymentIntentId),
    clientSecret: data.get(#clientSecret, or: $value.clientSecret),
    amountDue: data.get(#amountDue, or: $value.amountDue),
    amountOverpaid: data.get(#amountOverpaid, or: $value.amountOverpaid),
    amountPaid: data.get(#amountPaid, or: $value.amountPaid),
    amountRemaining: data.get(#amountRemaining, or: $value.amountRemaining),
    currency: data.get(#currency, or: $value.currency),
  );

  @override
  StripePaymentInfoCopyWith<$R2, StripePaymentInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _StripePaymentInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class StripeEventDataMapper extends ClassMapperBase<StripeEventData> {
  StripeEventDataMapper._();

  static StripeEventDataMapper? _instance;
  static StripeEventDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StripeEventDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'StripeEventData';

  static String _$eventType(StripeEventData v) => v.eventType;
  static const Field<StripeEventData, String> _f$eventType = Field(
    'eventType',
    _$eventType,
    key: r'event_type',
  );
  static String _$eventId(StripeEventData v) => v.eventId;
  static const Field<StripeEventData, String> _f$eventId = Field(
    'eventId',
    _$eventId,
    key: r'event_id',
  );
  static String? _$invoiceId(StripeEventData v) => v.invoiceId;
  static const Field<StripeEventData, String> _f$invoiceId = Field(
    'invoiceId',
    _$invoiceId,
    key: r'invoice_id',
    opt: true,
  );
  static String? _$subscriptionId(StripeEventData v) => v.subscriptionId;
  static const Field<StripeEventData, String> _f$subscriptionId = Field(
    'subscriptionId',
    _$subscriptionId,
    key: r'subscription_id',
    opt: true,
  );
  static String? _$priceId(StripeEventData v) => v.priceId;
  static const Field<StripeEventData, String> _f$priceId = Field(
    'priceId',
    _$priceId,
    key: r'price_id',
    opt: true,
  );
  static String? _$paymentMethod(StripeEventData v) => v.paymentMethod;
  static const Field<StripeEventData, String> _f$paymentMethod = Field(
    'paymentMethod',
    _$paymentMethod,
    key: r'payment_method',
    opt: true,
  );
  static String _$customerId(StripeEventData v) => v.customerId;
  static const Field<StripeEventData, String> _f$customerId = Field(
    'customerId',
    _$customerId,
    key: r'customer_id',
  );
  static String _$organizationId(StripeEventData v) => v.organizationId;
  static const Field<StripeEventData, String> _f$organizationId = Field(
    'organizationId',
    _$organizationId,
    key: r'organization_id',
  );
  static String _$collectionMethod(StripeEventData v) => v.collectionMethod;
  static const Field<StripeEventData, String> _f$collectionMethod = Field(
    'collectionMethod',
    _$collectionMethod,
    key: r'collection_method',
  );
  static String _$billingReason(StripeEventData v) => v.billingReason;
  static const Field<StripeEventData, String> _f$billingReason = Field(
    'billingReason',
    _$billingReason,
    key: r'billing_reason',
  );
  static double _$amountPaid(StripeEventData v) => v.amountPaid;
  static const Field<StripeEventData, double> _f$amountPaid = Field(
    'amountPaid',
    _$amountPaid,
    key: r'amount_paid',
  );
  static String _$currency(StripeEventData v) => v.currency;
  static const Field<StripeEventData, String> _f$currency = Field(
    'currency',
    _$currency,
  );
  static String _$status(StripeEventData v) => v.status;
  static const Field<StripeEventData, String> _f$status = Field(
    'status',
    _$status,
  );

  @override
  final MappableFields<StripeEventData> fields = const {
    #eventType: _f$eventType,
    #eventId: _f$eventId,
    #invoiceId: _f$invoiceId,
    #subscriptionId: _f$subscriptionId,
    #priceId: _f$priceId,
    #paymentMethod: _f$paymentMethod,
    #customerId: _f$customerId,
    #organizationId: _f$organizationId,
    #collectionMethod: _f$collectionMethod,
    #billingReason: _f$billingReason,
    #amountPaid: _f$amountPaid,
    #currency: _f$currency,
    #status: _f$status,
  };

  static StripeEventData _instantiate(DecodingData data) {
    return StripeEventData(
      eventType: data.dec(_f$eventType),
      eventId: data.dec(_f$eventId),
      invoiceId: data.dec(_f$invoiceId),
      subscriptionId: data.dec(_f$subscriptionId),
      priceId: data.dec(_f$priceId),
      paymentMethod: data.dec(_f$paymentMethod),
      customerId: data.dec(_f$customerId),
      organizationId: data.dec(_f$organizationId),
      collectionMethod: data.dec(_f$collectionMethod),
      billingReason: data.dec(_f$billingReason),
      amountPaid: data.dec(_f$amountPaid),
      currency: data.dec(_f$currency),
      status: data.dec(_f$status),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static StripeEventData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StripeEventData>(map);
  }

  static StripeEventData fromJson(String json) {
    return ensureInitialized().decodeJson<StripeEventData>(json);
  }
}

mixin StripeEventDataMappable {
  String toJson() {
    return StripeEventDataMapper.ensureInitialized()
        .encodeJson<StripeEventData>(this as StripeEventData);
  }

  Map<String, dynamic> toMap() {
    return StripeEventDataMapper.ensureInitialized().encodeMap<StripeEventData>(
      this as StripeEventData,
    );
  }

  StripeEventDataCopyWith<StripeEventData, StripeEventData, StripeEventData>
  get copyWith =>
      _StripeEventDataCopyWithImpl<StripeEventData, StripeEventData>(
        this as StripeEventData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return StripeEventDataMapper.ensureInitialized().stringifyValue(
      this as StripeEventData,
    );
  }

  @override
  bool operator ==(Object other) {
    return StripeEventDataMapper.ensureInitialized().equalsValue(
      this as StripeEventData,
      other,
    );
  }

  @override
  int get hashCode {
    return StripeEventDataMapper.ensureInitialized().hashValue(
      this as StripeEventData,
    );
  }
}

extension StripeEventDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StripeEventData, $Out> {
  StripeEventDataCopyWith<$R, StripeEventData, $Out> get $asStripeEventData =>
      $base.as((v, t, t2) => _StripeEventDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class StripeEventDataCopyWith<$R, $In extends StripeEventData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? eventType,
    String? eventId,
    String? invoiceId,
    String? subscriptionId,
    String? priceId,
    String? paymentMethod,
    String? customerId,
    String? organizationId,
    String? collectionMethod,
    String? billingReason,
    double? amountPaid,
    String? currency,
    String? status,
  });
  StripeEventDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _StripeEventDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StripeEventData, $Out>
    implements StripeEventDataCopyWith<$R, StripeEventData, $Out> {
  _StripeEventDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StripeEventData> $mapper =
      StripeEventDataMapper.ensureInitialized();
  @override
  $R call({
    String? eventType,
    String? eventId,
    Object? invoiceId = $none,
    Object? subscriptionId = $none,
    Object? priceId = $none,
    Object? paymentMethod = $none,
    String? customerId,
    String? organizationId,
    String? collectionMethod,
    String? billingReason,
    double? amountPaid,
    String? currency,
    String? status,
  }) => $apply(
    FieldCopyWithData({
      if (eventType != null) #eventType: eventType,
      if (eventId != null) #eventId: eventId,
      if (invoiceId != $none) #invoiceId: invoiceId,
      if (subscriptionId != $none) #subscriptionId: subscriptionId,
      if (priceId != $none) #priceId: priceId,
      if (paymentMethod != $none) #paymentMethod: paymentMethod,
      if (customerId != null) #customerId: customerId,
      if (organizationId != null) #organizationId: organizationId,
      if (collectionMethod != null) #collectionMethod: collectionMethod,
      if (billingReason != null) #billingReason: billingReason,
      if (amountPaid != null) #amountPaid: amountPaid,
      if (currency != null) #currency: currency,
      if (status != null) #status: status,
    }),
  );
  @override
  StripeEventData $make(CopyWithData data) => StripeEventData(
    eventType: data.get(#eventType, or: $value.eventType),
    eventId: data.get(#eventId, or: $value.eventId),
    invoiceId: data.get(#invoiceId, or: $value.invoiceId),
    subscriptionId: data.get(#subscriptionId, or: $value.subscriptionId),
    priceId: data.get(#priceId, or: $value.priceId),
    paymentMethod: data.get(#paymentMethod, or: $value.paymentMethod),
    customerId: data.get(#customerId, or: $value.customerId),
    organizationId: data.get(#organizationId, or: $value.organizationId),
    collectionMethod: data.get(#collectionMethod, or: $value.collectionMethod),
    billingReason: data.get(#billingReason, or: $value.billingReason),
    amountPaid: data.get(#amountPaid, or: $value.amountPaid),
    currency: data.get(#currency, or: $value.currency),
    status: data.get(#status, or: $value.status),
  );

  @override
  StripeEventDataCopyWith<$R2, StripeEventData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _StripeEventDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SanitizedNonEmptyStringMapper
    extends ClassMapperBase<SanitizedNonEmptyString> {
  SanitizedNonEmptyStringMapper._();

  static SanitizedNonEmptyStringMapper? _instance;
  static SanitizedNonEmptyStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = SanitizedNonEmptyStringMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'SanitizedNonEmptyString';

  static String _$value(SanitizedNonEmptyString v) => v.value;
  static const Field<SanitizedNonEmptyString, String> _f$value = Field(
    'value',
    _$value,
    hook: ShortStringHook(),
  );
  static String _$get(SanitizedNonEmptyString v) => v.get;
  static const Field<SanitizedNonEmptyString, String> _f$get = Field(
    'get',
    _$get,
    mode: FieldMode.member,
  );
  static int _$hashCode(SanitizedNonEmptyString v) => v.hashCode;
  static const Field<SanitizedNonEmptyString, int> _f$hashCode = Field(
    'hashCode',
    _$hashCode,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<SanitizedNonEmptyString> fields = const {
    #value: _f$value,
    #get: _f$get,
    #hashCode: _f$hashCode,
  };

  static SanitizedNonEmptyString _instantiate(DecodingData data) {
    return SanitizedNonEmptyString(data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static SanitizedNonEmptyString fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SanitizedNonEmptyString>(map);
  }

  static SanitizedNonEmptyString fromJson(String json) {
    return ensureInitialized().decodeJson<SanitizedNonEmptyString>(json);
  }
}

mixin SanitizedNonEmptyStringMappable {
  String toJson() {
    return SanitizedNonEmptyStringMapper.ensureInitialized()
        .encodeJson<SanitizedNonEmptyString>(this as SanitizedNonEmptyString);
  }

  Map<String, dynamic> toMap() {
    return SanitizedNonEmptyStringMapper.ensureInitialized()
        .encodeMap<SanitizedNonEmptyString>(this as SanitizedNonEmptyString);
  }

  SanitizedNonEmptyStringCopyWith<
    SanitizedNonEmptyString,
    SanitizedNonEmptyString,
    SanitizedNonEmptyString
  >
  get copyWith =>
      _SanitizedNonEmptyStringCopyWithImpl<
        SanitizedNonEmptyString,
        SanitizedNonEmptyString
      >(this as SanitizedNonEmptyString, $identity, $identity);
  @override
  String toString() {
    return SanitizedNonEmptyStringMapper.ensureInitialized().stringifyValue(
      this as SanitizedNonEmptyString,
    );
  }

  @override
  bool operator ==(Object other) {
    return SanitizedNonEmptyStringMapper.ensureInitialized().equalsValue(
      this as SanitizedNonEmptyString,
      other,
    );
  }

  @override
  int get hashCode {
    return SanitizedNonEmptyStringMapper.ensureInitialized().hashValue(
      this as SanitizedNonEmptyString,
    );
  }
}

extension SanitizedNonEmptyStringValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SanitizedNonEmptyString, $Out> {
  SanitizedNonEmptyStringCopyWith<$R, SanitizedNonEmptyString, $Out>
  get $asSanitizedNonEmptyString => $base.as(
    (v, t, t2) => _SanitizedNonEmptyStringCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SanitizedNonEmptyStringCopyWith<
  $R,
  $In extends SanitizedNonEmptyString,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value});
  SanitizedNonEmptyStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SanitizedNonEmptyStringCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SanitizedNonEmptyString, $Out>
    implements
        SanitizedNonEmptyStringCopyWith<$R, SanitizedNonEmptyString, $Out> {
  _SanitizedNonEmptyStringCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SanitizedNonEmptyString> $mapper =
      SanitizedNonEmptyStringMapper.ensureInitialized();
  @override
  $R call({String? value}) =>
      $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  SanitizedNonEmptyString $make(CopyWithData data) =>
      SanitizedNonEmptyString(data.get(#value, or: $value.value));

  @override
  SanitizedNonEmptyStringCopyWith<$R2, SanitizedNonEmptyString, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SanitizedNonEmptyStringCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SanitizedStringMapper extends ClassMapperBase<SanitizedString> {
  SanitizedStringMapper._();

  static SanitizedStringMapper? _instance;
  static SanitizedStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SanitizedStringMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SanitizedString';

  static String _$value(SanitizedString v) => v.value;
  static const Field<SanitizedString, String> _f$value = Field(
    'value',
    _$value,
    hook: ShortStringHook(),
  );
  static String _$get(SanitizedString v) => v.get;
  static const Field<SanitizedString, String> _f$get = Field(
    'get',
    _$get,
    mode: FieldMode.member,
  );
  static int _$hashCode(SanitizedString v) => v.hashCode;
  static const Field<SanitizedString, int> _f$hashCode = Field(
    'hashCode',
    _$hashCode,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<SanitizedString> fields = const {
    #value: _f$value,
    #get: _f$get,
    #hashCode: _f$hashCode,
  };

  static SanitizedString _instantiate(DecodingData data) {
    return SanitizedString(data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static SanitizedString fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SanitizedString>(map);
  }

  static SanitizedString fromJson(String json) {
    return ensureInitialized().decodeJson<SanitizedString>(json);
  }
}

mixin SanitizedStringMappable {
  String toJson() {
    return SanitizedStringMapper.ensureInitialized()
        .encodeJson<SanitizedString>(this as SanitizedString);
  }

  Map<String, dynamic> toMap() {
    return SanitizedStringMapper.ensureInitialized().encodeMap<SanitizedString>(
      this as SanitizedString,
    );
  }

  SanitizedStringCopyWith<SanitizedString, SanitizedString, SanitizedString>
  get copyWith =>
      _SanitizedStringCopyWithImpl<SanitizedString, SanitizedString>(
        this as SanitizedString,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SanitizedStringMapper.ensureInitialized().stringifyValue(
      this as SanitizedString,
    );
  }

  @override
  bool operator ==(Object other) {
    return SanitizedStringMapper.ensureInitialized().equalsValue(
      this as SanitizedString,
      other,
    );
  }

  @override
  int get hashCode {
    return SanitizedStringMapper.ensureInitialized().hashValue(
      this as SanitizedString,
    );
  }
}

extension SanitizedStringValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SanitizedString, $Out> {
  SanitizedStringCopyWith<$R, SanitizedString, $Out> get $asSanitizedString =>
      $base.as((v, t, t2) => _SanitizedStringCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SanitizedStringCopyWith<$R, $In extends SanitizedString, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value});
  SanitizedStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SanitizedStringCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SanitizedString, $Out>
    implements SanitizedStringCopyWith<$R, SanitizedString, $Out> {
  _SanitizedStringCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SanitizedString> $mapper =
      SanitizedStringMapper.ensureInitialized();
  @override
  $R call({String? value}) =>
      $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  SanitizedString $make(CopyWithData data) =>
      SanitizedString(data.get(#value, or: $value.value));

  @override
  SanitizedStringCopyWith<$R2, SanitizedString, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SanitizedStringCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SanitizedMultilineStringMapper
    extends ClassMapperBase<SanitizedMultilineString> {
  SanitizedMultilineStringMapper._();

  static SanitizedMultilineStringMapper? _instance;
  static SanitizedMultilineStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = SanitizedMultilineStringMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'SanitizedMultilineString';

  static String _$value(SanitizedMultilineString v) => v.value;
  static const Field<SanitizedMultilineString, String> _f$value = Field(
    'value',
    _$value,
    hook: ShortStringHook(),
  );
  static String _$get(SanitizedMultilineString v) => v.get;
  static const Field<SanitizedMultilineString, String> _f$get = Field(
    'get',
    _$get,
    mode: FieldMode.member,
  );
  static int _$hashCode(SanitizedMultilineString v) => v.hashCode;
  static const Field<SanitizedMultilineString, int> _f$hashCode = Field(
    'hashCode',
    _$hashCode,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<SanitizedMultilineString> fields = const {
    #value: _f$value,
    #get: _f$get,
    #hashCode: _f$hashCode,
  };

  static SanitizedMultilineString _instantiate(DecodingData data) {
    return SanitizedMultilineString(data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static SanitizedMultilineString fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SanitizedMultilineString>(map);
  }

  static SanitizedMultilineString fromJson(String json) {
    return ensureInitialized().decodeJson<SanitizedMultilineString>(json);
  }
}

mixin SanitizedMultilineStringMappable {
  String toJson() {
    return SanitizedMultilineStringMapper.ensureInitialized()
        .encodeJson<SanitizedMultilineString>(this as SanitizedMultilineString);
  }

  Map<String, dynamic> toMap() {
    return SanitizedMultilineStringMapper.ensureInitialized()
        .encodeMap<SanitizedMultilineString>(this as SanitizedMultilineString);
  }

  SanitizedMultilineStringCopyWith<
    SanitizedMultilineString,
    SanitizedMultilineString,
    SanitizedMultilineString
  >
  get copyWith =>
      _SanitizedMultilineStringCopyWithImpl<
        SanitizedMultilineString,
        SanitizedMultilineString
      >(this as SanitizedMultilineString, $identity, $identity);
  @override
  String toString() {
    return SanitizedMultilineStringMapper.ensureInitialized().stringifyValue(
      this as SanitizedMultilineString,
    );
  }

  @override
  bool operator ==(Object other) {
    return SanitizedMultilineStringMapper.ensureInitialized().equalsValue(
      this as SanitizedMultilineString,
      other,
    );
  }

  @override
  int get hashCode {
    return SanitizedMultilineStringMapper.ensureInitialized().hashValue(
      this as SanitizedMultilineString,
    );
  }
}

extension SanitizedMultilineStringValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SanitizedMultilineString, $Out> {
  SanitizedMultilineStringCopyWith<$R, SanitizedMultilineString, $Out>
  get $asSanitizedMultilineString => $base.as(
    (v, t, t2) => _SanitizedMultilineStringCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SanitizedMultilineStringCopyWith<
  $R,
  $In extends SanitizedMultilineString,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value});
  SanitizedMultilineStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SanitizedMultilineStringCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SanitizedMultilineString, $Out>
    implements
        SanitizedMultilineStringCopyWith<$R, SanitizedMultilineString, $Out> {
  _SanitizedMultilineStringCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SanitizedMultilineString> $mapper =
      SanitizedMultilineStringMapper.ensureInitialized();
  @override
  $R call({String? value}) =>
      $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  SanitizedMultilineString $make(CopyWithData data) =>
      SanitizedMultilineString(data.get(#value, or: $value.value));

  @override
  SanitizedMultilineStringCopyWith<$R2, SanitizedMultilineString, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SanitizedMultilineStringCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SanitizedNonEmptyMultilineStringMapper
    extends ClassMapperBase<SanitizedNonEmptyMultilineString> {
  SanitizedNonEmptyMultilineStringMapper._();

  static SanitizedNonEmptyMultilineStringMapper? _instance;
  static SanitizedNonEmptyMultilineStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = SanitizedNonEmptyMultilineStringMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'SanitizedNonEmptyMultilineString';

  static String _$value(SanitizedNonEmptyMultilineString v) => v.value;
  static const Field<SanitizedNonEmptyMultilineString, String> _f$value = Field(
    'value',
    _$value,
    hook: ShortStringHook(),
  );
  static String _$get(SanitizedNonEmptyMultilineString v) => v.get;
  static const Field<SanitizedNonEmptyMultilineString, String> _f$get = Field(
    'get',
    _$get,
    mode: FieldMode.member,
  );
  static int _$hashCode(SanitizedNonEmptyMultilineString v) => v.hashCode;
  static const Field<SanitizedNonEmptyMultilineString, int> _f$hashCode = Field(
    'hashCode',
    _$hashCode,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<SanitizedNonEmptyMultilineString> fields = const {
    #value: _f$value,
    #get: _f$get,
    #hashCode: _f$hashCode,
  };

  static SanitizedNonEmptyMultilineString _instantiate(DecodingData data) {
    return SanitizedNonEmptyMultilineString(data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static SanitizedNonEmptyMultilineString fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SanitizedNonEmptyMultilineString>(map);
  }

  static SanitizedNonEmptyMultilineString fromJson(String json) {
    return ensureInitialized().decodeJson<SanitizedNonEmptyMultilineString>(
      json,
    );
  }
}

mixin SanitizedNonEmptyMultilineStringMappable {
  String toJson() {
    return SanitizedNonEmptyMultilineStringMapper.ensureInitialized()
        .encodeJson<SanitizedNonEmptyMultilineString>(
          this as SanitizedNonEmptyMultilineString,
        );
  }

  Map<String, dynamic> toMap() {
    return SanitizedNonEmptyMultilineStringMapper.ensureInitialized()
        .encodeMap<SanitizedNonEmptyMultilineString>(
          this as SanitizedNonEmptyMultilineString,
        );
  }

  SanitizedNonEmptyMultilineStringCopyWith<
    SanitizedNonEmptyMultilineString,
    SanitizedNonEmptyMultilineString,
    SanitizedNonEmptyMultilineString
  >
  get copyWith =>
      _SanitizedNonEmptyMultilineStringCopyWithImpl<
        SanitizedNonEmptyMultilineString,
        SanitizedNonEmptyMultilineString
      >(this as SanitizedNonEmptyMultilineString, $identity, $identity);
  @override
  String toString() {
    return SanitizedNonEmptyMultilineStringMapper.ensureInitialized()
        .stringifyValue(this as SanitizedNonEmptyMultilineString);
  }

  @override
  bool operator ==(Object other) {
    return SanitizedNonEmptyMultilineStringMapper.ensureInitialized()
        .equalsValue(this as SanitizedNonEmptyMultilineString, other);
  }

  @override
  int get hashCode {
    return SanitizedNonEmptyMultilineStringMapper.ensureInitialized().hashValue(
      this as SanitizedNonEmptyMultilineString,
    );
  }
}

extension SanitizedNonEmptyMultilineStringValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SanitizedNonEmptyMultilineString, $Out> {
  SanitizedNonEmptyMultilineStringCopyWith<
    $R,
    SanitizedNonEmptyMultilineString,
    $Out
  >
  get $asSanitizedNonEmptyMultilineString => $base.as(
    (v, t, t2) =>
        _SanitizedNonEmptyMultilineStringCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SanitizedNonEmptyMultilineStringCopyWith<
  $R,
  $In extends SanitizedNonEmptyMultilineString,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value});
  SanitizedNonEmptyMultilineStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SanitizedNonEmptyMultilineStringCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SanitizedNonEmptyMultilineString, $Out>
    implements
        SanitizedNonEmptyMultilineStringCopyWith<
          $R,
          SanitizedNonEmptyMultilineString,
          $Out
        > {
  _SanitizedNonEmptyMultilineStringCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<SanitizedNonEmptyMultilineString> $mapper =
      SanitizedNonEmptyMultilineStringMapper.ensureInitialized();
  @override
  $R call({String? value}) =>
      $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  SanitizedNonEmptyMultilineString $make(CopyWithData data) =>
      SanitizedNonEmptyMultilineString(data.get(#value, or: $value.value));

  @override
  SanitizedNonEmptyMultilineStringCopyWith<
    $R2,
    SanitizedNonEmptyMultilineString,
    $Out2
  >
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SanitizedNonEmptyMultilineStringCopyWithImpl<$R2, $Out2>(
        $value,
        $cast,
        t,
      );
}

