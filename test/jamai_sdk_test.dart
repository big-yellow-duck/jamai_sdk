import 'package:jamai_sdk/client.dart';
import 'package:test/test.dart';

void main() {
  // Main test file for the Jamai SDK
  // Component-specific tests are in separate files:
  // - project_test_simple.dart: Tests for the Project component
  
  group('Jamai SDK', () {
    test(JamaiApiClient(apiKey: ), () {
      // Basic test to ensure the SDK imports correctly
      expect(true, isTrue);
    });
    
    // Add more general SDK tests here
  });
}
