// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'common.dart';

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

class TableImportProgressMapper extends ClassMapperBase<TableImportProgress> {
  TableImportProgressMapper._();

  static TableImportProgressMapper? _instance;
  static TableImportProgressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TableImportProgressMapper._());
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
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get data;
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get loadData;
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get parseData;
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get uploadFiles;
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get addRows;
  ProgressStageCopyWith<$R, ProgressStage, ProgressStage> get index;
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

class StringOrListStringMapper extends ClassMapperBase<StringOrListString> {
  StringOrListStringMapper._();

  static StringOrListStringMapper? _instance;
  static StringOrListStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StringOrListStringMapper._());
      StringOrListStringStringMapper.ensureInitialized();
      StringOrListStringListMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'StringOrListString';

  @override
  final MappableFields<StringOrListString> fields = const {};

  static StringOrListString _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'StringOrListString',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static StringOrListString fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StringOrListString>(map);
  }

  static StringOrListString fromJson(String json) {
    return ensureInitialized().decodeJson<StringOrListString>(json);
  }
}

mixin StringOrListStringMappable {
  String toJson();
  Map<String, dynamic> toMap();
  StringOrListStringCopyWith<
    StringOrListString,
    StringOrListString,
    StringOrListString
  >
  get copyWith;
}

abstract class StringOrListStringCopyWith<
  $R,
  $In extends StringOrListString,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  StringOrListStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class StringOrListStringStringMapper
    extends SubClassMapperBase<StringOrListStringString> {
  StringOrListStringStringMapper._();

  static StringOrListStringStringMapper? _instance;
  static StringOrListStringStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = StringOrListStringStringMapper._(),
      );
      StringOrListStringMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'StringOrListStringString';

  static String _$value(StringOrListStringString v) => v.value;
  static const Field<StringOrListStringString, String> _f$value = Field(
    'value',
    _$value,
  );

  @override
  final MappableFields<StringOrListStringString> fields = const {
    #value: _f$value,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'string';
  @override
  late final ClassMapperBase superMapper =
      StringOrListStringMapper.ensureInitialized();

  static StringOrListStringString _instantiate(DecodingData data) {
    return StringOrListStringString(data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static StringOrListStringString fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StringOrListStringString>(map);
  }

  static StringOrListStringString fromJson(String json) {
    return ensureInitialized().decodeJson<StringOrListStringString>(json);
  }
}

mixin StringOrListStringStringMappable {
  String toJson() {
    return StringOrListStringStringMapper.ensureInitialized()
        .encodeJson<StringOrListStringString>(this as StringOrListStringString);
  }

  Map<String, dynamic> toMap() {
    return StringOrListStringStringMapper.ensureInitialized()
        .encodeMap<StringOrListStringString>(this as StringOrListStringString);
  }

  StringOrListStringStringCopyWith<
    StringOrListStringString,
    StringOrListStringString,
    StringOrListStringString
  >
  get copyWith =>
      _StringOrListStringStringCopyWithImpl<
        StringOrListStringString,
        StringOrListStringString
      >(this as StringOrListStringString, $identity, $identity);
  @override
  String toString() {
    return StringOrListStringStringMapper.ensureInitialized().stringifyValue(
      this as StringOrListStringString,
    );
  }

  @override
  bool operator ==(Object other) {
    return StringOrListStringStringMapper.ensureInitialized().equalsValue(
      this as StringOrListStringString,
      other,
    );
  }

  @override
  int get hashCode {
    return StringOrListStringStringMapper.ensureInitialized().hashValue(
      this as StringOrListStringString,
    );
  }
}

extension StringOrListStringStringValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StringOrListStringString, $Out> {
  StringOrListStringStringCopyWith<$R, StringOrListStringString, $Out>
  get $asStringOrListStringString => $base.as(
    (v, t, t2) => _StringOrListStringStringCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class StringOrListStringStringCopyWith<
  $R,
  $In extends StringOrListStringString,
  $Out
>
    implements StringOrListStringCopyWith<$R, $In, $Out> {
  @override
  $R call({String? value});
  StringOrListStringStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _StringOrListStringStringCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StringOrListStringString, $Out>
    implements
        StringOrListStringStringCopyWith<$R, StringOrListStringString, $Out> {
  _StringOrListStringStringCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StringOrListStringString> $mapper =
      StringOrListStringStringMapper.ensureInitialized();
  @override
  $R call({String? value}) =>
      $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  StringOrListStringString $make(CopyWithData data) =>
      StringOrListStringString(data.get(#value, or: $value.value));

  @override
  StringOrListStringStringCopyWith<$R2, StringOrListStringString, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _StringOrListStringStringCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class StringOrListStringListMapper
    extends SubClassMapperBase<StringOrListStringList> {
  StringOrListStringListMapper._();

  static StringOrListStringListMapper? _instance;
  static StringOrListStringListMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StringOrListStringListMapper._());
      StringOrListStringMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'StringOrListStringList';

  static List<String> _$values(StringOrListStringList v) => v.values;
  static const Field<StringOrListStringList, List<String>> _f$values = Field(
    'values',
    _$values,
  );

  @override
  final MappableFields<StringOrListStringList> fields = const {
    #values: _f$values,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'listString';
  @override
  late final ClassMapperBase superMapper =
      StringOrListStringMapper.ensureInitialized();

  static StringOrListStringList _instantiate(DecodingData data) {
    return StringOrListStringList(data.dec(_f$values));
  }

  @override
  final Function instantiate = _instantiate;

  static StringOrListStringList fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StringOrListStringList>(map);
  }

  static StringOrListStringList fromJson(String json) {
    return ensureInitialized().decodeJson<StringOrListStringList>(json);
  }
}

mixin StringOrListStringListMappable {
  String toJson() {
    return StringOrListStringListMapper.ensureInitialized()
        .encodeJson<StringOrListStringList>(this as StringOrListStringList);
  }

  Map<String, dynamic> toMap() {
    return StringOrListStringListMapper.ensureInitialized()
        .encodeMap<StringOrListStringList>(this as StringOrListStringList);
  }

  StringOrListStringListCopyWith<
    StringOrListStringList,
    StringOrListStringList,
    StringOrListStringList
  >
  get copyWith =>
      _StringOrListStringListCopyWithImpl<
        StringOrListStringList,
        StringOrListStringList
      >(this as StringOrListStringList, $identity, $identity);
  @override
  String toString() {
    return StringOrListStringListMapper.ensureInitialized().stringifyValue(
      this as StringOrListStringList,
    );
  }

  @override
  bool operator ==(Object other) {
    return StringOrListStringListMapper.ensureInitialized().equalsValue(
      this as StringOrListStringList,
      other,
    );
  }

  @override
  int get hashCode {
    return StringOrListStringListMapper.ensureInitialized().hashValue(
      this as StringOrListStringList,
    );
  }
}

extension StringOrListStringListValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StringOrListStringList, $Out> {
  StringOrListStringListCopyWith<$R, StringOrListStringList, $Out>
  get $asStringOrListStringList => $base.as(
    (v, t, t2) => _StringOrListStringListCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class StringOrListStringListCopyWith<
  $R,
  $In extends StringOrListStringList,
  $Out
>
    implements StringOrListStringCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get values;
  @override
  $R call({List<String>? values});
  StringOrListStringListCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _StringOrListStringListCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StringOrListStringList, $Out>
    implements
        StringOrListStringListCopyWith<$R, StringOrListStringList, $Out> {
  _StringOrListStringListCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StringOrListStringList> $mapper =
      StringOrListStringListMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get values =>
      ListCopyWith(
        $value.values,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(values: v),
      );
  @override
  $R call({List<String>? values}) =>
      $apply(FieldCopyWithData({if (values != null) #values: values}));
  @override
  StringOrListStringList $make(CopyWithData data) =>
      StringOrListStringList(data.get(#values, or: $value.values));

  @override
  StringOrListStringListCopyWith<$R2, StringOrListStringList, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _StringOrListStringListCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ListDoubleOrStringMapper extends ClassMapperBase<ListDoubleOrString> {
  ListDoubleOrStringMapper._();

  static ListDoubleOrStringMapper? _instance;
  static ListDoubleOrStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ListDoubleOrStringMapper._());
      ListDoubleMapper.ensureInitialized();
      ListDoubleOrStringStringMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ListDoubleOrString';

  @override
  final MappableFields<ListDoubleOrString> fields = const {};

  static ListDoubleOrString _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'ListDoubleOrString',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ListDoubleOrString fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ListDoubleOrString>(map);
  }

  static ListDoubleOrString fromJson(String json) {
    return ensureInitialized().decodeJson<ListDoubleOrString>(json);
  }
}

mixin ListDoubleOrStringMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ListDoubleOrStringCopyWith<
    ListDoubleOrString,
    ListDoubleOrString,
    ListDoubleOrString
  >
  get copyWith;
}

abstract class ListDoubleOrStringCopyWith<
  $R,
  $In extends ListDoubleOrString,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ListDoubleOrStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class ListDoubleMapper extends SubClassMapperBase<ListDouble> {
  ListDoubleMapper._();

  static ListDoubleMapper? _instance;
  static ListDoubleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ListDoubleMapper._());
      ListDoubleOrStringMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ListDouble';

  static List<double> _$values(ListDouble v) => v.values;
  static const Field<ListDouble, List<double>> _f$values = Field(
    'values',
    _$values,
  );

  @override
  final MappableFields<ListDouble> fields = const {#values: _f$values};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'listDouble';
  @override
  late final ClassMapperBase superMapper =
      ListDoubleOrStringMapper.ensureInitialized();

  static ListDouble _instantiate(DecodingData data) {
    return ListDouble(data.dec(_f$values));
  }

  @override
  final Function instantiate = _instantiate;

  static ListDouble fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ListDouble>(map);
  }

  static ListDouble fromJson(String json) {
    return ensureInitialized().decodeJson<ListDouble>(json);
  }
}

mixin ListDoubleMappable {
  String toJson() {
    return ListDoubleMapper.ensureInitialized().encodeJson<ListDouble>(
      this as ListDouble,
    );
  }

  Map<String, dynamic> toMap() {
    return ListDoubleMapper.ensureInitialized().encodeMap<ListDouble>(
      this as ListDouble,
    );
  }

  ListDoubleCopyWith<ListDouble, ListDouble, ListDouble> get copyWith =>
      _ListDoubleCopyWithImpl<ListDouble, ListDouble>(
        this as ListDouble,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ListDoubleMapper.ensureInitialized().stringifyValue(
      this as ListDouble,
    );
  }

  @override
  bool operator ==(Object other) {
    return ListDoubleMapper.ensureInitialized().equalsValue(
      this as ListDouble,
      other,
    );
  }

  @override
  int get hashCode {
    return ListDoubleMapper.ensureInitialized().hashValue(this as ListDouble);
  }
}

extension ListDoubleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ListDouble, $Out> {
  ListDoubleCopyWith<$R, ListDouble, $Out> get $asListDouble =>
      $base.as((v, t, t2) => _ListDoubleCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ListDoubleCopyWith<$R, $In extends ListDouble, $Out>
    implements ListDoubleOrStringCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, double, ObjectCopyWith<$R, double, double>> get values;
  @override
  $R call({List<double>? values});
  ListDoubleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ListDoubleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ListDouble, $Out>
    implements ListDoubleCopyWith<$R, ListDouble, $Out> {
  _ListDoubleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ListDouble> $mapper =
      ListDoubleMapper.ensureInitialized();
  @override
  ListCopyWith<$R, double, ObjectCopyWith<$R, double, double>> get values =>
      ListCopyWith(
        $value.values,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(values: v),
      );
  @override
  $R call({List<double>? values}) =>
      $apply(FieldCopyWithData({if (values != null) #values: values}));
  @override
  ListDouble $make(CopyWithData data) =>
      ListDouble(data.get(#values, or: $value.values));

  @override
  ListDoubleCopyWith<$R2, ListDouble, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ListDoubleCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ListDoubleOrStringStringMapper
    extends SubClassMapperBase<ListDoubleOrStringString> {
  ListDoubleOrStringStringMapper._();

  static ListDoubleOrStringStringMapper? _instance;
  static ListDoubleOrStringStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = ListDoubleOrStringStringMapper._(),
      );
      ListDoubleOrStringMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ListDoubleOrStringString';

  static String _$value(ListDoubleOrStringString v) => v.value;
  static const Field<ListDoubleOrStringString, String> _f$value = Field(
    'value',
    _$value,
  );

  @override
  final MappableFields<ListDoubleOrStringString> fields = const {
    #value: _f$value,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'string';
  @override
  late final ClassMapperBase superMapper =
      ListDoubleOrStringMapper.ensureInitialized();

  static ListDoubleOrStringString _instantiate(DecodingData data) {
    return ListDoubleOrStringString(data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static ListDoubleOrStringString fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ListDoubleOrStringString>(map);
  }

  static ListDoubleOrStringString fromJson(String json) {
    return ensureInitialized().decodeJson<ListDoubleOrStringString>(json);
  }
}

mixin ListDoubleOrStringStringMappable {
  String toJson() {
    return ListDoubleOrStringStringMapper.ensureInitialized()
        .encodeJson<ListDoubleOrStringString>(this as ListDoubleOrStringString);
  }

  Map<String, dynamic> toMap() {
    return ListDoubleOrStringStringMapper.ensureInitialized()
        .encodeMap<ListDoubleOrStringString>(this as ListDoubleOrStringString);
  }

  ListDoubleOrStringStringCopyWith<
    ListDoubleOrStringString,
    ListDoubleOrStringString,
    ListDoubleOrStringString
  >
  get copyWith =>
      _ListDoubleOrStringStringCopyWithImpl<
        ListDoubleOrStringString,
        ListDoubleOrStringString
      >(this as ListDoubleOrStringString, $identity, $identity);
  @override
  String toString() {
    return ListDoubleOrStringStringMapper.ensureInitialized().stringifyValue(
      this as ListDoubleOrStringString,
    );
  }

  @override
  bool operator ==(Object other) {
    return ListDoubleOrStringStringMapper.ensureInitialized().equalsValue(
      this as ListDoubleOrStringString,
      other,
    );
  }

  @override
  int get hashCode {
    return ListDoubleOrStringStringMapper.ensureInitialized().hashValue(
      this as ListDoubleOrStringString,
    );
  }
}

extension ListDoubleOrStringStringValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ListDoubleOrStringString, $Out> {
  ListDoubleOrStringStringCopyWith<$R, ListDoubleOrStringString, $Out>
  get $asListDoubleOrStringString => $base.as(
    (v, t, t2) => _ListDoubleOrStringStringCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ListDoubleOrStringStringCopyWith<
  $R,
  $In extends ListDoubleOrStringString,
  $Out
>
    implements ListDoubleOrStringCopyWith<$R, $In, $Out> {
  @override
  $R call({String? value});
  ListDoubleOrStringStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ListDoubleOrStringStringCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ListDoubleOrStringString, $Out>
    implements
        ListDoubleOrStringStringCopyWith<$R, ListDoubleOrStringString, $Out> {
  _ListDoubleOrStringStringCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ListDoubleOrStringString> $mapper =
      ListDoubleOrStringStringMapper.ensureInitialized();
  @override
  $R call({String? value}) =>
      $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  ListDoubleOrStringString $make(CopyWithData data) =>
      ListDoubleOrStringString(data.get(#value, or: $value.value));

  @override
  ListDoubleOrStringStringCopyWith<$R2, ListDoubleOrStringString, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ListDoubleOrStringStringCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

