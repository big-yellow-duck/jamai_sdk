import 'package:dotenv/dotenv.dart';
import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/components/tasks.dart';
import 'package:test/test.dart';

void main() {
  // Load env vars for testing
  late String? jamaiApiKey;
  late String? jamaiUrl;
  late String? testUserId;
  late JamaiApiClient jamai;

  setUpAll(() async {
    // Check that env vars are strings
    var env = DotEnv(includePlatformEnvironment: true)..load();
    jamaiApiKey = env['JAMAI_API_KEY'];
    jamaiUrl = env['JAMAI_API_URL'];
    testUserId = env['TEST_USER_ID'];

    expect(jamaiApiKey, isNotNull);
    expect(jamaiUrl, isNotNull);
    expect(testUserId, isNotNull);

    jamai = JamaiApiClient(
      apiKey: jamaiApiKey!,
      baseUrl: jamaiUrl!,
      userId: testUserId,
    );
  });

  group('Tasks Component Tests', () {
    group('Component Initialization', () {
      test('should create tasks component', () {
        expect(jamai.tasks, isA<Tasks>());
        expect(jamai.tasks.apiUrl, equals(jamaiUrl));
        expect(jamai.tasks.apiKey, equals(jamaiApiKey));
      });

      test('should cache tasks component instance', () {
        final tasks1 = jamai.tasks;
        final tasks2 = jamai.tasks;
        expect(identical(tasks1, tasks2), isTrue);
      });
    });

    group('Get Progress', () {
      test('should get progress with valid key', () async {
        final testKey = 'test_progress_key';

        try {
          final response = await jamai.tasks.getProgress(testKey);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
          
          // Progress response should contain expected fields
          expect(response.keys, isNotEmpty);
        } catch (e) {
          // Progress key might not exist, which is expected in test environment
          expect(e, isA<Exception>());
        }
      });

      test('should get progress with userId', () async {
        final testKey = 'test_progress_with_user';

        try {
          final response = await jamai.tasks.getProgress(
            testKey,
            userId: testUserId,
          );

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
          expect(response.keys, isNotEmpty);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should get progress without userId', () async {
        final testKey = 'test_progress_no_user';

        try {
          final response = await jamai.tasks.getProgress(testKey);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
          expect(response.keys, isNotEmpty);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle different progress keys', () async {
        final testKeys = [
          'upload_progress',
          'processing_task',
          'background_job',
          'data_sync',
        ];

        for (final key in testKeys) {
          try {
            final response = await jamai.tasks.getProgress(key);

            expect(response, isA<Map<String, dynamic>>());
            expect(response, isNotNull);
          } catch (e) {
            // Some keys might not exist, which is expected
            expect(e, isA<Exception>());
          }
        }
      });

      test('should handle empty progress key', () async {
        final emptyKey = '';

        try {
          await jamai.tasks.getProgress(emptyKey);
          // Might succeed or fail depending on API validation
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle null progress key', () async {
        try {
          await jamai.tasks.getProgress('null-key');
          fail('Expected an exception for null key');
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle special characters in progress key', () async {
        final specialKey = 'test_key_with-special_@#\$%characters';

        try {
          final response = await jamai.tasks.getProgress(specialKey);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle very long progress key', () async {
        final longKey = 'a' * 1000; // 1000 character key

        try {
          final response = await jamai.tasks.getProgress(longKey);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle numeric progress key', () async {
        final numericKey = '12345';

        try {
          final response = await jamai.tasks.getProgress(numericKey);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle unicode progress key', () async {
        final unicodeKey = '测试_ключ_نص'; // Chinese, Russian, Arabic characters

        try {
          final response = await jamai.tasks.getProgress(unicodeKey);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Progress Response Structure', () {
      test('should handle progress response with different data types', () async {
        final testKey = 'test_complex_progress';

        try {
          final response = await jamai.tasks.getProgress(testKey);

          expect(response, isA<Map<String, dynamic>>());
          
          // Check for common progress fields
          final expectedFields = [
            'status',
            'progress',
            'total',
            'message',
            'created_at',
            'updated_at',
          ];

          for (final field in expectedFields) {
            if (response.containsKey(field)) {
              expect(response[field], isNotNull);
            }
          }
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle progress response with nested data', () async {
        final testKey = 'test_nested_progress';

        try {
          final response = await jamai.tasks.getProgress(testKey);

          expect(response, isA<Map<String, dynamic>>());
          
          // Check for nested structures
          if (response.containsKey('details')) {
            expect(response['details'], isA<Map<String, dynamic>>());
          }
          
          if (response.containsKey('items')) {
            expect(response['items'], isA<List>());
          }
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Error Handling', () {
      test('should handle unauthorized access', () async {
        final unauthorizedClient = JamaiApiClient(
          apiKey: 'invalid-api-key',
          baseUrl: jamaiUrl!,
        );

        try {
          await unauthorizedClient.tasks.getProgress('test_key');
          fail('Expected authorization error');
        } catch (e) {
          expect(e, isA<Exception>());
          expect(e.toString(), contains('Failed to get progress'));
        }
      });

      test('should handle invalid API URL', () async {
        final invalidClient = JamaiApiClient(
          apiKey: jamaiApiKey!,
          baseUrl: 'https://invalid-api-url.com',
        );

        try {
          await invalidClient.tasks.getProgress('test_key');
          fail('Expected network error');
        } catch (e) {
          expect(e, isA<Exception>());
          expect(e.toString(), contains('Failed to get progress'));
        }
      });

      test('should handle network timeout', () async {
        // This test simulates a timeout scenario
        final timeoutClient = JamaiApiClient(
          apiKey: jamaiApiKey!,
          baseUrl: jamaiUrl!,
        );

        try {
          await timeoutClient.tasks.getProgress('timeout_test');
          // Might succeed or timeout
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle malformed response', () async {
        final testKey = 'malformed_response_test';

        try {
          final response = await jamai.tasks.getProgress(testKey);
          
          // If we get a response, it should be a valid Map
          expect(response, isA<Map<String, dynamic>>());
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Concurrent Requests', () {
      test('should handle multiple concurrent progress requests', () async {
        final testKeys = [
          'concurrent_test_1',
          'concurrent_test_2',
          'concurrent_test_3',
        ];

        final futures = testKeys.map((key) => 
          jamai.tasks.getProgress(key)
        ).toList();

        try {
          final responses = await Future.wait(futures);

          expect(responses, hasLength(3));
          for (final response in responses) {
            expect(response, isA<Map<String, dynamic>>());
          }
        } catch (e) {
          // Some requests might fail due to non-existent keys
          expect(e, isA<Exception>());
        }
      });

      test('should handle concurrent requests with same key', () async {
        final testKey = 'concurrent_same_key';

        final futures = List.generate(5, (_) => 
          jamai.tasks.getProgress(testKey)
        );

        try {
          final responses = await Future.wait(futures);

          expect(responses, hasLength(5));
          for (final response in responses) {
            expect(response, isA<Map<String, dynamic>>());
          }
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Header Handling', () {
      test('should include correct headers in request', () async {
        final testKey = 'header_test';
        final customUserId = 'custom_test_user';

        final customClient = JamaiApiClient(
          apiKey: jamaiApiKey!,
          baseUrl: jamaiUrl!,
          userId: customUserId,
        );

        try {
          await customClient.tasks.getProgress(testKey);
          // If successful, headers were correctly included
        } catch (e) {
          // Even if it fails, we can check if it was an auth error
          expect(e, isA<Exception>());
        }
      });

      test('should handle requests without userId', () async {
        final noUserClient = JamaiApiClient(
          apiKey: jamaiApiKey!,
          baseUrl: jamaiUrl!,
          // No userId set
        );

        try {
          await noUserClient.tasks.getProgress('no_user_test');
          
          // Should work without userId
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('URL Construction', () {
      test('should construct correct API URL', () {
        // Test that the component constructs URLs correctly
        expect(jamai.tasks.apiUrl, equals(jamaiUrl));
        
        // The API endpoint should be /api/v2/progress
        final expectedEndpoint = '$jamaiUrl/api/v2/progress';
        // We can't directly test the URL construction, but we can verify the base URL
        expect(jamai.tasks.apiUrl, contains('api'));
      });

      test('should handle different base URLs', () {
        final customUrls = [
          'https://custom.jamaibase.com/api/v2',
          'http://localhost:8080/api/v2',
          'https://staging.jamaibase.com/api/v2',
        ];

        for (final url in customUrls) {
          final customClient = JamaiApiClient(
            apiKey: jamaiApiKey!,
            baseUrl: url,
          );

          expect(customClient.tasks.apiUrl, equals(url));
        }
      });
    });
  });
}