import 'package:dotenv/dotenv.dart';
import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/types/conversations.dart';
import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/db.dart';
import 'package:test/test.dart';

// conversations tests onyl work after at least 1 chat agent in 1 project is present
void main() {
  // Load env vars for testing
  late String? jamaiApiKey;
  late String? jamaiUrl;
  late JamaiApiClient jamai;
  late String? testOrganizationId;
  late String? testProjectName;
  late String? testUserId;

  // Variables to store created resources for testing
  late String? testConversationId;
  late String? testAgentId;

  setUpAll(() async {
    // Check that env vars are strings
    var env = DotEnv(includePlatformEnvironment: true)..load();
    jamaiApiKey = env['JAMAI_API_KEY'];
    jamaiUrl = env['JAMAI_API_URL'];
    testOrganizationId = env['TEST_ORGANIZATION_ID'];
    testProjectName = env['TEST_PROJECT_NAME'];
    testUserId = env['TEST_USER_ID'];

    expect(jamaiApiKey, isNotNull);
    expect(jamaiUrl, isNotNull);
    expect(testOrganizationId, isNotNull);
    expect(testProjectName, isNotNull);
    expect(testUserId, isNotNull);

    jamai = JamaiApiClient(
      apiKey: jamaiApiKey!,
      baseUrl: jamaiUrl!,
      userId: testUserId,
    );

    // setup a project to make conversations in

    ProjectRead startProject = await jamai.project.create(
      projectId: testProjectName!,
      body: ProjectCreate(
        organizationId: testOrganizationId!,
        name: testProjectName!,
      ),
    );

    testProjectName = startProject.id;

    // update the api client to start testing conversations
    jamai = JamaiApiClient(
      apiKey: jamaiApiKey!,
      baseUrl: jamaiUrl!,
      userId: testUserId!,
      projectId: testProjectName!,
    );
  });

  group('Conversations test', () {
    test('List Agents', () async {
      final agentsListResult = await jamai.conversations.listAgents(
        limit: 10,
        offset: 0,
      );
      expect(agentsListResult, isA<Map<String, dynamic>>());
      expect(agentsListResult['items'], isA<List>());

      // Store the first agent ID for later tests
      if (agentsListResult['items'].isNotEmpty) {
        testAgentId = agentsListResult['items'][0]['id'];
      }
    });

    test('Get Agent', () async {
      if (testAgentId == null) {
        // Skip test if no agent is available
        return;
      }

      final agentResult = await jamai.conversations.getAgent(
        agentId: testAgentId!,
      );
      expect(agentResult, isA<Map<String, dynamic>>());
      expect(agentResult['id'], testAgentId);
    });

    test('Create Conversation', () async {
      if (testAgentId == null) {
        // Skip test if no agent is available
        return;
      }

      final createResult = await jamai.conversations.create(
        request: ConversationCreateRequest(
          agentId: testAgentId!,
          title: 'Test Conversation',
          data: {'message': 'Hello, this is a test message', 'role': 'user'},
        ),
      );
      expect(createResult, isA<Map<String, dynamic>>());
      expect(createResult['id'], isNotNull);

      // Store the conversation ID for later tests
      testConversationId = createResult['id'];
    });

    test('Get Conversation', () async {
      if (testConversationId == null) {
        // Skip test if no conversation is available
        return;
      }

      final conversationResult = await jamai.conversations.get(
        conversationId: testConversationId!,
      );
      expect(conversationResult, isA<Map<String, dynamic>>());
      expect(conversationResult['id'], testConversationId);
    });

    test('List Conversations', () async {
      final conversationsListResult = await jamai.conversations.list(
        limit: 10,
        offset: 0,
      );
      expect(conversationsListResult, isA<Map<String, dynamic>>());
      expect(conversationsListResult['items'], isA<List>());
    });

    test('Generate Title', () async {
      if (testConversationId == null) {
        // Skip test if no conversation is available
        return;
      }

      final titleResult = await jamai.conversations.generateTitle(
        conversationId: testConversationId!,
      );
      expect(titleResult, isA<Map<String, dynamic>>());
    });

    test('Rename Title', () async {
      if (testConversationId == null) {
        // Skip test if no conversation is available
        return;
      }

      final renameResult = await jamai.conversations.renameTitle(
        conversationId: testConversationId!,
        title: 'Updated Test Conversation Title',
      );
      expect(renameResult, isA<Map<String, dynamic>>());
    });

    test('Send Message', () async {
      if (testConversationId == null) {
        // Skip test if no conversation is available
        return;
      }

      final messageResult = await jamai.conversations.sendMessage(
        request: MessageAddRequest(
          conversationId: testConversationId!,
          data: {'message': 'This is another test message', 'role': 'user'},
        ),
      );
      expect(messageResult, isA<Map<String, dynamic>>());
    });

    test('List Messages', () async {
      if (testConversationId == null) {
        // Skip test if no conversation is available
        return;
      }

      final messagesResult = await jamai.conversations.listMessages(
        conversationId: testConversationId!,
        limit: 10,
        offset: 0,
      );
      expect(messagesResult, isA<Map<String, dynamic>>());
      expect(messagesResult['items'], isA<List>());
    });

    test('Update Message', () async {
      if (testConversationId == null) {
        // Skip test if no conversation is available
        return;
      }

      // First get messages to find a message ID
      final messagesResult = await jamai.conversations.listMessages(
        conversationId: testConversationId!,
        limit: 1,
        offset: 0,
      );

      if (messagesResult['items'].isNotEmpty) {
        final messageId = messagesResult['items'][0]['id'];

        final updateResult = await jamai.conversations.updateMessage(
          request: MessageUpdateRequest(
            conversationId: testConversationId!,
            rowId: messageId,
            data: {'message': 'Updated test message', 'role': 'user'},
          ),
        );
        expect(updateResult, isA<Map<String, dynamic>>());
      }
    });

    test('Regenerate Message', () async {
      if (testConversationId == null) {
        // Skip test if no conversation is available
        return;
      }

      // First get messages to find a message ID
      final messagesResult = await jamai.conversations.listMessages(
        conversationId: testConversationId!,
        limit: 1,
        offset: 0,
      );

      if (messagesResult['items'].isNotEmpty) {
        final messageId = messagesResult['items'][0]['id'];

        final regenResult = await jamai.conversations.regenMessage(
          request: MessagesRegenRequest(
            conversationId: testConversationId!,
            rowId: messageId,
          ),
        );
        expect(regenResult, isA<Map<String, dynamic>>());
      }
    });

    test('Get Threads', () async {
      if (testConversationId == null) {
        // Skip test if no conversation is available
        return;
      }

      final threadsResult = await jamai.conversations.getThreads(
        conversationId: testConversationId!,
      );
      expect(threadsResult, isA<Map<String, dynamic>>());
    });

    test('Get Threads by Agent', () async {
      if (testAgentId == null) {
        // Skip test if no agent is available
        return;
      }

      final threadsResult = await jamai.conversations.getThreads(
        agentId: testAgentId!,
      );
      expect(threadsResult, isA<Map<String, dynamic>>());
    });

    test('List Conversations with Search', () async {
      final conversationsListResult = await jamai.conversations.list(
        limit: 10,
        offset: 0,
        searchQuery: ShortString('test'),
        searchColumns: ['title'],
      );
      expect(conversationsListResult, isA<Map<String, dynamic>>());
      expect(conversationsListResult['items'], isA<List>());
    });

    test('List Agents with Search', () async {
      final agentsListResult = await jamai.conversations.listAgents(
        limit: 10,
        offset: 0,
        searchQuery: ShortString('agent'),
        searchColumns: ['title'],
      );
      expect(agentsListResult, isA<Map<String, dynamic>>());
      expect(agentsListResult['items'], isA<List>());
    });

    // Cleanup: Delete the test conversation
    test('Cleanup Test Conversation', () async {
      if (testConversationId == null) {
        // Skip test if no conversation is available
        return;
      }

      final deleteResult = await jamai.conversations.delete(
        conversationId: testConversationId!,
      );
      expect(deleteResult, isA<Map<String, dynamic>>());
    });
  });
}
