import 'package:sealed_countries/sealed_countries.dart';
import 'package:uuid/uuid.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

part 'common.mapper.dart';

/// Represents the allowed attributes for sorting.
enum OrderBy {
  // Each enum member stores the exact API string.
  id('id'),
  name('name'),
  createdAt('created_at'),
  updatedAt('updated_at');

  // The actual string value sent to the API/database
  final String apiString;

  // Constructor to assign the string value
  const OrderBy(this.apiString);

  @override
  String toString() => apiString;
  // Define the default value directly on the enum
  static const OrderBy defaultValue = OrderBy.updatedAt;
}

enum TableType {
  action('action'),
  knowledge('knowledge'),
  chat('chat');

  final String apiString;
  const TableType(this.apiString);

  @override
  String toString() => apiString;

  static const TableType defaultValue = TableType.action;
}

/// String of length less than 255
class ShortString {
  static const int maxLength = 255;

  final String _value;

  const ShortString._internal(this._value);

  factory ShortString(String input) {
    if (input.length > maxLength) {
      throw ArgumentError(
        'String length (${input.length}) must be less than $maxLength characters.',
      );
    }
    return ShortString._internal(input);
  }

  String get value => _value;

  /// Delegates to the underlying String's length.
  int get length => _value.length;

  /// Allows indexed access to characters, just like a standard String.
  /// Example: myShortString[0]
  String operator [](int index) {
    return _value[index];
  }

  /// Delegates equality comparison to the underlying String value.
  /// This ensures that two ShortString objects with the same content are equal.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ShortString && other._value == _value;
  }

  /// Delegates the hashCode to the underlying String value.
  @override
  int get hashCode => _value.hashCode;

  /// Overrides the toString method to easily print the value.
  @override
  String toString() => _value;
}

/// Example model IDs used throughout the SDK
class ExampleModelIds {
  static const List<String> chatModelIds = ["openai/gpt-4o-mini"];
  static const List<String> embeddingModelIds = [
    "openai/text-embedding-3-small-512",
    "ellm/sentence-transformers/all-MiniLM-L6-v2",
  ];
  static const List<String> rerankingModelIds = [
    "cohere/rerank-multilingual-v3.0",
    "ellm/cross-encoder/ms-marco-TinyBERT-L-2",
  ];
}

/// Represents the state of a progress operation
enum ProgressState {
  started('STARTED'),
  completed('COMPLETED'),
  failed('FAILED');

  final String apiString;
  const ProgressState(this.apiString);

  @override
  String toString() => apiString;
}

/// Base progress information
class Progress {
  final String key;
  final Map<String, dynamic> data;
  final ProgressState state;
  final String? error;

  const Progress({
    required this.key,
    this.data = const {},
    this.state = ProgressState.started,
    this.error,
  });

  /// Creates a copy with updated fields
  Progress copyWith({
    String? key,
    Map<String, dynamic>? data,
    ProgressState? state,
    String? error,
  }) {
    return Progress(
      key: key ?? this.key,
      data: data ?? this.data,
      state: state ?? this.state,
      error: error ?? this.error,
    );
  }
}

/// Represents a stage in a progress operation
@MappableClass(discriminatorKey: 'progressStage')
class ProgressStage with ProgressStageMappable {
  final String name;
  final int progress;

  const ProgressStage({required this.name, this.progress = 0});
}

/// Progress information for table import operations
@MappableClass(discriminatorValue: 'tableImportProgress')
class TableImportProgress extends Progress with TableImportProgressMappable {
  final ProgressStage loadData;
  final ProgressStage parseData;
  final ProgressStage uploadFiles;
  final ProgressStage addRows;
  final ProgressStage index;

  const TableImportProgress({
    required super.key,
    super.data = const {},
    super.state = ProgressState.started,
    super.error,
    this.loadData = const ProgressStage(name: "Load data"),
    this.parseData = const ProgressStage(name: "Parse data"),
    this.uploadFiles = const ProgressStage(name: "Upload files"),
    this.addRows = const ProgressStage(name: "Add rows"),
    this.index = const ProgressStage(name: "Indexing"),
  });
}

