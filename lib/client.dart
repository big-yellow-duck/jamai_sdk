import 'package:jamai_sdk/components/conversations.dart';
import 'package:jamai_sdk/components/file.dart';
import 'package:jamai_sdk/components/generative_table.dart';
import 'package:jamai_sdk/components/mcp.dart';
import 'package:jamai_sdk/components/organization.dart';
import 'package:jamai_sdk/components/project.dart';
import 'package:jamai_sdk/components/serving.dart';
import 'package:jamai_sdk/components/tasks.dart';
import 'package:jamai_sdk/components/templates.dart';

/// Lightweight API client used across utility modules
class JamaiApiClient {
  final String baseUrl;
  final String apiKey;
  final String? userId;
  final String? projectId;
  JamaiApiClient({
    this.baseUrl = 'https://api.jamaibase.com/api/v2',
    required this.apiKey,
    this.userId,
    this.projectId,
  });

  /// Provides scoped project operations configured with this client's credentials
  Project get project {
    _project ??= Project(apiUrl: baseUrl, apiKey: apiKey, userId: userId);
    return _project!;
  }

  /// Provides scoped template operations configured with this client's credentials
  Templates get templates {
    _templates ??= Templates(apiUrl: baseUrl, apiKey: apiKey);
    return _templates!;
  }

  /// Provides scoped generative table operations configured with this client's credentials
  ///
  /// Throws a [StateError] if projectId is null since generative tables require
  /// a project context to operate properly.
  GenerativeTable get generativeTable {
    if (projectId == null) {
      throw StateError(
        'ProjectId is required for generative table operations. '
        'Set the projectId on the JamaiApiClient instance before accessing generativeTable.',
      );
    }

    // Cache the instance to avoid recreating it on multiple accesses
    _generativeTable ??= GenerativeTable(
      apiUrl: baseUrl,
      apiKey: apiKey,
      projectId: projectId!,
    );
    return _generativeTable!;
  }

  // Private cached instance for performance optimization
  GenerativeTable? _generativeTable;

  Serving get serving {
    _serving ??= Serving(apiUrl: baseUrl, apiKey: apiKey);
    return _serving!;
  }

  /// Provides scoped file operations configured with this client's credentials
  File get file {
    _file ??= File(apiUrl: baseUrl, apiKey: apiKey);
    return _file!;
  }

  /// Provides scoped task operations configured with this client's credentials
  Tasks get tasks {
    _tasks ??= Tasks(apiUrl: baseUrl, apiKey: apiKey);
    return _tasks!;
  }

  /// Provides scoped MCP operations configured with this client's credentials
  MCP get mcp {
    _mcp ??= MCP(apiUrl: baseUrl, apiKey: apiKey);
    return _mcp!;
  }

  /// Provides scoped organization operations configured with this client's credentials
  Organization get organization {
    _organization ??= Organization(apiUrl: baseUrl, apiKey: apiKey);
    return _organization!;
  }

  /// Provides scoped conversation operations configured with this client's credentials
  Conversations get conversations {
    _conversations ??= Conversations(
      apiUrl: baseUrl,
      apiKey: apiKey,
      userId: userId,
      projectId: projectId,
    );
    return _conversations!;
  }

  // Private cached instances for performance optimization
  Project? _project;
  Templates? _templates;
  Serving? _serving;
  File? _file;
  Tasks? _tasks;
  MCP? _mcp;
  Organization? _organization;
  Conversations? _conversations;
}
