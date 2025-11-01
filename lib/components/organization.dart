import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/db.dart';

/// Organization-related API operations
class Organization {
  String apiUrl;
  String apiKey;
  Organization({required this.apiUrl, required this.apiKey});

  /// Creates a new organization
  ///
  /// This endpoint creates a new organization.
  ///
  /// [body] - The organization creation data
  ///
  /// Returns created organization details
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> create({
    required OrganizationCreate body,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations');

    final requestBody = json.encode(body.toJson());

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
        'Failed to create organization: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all organizations
  ///
  /// [offset] - Optional offset for pagination
  /// [limit] - Optional limit for number of organizations to return
  /// [orderBy] - Optional field to order by
  /// [orderAscending] - Optional sort order (default: true)
  ///
  /// Returns a Map containing list of organizations and pagination info
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> list({
    int offset = 0,
    int limit = 100,
    String orderBy = "updated_at",
    bool orderAscending = true,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/list').replace(
      queryParameters: {
        'offset': offset.toString(),
        'limit': limit.toString(),
        'order_by': orderBy,
        'order_ascending': orderAscending.toString(),
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
        'Failed to list organizations: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets a specific organization
  ///
  /// [organizationId] - The ID of organization to retrieve
  ///
  /// Returns detailed organization information
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> get({required String organizationId}) async {
    final url = Uri.parse(
      '$apiUrl/v2/organizations',
    ).replace(queryParameters: {'organization_id': organizationId});

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
        'Failed to get organization: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Updates an organization
  ///
  /// This endpoint updates an existing organization's details.
  /// It requires organization.ADMIN permissions.
  ///
  /// [organizationId] - The ID of organization to update
  /// [body] - The organization update data
  ///
  /// Returns updated organization details
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> update({
    required String organizationId,
    required OrganizationUpdate body,
  }) async {
    final url = Uri.parse(
      '$apiUrl/v2/organizations',
    ).replace(queryParameters: {'organization_id': organizationId});

    final requestBody = json.encode(body.toJson());

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
        'Failed to update organization: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Deletes an organization
  ///
  /// This endpoint deletes an existing organization.
  /// It requires organization.ADMIN permissions.
  ///
  /// [organizationId] - The ID of organization to delete
  /// [missingOk] - Whether to ignore resource not found error
  ///
  /// Returns a Map containing deletion result
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> delete({
    required String organizationId,
    bool missingOk = true,
  }) async {
    final url = Uri.parse(
      '$apiUrl/v2/organizations',
    ).replace(queryParameters: {'organization_id': organizationId});

    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else if (response.statusCode == 404 && missingOk) {
      return {'ok': true};
    } else {
      throw Exception(
        'Failed to delete organization: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Joins an organization
  ///
  /// [userId] - The ID of user to join
  /// [organizationId] - The ID of organization to join
  /// [inviteCode] - Optional invite code
  /// [role] - Optional role to assign
  ///
  /// Returns organization member details
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> join({
    required String userId,
    String? organizationId,
    String? inviteCode,
    String? role,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/members');

    final requestBody = json.encode({
      'user_id': userId,
      if (organizationId != null) 'organization_id': organizationId,
      if (inviteCode != null) 'invite_code': inviteCode,
      if (role != null) 'role': role,
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
        'Failed to join organization: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all members of an organization
  ///
  /// [organizationId] - The ID of organization
  /// [offset] - Optional offset for pagination
  /// [limit] - Optional limit for number of members to return
  /// [orderBy] - Optional field to order by
  /// [orderAscending] - Optional sort order (default: true)
  ///
  /// Returns a Map containing list of organization members and pagination info
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> listMembers({
    required String organizationId,
    int offset = 0,
    int limit = 100,
    String orderBy = "updated_at",
    bool orderAscending = true,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/members/list').replace(
      queryParameters: {
        'organization_id': organizationId,
        'offset': offset.toString(),
        'limit': limit.toString(),
        'order_by': orderBy,
        'order_ascending': orderAscending.toString(),
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
        'Failed to list organization members: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets a specific organization member
  ///
  /// [userId] - The ID of user
  /// [organizationId] - The ID of organization
  ///
  /// Returns organization member details
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> getMember({
    required String userId,
    required String organizationId,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/members').replace(
      queryParameters: {
        'user_id': userId,
        'organization_id': organizationId,
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
        'Failed to get organization member: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Updates a member's role in an organization
  ///
  /// [userId] - The ID of user whose role will be updated
  /// [organizationId] - The ID of organization
  /// [role] - The new role to assign to user
  ///
  /// Returns updated member details
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> updateMemberRole({
    required String userId,
    required String organizationId,
    required Role role,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/members/role').replace(
      queryParameters: {
        'user_id': userId,
        'organization_id': organizationId,
        'role': role.value,
      },
    );

    final response = await http.patch(
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
        'Failed to update member role: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Leaves an organization
  ///
  /// [userId] - The ID of user to leave
  /// [organizationId] - The ID of organization to leave
  ///
  /// Returns a Map containing leave result
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> leave({
    required String userId,
    required String organizationId,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/members').replace(
      queryParameters: {
        'user_id': userId,
        'organization_id': organizationId,
      },
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
        'Failed to leave organization: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets model catalogue for an organization
  ///
  /// [organizationId] - The ID of organization
  /// [offset] - Optional offset for pagination
  /// [limit] - Optional limit for number of models to return
  /// [orderBy] - Optional field to order by
  /// [orderAscending] - Optional sort order (default: true)
  ///
  /// Returns a Map containing list of model configurations and pagination info
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> modelCatalogue({
    required String organizationId,
    int offset = 0,
    int limit = 100,
    String orderBy = "updated_at",
    bool orderAscending = true,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/models/catalogue').replace(
      queryParameters: {
        'organization_id': organizationId,
        'offset': offset.toString(),
        'limit': limit.toString(),
        'order_by': orderBy,
        'order_ascending': orderAscending.toString(),
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
        'Failed to get model catalogue: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Creates an invite for an organization
  ///
  /// [userEmail] - Email address to invite
  /// [organizationId] - The ID of organization
  /// [role] - Role to assign to invited user
  /// [validDays] - Number of days invite is valid for (default: 7)
  ///
  /// Returns invite code details
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> createInvite({
    required String userEmail,
    required String organizationId,
    required String role,
    int validDays = 7,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/invites');

    final requestBody = json.encode({
      'user_email': userEmail,
      'organization_id': organizationId,
      'role': role,
      'valid_days': validDays,
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
        'Failed to create invite: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Lists all invites for an organization
  ///
  /// [organizationId] - The ID of organization
  /// [offset] - Optional offset for pagination
  /// [limit] - Optional limit for number of invites to return
  /// [orderBy] - Optional field to order by
  /// [orderAscending] - Optional sort order (default: true)
  ///
  /// Returns a Map containing list of invites and pagination info
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> listInvites({
    required String organizationId,
    int offset = 0,
    int limit = 100,
    String orderBy = "updated_at",
    bool orderAscending = true,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/invites/list').replace(
      queryParameters: {
        'organization_id': organizationId,
        'offset': offset.toString(),
        'limit': limit.toString(),
        'order_by': orderBy,
        'order_ascending': orderAscending.toString(),
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
        'Failed to list invites: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Deletes an invite
  ///
  /// [inviteId] - The ID of invite to delete
  /// [missingOk] - Whether to ignore resource not found error
  ///
  /// Returns a Map containing deletion result
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> deleteInvite({
    required String inviteId,
    bool missingOk = true,
  }) async {
    final url = Uri.parse(
      '$apiUrl/v2/organizations/invites',
    ).replace(queryParameters: {'invite_id': inviteId});

    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else if (response.statusCode == 404 && missingOk) {
      return {'ok': true};
    } else {
      throw Exception(
        'Failed to delete invite: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Subscribes an organization to a price plan
  ///
  /// [organizationId] - The ID of organization
  /// [pricePlanId] - The ID of price plan to subscribe to
  ///
  /// Returns Stripe payment information
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> subscribePlan({
    required String organizationId,
    required String pricePlanId,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/plan').replace(
      queryParameters: {
        'organization_id': organizationId,
        'price_plan_id': pricePlanId,
      },
    );

    final response = await http.patch(
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
        'Failed to subscribe plan: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Refreshes quota for an organization
  ///
  /// [organizationId] - The ID of organization
  ///
  /// Returns updated organization details
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> refreshQuota({
    required String organizationId,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/plan/refresh').replace(
      queryParameters: {'organization_id': organizationId},
    );

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
        'Failed to refresh quota: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Purchases credits for an organization
  ///
  /// [organizationId] - The ID of organization
  /// [amount] - Amount of credits to purchase
  ///
  /// Returns Stripe payment information
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> purchaseCredits({
    required String organizationId,
    required double amount,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/credits').replace(
      queryParameters: {
        'organization_id': organizationId,
        'amount': amount.toString(),
      },
    );

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
        'Failed to purchase credits: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Sets credit grant for an organization
  ///
  /// [organizationId] - The ID of organization
  /// [amount] - Amount of credit grant to set
  ///
  /// Returns a Map containing result
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> setCreditGrant({
    required String organizationId,
    required double amount,
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/credit_grant').replace(
      queryParameters: {
        'organization_id': organizationId,
        'amount': amount.toString(),
      },
    );

    final response = await http.patch(
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
        'Failed to set credit grant: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Gets organization metrics
  ///
  /// [metricId] - The metric ID to retrieve
  /// [from] - Start date for metrics
  /// [orgId] - The organization ID
  /// [windowSize] - Window size for aggregation
  /// [projIds] - Optional list of project IDs to filter by
  /// [to] - Optional end date for metrics
  /// [groupBy] - Optional list of fields to group by
  /// [dataSource] - Data source to use (default: "clickhouse")
  ///
  /// Returns usage response
  /// Throws an exception if request fails
  Future<Map<String, dynamic>> getOrganizationMetrics({
    required String metricId,
    required DatetimeUTC from,
    required String orgId,
    required String windowSize,
    List<String>? projIds,
    DatetimeUTC? to,
    List<String>? groupBy,
    String dataSource = "clickhouse",
  }) async {
    final url = Uri.parse('$apiUrl/v2/organizations/meters/query');

    final requestBody = json.encode({
      'metricId': metricId,
      'from': from.toIso8601String(),
      'orgId': orgId,
      'windowSize': windowSize,
      if (projIds != null) 'projIds': projIds,
      if (to != null) 'to': to.toIso8601String(),
      if (groupBy != null) 'groupBy': groupBy,
      'dataSource': dataSource,
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
        'Failed to get organization metrics: ${response.statusCode} - ${response.body}',
      );
    }
  }
}