/// Default multi-language codes
class DefaultLanguages {
  static const List<String> mulLanguages = [
    "zh", // Chinese
    "en", // English
    "fr", // French
    "it", // Italian
    "ja", // Japanese
    "ko", // Korean
    "es", // Spanish
  ];

  static const Set<String> wildcardLangCodes = {"*", "mul"};
}

/// Language code validation utilities
class LanguageValidator {
  /// Validates a single language code using ISO 639-1 and ISO 3166-1 standards
  static String validateLang(String s) {
    try {
      List<String> code = s.split("-");
      String lang = code[0].toLowerCase().trim();

      // Validate ISO 639-1 language code using sealed_languages
      final language = NaturalLanguage.maybeFromCode(lang);
      if (language == null) {
        throw FormatException('Invalid ISO 639-1 language code: $lang');
      }

      if (code.length == 2) {
        String country = code[1].toUpperCase().trim();
        // Validate ISO 3166-1 alpha-2 country code using sealed_countries
        final countryObj = WorldCountry.maybeFromCode(country);
        if (countryObj == null) {
          throw FormatException(
            'Invalid ISO 3166-1 alpha-2 country code: $country',
          );
        }
        return "${language.code}-$country";
      } else if (code.length == 1) {
        return language.code;
      } else {
        throw FormatException('Invalid language code format');
      }
    } catch (e) {
      if (e is FormatException) rethrow;
      throw FormatException(
        'Language code "$s" is not ISO 639-1 alpha-2 or BCP-47 ([ISO 639-1 alpha-2]-[ISO 3166-1 alpha-2]).',
      );
    }
  }

  /// Validates a list of language codes
  static List<String> validateLangList(List<String> s) {
    Set<String> uniqueLangs = s.map((lang) => lang.trim()).toSet();

    // Check for wildcard codes
    if (uniqueLangs
        .intersection(DefaultLanguages.wildcardLangCodes)
        .isNotEmpty) {
      uniqueLangs = uniqueLangs
          .difference(DefaultLanguages.wildcardLangCodes)
          .union(DefaultLanguages.mulLanguages.toSet());
    }

    return uniqueLangs.map((lang) => validateLang(lang)).toList();
  }
}

/// Type aliases for common use cases
typedef NullableStr = String?;
typedef EmptyIfNoneStr = String;
typedef PositiveInt = int;
typedef PositiveNonZeroInt = int;
typedef DatetimeUTC = DateTime;
typedef LanguageCodeList = List<String>;
typedef FilePath = String;
typedef JSONOutput = dynamic;
typedef JSONOutputBin = dynamic;
typedef JSONInput = dynamic;
typedef JSONInputBin = dynamic;
typedef YAMLOutput = dynamic;
typedef YAMLInput = dynamic;

/// Generates a UUID v7 string
String uuid7Str() => const Uuid().v7();

/// Basic response indicating success or failure
@MappableClass()
class OkResponse with OkResponseMappable {
  final bool ok;
  final String progressKey;

  const OkResponse({this.ok = true, this.progressKey = ""});
}

/// Generic paginated response
class Page<T> {
  final List<T> items;
  final int offset;
  final int limit;
  final int total;
  final String? endCursor;

  const Page({
    this.items = const [],
    this.offset = 0,
    this.limit = 0,
    this.total = 0,
    this.endCursor,
  });

  /// Creates a copy with updated fields
  Page<T> copyWith({
    List<T>? items,
    int? offset,
    int? limit,
    int? total,
    String? endCursor,
  }) {
    return Page<T>(
      items: items ?? this.items,
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
      total: total ?? this.total,
      endCursor: endCursor ?? this.endCursor,
    );
  }

  /// Converts to JSON
  Map<String, dynamic> toJson() {
    return {
      'items': items,
      'offset': offset,
      'limit': limit,
      'total': total,
      'end_cursor': endCursor,
    };
  }
}

/// User agent information for tracking requests
class UserAgent {
  final bool isBrowser;
  final String agent;
  final String agentVersion;
  final String os;
  final String architecture;
  final String language;
  final String languageVersion;

  const UserAgent({
    this.isBrowser = true,
    required this.agent,
    this.agentVersion = "",
    this.os = "",
    this.architecture = "",
    this.language = "",
    this.languageVersion = "",
  });

