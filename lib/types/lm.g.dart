// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RAGParams _$RAGParamsFromJson(Map<String, dynamic> json) => _RAGParams(
  tableId: json['tableId'] as String,
  rerankingModel: json['rerankingModel'] as String?,
  searchQuery: json['searchQuery'] as String,
  k: (json['k'] as num?)?.toInt() ?? 3,
  rerank: json['rerank'] as bool? ?? true,
  concatRerankerInput: json['concatRerankerInput'] as bool? ?? false,
  inlineCitations: json['inlineCitations'] as bool? ?? true,
);

Map<String, dynamic> _$RAGParamsToJson(_RAGParams instance) =>
    <String, dynamic>{
      'tableId': instance.tableId,
      'rerankingModel': instance.rerankingModel,
      'searchQuery': instance.searchQuery,
      'k': instance.k,
      'rerank': instance.rerank,
      'concatRerankerInput': instance.concatRerankerInput,
      'inlineCitations': instance.inlineCitations,
    };

_FunctionParameters _$FunctionParametersFromJson(
  Map<String, dynamic> json,
) => _FunctionParameters(
  type: json['type'] as String? ?? 'object',
  properties:
      (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, FunctionParameter.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  required:
      (json['required'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  additionalProperties: json['additionalProperties'] as bool? ?? false,
);

Map<String, dynamic> _$FunctionParametersToJson(_FunctionParameters instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'required': instance.required,
      'additionalProperties': instance.additionalProperties,
    };

_FunctionTool _$FunctionToolFromJson(Map<String, dynamic> json) =>
    _FunctionTool(
      type:
          $enumDecodeNullable(_$ToolTypeEnumMap, json['type']) ??
          ToolType.function,
      function: ToolFunction.fromJson(json['function'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FunctionToolToJson(_FunctionTool instance) =>
    <String, dynamic>{
      'type': _$ToolTypeEnumMap[instance.type]!,
      'function': instance.function,
    };

const _$ToolTypeEnumMap = {
  ToolType.function: 'function',
  ToolType.webSearch: 'webSearch',
  ToolType.codeInterpreter: 'codeInterpreter',
};

_WebSearchTool _$WebSearchToolFromJson(Map<String, dynamic> json) =>
    _WebSearchTool(type: $enumDecode(_$ToolTypeEnumMap, json['type']));

Map<String, dynamic> _$WebSearchToolToJson(_WebSearchTool instance) =>
    <String, dynamic>{'type': _$ToolTypeEnumMap[instance.type]!};

_CodeIntepreterTool _$CodeIntepreterToolFromJson(Map<String, dynamic> json) =>
    _CodeIntepreterTool(
      type: $enumDecode(_$ToolTypeEnumMap, json['type']),
      container:
          (json['container'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {'type': 'auto'},
    );

Map<String, dynamic> _$CodeIntepreterToolToJson(_CodeIntepreterTool instance) =>
    <String, dynamic>{
      'type': _$ToolTypeEnumMap[instance.type]!,
      'container': instance.container,
    };

_ToolChoiceFunction _$ToolChoiceFunctionFromJson(Map<String, dynamic> json) =>
    _ToolChoiceFunction(name: json['name'] as String);

Map<String, dynamic> _$ToolChoiceFunctionToJson(_ToolChoiceFunction instance) =>
    <String, dynamic>{'name': instance.name};

_ToolCallFunction _$ToolCallFunctionFromJson(Map<String, dynamic> json) =>
    _ToolCallFunction(
      arguments: json['arguments'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ToolCallFunctionToJson(_ToolCallFunction instance) =>
    <String, dynamic>{'arguments': instance.arguments, 'name': instance.name};
