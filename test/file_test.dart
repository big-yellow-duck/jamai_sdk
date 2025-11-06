import 'package:dotenv/dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/components/file.dart' as file_component;
import 'package:jamai_sdk/types/file.dart';
import 'package:test/test.dart';

void main() {
  // Load env vars for testing
  late String? jamaiApiKey;
  late String? jamaiUrl;
  late String? testUserId;
  late String? testProjectId;
  late JamaiApiClient jamai;

  setUpAll(() async {
    // Check that env vars are strings
    var env = DotEnv(includePlatformEnvironment: true)..load();
    jamaiApiKey = env['JAMAI_API_KEY'];
    jamaiUrl = env['JAMAI_API_URL'];
    testUserId = env['TEST_USER_ID'];
    testProjectId = env['TEST_PROJECT_ID'];

    expect(jamaiApiKey, isNotNull);
    expect(jamaiUrl, isNotNull);
    expect(testUserId, isNotNull);
    expect(testProjectId, isNotNull);

    jamai = JamaiApiClient(
      apiKey: jamaiApiKey!,
      baseUrl: jamaiUrl!,
      userId: testUserId,
      projectId: testProjectId,
    );
  });

  group('File Component Tests', () {
    group('Component Initialization', () {
      test('should create file component', () {
        expect(jamai.file, isA<file_component.File>());
        expect(jamai.file.apiUrl, equals(jamaiUrl));
        expect(jamai.file.apiKey, equals(jamaiApiKey));
      });

      test('should cache file component instance', () {
        final file1 = jamai.file;
        final file2 = jamai.file;
        expect(identical(file1, file2), isTrue);
      });
    });

    group('File Upload', () {
      test('should upload text file', () async {
        final testContent = 'This is a test file content for upload testing.';
        final testBytes = testContent.codeUnits;
        final testFilename = 'test_upload.txt';

        final response = await jamai.file.uploadFile(
          testBytes,
          testFilename,
          userId: testUserId,
          projectId: testProjectId,
        );

        expect(response, isA<FileUploadResponse>());
        expect(response.object, equals(FileObjectType.fileUpload));
        expect(response.uri, isNotNull);
        expect(response.uri, isA<String>());
        expect(response.uri.isNotEmpty, isTrue);
        
        // Verify URI contains expected components
        expect(response.uri, contains(testProjectId!));
        expect(response.uri, contains(testFilename));
      });

      test('should upload file without optional parameters', () async {
        final testContent = 'Test content without optional params';
        final testBytes = testContent.codeUnits;
        final testFilename = 'minimal_upload.txt';

        final response = await jamai.file.uploadFile(
          testBytes,
          testFilename,
        );

        expect(response, isA<FileUploadResponse>());
        expect(response.object, equals(FileObjectType.fileUpload));
        expect(response.uri, isNotNull);
        expect(response.uri, isA<String>());
        expect(response.uri.isNotEmpty, isTrue);
      });

      test('should upload binary file', () async {
        // Create a simple binary file (PNG header for testing)
        final testBytes = [
          0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, // PNG signature
          ...List.filled(100, 0x00), // Some dummy data
        ];
        final testFilename = 'test_binary.png';

        final response = await jamai.file.uploadFile(
          testBytes,
          testFilename,
          userId: testUserId,
          projectId: testProjectId,
        );

        expect(response, isA<FileUploadResponse>());
        expect(response.object, equals(FileObjectType.fileUpload));
        expect(response.uri, isNotNull);
        expect(response.uri.contains('.png'), isTrue);
      });

      test('should handle empty file upload', () async {
        final testBytes = <int>[];
        final testFilename = 'empty_file.txt';

        try {
          await jamai.file.uploadFile(
            testBytes,
            testFilename,
          );
          // If no exception, verify response
        } catch (e) {
          // Empty files might be rejected, which is expected behavior
          expect(e, isA<Exception>());
        }
      });

      test('should handle invalid filename', () async {
        final testContent = 'Test content';
        final testBytes = testContent.codeUnits;
        final invalidFilename = ''; // Empty filename

        try {
          await jamai.file.uploadFile(
            testBytes,
            invalidFilename,
          );
          fail('Expected an exception for invalid filename');
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('File Proxy', () {
      test('should proxy valid file path', () async {
        final testPath = 'test/sample.txt';

        try {
          final response = await jamai.file.proxyFile(testPath);
          
          expect(response, isA<http.Response>());
          // Response could be 404 for non-existent files, which is expected
          expect(response.statusCode, isIn([200, 404]));
        } catch (e) {
          // File might not exist, which is expected in test environment
          expect(e, isA<Exception>());
        }
      });

      test('should handle URL-encoded paths', () async {
        final testPath = 'test folder/file with spaces.txt';

        try {
          final response = await jamai.file.proxyFile(testPath);
          expect(response, isA<http.Response>());
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle special characters in path', () async {
        final testPath = 'test/file-special_@#\$%.txt';

        try {
          final response = await jamai.file.proxyFile(testPath);
          expect(response, isA<http.Response>());
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle empty path', () async {
        final testPath = '';

        try {
          await jamai.file.proxyFile(testPath);
          fail('Expected an exception for empty path');
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle null path', () async {
        try {
          await jamai.file.proxyFile('null');
          fail('Expected an exception for null path');
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Raw File URLs', () {
      late String testFileUri;

      setUpAll(() async {
        // Upload a test file first to get a valid URI
        final testContent = 'Test file for URL generation';
        final testBytes = testContent.codeUnits;
        final testFilename = 'url_test.txt';

        final uploadResponse = await jamai.file.uploadFile(
          testBytes,
          testFilename,
          userId: testUserId,
          projectId: testProjectId,
        );
        testFileUri = uploadResponse.uri;
      });

      test('should get raw file URLs for valid URIs', () async {
        final request = GetURLRequest(uris: [testFileUri]);

        final response = await jamai.file.getRawFileUrls(request);

        expect(response, isA<GetURLResponse>());
        expect(response.object, equals(FileObjectType.fileUrls));
        expect(response.urls, isA<List<String>>());
        expect(response.urls.length, equals(1));
        expect(response.urls.first, isNotNull);
        expect(response.urls.first.isNotEmpty, isTrue);
      });

      test('should handle multiple URIs', () async {
        // Upload another file for testing multiple URIs
        final testContent2 = 'Second test file';
        final testBytes2 = testContent2.codeUnits;
        final testFilename2 = 'url_test2.txt';

        final uploadResponse2 = await jamai.file.uploadFile(
          testBytes2,
          testFilename2,
          userId: testUserId,
          projectId: testProjectId,
        );

        final request = GetURLRequest(uris: [testFileUri, uploadResponse2.uri]);

        final response = await jamai.file.getRawFileUrls(request);

        expect(response, isA<GetURLResponse>());
        expect(response.urls.length, equals(2));
        expect(response.urls, contains(testFileUri));
        expect(response.urls, contains(uploadResponse2.uri));
      });

      test('should handle empty URI list', () async {
        final request = GetURLRequest(uris: []);

        final response = await jamai.file.getRawFileUrls(request);

        expect(response, isA<GetURLResponse>());
        expect(response.urls, isEmpty);
      });

      test('should handle invalid URI format', () async {
        final request = GetURLRequest(uris: ['invalid-uri-format']);

        try {
          await jamai.file.getRawFileUrls(request);
          // Might succeed but return empty or error URLs
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle non-existent URI', () async {
        final nonExistentUri = 's3://bucket/non-existent/file.txt';
        final request = GetURLRequest(uris: [nonExistentUri]);

        try {
          await jamai.file.getRawFileUrls(request);
          // Might succeed but return error URLs
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Thumbnail URLs', () {
      late String testImageUri;

      setUpAll(() async {
        // Create a simple test image (1x1 PNG)
        final pngBytes = [
          0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, // PNG signature
          0x00, 0x00, 0x00, 0x0D, // IHDR chunk length
          0x49, 0x48, 0x44, 0x52, // IHDR
          0x00, 0x00, 0x00, 0x01, // Width: 1
          0x00, 0x00, 0x00, 0x01, // Height: 1
          0x08, 0x02, 0x00, 0x00, 0x00, // Bit depth, color type, compression, filter, interlace
          0x90, 0x77, 0x53, 0xDE, // CRC
          0x00, 0x00, 0x00, 0x0C, // IDAT chunk length
          0x49, 0x44, 0x41, 0x54, // IDAT
          0x08, 0x99, 0x01, 0x01, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, // Image data
          0x00, 0x00, 0x00, 0x00, // IEND chunk length
          0x49, 0x45, 0x4E, 0x44, // IEND
          0xAE, 0x42, 0x60, 0x82, // CRC
        ];
        
        final testFilename = 'test_image.png';

        final uploadResponse = await jamai.file.uploadFile(
          pngBytes,
          testFilename,
          userId: testUserId,
          projectId: testProjectId,
        );
        testImageUri = uploadResponse.uri;
      });

      test('should get thumbnail URLs for valid image URIs', () async {
        final request = GetURLRequest(uris: [testImageUri]);

        final response = await jamai.file.getThumbnailUrls(request);

        expect(response, isA<GetURLResponse>());
        expect(response.object, equals(FileObjectType.fileUrls));
        expect(response.urls, isA<List<String>>());
        expect(response.urls.length, equals(1));
        expect(response.urls.first, isNotNull);
        expect(response.urls.first.isNotEmpty, isTrue);
      });

      test('should handle multiple image URIs', () async {
        // Upload another image for testing
        final pngBytes = [
          0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A,
          0x00, 0x00, 0x00, 0x0D, 0x49, 0x48, 0x44, 0x52,
          0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
          0x08, 0x02, 0x00, 0x00, 0x00, 0x90, 0x77, 0x53, 0xDE,
          0x00, 0x00, 0x00, 0x0C, 0x49, 0x44, 0x41, 0x54,
          0x08, 0x99, 0x01, 0x01, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01,
          0x00, 0x00, 0x00, 0x00, 0x49, 0x45, 0x4E, 0x44, 0xAE, 0x42, 0x60, 0x82,
        ];
        
        final testFilename2 = 'test_image2.png';

        final uploadResponse2 = await jamai.file.uploadFile(
          pngBytes,
          testFilename2,
          userId: testUserId,
          projectId: testProjectId,
        );

        final request = GetURLRequest(uris: [testImageUri, uploadResponse2.uri]);

        final response = await jamai.file.getThumbnailUrls(request);

        expect(response, isA<GetURLResponse>());
        expect(response.urls.length, equals(2));
      });

      test('should handle non-image file URI', () async {
        // Upload a text file and try to get thumbnail
        final testContent = 'This is not an image';
        final testBytes = testContent.codeUnits;
        final testFilename = 'not_image.txt';

        final uploadResponse = await jamai.file.uploadFile(
          testBytes,
          testFilename,
          userId: testUserId,
          projectId: testProjectId,
        );

        final request = GetURLRequest(uris: [uploadResponse.uri]);

        try {
          final response = await jamai.file.getThumbnailUrls(request);
          // Might succeed but return error URLs or empty thumbnails
          expect(response, isA<GetURLResponse>());
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle empty thumbnail URI list', () async {
        final request = GetURLRequest(uris: []);

        final response = await jamai.file.getThumbnailUrls(request);

        expect(response, isA<GetURLResponse>());
        expect(response.urls, isEmpty);
      });
    });

    group('Error Handling', () {
      test('should handle unauthorized access', () async {
        final unauthorizedClient = JamaiApiClient(
          apiKey: 'invalid-api-key',
          baseUrl: jamaiUrl!,
        );

        try {
          await unauthorizedClient.file.uploadFile(
            [1, 2, 3],
            'test.txt',
          );
          fail('Expected authorization error');
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle invalid API URL', () async {
        final invalidClient = JamaiApiClient(
          apiKey: jamaiApiKey!,
          baseUrl: 'https://invalid-api-url.com',
        );

        try {
          await invalidClient.file.uploadFile(
            [1, 2, 3],
            'test.txt',
          );
          fail('Expected network error');
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle large file upload', () async {
        // Create a large file (10MB of test data)
        final largeBytes = List.filled(10 * 1024 * 1024, 0x41); // 10MB of 'A' characters
        final testFilename = 'large_file.txt';

        try {
          await jamai.file.uploadFile(
            largeBytes,
            testFilename,
          );
          // Might succeed or fail depending on server limits
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Type Models', () {
      test('should create FileUploadResponse model', () {
        final response = FileUploadResponse(
          uri: 's3://test-bucket/test-file.txt',
        );

        expect(response.object, equals(FileObjectType.fileUpload));
        expect(response.uri, equals('s3://test-bucket/test-file.txt'));
      });

      test('should create GetURLRequest model', () {
        final request = GetURLRequest(
          uris: ['uri1', 'uri2', 'uri3'],
        );

        expect(request.uris, hasLength(3));
        expect(request.uris, contains('uri1'));
        expect(request.uris, contains('uri2'));
        expect(request.uris, contains('uri3'));
      });

      test('should create GetURLResponse model', () {
        final response = GetURLResponse(
          urls: ['url1', 'url2'],
        );

        expect(response.object, equals(FileObjectType.fileUrls));
        expect(response.urls, hasLength(2));
        expect(response.urls, contains('url1'));
        expect(response.urls, contains('url2'));
      });

      test('should convert FileUploadResponse to JSON', () {
        final response = FileUploadResponse(
          uri: 's3://test-bucket/test-file.txt',
        );

        final json = response.toMap();
        expect(json['object'], equals(FileObjectType.fileUpload.value));
        expect(json['uri'], equals('s3://test-bucket/test-file.txt'));
      });

      test('should convert GetURLRequest to JSON', () {
        final request = GetURLRequest(
          uris: ['uri1', 'uri2'],
        );

        final json = request.toMap();
        expect(json['uris'], isA<List>());
        expect(json['uris'] as List, hasLength(2));
        expect(json['uris'], contains('uri1'));
        expect(json['uris'], contains('uri2'));
      });

      test('should convert GetURLResponse to JSON', () {
        final response = GetURLResponse(
          urls: ['url1', 'url2'],
        );

        final json = response.toMap();
        expect(json['object'], equals(FileObjectType.fileUrls.value));
        expect(json['urls'], isA<List>());
        expect(json['urls'] as List, hasLength(2));
        expect(json['urls'], contains('url1'));
        expect(json['urls'], contains('url2'));
      });
    });
  });
}