  /// Computed property for system name
  String get system => _splitOsString()[0];

  /// Computed property for system version
  String get systemVersion => _splitOsString()[1];

  /// Splits OS string into name and version
  List<String> _splitOsString() {
    final match = RegExp(r'([^\d]+) ([\d.]+).*$').firstMatch(os);
    if (match != null) {
      final osName = match.group(1)!.trim();
      final osVersion = match.group(2)!.trim();
      return [osName, osVersion];
    } else {
      return ["", ""];
    }
  }

  /// Parses user agent string
  factory UserAgent.fromUserAgentString(String uaString) {
    if (uaString.isEmpty) {
      return const UserAgent(isBrowser: false, agent: "");
    }

    // SDK pattern
    final sdkMatch = RegExp(
      r'SDK/(\S+) \((\w+)/(\S+); ([^;]+); (\w+)\)',
    ).firstMatch(uaString);
    if (sdkMatch != null) {
      return UserAgent(
        isBrowser: false,
        agent: "SDK",
        agentVersion: sdkMatch.group(1)!,
        os: sdkMatch.group(4)!,
        architecture: sdkMatch.group(5)!,
        language: sdkMatch.group(2)!,
        languageVersion: sdkMatch.group(3)!,
      );
    }

    // Browser pattern
    final browserMatch = RegExp(
      r'Mozilla/5\.0 \(([^)]+)\).*',
    ).firstMatch(uaString);
    if (browserMatch != null) {
      final osInfo = browserMatch.group(1)!.split(";");

      // Microsoft Edge
      final edgeMatch = RegExp(r'.+(Edg/.+)$').firstMatch(uaString);
      if (edgeMatch != null) {
        return UserAgent(
          agent: "Edge",
          agentVersion: edgeMatch.group(1)!.split("/").last.trim(),
          os: osInfo[0].trim(),
          architecture: osInfo.length == 3 ? osInfo.last.trim() : "",
        );
      }

      // Firefox
      final firefoxMatch = RegExp(r'.+(Firefox/.+)$').firstMatch(uaString);
      if (firefoxMatch != null) {
        return UserAgent(
          agent: "Firefox",
          agentVersion: firefoxMatch.group(1)!.split("/").last.trim(),
          os: osInfo[0].trim(),
          architecture: osInfo.length == 3 ? osInfo.last.trim() : "",
        );
      }

      // Chrome
      final chromeMatch = RegExp(r'.+(Chrome/.+)$').firstMatch(uaString);
      if (chromeMatch != null) {
        return UserAgent(
          agent: "Chrome",
          agentVersion: chromeMatch.group(1)!.split("/").last.trim(),
          os: osInfo[0].trim(),
          architecture: osInfo.length == 3 ? osInfo.last.trim() : "",
        );
      }
    }

    return UserAgent(
      isBrowser: uaString.toLowerCase().contains('mozilla'),
      agent: "",
    );
  }

  /// Creates a copy with updated fields
  UserAgent copyWith({
    bool? isBrowser,
    String? agent,
    String? agentVersion,
    String? os,
    String? architecture,
    String? language,
    String? languageVersion,
  }) {
    return UserAgent(
      isBrowser: isBrowser ?? this.isBrowser,
      agent: agent ?? this.agent,
      agentVersion: agentVersion ?? this.agentVersion,
      os: os ?? this.os,
      architecture: architecture ?? this.architecture,
      language: language ?? this.language,
      languageVersion: languageVersion ?? this.languageVersion,
    );
  }

  /// Converts to JSON
  Map<String, dynamic> toJson() {
    return {
      'is_browser': isBrowser,
      'agent': agent,
      'agent_version': agentVersion,
      'os': os,
      'architecture': architecture,
      'language': language,
      'language_version': languageVersion,
      'system': system,
      'system_version': systemVersion,
    };
  }
}

/// Password login request
class PasswordLoginRequest {
  final String email;
  final String password;

  const PasswordLoginRequest({required this.email, required this.password});

  /// Validates the request
  void validate() {
    if (email.isEmpty) {
      throw ArgumentError('Email cannot be empty');
    }
    if (password.isEmpty || password.length > 72) {
      throw ArgumentError('Password must be between 1 and 72 characters');
    }
  }

