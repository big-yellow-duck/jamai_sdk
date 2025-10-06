
import 'package:sealed_countries/sealed_countries.dart';

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
class ProgressStage {
  final String name;
  final int progress;

  const ProgressStage({
    required this.name,
    this.progress = 0,
  });

  /// Creates a copy with updated fields
  ProgressStage copyWith({
    String? name,
    int? progress,
  }) {
    return ProgressStage(
      name: name ?? this.name,
      progress: progress ?? this.progress,
    );
  }
}

/// Progress information for table import operations
class TableImportProgress extends Progress {
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

  /// Creates a copy with updated fields
  @override
  TableImportProgress copyWith({
    String? key,
    Map<String, dynamic>? data,
    ProgressState? state,
    String? error,
    ProgressStage? loadData,
    ProgressStage? parseData,
    ProgressStage? uploadFiles,
    ProgressStage? addRows,
    ProgressStage? index,
  }) {
    return TableImportProgress(
      key: key ?? this.key,
      data: data ?? this.data,
      state: state ?? this.state,
      error: error ?? this.error,
      loadData: loadData ?? this.loadData,
      parseData: parseData ?? this.parseData,
      uploadFiles: uploadFiles ?? this.uploadFiles,
      addRows: addRows ?? this.addRows,
      index: index ?? this.index,
    );
  }
}
/// Utility functions for string validation and transformation
class StringUtils {
  /// Converts null to empty string
  static String noneToEmptyString(String? v) {
    return v ?? "";
  }

  /// Converts empty string to null
  static String? emptyStringToNone(String? v) {
    if (v == null || v.isEmpty) {
      return null;
    }
    return v;
  }

  /// Validates and sanitizes string input
  static String strPreValidator(
    dynamic value, {
    bool disallowEmptyString = false,
    bool allowNewline = false,
  }) {
    if (value is! String) {
      value = value.toString();
    }
    
    String strValue = value.trim();
    
    if (disallowEmptyString && strValue.isEmpty) {
      throw ArgumentError("Text is empty.");
    }

    // Remove combining marks (Zalgo text prevention)
    strValue = strValue.replaceAll(RegExp(r'[\u0300-\u036F\u1AB0-\u1AFF\u1DC0-\u1DFF]'), '');
    
    // Check for disallowed characters
    for (int i = 0; i < strValue.length; i++) {
      String char = strValue[i];
      if (_isBadChar(char, allowNewline: allowNewline)) {
        throw ArgumentError("Text contains disallowed or non-printable characters.");
      }
    }

    return strValue;
  }

  /// Checks if a character is disallowed
  static bool _isBadChar(String char, {required bool allowNewline}) {
    // Handle newlines based on the flag
    if (char == "\n") {
      return !allowNewline; // Bad if newlines are NOT allowed
    }

    // Check for other non-printable characters
    if (!char.isPrintable()) {
      return true;
    }

    // Check for specific disallowed Unicode blocks
    // Box drawing
    if (char.codeUnitAt(0) >= 0x2500 && char.codeUnitAt(0) <= 0x257F) {
      return true;
    }
    // Block elements
    if (char.codeUnitAt(0) >= 0x2580 && char.codeUnitAt(0) <= 0x259F) {
      return true;
    }
    // Braille patterns
    if (char.codeUnitAt(0) >= 0x2800 && char.codeUnitAt(0) <= 0x28FF) {
      return true;
    }

    return false;
  }
}

/// Extension to check if a string is printable
extension StringPrintable on String {
  bool isPrintable() {
    return runes.every((rune) {
      return rune >= 32 && rune != 127; // ASCII printable characters
    });
  }
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
          throw FormatException('Invalid ISO 3166-1 alpha-2 country code: $country');
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
    if (uniqueLangs.intersection(DefaultLanguages.wildcardLangCodes).isNotEmpty) {
      uniqueLangs = uniqueLangs.difference(DefaultLanguages.wildcardLangCodes)
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
