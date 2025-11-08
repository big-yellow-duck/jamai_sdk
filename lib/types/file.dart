import 'package:dart_mappable/dart_mappable.dart';

part "file.mapper.dart";

@MappableEnum()
enum FileObjectType {
  @MappableValue('file.upload')
  fileUpload('file.upload'),
  @MappableValue('file.urls')
  fileUrls('file.urls');

  final String value;
  const FileObjectType(this.value);

  @override
  String toString() => value;

  factory FileObjectType.fromValue(String value) =>
      FileObjectTypeMapper.fromValue(value);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class FileUploadResponse with FileUploadResponseMappable {
  final FileObjectType object;

  /// The URI of the uploaded file
  ///
  /// Examples:
  /// - s3://bucket-name/raw/org_id/project_id/uuid/filename.ext
  /// - file:///path/to/raw/file.ext
  final String uri;

  const FileUploadResponse({
    this.object = FileObjectType.fileUpload,
    required this.uri,
  });

  factory FileUploadResponse.fromJson(String json) => FileUploadResponseMapper.fromJson(json);
  factory FileUploadResponse.fromMap(Map<String, dynamic> map) => FileUploadResponseMapper.fromMap(map);
}

/// Request model for getting pre-signed URLs or local file paths
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GetURLRequest with GetURLRequestMappable {
  /// A list of file URIs for which pre-signed URLs or local file paths are requested.
  /// The service will return a corresponding list of pre-signed URLs or local file paths.
  final List<String> uris;

  const GetURLRequest({required this.uris});

  factory GetURLRequest.fromJson(String json) => GetURLRequestMapper.fromJson(json);
  factory GetURLRequest.fromMap(Map<String, dynamic> map) => GetURLRequestMapper.fromMap(map);
}

/// Response model for getting pre-signed URLs or local file paths
@MappableClass(caseStyle: CaseStyle.snakeCase)
class GetURLResponse with GetURLResponseMappable {
  /// The object type, which is always "file.urls"
  final FileObjectType object;

  /// A list of pre-signed URLs or local file paths
  ///
  /// Examples:
  /// - https://presigned-url-for-file1.ext
  /// - /path/to/file2.ext
  final List<String> urls;

  const GetURLResponse({
    this.object = FileObjectType.fileUrls,
    required this.urls,
  });

  factory GetURLResponse.fromJson(String json) => GetURLResponseMapper.fromJson(json);
  factory GetURLResponse.fromMap(Map<String, dynamic> map) => GetURLResponseMapper.fromMap(map);
}
