// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'file.dart';

class FileObjectTypeMapper extends EnumMapper<FileObjectType> {
  FileObjectTypeMapper._();

  static FileObjectTypeMapper? _instance;
  static FileObjectTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FileObjectTypeMapper._());
    }
    return _instance!;
  }

  static FileObjectType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  FileObjectType decode(dynamic value) {
    switch (value) {
      case 'file.upload':
        return FileObjectType.fileUpload;
      case 'file.urls':
        return FileObjectType.fileUrls;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(FileObjectType self) {
    switch (self) {
      case FileObjectType.fileUpload:
        return 'file.upload';
      case FileObjectType.fileUrls:
        return 'file.urls';
    }
  }
}

extension FileObjectTypeMapperExtension on FileObjectType {
  dynamic toValue() {
    FileObjectTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<FileObjectType>(this);
  }
}

class FileUploadResponseMapper extends ClassMapperBase<FileUploadResponse> {
  FileUploadResponseMapper._();

  static FileUploadResponseMapper? _instance;
  static FileUploadResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FileUploadResponseMapper._());
      FileObjectTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FileUploadResponse';

  static FileObjectType _$object(FileUploadResponse v) => v.object;
  static const Field<FileUploadResponse, FileObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: FileObjectType.fileUpload,
  );
  static String _$uri(FileUploadResponse v) => v.uri;
  static const Field<FileUploadResponse, String> _f$uri = Field('uri', _$uri);

  @override
  final MappableFields<FileUploadResponse> fields = const {
    #object: _f$object,
    #uri: _f$uri,
  };

  static FileUploadResponse _instantiate(DecodingData data) {
    return FileUploadResponse(
      object: data.dec(_f$object),
      uri: data.dec(_f$uri),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FileUploadResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FileUploadResponse>(map);
  }

  static FileUploadResponse fromJson(String json) {
    return ensureInitialized().decodeJson<FileUploadResponse>(json);
  }
}

