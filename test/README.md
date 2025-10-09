# Jamai SDK Tests

This directory contains tests for the Jamai SDK components.

## Test Files

- `project_test_simple.dart` - Comprehensive tests for the Project component
- `jamai_sdk_test.dart` - Main test file (currently empty)

## Running Tests

To run all tests:
```bash
dart test
```

To run only the project tests:
```bash
dart test test/project_test_simple.dart
```

## Environment Configuration

For integration tests, you need to configure your API credentials. The tests can be configured in two ways:

### Option 1: Edit the test file directly

Edit `test/project_test_simple.dart` and update the constants at the top of the file:

```dart
const String apiUrl = 'https://cloud.jamaibase.com';
const String apiKey = 'your_actual_api_key_here';
const String testOrganizationId = 'your_organization_id';
const String testProjectId = 'your_project_id';
const String testUserId = 'your_user_id';
```

### Option 2: Use environment variables (future implementation)

1. Copy `.env.example` to `.env`:
```bash
cp .env.example .env
```

2. Edit `.env` with your actual values:
```
JAMAI_API_URL=https://cloud.jamaibase.com
JAMAI_API_KEY=your_api_key_here
TEST_ORGANIZATION_ID=your_test_organization_id
TEST_PROJECT_NAMe=your_TEST_PROJECT_NAMe
TEST_USER_ID=your_test_user_id
```

3. The test will automatically load these values (implementation pending).

## Test Coverage

The project tests cover:

### CRUD Operations
- Create project
- Get project
- Update project
- Delete project

### Organization Operations
- List projects by organization

### Member Operations
- Join project
- Get project member
- List project members
- Update project member role
- Leave project

### Import/Export Operations
- Export project
- Import project data
- Import project migration

### Template Operations
- Import template

### Invitation Operations
- Create invitation
- List invitations
- Delete invitation

### Error Handling
- Invalid project ID
- Unauthorized access

## Notes

- Tests that require API credentials will be skipped if the API key is not provided
- Some tests create temporary resources that are cleaned up after the test
- Error handling tests verify that the SDK properly handles API errors