  /// Converts to JSON
  Map<String, dynamic> toJson() {
    return {'email': email, 'password': password};
  }

  /// Creates from JSON
  factory PasswordLoginRequest.fromJson(Map<String, dynamic> json) {
    return PasswordLoginRequest(
      email: json['email'],
      password: json['password'],
    );
  }
}

/// Password change request
class PasswordChangeRequest {
  final String email;
  final String password;
  final String newPassword;

  const PasswordChangeRequest({
    required this.email,
    required this.password,
    required this.newPassword,
  });

  /// Validates the request
  void validate() {
    if (email.isEmpty) {
      throw ArgumentError('Email cannot be empty');
    }
    if (password.isEmpty || password.length > 72) {
      throw ArgumentError(
        'Current password must be between 1 and 72 characters',
      );
    }
    if (newPassword.isEmpty || newPassword.length > 72) {
      throw ArgumentError('New password must be between 1 and 72 characters');
    }
    if (password == newPassword) {
      throw ArgumentError(
        'New password must be different from current password',
      );
    }
  }

  /// Converts to JSON
  Map<String, dynamic> toJson() {
    return {'email': email, 'password': password, 'new_password': newPassword};
  }

  /// Creates from JSON
  factory PasswordChangeRequest.fromJson(Map<String, dynamic> json) {
    return PasswordChangeRequest(
      email: json['email'],
      password: json['password'],
      newPassword: json['new_password'],
    );
  }
}

/// Stripe payment information
class StripePaymentInfo {
  final String status;
  final String? subscriptionId;
  final String? paymentIntentId;
  final String? clientSecret;
  final double amountDue;
  final double amountOverpaid;
  final double amountPaid;
  final double amountRemaining;
  final String currency;

  const StripePaymentInfo({
    required this.status,
    this.subscriptionId,
    this.paymentIntentId,
    this.clientSecret,
    required this.amountDue,
    required this.amountOverpaid,
    required this.amountPaid,
    required this.amountRemaining,
    required this.currency,
  });

  /// Validates Stripe IDs
  void validate() {
    if (subscriptionId != null && !subscriptionId!.startsWith('sub_')) {
      throw ArgumentError('Subscription ID must start with "sub_"');
    }
    if (paymentIntentId != null && !paymentIntentId!.startsWith('pi_')) {
      throw ArgumentError('Payment Intent ID must start with "pi_"');
    }
  }

  /// Creates a copy with updated fields
  StripePaymentInfo copyWith({
    String? status,
    String? subscriptionId,
    String? paymentIntentId,
    String? clientSecret,
    double? amountDue,
    double? amountOverpaid,
    double? amountPaid,
    double? amountRemaining,
    String? currency,
  }) {
    return StripePaymentInfo(
      status: status ?? this.status,
      subscriptionId: subscriptionId ?? this.subscriptionId,
      paymentIntentId: paymentIntentId ?? this.paymentIntentId,
      clientSecret: clientSecret ?? this.clientSecret,
      amountDue: amountDue ?? this.amountDue,
      amountOverpaid: amountOverpaid ?? this.amountOverpaid,
      amountPaid: amountPaid ?? this.amountPaid,
      amountRemaining: amountRemaining ?? this.amountRemaining,
      currency: currency ?? this.currency,
    );
  }

  /// Converts to JSON
  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'subscription_id': subscriptionId,
      'payment_intent_id': paymentIntentId,
      'client_secret': clientSecret,
      'amount_due': amountDue,
      'amount_overpaid': amountOverpaid,
      'amount_paid': amountPaid,
      'amount_remaining': amountRemaining,
      'currency': currency,
    };
  }

  /// Creates from JSON
  factory StripePaymentInfo.fromJson(Map<String, dynamic> json) {
    return StripePaymentInfo(
      status: json['status'],
      subscriptionId: json['subscription_id'],
      paymentIntentId: json['payment_intent_id'],
      clientSecret: json['client_secret'],
      amountDue: json['amount_due'].toDouble(),
      amountOverpaid: json['amount_overpaid'].toDouble(),
      amountPaid: json['amount_paid'].toDouble(),
      amountRemaining: json['amount_remaining'].toDouble(),
      currency: json['currency'],
    );
  }
}