mixin FileUploadResponseMappable {
  String toJson() {
    return FileUploadResponseMapper.ensureInitialized()
        .encodeJson<FileUploadResponse>(this as FileUploadResponse);
  }

  Map<String, dynamic> toMap() {
    return FileUploadResponseMapper.ensureInitialized()
        .encodeMap<FileUploadResponse>(this as FileUploadResponse);
  }

  FileUploadResponseCopyWith<
    FileUploadResponse,
    FileUploadResponse,
    FileUploadResponse
  >
  get copyWith =>
      _FileUploadResponseCopyWithImpl<FileUploadResponse, FileUploadResponse>(
        this as FileUploadResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FileUploadResponseMapper.ensureInitialized().stringifyValue(
      this as FileUploadResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return FileUploadResponseMapper.ensureInitialized().equalsValue(
      this as FileUploadResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return FileUploadResponseMapper.ensureInitialized().hashValue(
      this as FileUploadResponse,
    );
  }
}

extension FileUploadResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FileUploadResponse, $Out> {
  FileUploadResponseCopyWith<$R, FileUploadResponse, $Out>
  get $asFileUploadResponse => $base.as(
    (v, t, t2) => _FileUploadResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FileUploadResponseCopyWith<
  $R,
  $In extends FileUploadResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({FileObjectType? object, String? uri});
  FileUploadResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FileUploadResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FileUploadResponse, $Out>
    implements FileUploadResponseCopyWith<$R, FileUploadResponse, $Out> {
  _FileUploadResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FileUploadResponse> $mapper =
      FileUploadResponseMapper.ensureInitialized();
  @override
  $R call({FileObjectType? object, String? uri}) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (uri != null) #uri: uri,
    }),
  );
  @override
  FileUploadResponse $make(CopyWithData data) => FileUploadResponse(
    object: data.get(#object, or: $value.object),
    uri: data.get(#uri, or: $value.uri),
  );

  @override
  FileUploadResponseCopyWith<$R2, FileUploadResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FileUploadResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GetURLRequestMapper extends ClassMapperBase<GetURLRequest> {
  GetURLRequestMapper._();

  static GetURLRequestMapper? _instance;
  static GetURLRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetURLRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetURLRequest';

  static List<String> _$uris(GetURLRequest v) => v.uris;
  static const Field<GetURLRequest, List<String>> _f$uris = Field(
    'uris',
    _$uris,
  );

  @override
  final MappableFields<GetURLRequest> fields = const {#uris: _f$uris};

  static GetURLRequest _instantiate(DecodingData data) {
    return GetURLRequest(uris: data.dec(_f$uris));
  }

  @override
  final Function instantiate = _instantiate;

  static GetURLRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetURLRequest>(map);
  }

  static GetURLRequest fromJson(String json) {
    return ensureInitialized().decodeJson<GetURLRequest>(json);
  }
}

mixin GetURLRequestMappable {
  String toJson() {
    return GetURLRequestMapper.ensureInitialized().encodeJson<GetURLRequest>(
      this as GetURLRequest,
    );
  }

  Map<String, dynamic> toMap() {
    return GetURLRequestMapper.ensureInitialized().encodeMap<GetURLRequest>(
      this as GetURLRequest,
    );
  }

  GetURLRequestCopyWith<GetURLRequest, GetURLRequest, GetURLRequest>
  get copyWith => _GetURLRequestCopyWithImpl<GetURLRequest, GetURLRequest>(
    this as GetURLRequest,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return GetURLRequestMapper.ensureInitialized().stringifyValue(
      this as GetURLRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return GetURLRequestMapper.ensureInitialized().equalsValue(
      this as GetURLRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return GetURLRequestMapper.ensureInitialized().hashValue(
      this as GetURLRequest,
    );
  }
}

extension GetURLRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetURLRequest, $Out> {
  GetURLRequestCopyWith<$R, GetURLRequest, $Out> get $asGetURLRequest =>
      $base.as((v, t, t2) => _GetURLRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GetURLRequestCopyWith<$R, $In extends GetURLRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get uris;
  $R call({List<String>? uris});
  GetURLRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GetURLRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetURLRequest, $Out>
    implements GetURLRequestCopyWith<$R, GetURLRequest, $Out> {
  _GetURLRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetURLRequest> $mapper =
      GetURLRequestMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get uris =>
      ListCopyWith(
        $value.uris,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(uris: v),
      );
  @override
  $R call({List<String>? uris}) =>
      $apply(FieldCopyWithData({if (uris != null) #uris: uris}));
  @override
  GetURLRequest $make(CopyWithData data) =>
      GetURLRequest(uris: data.get(#uris, or: $value.uris));

  @override
  GetURLRequestCopyWith<$R2, GetURLRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GetURLRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GetURLResponseMapper extends ClassMapperBase<GetURLResponse> {
  GetURLResponseMapper._();

  static GetURLResponseMapper? _instance;
  static GetURLResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetURLResponseMapper._());
      FileObjectTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GetURLResponse';

  static FileObjectType _$object(GetURLResponse v) => v.object;
  static const Field<GetURLResponse, FileObjectType> _f$object = Field(
    'object',
    _$object,
    opt: true,
    def: FileObjectType.fileUrls,
  );
  static List<String> _$urls(GetURLResponse v) => v.urls;
  static const Field<GetURLResponse, List<String>> _f$urls = Field(
    'urls',
    _$urls,
  );

  @override
  final MappableFields<GetURLResponse> fields = const {
    #object: _f$object,
    #urls: _f$urls,
  };

  static GetURLResponse _instantiate(DecodingData data) {
    return GetURLResponse(object: data.dec(_f$object), urls: data.dec(_f$urls));
  }

  @override
  final Function instantiate = _instantiate;

  static GetURLResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetURLResponse>(map);
  }

  static GetURLResponse fromJson(String json) {
    return ensureInitialized().decodeJson<GetURLResponse>(json);
  }
}

mixin GetURLResponseMappable {
  String toJson() {
    return GetURLResponseMapper.ensureInitialized().encodeJson<GetURLResponse>(
      this as GetURLResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return GetURLResponseMapper.ensureInitialized().encodeMap<GetURLResponse>(
      this as GetURLResponse,
    );
  }

  GetURLResponseCopyWith<GetURLResponse, GetURLResponse, GetURLResponse>
  get copyWith => _GetURLResponseCopyWithImpl<GetURLResponse, GetURLResponse>(
    this as GetURLResponse,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return GetURLResponseMapper.ensureInitialized().stringifyValue(
      this as GetURLResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return GetURLResponseMapper.ensureInitialized().equalsValue(
      this as GetURLResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return GetURLResponseMapper.ensureInitialized().hashValue(
      this as GetURLResponse,
    );
  }
}

extension GetURLResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetURLResponse, $Out> {
  GetURLResponseCopyWith<$R, GetURLResponse, $Out> get $asGetURLResponse =>
      $base.as((v, t, t2) => _GetURLResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GetURLResponseCopyWith<$R, $In extends GetURLResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get urls;
  $R call({FileObjectType? object, List<String>? urls});
  GetURLResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GetURLResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetURLResponse, $Out>
    implements GetURLResponseCopyWith<$R, GetURLResponse, $Out> {
  _GetURLResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetURLResponse> $mapper =
      GetURLResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get urls =>
      ListCopyWith(
        $value.urls,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(urls: v),
      );
  @override
  $R call({FileObjectType? object, List<String>? urls}) => $apply(
    FieldCopyWithData({
      if (object != null) #object: object,
      if (urls != null) #urls: urls,
    }),
  );
  @override
  GetURLResponse $make(CopyWithData data) => GetURLResponse(
    object: data.get(#object, or: $value.object),
    urls: data.get(#urls, or: $value.urls),
  );

  @override
  GetURLResponseCopyWith<$R2, GetURLResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GetURLResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

