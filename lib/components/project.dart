import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jamai_sdk/types/db.dart';
import 'package:jamai_sdk/types/common.dart';

/// Project-related API operations
class Project {
  String apiUrl;
  String apiKey;
  String? userId;
  Project({required this.apiUrl, required this.apiKey, this.userId});

  /// Creates a new project under an organization
  ///
  /// This endpoint creates a new project under the specified organization.
  /// It requires organization.ADMIN permissions.
  ///
  /// [projectId] - The ID for the new project
  /// [body] - The project creation data
  ///
  /// Returns the created project details
  /// Throws an exception if the request fails
  Future<ProjectRead> create({
    required String projectId,
    required ProjectCreate body,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/projects');

    final requestBody = json.encode(body.toJson());

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      return ProjectRead.fromJson(jsonResponse);
    } else {
      throw Exception(
        'Failed to create project: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets a project
  ///
  /// This endpoint retrieves a project using the project_id as a query parameter
  /// instead of a path parameter. It returns detailed project information including
  /// organization details, quotas, and chat agents.
  ///
  /// [projectId] - The ID of the project to retrieve
  ///
  /// Returns the detailed project information
  /// Throws an exception if the request fails
  Future<ProjectRead> get({required String projectId}) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/projects',
    ).replace(queryParameters: {'project_id': projectId});

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      return ProjectRead.fromJson(jsonResponse);
    } else {
      throw Exception(
        'Failed to get project: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Updates a project
  ///
  /// This endpoint updates an existing project's details.
  /// It requires organization.ADMIN or project.ADMIN permissions.
  ///
  /// [projectId] - The ID of the project to update
  /// [body] - The project update data
  ///
  /// Returns the updated project details
  /// Throws an exception if the request fails
  Future<ProjectRead> update({
    required String projectId,
    required ProjectUpdate body,
  }) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/projects',
    ).replace(queryParameters: {'project_id': projectId});

    final requestBody = json.encode(body.toJson());

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      return ProjectRead.fromJson(jsonResponse);
    } else {
      throw Exception(
        'Failed to update project: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Deletes a project
  ///
  /// This endpoint deletes an existing project.
  /// It requires organization.ADMIN permissions or no permissions for the project owner.
  ///
  /// [projectId] - The ID of the project to delete
  ///
  /// Returns a Map containing the deletion result with 'ok' status and 'progress_key'
  /// Throws an exception if the request fails
  Future<OkResponse> delete({required String projectId}) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/projects',
    ).replace(queryParameters: {'project_id': projectId});

    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      return OkResponse.fromJson(jsonResponse);
    } else {
      throw Exception(
        'Failed to delete project: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all projects within an organization
  ///
  /// [organizationId] - The ID of the organization
  /// [limit] - Optional limit for the number of projects to return
  /// [offset] - Optional offset for pagination
  ///
  /// Returns a Map containing the list of projects and pagination info
  /// Throws an exception if the request fails
  Future<Page<ProjectRead>> listProjectsByOrganization({
    required String organizationId,
    int? limit,
    int? offset,
    String orderBy = "updated_at",
    bool orderAscending = true,
    String searchQuery = "",
    bool listChatAgents = false,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/projects/list').replace(
      queryParameters: {
        'organization_id': organizationId,
        if (limit != null) 'limit': limit.toString(),
        if (offset != null) 'offset': offset.toString(),
        'order_by': orderBy,
        'order_ascending': orderAscending.toString(),
        'search_query': searchQuery,
        'list_chat_agents': listChatAgents.toString(),
      },
    );

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      final items = (jsonResponse['items'] as List)
          .map((item) => ProjectRead.fromJson(item as Map<String, dynamic>))
          .toList();
      return Page<ProjectRead>(
        items: items,
        offset: jsonResponse['offset'] as int? ?? 0,
        limit: jsonResponse['limit'] as int? ?? 0,
        total: jsonResponse['total'] as int? ?? 0,
        endCursor: jsonResponse['end_cursor'] as String?,
      );
    } else {
      throw Exception(
        'Failed to list projects by organization: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Joins a project
  ///
  /// [userId] - The ID of the user joining the project (required)
  /// [inviteCode] - (Optional) Invite code for validation
  /// [projectId] - (Optional) Project ID. Ignored if invite code is provided
  /// [role] - (Optional) Project role. Ignored if invite code is provided
  ///
  /// Returns a Map containing the join result
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> joinProject({
    required String userId,
    String? inviteCode,
    String? projectId,
    Role? role,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/projects/members').replace(
      queryParameters: {
        'user_id': userId,
        if (inviteCode != null) 'invite_code': inviteCode,
        if (projectId != null) 'project_id': projectId,
        if (role != null) 'role': role.value,
      },
    );

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (this.userId != null) 'X-USER-ID': this.userId!,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to join project: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets a specific project member
  ///
  /// [projectId] - The ID of the project
  /// [userId] - The ID of the user to retrieve
  ///
  /// Returns a Map containing the member details
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> getProjectMember({
    required String projectId,
    required String userId,
  }) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/projects/members',
    ).replace(queryParameters: {'user_id': userId, 'project_id': projectId});

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (this.userId != null) 'X-USER-ID': this.userId!,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to get project member: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Leaves a project
  /// [userId] -  The ID of the user to leave
  /// [projectId] - The ID of the project to leave
  ///
  /// Returns a Map containing the leave result
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> leaveProject({
    required String userId,
    required String projectId,
  }) async {
    final url = Uri.parse(
      '$apiUrl/api/v2/projects/members',
    ).replace(queryParameters: {'user_id': userId, 'project_id': projectId});

    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (this.userId != null) 'X-USER-ID': this.userId!,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to leave project: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all project members
  ///
  /// [projectId] - The ID of the project
  /// [limit] - Optional limit for the number of members to return
  /// [offset] - Optional offset for pagination
  ///
  /// Returns a Map containing the list of project members and pagination info
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> listProjectMembers({
    required String projectId,
    int? offset,
    int? limit,
    OrderBy? orderBy,
    bool? orderAscending,
    String? searchQuery,
    List<String>? searchColumns,
    String? after,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/projects/members/list').replace(
      queryParameters: {
        if (offset != null) 'offset': offset.toString(),
        if (limit != null) 'limit': limit.toString(),
        if (orderBy != null) 'order_by': orderBy.toString(),
        if (orderAscending != null) 'order_ascending': orderAscending,
        if (searchQuery != null) 'search_query': searchQuery,
        if (searchColumns != null) 'search_columns': searchColumns,
        if (after != null) 'after': after,
        'project_id': projectId,
      },
    );

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to list project members: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Updates a project member's role
  ///
  /// [projectId] - The ID of the project
  /// [userId] - The ID of the user whose role will be updated
  /// [role] - The new role to assign to the user
  ///
  /// Returns a Map containing the updated member details
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> updateProjectMemberRole({
    required String projectId,
    required String userId,
    required Role role,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/projects/members/role').replace(
      queryParameters: {
        'user_id': userId,
        'project_id': projectId,
        'role': role.value,
      },
    );

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (this.userId != null) 'X-USER-ID': this.userId!,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to update project member role: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Exports project data
  ///
  /// [projectId] - The ID of the project to export
  /// [format] - Export format (e.g., 'json', 'csv')
  ///
  /// Returns a Map containing the export result
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> export({
    required String projectId,
    String format = 'json',
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/projects/export').replace(
      queryParameters: {
        'project_id': projectId,
        'format': format,
      },
    );

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to export project: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Imports project data
  ///
  /// [projectId] - The ID of the project to import data into
  /// [importData] - The data to import (typically a Map or JSON string)
  /// [format] - Optional format of the import data (e.g., 'json', 'csv')
  ///
  /// Returns a Map containing the import result
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> import({
    required String projectId,
    required dynamic importData,
    String format = 'json',
  }) async {
    final url = Uri.parse(
      '$apiUrl/api/projects/$projectId/import',
    ).replace(queryParameters: {'format': format});

    final requestBody = importData is String
        ? importData
        : json.encode(importData);

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to import project: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Imports project migration data
  ///
  /// [projectId] - The ID of the project to import migration data into
  /// [migrationData] - The migration data to import
  /// [format] - Optional format of the migration data (e.g., 'json')
  ///
  /// Returns a Map containing the migration import result
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> importProjectMigration({
    required String projectId,
    required dynamic migrationData,
    String format = 'json',
  }) async {
    final url = Uri.parse(
      '$apiUrl/api/projects/$projectId/import/migration',
    ).replace(queryParameters: {'format': format});

    final requestBody = migrationData is String
        ? migrationData
        : json.encode(migrationData);

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to import project migration: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Imports a template into a project
  ///
  /// [projectId] - The ID of the project to import the template into
  /// [templateId] - The ID of the template to import
  /// [templateData] - Optional template data to customize the import
  ///
  /// Returns a Map containing the template import result
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> importTemplate({
    required String projectId,
    required String templateId,
    Map<String, dynamic>? templateData,
  }) async {
    final url = Uri.parse(
      '$apiUrl/api/projects/$projectId/import/template',
    ).replace(queryParameters: {'template_id': templateId});

    final requestBody = templateData != null ? json.encode(templateData) : null;

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to import template: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Creates a project invitation
  ///
  /// [projectId] - The ID of the project
  /// [userEmail] - Email address to invite
  /// [role] - Role to assign to the invited user
  /// [validDays] - Code validity in days (must be > 0 and <= 7)
  ///
  /// Returns a VerificationCodeRead containing the invitation details
  /// Throws an exception if the request fails
  Future<VerificationCodeRead> createInvitation({
    required String projectId,
    required String userEmail,
    required Role role,
    int validDays = 7,
  }) async {
    // Validate validDays parameter
    if (validDays <= 0 || validDays > 7) {
      throw ArgumentError('validDays must be > 0 and <= 7');
    }

    final url = Uri.parse('$apiUrl/api/v2/projects/invites').replace(
      queryParameters: {
        'user_email': userEmail,
        'project_id': projectId,
        'role': role.value,
        'valid_days': validDays.toString(),
      },
    );

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      return VerificationCodeRead.fromJson(jsonResponse);
    } else {
      throw Exception(
        'Failed to create invitation: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Deletes a project invitation
  ///
  /// [projectId] - The ID of the project
  /// [invitationId] - The ID of the invitation to delete
  ///
  /// Returns a Map containing the deletion result
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> deleteInvitation({
    required String projectId,
    required String invitationId,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/projects/invites').replace(
      queryParameters: {'project_id': projectId, 'invite_id': invitationId},
    );

    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to delete invitation: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all project invitations
  ///
  /// [projectId] - The ID of the project
  /// [limit] - Optional limit for the number of invitations to return
  /// [offset] - Optional offset for pagination
  ///
  /// Returns a Map containing the list of invitations
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> listInvitations({
    required String projectId,
    int? limit,
    int? offset,
  }) async {
    final url = Uri.parse('$apiUrl/api/v2/projects/invites/list').replace(
      queryParameters: {
        'project_id': projectId,
        if (limit != null) 'limit': limit.toString(),
        if (offset != null) 'offset': offset.toString(),
      },
    );

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
        if (userId != null) 'X-USER-ID': userId!,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to list invitations: ${response.statusCode} - ${response.body}',
      );
    }
  }
}