/// Stripe event data
class StripeEventData {
  final String eventType;
  final String eventId;
  final String? invoiceId;
  final String? subscriptionId;
  final String? priceId;
  final String? paymentMethod;
  final String customerId;
  final String organizationId;
  final String collectionMethod;
  final String billingReason;
  final double amountPaid;
  final String currency;
  final String status;

  const StripeEventData({
    required this.eventType,
    required this.eventId,
    this.invoiceId,
    this.subscriptionId,
    this.priceId,
    this.paymentMethod,
    required this.customerId,
    required this.organizationId,
    required this.collectionMethod,
    required this.billingReason,
    required this.amountPaid,
    required this.currency,
    required this.status,
  });

  /// Validates Stripe IDs
  void validate() {
    if (!eventId.startsWith('evt_')) {
      throw ArgumentError('Event ID must start with "evt_"');
    }
    if (invoiceId != null && !invoiceId!.startsWith('in_')) {
      throw ArgumentError('Invoice ID must start with "in_"');
    }
    if (subscriptionId != null && !subscriptionId!.startsWith('sub_')) {
      throw ArgumentError('Subscription ID must start with "sub_"');
    }
    if (priceId != null && !priceId!.startsWith('price_')) {
      throw ArgumentError('Price ID must start with "price_"');
    }
    if (paymentMethod != null && !paymentMethod!.startsWith('pm_')) {
      throw ArgumentError('Payment Method must start with "pm_"');
    }
    if (!customerId.startsWith('cus_')) {
      throw ArgumentError('Customer ID must start with "cus_"');
    }
  }

  /// Creates a copy with updated fields
  StripeEventData copyWith({
    String? eventType,
    String? eventId,
    String? invoiceId,
    String? subscriptionId,
    String? priceId,
    String? paymentMethod,
    String? customerId,
    String? organizationId,
    String? collectionMethod,
    String? billingReason,
    double? amountPaid,
    String? currency,
    String? status,
  }) {
    return StripeEventData(
      eventType: eventType ?? this.eventType,
      eventId: eventId ?? this.eventId,
      invoiceId: invoiceId ?? this.invoiceId,
      subscriptionId: subscriptionId ?? this.subscriptionId,
      priceId: priceId ?? this.priceId,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      customerId: customerId ?? this.customerId,
      organizationId: organizationId ?? this.organizationId,
      collectionMethod: collectionMethod ?? this.collectionMethod,
      billingReason: billingReason ?? this.billingReason,
      amountPaid: amountPaid ?? this.amountPaid,
      currency: currency ?? this.currency,
      status: status ?? this.status,
    );
  }

  /// Converts to JSON
  Map<String, dynamic> toJson() {
    return {
      'event_type': eventType,
      'event_id': eventId,
      'invoice_id': invoiceId,
      'subscription_id': subscriptionId,
      'price_id': priceId,
      'payment_method': paymentMethod,
      'customer_id': customerId,
      'organization_id': organizationId,
      'collection_method': collectionMethod,
      'billing_reason': billingReason,
      'amount_paid': amountPaid,
      'currency': currency,
      'status': status,
    };
  }

  /// Creates from JSON
  factory StripeEventData.fromJson(Map<String, dynamic> json) {
    return StripeEventData(
      eventType: json['event_type'],
      eventId: json['event_id'],
      invoiceId: json['invoice_id'],
      subscriptionId: json['subscription_id'],
      priceId: json['price_id'],
      paymentMethod: json['payment_method'],
      customerId: json['customer_id'],
      organizationId: json['organization_id'],
      collectionMethod: json['collection_method'],
      billingReason: json['billing_reason'],
      amountPaid: json['amount_paid'].toDouble(),
      currency: json['currency'],
      status: json['status'],
    );
  }
}

@MappableClass(
  discriminatorKey: 'type',
  includeSubClasses: [StringOrListStringString, StringOrListStringList],
)
abstract class StringOrListString with StringOrListStringMappable {
  const StringOrListString();

  // Preserve the original factory constructors API
  factory StringOrListString.string(String value) = StringOrListStringString;
  factory StringOrListString.listString(List<String> values) =
      StringOrListStringList;

