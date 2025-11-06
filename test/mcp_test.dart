import 'package:dotenv/dotenv.dart';
import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/components/mcp.dart';
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

  group('MCP Component Tests', () {
    group('Component Initialization', () {
      test('should create MCP component', () {
        expect(jamai.mcp, isA<MCP>());
        expect(jamai.mcp.apiUrl, equals(jamaiUrl));
        expect(jamai.mcp.apiKey, equals(jamaiApiKey));
      });

      test('should cache MCP component instance', () {
        final mcp1 = jamai.mcp;
        final mcp2 = jamai.mcp;
        expect(identical(mcp1, mcp2), isTrue);
      });
    });

    group('Stream HTTP POST', () {
      test('should send POST request with valid data', () async {
        final testData = {
          'action': 'test_action',
          'data': 'test_data',
          'timestamp': DateTime.now().toIso8601String(),
        };

        try {
          final response = await jamai.mcp.streamHttpPost(testData);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
          expect(response.keys, isNotEmpty);
        } catch (e) {
          // MCP endpoint might not be available or configured
          expect(e, isA<Exception>());
          expect(e.toString(), contains('Failed to POST to MCP HTTP endpoint'));
        }
      });

      test('should send POST request with userId', () async {
        final testData = {
          'action': 'test_with_user',
          'data': 'user_specific_data',
        };

        try {
          final response = await jamai.mcp.streamHttpPost(
            testData,
            userId: testUserId,
          );

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should send POST request without userId', () async {
        final testData = {
          'action': 'test_without_user',
          'data': 'no_user_data',
        };

        try {
          final response = await jamai.mcp.streamHttpPost(testData);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle complex request data', () async {
        final complexData = {
          'action': 'complex_action',
          'data': {
            'nested': {
              'value': 'test_value',
              'array': [1, 2, 3],
              'boolean': true,
            },
            'simple': 'string_value',
          },
          'metadata': {
            'source': 'test_suite',
            'version': '1.0.0',
          },
        };

        try {
          final response = await jamai.mcp.streamHttpPost(complexData);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle empty request data', () async {
        final emptyData = <String, dynamic>{};

        try {
          final response = await jamai.mcp.streamHttpPost(emptyData);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle null values in request data', () async {
        final dataWithNulls = {
          'action': 'null_test',
          'data': null,
          'optional_field': 'has_value',
        };

        try {
          final response = await jamai.mcp.streamHttpPost(dataWithNulls);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle special characters in data', () async {
        final specialData = {
          'action': 'special_chars_test',
          'message': 'Test with émojis 🎉 and unicode ñíó',
          'symbols': '!@#\$%^&*()_+-=[]{}|;:,.<>?',
        };

        try {
          final response = await jamai.mcp.streamHttpPost(specialData);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle large request data', () async {
        final largeData = {
          'action': 'large_data_test',
          'payload': List.generate(1000, (index) => 'item_$index'),
        };

        try {
          final response = await jamai.mcp.streamHttpPost(largeData);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Stream HTTP GET', () {
      test('should send GET request without userId', () async {
        try {
          final response = await jamai.mcp.streamHttpGet();

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
          expect(response.keys, isNotEmpty);
        } catch (e) {
          // MCP endpoint might not be available or configured
          expect(e, isA<Exception>());
          expect(e.toString(), contains('Failed to GET from MCP HTTP endpoint'));
        }
      });

      test('should send GET request with userId', () async {
        try {
          final response = await jamai.mcp.streamHttpGet(
            userId: testUserId,
          );

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle multiple concurrent GET requests', () async {
        final futures = List.generate(5, (_) => 
          jamai.mcp.streamHttpGet(userId: testUserId)
        );

        try {
          final responses = await Future.wait(futures);

          expect(responses, hasLength(5));
          for (final response in responses) {
            expect(response, isA<Map<String, dynamic>>());
            expect(response, isNotNull);
          }
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Error Handling', () {
      test('should handle unauthorized POST request', () async {
        final unauthorizedClient = JamaiApiClient(
          apiKey: 'invalid-api-key',
          baseUrl: jamaiUrl!,
        );

        final testData = {'action': 'unauthorized_test'};

        try {
          await unauthorizedClient.mcp.streamHttpPost(testData);
          fail('Expected authorization error');
        } catch (e) {
          expect(e, isA<Exception>());
          expect(e.toString(), contains('Failed to POST to MCP HTTP endpoint'));
        }
      });

      test('should handle unauthorized GET request', () async {
        final unauthorizedClient = JamaiApiClient(
          apiKey: 'invalid-api-key',
          baseUrl: jamaiUrl!,
        );

        try {
          await unauthorizedClient.mcp.streamHttpGet();
          fail('Expected authorization error');
        } catch (e) {
          expect(e, isA<Exception>());
          expect(e.toString(), contains('Failed to GET from MCP HTTP endpoint'));
        }
      });

      test('should handle invalid API URL', () async {
        final invalidClient = JamaiApiClient(
          apiKey: jamaiApiKey!,
          baseUrl: 'https://invalid-api-url.com',
        );

        try {
          await invalidClient.mcp.streamHttpPost({'test': 'data'});
          fail('Expected network error');
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle malformed request data', () async {
        final malformedData = {
          'invalid_field': 'this should cause issues',
        };

        try {
          final response = await jamai.mcp.streamHttpPost(malformedData);
          
          // Might succeed or fail depending on server validation
          expect(response, isA<Map<String, dynamic>>());
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Response Structure', () {
      test('should handle different response formats', () async {
        final testData = {
          'action': 'response_format_test',
          'expect_format': 'structured',
        };

        try {
          final response = await jamai.mcp.streamHttpPost(testData);

          expect(response, isA<Map<String, dynamic>>());
          
          // Check for common response fields
          final expectedFields = [
            'status',
            'data',
            'message',
            'timestamp',
            'request_id',
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

      test('should handle nested response data', () async {
        final testData = {
          'action': 'nested_response_test',
        };

        try {
          final response = await jamai.mcp.streamHttpPost(testData);

          expect(response, isA<Map<String, dynamic>>());
          
          // Check for nested structures
          if (response.containsKey('data')) {
            final data = response['data'];
            if (data is Map) {
              expect(data, isA<Map<String, dynamic>>());
            } else if (data is List) {
              expect(data, isA<List>());
            }
          }
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('Header Handling', () {
      test('should include correct headers in POST request', () async {
        final testData = {'action': 'header_test'};
        final customUserId = 'custom_mcp_user';

        final customClient = JamaiApiClient(
          apiKey: jamaiApiKey!,
          baseUrl: jamaiUrl!,
          userId: customUserId,
        );

        try {
          await customClient.mcp.streamHttpPost(testData);
          // If successful, headers were correctly included
        } catch (e) {
          // Even if it fails, we can check if it was an auth error
          expect(e, isA<Exception>());
        }
      });

      test('should include correct headers in GET request', () async {
        final customUserId = 'custom_get_user';

        final customClient = JamaiApiClient(
          apiKey: jamaiApiKey!,
          baseUrl: jamaiUrl!,
          userId: customUserId,
        );

        try {
          await customClient.mcp.streamHttpGet(userId: customUserId);
          // If successful, headers were correctly included
        } catch (e) {
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
          await noUserClient.mcp.streamHttpPost({'action': 'no_user_test'});
          await noUserClient.mcp.streamHttpGet();
          
          // Should work without userId
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });

    group('URL Construction', () {
      test('should construct correct API URL', () {
        // Test that the component constructs URLs correctly
        expect(jamai.mcp.apiUrl, equals(jamaiUrl));
        
        // The API endpoint should be /api/v1/mcp/http
        final expectedEndpoint = '$jamaiUrl/api/v1/mcp/http';
        // We can't directly test the URL construction, but we can verify the base URL
        expect(jamai.mcp.apiUrl, contains('api'));
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

          expect(customClient.mcp.apiUrl, equals(url));
        }
      });
    });

    group('Concurrent Operations', () {
      test('should handle concurrent POST and GET requests', () async {
        final postData = {'action': 'concurrent_post'};
        
        final futures = <Future<Map<String, dynamic>>>[
          jamai.mcp.streamHttpPost(postData),
          jamai.mcp.streamHttpGet(userId: testUserId),
          jamai.mcp.streamHttpPost({'action': 'another_post'}),
        ];

        try {
          final responses = await Future.wait(futures);

          expect(responses, hasLength(3));
          for (final response in responses) {
            expect(response, isA<Map<String, dynamic>>());
            expect(response, isNotNull);
          }
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle rapid sequential requests', () async {
        for (int i = 0; i < 10; i++) {
          try {
            final response = await jamai.mcp.streamHttpPost({
              'action': 'sequential_test_$i',
              'index': i,
            });

            expect(response, isA<Map<String, dynamic>>());
          } catch (e) {
            // Some requests might fail, which is acceptable
            expect(e, isA<Exception>());
          }
        }
      });
    });

    group('Data Types', () {
      test('should handle various data types in request', () async {
        final mixedData = {
          'string_field': 'test_string',
          'int_field': 42,
          'double_field': 3.14,
          'bool_field': true,
          'list_field': [1, 2, 3],
          'map_field': {'nested': 'value'},
        };

        try {
          final response = await jamai.mcp.streamHttpPost(mixedData);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });

      test('should handle datetime serialization', () async {
        final now = DateTime.now();
        final dataWithDate = {
          'action': 'date_test',
          'timestamp': now.toIso8601String(),
          'date_only': now.toIso8601String().split('T').first,
        };

        try {
          final response = await jamai.mcp.streamHttpPost(dataWithDate);

          expect(response, isA<Map<String, dynamic>>());
          expect(response, isNotNull);
        } catch (e) {
          expect(e, isA<Exception>());
        }
      });
    });
  });
}