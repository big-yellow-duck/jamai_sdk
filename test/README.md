# Jamai SDK Tests

This directory contains comprehensive tests for the Jamai SDK components.

## Test Files

### Core Component Tests

- **`project_test.dart`** - Comprehensive tests for the Project component
  - CRUD operations (Create, Read, Update, Delete)
  - Organization operations
  - Member management
  - Import/Export functionality
  - Invitation management
  - Error handling

- **`generative_table_test.dart`** - Extensive tests for the Generative Table component
  - Table creation (Action, Knowledge, Chat)
  - Table listing and retrieval
  - Row management (Add, Update, Delete, Regenerate)
  - Search functionality
  - Column management
  - Import operations
  - File embedding
  - Table deletion

### Newly Added Tests

- **`file_test.dart`** - Comprehensive tests for the File component
  - File upload with various formats (text, binary, images)
  - File proxy functionality
  - Raw file URL generation
  - Thumbnail URL generation
  - Error handling and edge cases
  - Type model validation

- **`tasks_test.dart`** - Complete tests for the Tasks component
  - Progress tracking with valid keys
  - User ID handling
  - Concurrent requests
  - Error scenarios
  - Header validation
  - URL construction

- **`mcp_test.dart`** - Comprehensive tests for the MCP component
  - HTTP POST operations with complex data
  - HTTP GET operations
  - User ID handling
  - Concurrent operations
  - Error handling
  - Response structure validation
  - Data type handling

### Existing Tests (May Need Updates)

- **`conversations_test.dart`** - Tests for the Conversations component
  - Agent management
  - Conversation CRUD operations
  - Message handling
  - Thread operations
  - Search functionality

- **`organization_test.dart`** - Basic tests for the Organization component
  - Model creation and validation
  - JSON serialization

- **`templates_test.dart`** - Comprehensive template tests
  - Template listing and retrieval
  - Table operations
  - Row management
  - Search and pagination

## Test Runner

- **`run_all_tests.dart`** - Comprehensive test runner script
  - Runs all test files sequentially
  - Provides detailed success/failure reporting
  - Calculates execution time
  - Shows success rate percentage
  - Handles error reporting

## Running Tests

### Individual Test Files

To run a specific test file:
```bash
dart test test/<filename>.dart
```

### All Tests

To run all tests using the comprehensive test runner:
```bash
dart test/run_all_tests.dart
```

To run all tests using the standard Dart test command:
```bash
dart test
```

## Environment Configuration

For integration tests, you need to configure your API credentials. The tests can be configured in two ways:

### Option 1: Edit the test file directly

Edit each test file and update the constants at the top of the file:
```dart
const String apiUrl = 'https://cloud.jamaibase.com';
const String apiKey = 'your_actual_api_key_here';
const String testOrganizationId = 'your_organization_id';
const String testProjectName = 'your_test_project_name';
const String testUserId = 'your_test_user_id';
```

### Option 2: Use environment variables (recommended)

1. Copy `.env.example` to `.env`:
```bash
cp .env.example .env
```

2. Edit `.env` with your actual values:
```env
JAMAI_API_URL=https://cloud.jamaibase.com
JAMAI_API_KEY=your_api_key_here
TEST_ORGANIZATION_ID=your_test_organization_id
TEST_PROJECT_NAME=your_test_project_name
TEST_USER_ID=your_test_user_id
```

3. The test will automatically load these values

## Test Coverage Summary

### Components with Full Test Coverage ✅
- **Project** - 100% method coverage
- **Generative Table** - 100% method coverage  
- **File** - 100% method coverage
- **Tasks** - 100% method coverage
- **MCP** - 100% method coverage

### Components Needing Attention ⚠️
- **Conversations** - Tests exist but may need updates for API changes
- **Organization** - Basic tests only, needs API integration tests
- **Templates** - Comprehensive but may need updates for API changes

## Test Structure Pattern

All test files follow this consistent structure:

1. **Environment Setup** - Load API credentials from environment variables
2. **Component Initialization** - Test component creation and caching
3. **Method Testing** - Test each method with various parameters
4. **Error Handling** - Test invalid inputs, auth failures, network errors
5. **Edge Cases** - Test boundary conditions and special cases
6. **Type Validation** - Test model serialization/deserialization
7. **Cleanup** - Proper resource cleanup where applicable

## Best Practices

### Test Organization
- Tests are grouped by functionality (Initialization, Methods, Error Handling, etc.)
- Descriptive test names that explain what is being tested
- Proper setup and teardown for resource management

### Error Handling
- All tests include proper exception handling
- Tests verify specific error messages where applicable
- Both success and failure scenarios are tested

### Data Validation
- Response types are validated using `isA<Type>()` matchers
- Response content is validated for expected fields
- Edge cases like empty data, null values, special characters are tested

### Concurrency Testing
- Multiple components test concurrent operations
- Race conditions and resource contention are verified
- Performance under load is considered

## Troubleshooting

### Common Issues

1. **Environment Variables Not Set**
   - Ensure `.env` file exists with required variables
   - Check that `JAMAI_API_KEY` is valid

2. **Network Connectivity**
   - Verify `JAMAI_API_URL` is accessible
   - Check firewall/proxy settings if needed

3. **Test Dependencies**
   - Run `dart pub get` to ensure all dependencies are installed
   - Check for version conflicts

4. **Authentication Failures**
   - Verify API key is valid and has required permissions
   - Check that user ID has access to test resources

### Debug Mode

For detailed debugging, you can modify test files to:
- Print actual API responses
- Add more verbose logging
- Test with specific known data

## Contributing

When adding new tests:

1. Follow the established test structure pattern
2. Include both positive and negative test cases
3. Add comprehensive error handling
4. Update this README with new test coverage
5. Run the full test suite before submitting

## Notes

- Tests that require API credentials will be skipped if the API key is not provided
- Some tests create temporary resources that are cleaned up after the test
- Error handling tests verify that the SDK properly handles API errors
- The test runner provides a convenient way to run all tests with detailed reporting