  // Replace Freezed JSON factory
  factory StringOrListString.fromJson(Map<String, dynamic> json) =>
      MapperContainer.globals.fromMap<StringOrListString>(json);
}

@MappableClass(discriminatorValue: 'string')
class StringOrListStringString extends StringOrListString
    with StringOrListStringStringMappable {
  final String value;
  const StringOrListStringString(this.value);
}

@MappableClass(discriminatorValue: 'listString')
class StringOrListStringList extends StringOrListString
    with StringOrListStringListMappable {
  final List<String> values;
  const StringOrListStringList(this.values);
}

@MappableClass(
  discriminatorKey: 'type',
  includeSubClasses: [ListDouble, ListDoubleOrStringString],
)
abstract class ListDoubleOrString with ListDoubleOrStringMappable {
  const ListDoubleOrString();

  // Preserve the original factory constructors API
  factory ListDoubleOrString.listDouble(List<double> values) = ListDouble;
  factory ListDoubleOrString.string(String value) = ListDoubleOrStringString;

  // Replace Freezed JSON factory
  factory ListDoubleOrString.fromJson(Map<String, dynamic> json) =>
      MapperContainer.globals.fromMap<ListDoubleOrString>(json);
}

@MappableClass(discriminatorValue: 'listDouble')
class ListDouble extends ListDoubleOrString with ListDoubleMappable {
  final List<double> values;
  const ListDouble(this.values);
}

@MappableClass(discriminatorValue: 'string')
class ListDoubleOrStringString extends ListDoubleOrString
    with ListDoubleOrStringStringMappable {
  final String value;
  const ListDoubleOrStringString(this.value);
}

class StringValidator {
  static bool _isBadChar(String char, {bool allowNewline = false}) {
    // 1. Handle newlines based on the flag
    if (char == "\n") {
      return !allowNewline; // Bad if newlines are NOT allowed
    }

    // 2. Check for other non-printable characters
    if (char.isEmpty) return true;

    final rune = char.runes.first;

    // Control characters (excluding space and newline which we already handled)
    if (rune < 0x20 || rune == 0x7F) {
      return true;
    }

    // 3. Check for specific disallowed Unicode categories and blocks
    // Combining marks (Unicode categories Mn, Mc, Me)
    if ((rune >= 0x0300 && rune <= 0x036F) || // Combining Diacritical Marks
        (rune >= 0x1AB0 &&
            rune <= 0x1AFF) || // Combining Diacritical Marks Extended
        (rune >= 0x20D0 &&
            rune <= 0x20FF) || // Combining Diacritical Marks for Symbols
        (rune >= 0xFE20 && rune <= 0xFE2F)) {
      // Combining Half Marks
      return true;
    }

    // Box drawing
    if (rune >= 0x2500 && rune <= 0x257F) {
      return true;
    }

    // Block elements
    if (rune >= 0x2580 && rune <= 0x259F) {
      return true;
    }

    // Braille patterns
    if (rune >= 0x2800 && rune <= 0x28FF) {
      return true;
    }

    return false;
  }

  static bool isValidString(String input, {bool allowNewline = false}) {
    // Check if string is not empty after stripping
    if (input.trim().isEmpty) {
      return false;
    }

    // Check each character
    for (int i = 0; i < input.length; i++) {
      if (_isBadChar(input[i], allowNewline: allowNewline)) {
        return false;
      }
    }

    return true;
  }
}

@immutable
class SanitizedNotEmptyString {
  factory SanitizedNotEmptyString(String value) {
    if (!StringValidator.isValidString(value)) {
      throw ArgumentError(
        "Text contains disallowed or non-printable characters.",
      );
    }
    return SanitizedNotEmptyString._(value);
  }

  const SanitizedNotEmptyString._(this.value);

  final String value;

  /// Acts like a string when printed
  @override
  String toString() => value;

  /// Optional convenience: allows you to get the underlying value
  String get get => value;

  /// Optional operator for concatenation
  SanitizedNotEmptyString operator +(Object other) {
    return SanitizedNotEmptyString('$value$other');
  }

  /// Makes equality work properly with other SanitizedNotEmptyString instances
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SanitizedNotEmptyString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  /// Optional: convenience to convert back to `String`
  String asString() => value;
}
