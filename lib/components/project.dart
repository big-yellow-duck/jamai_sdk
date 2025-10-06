import 'dart:convert';
import 'package:http/http.dart' as http;

/// Project-related API operations
class Project {
  String apiUrl;
  String apiKey;
  Project({required this.apiUrl, required this.apiKey});

  /// Creates a new project under an organization
  ///
  /// This endpoint creates a new project under the specified organization.
  /// It requires organization.ADMIN permissions.
  ///
  /// [projectId] - The ID for the new project
  /// [organizationId] - The ID of the organization to create the project under
  /// [name] - The name of the new project (required, max length 255)
  /// [meta] - Optional metadata for the project
  /// [quotas] - Optional quotas to allot to this project
  ///
  /// Returns a Map containing the created project details
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> create({
    required String projectId,
    required String organizationId,
    required String name,
    Map<String, dynamic>? meta,
    Map<String, dynamic>? quotas,
  }) async {
    final url = Uri.parse(
      '$apiUrl/projects',
    ).replace(queryParameters: {'project_id': projectId});

    final requestBody = json.encode({
      'name': name,
      'organization_id': organizationId,
      if (meta != null) 'meta': meta,
      if (quotas != null) 'quotas': quotas,
    });

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
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
  /// Returns a Map containing the detailed project information
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> get({required String projectId}) async {
    final url = Uri.parse(
      '$apiUrl/projects',
    ).replace(queryParameters: {'project_id': projectId});

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
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
  /// [name] - Optional new name for the project (max length 255)
  /// [meta] - Optional metadata to update for the project
  /// [quotas] - Optional quotas to update for this project
  ///
  /// Returns a Map containing the updated project details
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> update({
    required String projectId,
    String? name,
    Map<String, dynamic>? meta,
    Map<String, dynamic>? quotas,
  }) async {
    final url = Uri.parse(
      '$apiUrl/projects',
    ).replace(queryParameters: {'project_id': projectId});

    final requestBody = json.encode({
      if (name != null) 'name': name,
      if (meta != null) 'meta': meta,
      if (quotas != null) 'quotas': quotas,
    });

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: requestBody,
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
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
  Future<Map<String, dynamic>> delete({required String projectId}) async {
    final url = Uri.parse(
      '$apiUrl/projects',
    ).replace(queryParameters: {'project_id': projectId});

    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
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
  Future<Map<String, dynamic>> listProjectsByOrganization({
    required String organizationId,
    int? limit,
    int? offset,
  }) async {
    final url = Uri.parse('$apiUrl/organizations/$organizationId/projects')
        .replace(
          queryParameters: {
            if (limit != null) 'limit': limit.toString(),
            if (offset != null) 'offset': offset.toString(),
          },
        );

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to list projects by organization: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Joins a project
  ///
  /// [projectId] - The ID of the project to join
  ///
  /// Returns a Map containing the join result
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> joinProject({required String projectId}) async {
    final url = Uri.parse('$apiUrl/projects/$projectId/join');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
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
    final url = Uri.parse('$apiUrl/projects/$projectId/members/$userId');

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
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
  ///
  /// [projectId] - The ID of the project to leave
  ///
  /// Returns a Map containing the leave result
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> leaveProject({required String projectId}) async {
    final url = Uri.parse('$apiUrl/projects/$projectId/leave');

    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
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
    int? limit,
    int? offset,
  }) async {
    final url = Uri.parse('$apiUrl/projects/$projectId/members').replace(
      queryParameters: {
        if (limit != null) 'limit': limit.toString(),
        if (offset != null) 'offset': offset.toString(),
      },
    );

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
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
    required String role,
  }) async {
    final url = Uri.parse('$apiUrl/projects/$projectId/members/$userId');

    final requestBody = json.encode({'role': role});

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: requestBody,
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
    final url = Uri.parse(
      '$apiUrl/projects/$projectId/export',
    ).replace(queryParameters: {'format': format});

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
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
      '$apiUrl/projects/$projectId/import',
    ).replace(queryParameters: {'format': format});

    final requestBody = importData is String
        ? importData
        : json.encode(importData);

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
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
      '$apiUrl/projects/$projectId/import/migration',
    ).replace(queryParameters: {'format': format});

    final requestBody = migrationData is String
        ? migrationData
        : json.encode(migrationData);

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
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
      '$apiUrl/projects/$projectId/import/template',
    ).replace(queryParameters: {'template_id': templateId});

    final requestBody = templateData != null ? json.encode(templateData) : null;

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
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
  /// [email] - Email address to invite
  /// [role] - Role to assign to the invited user
  ///
  /// Returns a Map containing the invitation details
  /// Throws an exception if the request fails
  Future<Map<String, dynamic>> createInvitation({
    required String projectId,
    required String email,
    required String role,
  }) async {
    final url = Uri.parse('$apiUrl/projects/$projectId/invitations');

    final requestBody = json.encode({'email': email, 'role': role});

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: requestBody,
    );

    if (response.statusCode == 201) {
      return json.decode(response.body) as Map<String, dynamic>;
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
    final url = Uri.parse(
      '$apiUrl/projects/$projectId/invitations/$invitationId',
    );

    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
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
    final url = Uri.parse('$apiUrl/projects/$projectId/invitations').replace(
      queryParameters: {
        if (limit != null) 'limit': limit.toString(),
        if (offset != null) 'offset': offset.toString(),
      },
    );

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
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
