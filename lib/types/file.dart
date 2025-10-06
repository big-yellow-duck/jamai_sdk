/// Object type for file upload response
enum FileObjectType {
  fileUpload('file.upload'),
  fileUrls('file.urls');

  final String value;
  const FileObjectType(this.value);

  @override
  String toString() => value;
}

/// Response model for file upload operations
class FileUploadResponse {
  /// The object type, which is always "file.upload"
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

  /// Creates a FileUploadResponse from JSON
  factory FileUploadResponse.fromJson(Map<String, dynamic> json) {
    return FileUploadResponse(
      object: json['object'] == 'file.upload'
          ? FileObjectType.fileUpload
          : FileObjectType.fileUpload,
      uri: json['uri'] as String,
    );
  }

  /// Converts the FileUploadResponse to JSON
  Map<String, dynamic> toJson() {
    return {'object': object.value, 'uri': uri};
  }
}

/// Request model for getting pre-signed URLs or local file paths
class GetURLRequest {
  /// A list of file URIs for which pre-signed URLs or local file paths are requested.
  /// The service will return a corresponding list of pre-signed URLs or local file paths.
  final List<String> uris;

  const GetURLRequest({required this.uris});

  /// Creates a GetURLRequest from JSON
  factory GetURLRequest.fromJson(Map<String, dynamic> json) {
    return GetURLRequest(uris: (json['uris'] as List<dynamic>).cast<String>());
  }

  /// Converts the GetURLRequest to JSON
  Map<String, dynamic> toJson() {
    return {'uris': uris};
  }
}

/// Response model for getting pre-signed URLs or local file paths
class GetURLResponse {
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

  /// Creates a GetURLResponse from JSON
  factory GetURLResponse.fromJson(Map<String, dynamic> json) {
    return GetURLResponse(
      object: json['object'] == 'file.urls'
          ? FileObjectType.fileUrls
          : FileObjectType.fileUrls,
      urls: (json['urls'] as List<dynamic>).cast<String>(),
    );
  }

  /// Converts the GetURLResponse to JSON
  Map<String, dynamic> toJson() {
    return {'object': object.value, 'urls': urls};
  }
}
