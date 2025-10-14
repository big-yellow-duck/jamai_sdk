// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RAGParams {

 String get tableId; String? get rerankingModel; String get searchQuery; int get k; bool get rerank; bool get concatRerankerInput; bool get inlineCitations;
/// Create a copy of RAGParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RAGParamsCopyWith<RAGParams> get copyWith => _$RAGParamsCopyWithImpl<RAGParams>(this as RAGParams, _$identity);

  /// Serializes this RAGParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RAGParams&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.rerankingModel, rerankingModel) || other.rerankingModel == rerankingModel)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.k, k) || other.k == k)&&(identical(other.rerank, rerank) || other.rerank == rerank)&&(identical(other.concatRerankerInput, concatRerankerInput) || other.concatRerankerInput == concatRerankerInput)&&(identical(other.inlineCitations, inlineCitations) || other.inlineCitations == inlineCitations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tableId,rerankingModel,searchQuery,k,rerank,concatRerankerInput,inlineCitations);

@override
String toString() {
  return 'RAGParams(tableId: $tableId, rerankingModel: $rerankingModel, searchQuery: $searchQuery, k: $k, rerank: $rerank, concatRerankerInput: $concatRerankerInput, inlineCitations: $inlineCitations)';
}


}

/// @nodoc
abstract mixin class $RAGParamsCopyWith<$Res>  {
  factory $RAGParamsCopyWith(RAGParams value, $Res Function(RAGParams) _then) = _$RAGParamsCopyWithImpl;
@useResult
$Res call({
 String tableId, String? rerankingModel, String searchQuery, int k, bool rerank, bool concatRerankerInput, bool inlineCitations
});




}
/// @nodoc
class _$RAGParamsCopyWithImpl<$Res>
    implements $RAGParamsCopyWith<$Res> {
  _$RAGParamsCopyWithImpl(this._self, this._then);

  final RAGParams _self;
  final $Res Function(RAGParams) _then;

/// Create a copy of RAGParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tableId = null,Object? rerankingModel = freezed,Object? searchQuery = null,Object? k = null,Object? rerank = null,Object? concatRerankerInput = null,Object? inlineCitations = null,}) {
  return _then(_self.copyWith(
tableId: null == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String,rerankingModel: freezed == rerankingModel ? _self.rerankingModel : rerankingModel // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,k: null == k ? _self.k : k // ignore: cast_nullable_to_non_nullable
as int,rerank: null == rerank ? _self.rerank : rerank // ignore: cast_nullable_to_non_nullable
as bool,concatRerankerInput: null == concatRerankerInput ? _self.concatRerankerInput : concatRerankerInput // ignore: cast_nullable_to_non_nullable
as bool,inlineCitations: null == inlineCitations ? _self.inlineCitations : inlineCitations // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RAGParams].
extension RAGParamsPatterns on RAGParams {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RAGParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RAGParams() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RAGParams value)  $default,){
final _that = this;
switch (_that) {
case _RAGParams():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RAGParams value)?  $default,){
final _that = this;
switch (_that) {
case _RAGParams() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tableId,  String? rerankingModel,  String searchQuery,  int k,  bool rerank,  bool concatRerankerInput,  bool inlineCitations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RAGParams() when $default != null:
return $default(_that.tableId,_that.rerankingModel,_that.searchQuery,_that.k,_that.rerank,_that.concatRerankerInput,_that.inlineCitations);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tableId,  String? rerankingModel,  String searchQuery,  int k,  bool rerank,  bool concatRerankerInput,  bool inlineCitations)  $default,) {final _that = this;
switch (_that) {
case _RAGParams():
return $default(_that.tableId,_that.rerankingModel,_that.searchQuery,_that.k,_that.rerank,_that.concatRerankerInput,_that.inlineCitations);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tableId,  String? rerankingModel,  String searchQuery,  int k,  bool rerank,  bool concatRerankerInput,  bool inlineCitations)?  $default,) {final _that = this;
switch (_that) {
case _RAGParams() when $default != null:
return $default(_that.tableId,_that.rerankingModel,_that.searchQuery,_that.k,_that.rerank,_that.concatRerankerInput,_that.inlineCitations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RAGParams implements RAGParams {
  const _RAGParams({required this.tableId, this.rerankingModel, required this.searchQuery, this.k = 3, this.rerank = true, this.concatRerankerInput = false, this.inlineCitations = true});
  factory _RAGParams.fromJson(Map<String, dynamic> json) => _$RAGParamsFromJson(json);

@override final  String tableId;
@override final  String? rerankingModel;
@override final  String searchQuery;
@override@JsonKey() final  int k;
@override@JsonKey() final  bool rerank;
@override@JsonKey() final  bool concatRerankerInput;
@override@JsonKey() final  bool inlineCitations;

/// Create a copy of RAGParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RAGParamsCopyWith<_RAGParams> get copyWith => __$RAGParamsCopyWithImpl<_RAGParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RAGParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RAGParams&&(identical(other.tableId, tableId) || other.tableId == tableId)&&(identical(other.rerankingModel, rerankingModel) || other.rerankingModel == rerankingModel)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.k, k) || other.k == k)&&(identical(other.rerank, rerank) || other.rerank == rerank)&&(identical(other.concatRerankerInput, concatRerankerInput) || other.concatRerankerInput == concatRerankerInput)&&(identical(other.inlineCitations, inlineCitations) || other.inlineCitations == inlineCitations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tableId,rerankingModel,searchQuery,k,rerank,concatRerankerInput,inlineCitations);

@override
String toString() {
  return 'RAGParams(tableId: $tableId, rerankingModel: $rerankingModel, searchQuery: $searchQuery, k: $k, rerank: $rerank, concatRerankerInput: $concatRerankerInput, inlineCitations: $inlineCitations)';
}


}

/// @nodoc
abstract mixin class _$RAGParamsCopyWith<$Res> implements $RAGParamsCopyWith<$Res> {
  factory _$RAGParamsCopyWith(_RAGParams value, $Res Function(_RAGParams) _then) = __$RAGParamsCopyWithImpl;
@override @useResult
$Res call({
 String tableId, String? rerankingModel, String searchQuery, int k, bool rerank, bool concatRerankerInput, bool inlineCitations
});




}
/// @nodoc
class __$RAGParamsCopyWithImpl<$Res>
    implements _$RAGParamsCopyWith<$Res> {
  __$RAGParamsCopyWithImpl(this._self, this._then);

  final _RAGParams _self;
  final $Res Function(_RAGParams) _then;

/// Create a copy of RAGParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tableId = null,Object? rerankingModel = freezed,Object? searchQuery = null,Object? k = null,Object? rerank = null,Object? concatRerankerInput = null,Object? inlineCitations = null,}) {
  return _then(_RAGParams(
tableId: null == tableId ? _self.tableId : tableId // ignore: cast_nullable_to_non_nullable
as String,rerankingModel: freezed == rerankingModel ? _self.rerankingModel : rerankingModel // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,k: null == k ? _self.k : k // ignore: cast_nullable_to_non_nullable
as int,rerank: null == rerank ? _self.rerank : rerank // ignore: cast_nullable_to_non_nullable
as bool,concatRerankerInput: null == concatRerankerInput ? _self.concatRerankerInput : concatRerankerInput // ignore: cast_nullable_to_non_nullable
as bool,inlineCitations: null == inlineCitations ? _self.inlineCitations : inlineCitations // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$FunctionParameters {

 String get type; Map<String, FunctionParameter> get properties; List<String> get required; bool get additionalProperties;
/// Create a copy of FunctionParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FunctionParametersCopyWith<FunctionParameters> get copyWith => _$FunctionParametersCopyWithImpl<FunctionParameters>(this as FunctionParameters, _$identity);

  /// Serializes this FunctionParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FunctionParameters&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.properties, properties)&&const DeepCollectionEquality().equals(other.required, required)&&(identical(other.additionalProperties, additionalProperties) || other.additionalProperties == additionalProperties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(properties),const DeepCollectionEquality().hash(required),additionalProperties);

@override
String toString() {
  return 'FunctionParameters(type: $type, properties: $properties, required: $required, additionalProperties: $additionalProperties)';
}


}

/// @nodoc
abstract mixin class $FunctionParametersCopyWith<$Res>  {
  factory $FunctionParametersCopyWith(FunctionParameters value, $Res Function(FunctionParameters) _then) = _$FunctionParametersCopyWithImpl;
@useResult
$Res call({
 String type, Map<String, FunctionParameter> properties, List<String> required, bool additionalProperties
});




}
/// @nodoc
class _$FunctionParametersCopyWithImpl<$Res>
    implements $FunctionParametersCopyWith<$Res> {
  _$FunctionParametersCopyWithImpl(this._self, this._then);

  final FunctionParameters _self;
  final $Res Function(FunctionParameters) _then;

/// Create a copy of FunctionParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? properties = null,Object? required = null,Object? additionalProperties = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as Map<String, FunctionParameter>,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as List<String>,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FunctionParameters].
extension FunctionParametersPatterns on FunctionParameters {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FunctionParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FunctionParameters() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FunctionParameters value)  $default,){
final _that = this;
switch (_that) {
case _FunctionParameters():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FunctionParameters value)?  $default,){
final _that = this;
switch (_that) {
case _FunctionParameters() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  Map<String, FunctionParameter> properties,  List<String> required,  bool additionalProperties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FunctionParameters() when $default != null:
return $default(_that.type,_that.properties,_that.required,_that.additionalProperties);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  Map<String, FunctionParameter> properties,  List<String> required,  bool additionalProperties)  $default,) {final _that = this;
switch (_that) {
case _FunctionParameters():
return $default(_that.type,_that.properties,_that.required,_that.additionalProperties);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  Map<String, FunctionParameter> properties,  List<String> required,  bool additionalProperties)?  $default,) {final _that = this;
switch (_that) {
case _FunctionParameters() when $default != null:
return $default(_that.type,_that.properties,_that.required,_that.additionalProperties);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FunctionParameters implements FunctionParameters {
  const _FunctionParameters({this.type = 'object', final  Map<String, FunctionParameter> properties = const {}, final  List<String> required = const [], this.additionalProperties = false}): _properties = properties,_required = required;
  factory _FunctionParameters.fromJson(Map<String, dynamic> json) => _$FunctionParametersFromJson(json);

@override@JsonKey() final  String type;
 final  Map<String, FunctionParameter> _properties;
@override@JsonKey() Map<String, FunctionParameter> get properties {
  if (_properties is EqualUnmodifiableMapView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_properties);
}

 final  List<String> _required;
@override@JsonKey() List<String> get required {
  if (_required is EqualUnmodifiableListView) return _required;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_required);
}

@override@JsonKey() final  bool additionalProperties;

/// Create a copy of FunctionParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FunctionParametersCopyWith<_FunctionParameters> get copyWith => __$FunctionParametersCopyWithImpl<_FunctionParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FunctionParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FunctionParameters&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._properties, _properties)&&const DeepCollectionEquality().equals(other._required, _required)&&(identical(other.additionalProperties, additionalProperties) || other.additionalProperties == additionalProperties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_properties),const DeepCollectionEquality().hash(_required),additionalProperties);

@override
String toString() {
  return 'FunctionParameters(type: $type, properties: $properties, required: $required, additionalProperties: $additionalProperties)';
}


}

/// @nodoc
abstract mixin class _$FunctionParametersCopyWith<$Res> implements $FunctionParametersCopyWith<$Res> {
  factory _$FunctionParametersCopyWith(_FunctionParameters value, $Res Function(_FunctionParameters) _then) = __$FunctionParametersCopyWithImpl;
@override @useResult
$Res call({
 String type, Map<String, FunctionParameter> properties, List<String> required, bool additionalProperties
});




}
/// @nodoc
class __$FunctionParametersCopyWithImpl<$Res>
    implements _$FunctionParametersCopyWith<$Res> {
  __$FunctionParametersCopyWithImpl(this._self, this._then);

  final _FunctionParameters _self;
  final $Res Function(_FunctionParameters) _then;

/// Create a copy of FunctionParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? properties = null,Object? required = null,Object? additionalProperties = null,}) {
  return _then(_FunctionParameters(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as Map<String, FunctionParameter>,required: null == required ? _self._required : required // ignore: cast_nullable_to_non_nullable
as List<String>,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$FunctionTool {

 ToolType get type; ToolFunction get function;
/// Create a copy of FunctionTool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FunctionToolCopyWith<FunctionTool> get copyWith => _$FunctionToolCopyWithImpl<FunctionTool>(this as FunctionTool, _$identity);

  /// Serializes this FunctionTool to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FunctionTool&&(identical(other.type, type) || other.type == type)&&(identical(other.function, function) || other.function == function));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,function);

@override
String toString() {
  return 'FunctionTool(type: $type, function: $function)';
}


}

/// @nodoc
abstract mixin class $FunctionToolCopyWith<$Res>  {
  factory $FunctionToolCopyWith(FunctionTool value, $Res Function(FunctionTool) _then) = _$FunctionToolCopyWithImpl;
@useResult
$Res call({
 ToolType type, ToolFunction function
});




}
/// @nodoc
class _$FunctionToolCopyWithImpl<$Res>
    implements $FunctionToolCopyWith<$Res> {
  _$FunctionToolCopyWithImpl(this._self, this._then);

  final FunctionTool _self;
  final $Res Function(FunctionTool) _then;

/// Create a copy of FunctionTool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? function = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ToolType,function: null == function ? _self.function : function // ignore: cast_nullable_to_non_nullable
as ToolFunction,
  ));
}

}


/// Adds pattern-matching-related methods to [FunctionTool].
extension FunctionToolPatterns on FunctionTool {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FunctionTool value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FunctionTool() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FunctionTool value)  $default,){
final _that = this;
switch (_that) {
case _FunctionTool():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FunctionTool value)?  $default,){
final _that = this;
switch (_that) {
case _FunctionTool() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ToolType type,  ToolFunction function)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FunctionTool() when $default != null:
return $default(_that.type,_that.function);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ToolType type,  ToolFunction function)  $default,) {final _that = this;
switch (_that) {
case _FunctionTool():
return $default(_that.type,_that.function);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ToolType type,  ToolFunction function)?  $default,) {final _that = this;
switch (_that) {
case _FunctionTool() when $default != null:
return $default(_that.type,_that.function);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FunctionTool implements FunctionTool {
  const _FunctionTool({this.type = ToolType.function, required this.function});
  factory _FunctionTool.fromJson(Map<String, dynamic> json) => _$FunctionToolFromJson(json);

@override@JsonKey() final  ToolType type;
@override final  ToolFunction function;

/// Create a copy of FunctionTool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FunctionToolCopyWith<_FunctionTool> get copyWith => __$FunctionToolCopyWithImpl<_FunctionTool>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FunctionToolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FunctionTool&&(identical(other.type, type) || other.type == type)&&(identical(other.function, function) || other.function == function));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,function);

@override
String toString() {
  return 'FunctionTool(type: $type, function: $function)';
}


}

/// @nodoc
abstract mixin class _$FunctionToolCopyWith<$Res> implements $FunctionToolCopyWith<$Res> {
  factory _$FunctionToolCopyWith(_FunctionTool value, $Res Function(_FunctionTool) _then) = __$FunctionToolCopyWithImpl;
@override @useResult
$Res call({
 ToolType type, ToolFunction function
});




}
/// @nodoc
class __$FunctionToolCopyWithImpl<$Res>
    implements _$FunctionToolCopyWith<$Res> {
  __$FunctionToolCopyWithImpl(this._self, this._then);

  final _FunctionTool _self;
  final $Res Function(_FunctionTool) _then;

/// Create a copy of FunctionTool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? function = null,}) {
  return _then(_FunctionTool(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ToolType,function: null == function ? _self.function : function // ignore: cast_nullable_to_non_nullable
as ToolFunction,
  ));
}


}


/// @nodoc
mixin _$WebSearchTool {

 ToolType get type;
/// Create a copy of WebSearchTool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebSearchToolCopyWith<WebSearchTool> get copyWith => _$WebSearchToolCopyWithImpl<WebSearchTool>(this as WebSearchTool, _$identity);

  /// Serializes this WebSearchTool to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebSearchTool&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'WebSearchTool(type: $type)';
}


}

/// @nodoc
abstract mixin class $WebSearchToolCopyWith<$Res>  {
  factory $WebSearchToolCopyWith(WebSearchTool value, $Res Function(WebSearchTool) _then) = _$WebSearchToolCopyWithImpl;
@useResult
$Res call({
 ToolType type
});




}
/// @nodoc
class _$WebSearchToolCopyWithImpl<$Res>
    implements $WebSearchToolCopyWith<$Res> {
  _$WebSearchToolCopyWithImpl(this._self, this._then);

  final WebSearchTool _self;
  final $Res Function(WebSearchTool) _then;

/// Create a copy of WebSearchTool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ToolType,
  ));
}

}


/// Adds pattern-matching-related methods to [WebSearchTool].
extension WebSearchToolPatterns on WebSearchTool {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebSearchTool value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebSearchTool() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebSearchTool value)  $default,){
final _that = this;
switch (_that) {
case _WebSearchTool():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebSearchTool value)?  $default,){
final _that = this;
switch (_that) {
case _WebSearchTool() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ToolType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebSearchTool() when $default != null:
return $default(_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ToolType type)  $default,) {final _that = this;
switch (_that) {
case _WebSearchTool():
return $default(_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ToolType type)?  $default,) {final _that = this;
switch (_that) {
case _WebSearchTool() when $default != null:
return $default(_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebSearchTool implements WebSearchTool {
  const _WebSearchTool({required this.type});
  factory _WebSearchTool.fromJson(Map<String, dynamic> json) => _$WebSearchToolFromJson(json);

@override final  ToolType type;

/// Create a copy of WebSearchTool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebSearchToolCopyWith<_WebSearchTool> get copyWith => __$WebSearchToolCopyWithImpl<_WebSearchTool>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebSearchToolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebSearchTool&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'WebSearchTool(type: $type)';
}


}

/// @nodoc
abstract mixin class _$WebSearchToolCopyWith<$Res> implements $WebSearchToolCopyWith<$Res> {
  factory _$WebSearchToolCopyWith(_WebSearchTool value, $Res Function(_WebSearchTool) _then) = __$WebSearchToolCopyWithImpl;
@override @useResult
$Res call({
 ToolType type
});




}
/// @nodoc
class __$WebSearchToolCopyWithImpl<$Res>
    implements _$WebSearchToolCopyWith<$Res> {
  __$WebSearchToolCopyWithImpl(this._self, this._then);

  final _WebSearchTool _self;
  final $Res Function(_WebSearchTool) _then;

/// Create a copy of WebSearchTool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_WebSearchTool(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ToolType,
  ));
}


}

CodeInterpreterTool _$CodeInterpreterToolFromJson(
  Map<String, dynamic> json
) {
    return _CodeIntepreterTool.fromJson(
      json
    );
}

/// @nodoc
mixin _$CodeInterpreterTool {

 ToolType get type; Map<String, String> get container;
/// Create a copy of CodeInterpreterTool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeInterpreterToolCopyWith<CodeInterpreterTool> get copyWith => _$CodeInterpreterToolCopyWithImpl<CodeInterpreterTool>(this as CodeInterpreterTool, _$identity);

  /// Serializes this CodeInterpreterTool to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeInterpreterTool&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.container, container));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(container));

@override
String toString() {
  return 'CodeInterpreterTool(type: $type, container: $container)';
}


}

/// @nodoc
abstract mixin class $CodeInterpreterToolCopyWith<$Res>  {
  factory $CodeInterpreterToolCopyWith(CodeInterpreterTool value, $Res Function(CodeInterpreterTool) _then) = _$CodeInterpreterToolCopyWithImpl;
@useResult
$Res call({
 ToolType type, Map<String, String> container
});




}
/// @nodoc
class _$CodeInterpreterToolCopyWithImpl<$Res>
    implements $CodeInterpreterToolCopyWith<$Res> {
  _$CodeInterpreterToolCopyWithImpl(this._self, this._then);

  final CodeInterpreterTool _self;
  final $Res Function(CodeInterpreterTool) _then;

/// Create a copy of CodeInterpreterTool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? container = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ToolType,container: null == container ? _self.container : container // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CodeInterpreterTool].
extension CodeInterpreterToolPatterns on CodeInterpreterTool {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodeIntepreterTool value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodeIntepreterTool() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodeIntepreterTool value)  $default,){
final _that = this;
switch (_that) {
case _CodeIntepreterTool():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodeIntepreterTool value)?  $default,){
final _that = this;
switch (_that) {
case _CodeIntepreterTool() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ToolType type,  Map<String, String> container)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodeIntepreterTool() when $default != null:
return $default(_that.type,_that.container);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ToolType type,  Map<String, String> container)  $default,) {final _that = this;
switch (_that) {
case _CodeIntepreterTool():
return $default(_that.type,_that.container);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ToolType type,  Map<String, String> container)?  $default,) {final _that = this;
switch (_that) {
case _CodeIntepreterTool() when $default != null:
return $default(_that.type,_that.container);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CodeIntepreterTool extends CodeInterpreterTool {
   _CodeIntepreterTool({required this.type, final  Map<String, String> container = const {'type' : 'auto'}}): _container = container,super._();
  factory _CodeIntepreterTool.fromJson(Map<String, dynamic> json) => _$CodeIntepreterToolFromJson(json);

@override final  ToolType type;
 final  Map<String, String> _container;
@override@JsonKey() Map<String, String> get container {
  if (_container is EqualUnmodifiableMapView) return _container;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_container);
}


/// Create a copy of CodeInterpreterTool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodeIntepreterToolCopyWith<_CodeIntepreterTool> get copyWith => __$CodeIntepreterToolCopyWithImpl<_CodeIntepreterTool>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodeIntepreterToolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodeIntepreterTool&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._container, _container));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_container));

@override
String toString() {
  return 'CodeInterpreterTool(type: $type, container: $container)';
}


}

/// @nodoc
abstract mixin class _$CodeIntepreterToolCopyWith<$Res> implements $CodeInterpreterToolCopyWith<$Res> {
  factory _$CodeIntepreterToolCopyWith(_CodeIntepreterTool value, $Res Function(_CodeIntepreterTool) _then) = __$CodeIntepreterToolCopyWithImpl;
@override @useResult
$Res call({
 ToolType type, Map<String, String> container
});




}
/// @nodoc
class __$CodeIntepreterToolCopyWithImpl<$Res>
    implements _$CodeIntepreterToolCopyWith<$Res> {
  __$CodeIntepreterToolCopyWithImpl(this._self, this._then);

  final _CodeIntepreterTool _self;
  final $Res Function(_CodeIntepreterTool) _then;

/// Create a copy of CodeInterpreterTool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? container = null,}) {
  return _then(_CodeIntepreterTool(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ToolType,container: null == container ? _self._container : container // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}


/// @nodoc
mixin _$ToolChoiceFunction {

 String get name;
/// Create a copy of ToolChoiceFunction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToolChoiceFunctionCopyWith<ToolChoiceFunction> get copyWith => _$ToolChoiceFunctionCopyWithImpl<ToolChoiceFunction>(this as ToolChoiceFunction, _$identity);

  /// Serializes this ToolChoiceFunction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToolChoiceFunction&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ToolChoiceFunction(name: $name)';
}


}

/// @nodoc
abstract mixin class $ToolChoiceFunctionCopyWith<$Res>  {
  factory $ToolChoiceFunctionCopyWith(ToolChoiceFunction value, $Res Function(ToolChoiceFunction) _then) = _$ToolChoiceFunctionCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$ToolChoiceFunctionCopyWithImpl<$Res>
    implements $ToolChoiceFunctionCopyWith<$Res> {
  _$ToolChoiceFunctionCopyWithImpl(this._self, this._then);

  final ToolChoiceFunction _self;
  final $Res Function(ToolChoiceFunction) _then;

/// Create a copy of ToolChoiceFunction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ToolChoiceFunction].
extension ToolChoiceFunctionPatterns on ToolChoiceFunction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToolChoiceFunction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToolChoiceFunction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToolChoiceFunction value)  $default,){
final _that = this;
switch (_that) {
case _ToolChoiceFunction():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToolChoiceFunction value)?  $default,){
final _that = this;
switch (_that) {
case _ToolChoiceFunction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToolChoiceFunction() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _ToolChoiceFunction():
return $default(_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _ToolChoiceFunction() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ToolChoiceFunction extends ToolChoiceFunction {
  const _ToolChoiceFunction({required this.name}): super._();
  factory _ToolChoiceFunction.fromJson(Map<String, dynamic> json) => _$ToolChoiceFunctionFromJson(json);

@override final  String name;

/// Create a copy of ToolChoiceFunction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToolChoiceFunctionCopyWith<_ToolChoiceFunction> get copyWith => __$ToolChoiceFunctionCopyWithImpl<_ToolChoiceFunction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToolChoiceFunctionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToolChoiceFunction&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ToolChoiceFunction(name: $name)';
}


}

/// @nodoc
abstract mixin class _$ToolChoiceFunctionCopyWith<$Res> implements $ToolChoiceFunctionCopyWith<$Res> {
  factory _$ToolChoiceFunctionCopyWith(_ToolChoiceFunction value, $Res Function(_ToolChoiceFunction) _then) = __$ToolChoiceFunctionCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$ToolChoiceFunctionCopyWithImpl<$Res>
    implements _$ToolChoiceFunctionCopyWith<$Res> {
  __$ToolChoiceFunctionCopyWithImpl(this._self, this._then);

  final _ToolChoiceFunction _self;
  final $Res Function(_ToolChoiceFunction) _then;

/// Create a copy of ToolChoiceFunction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_ToolChoiceFunction(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ToolCallFunction {

 String get arguments; String? get name;
/// Create a copy of ToolCallFunction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToolCallFunctionCopyWith<ToolCallFunction> get copyWith => _$ToolCallFunctionCopyWithImpl<ToolCallFunction>(this as ToolCallFunction, _$identity);

  /// Serializes this ToolCallFunction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToolCallFunction&&(identical(other.arguments, arguments) || other.arguments == arguments)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arguments,name);

@override
String toString() {
  return 'ToolCallFunction(arguments: $arguments, name: $name)';
}


}

/// @nodoc
abstract mixin class $ToolCallFunctionCopyWith<$Res>  {
  factory $ToolCallFunctionCopyWith(ToolCallFunction value, $Res Function(ToolCallFunction) _then) = _$ToolCallFunctionCopyWithImpl;
@useResult
$Res call({
 String arguments, String? name
});




}
/// @nodoc
class _$ToolCallFunctionCopyWithImpl<$Res>
    implements $ToolCallFunctionCopyWith<$Res> {
  _$ToolCallFunctionCopyWithImpl(this._self, this._then);

  final ToolCallFunction _self;
  final $Res Function(ToolCallFunction) _then;

/// Create a copy of ToolCallFunction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? arguments = null,Object? name = freezed,}) {
  return _then(_self.copyWith(
arguments: null == arguments ? _self.arguments : arguments // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ToolCallFunction].
extension ToolCallFunctionPatterns on ToolCallFunction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToolCallFunction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToolCallFunction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToolCallFunction value)  $default,){
final _that = this;
switch (_that) {
case _ToolCallFunction():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToolCallFunction value)?  $default,){
final _that = this;
switch (_that) {
case _ToolCallFunction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String arguments,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToolCallFunction() when $default != null:
return $default(_that.arguments,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String arguments,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ToolCallFunction():
return $default(_that.arguments,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String arguments,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ToolCallFunction() when $default != null:
return $default(_that.arguments,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ToolCallFunction extends ToolCallFunction {
  const _ToolCallFunction({required this.arguments, this.name}): super._();
  factory _ToolCallFunction.fromJson(Map<String, dynamic> json) => _$ToolCallFunctionFromJson(json);

@override final  String arguments;
@override final  String? name;

/// Create a copy of ToolCallFunction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToolCallFunctionCopyWith<_ToolCallFunction> get copyWith => __$ToolCallFunctionCopyWithImpl<_ToolCallFunction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToolCallFunctionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToolCallFunction&&(identical(other.arguments, arguments) || other.arguments == arguments)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arguments,name);

@override
String toString() {
  return 'ToolCallFunction(arguments: $arguments, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ToolCallFunctionCopyWith<$Res> implements $ToolCallFunctionCopyWith<$Res> {
  factory _$ToolCallFunctionCopyWith(_ToolCallFunction value, $Res Function(_ToolCallFunction) _then) = __$ToolCallFunctionCopyWithImpl;
@override @useResult
$Res call({
 String arguments, String? name
});




}
/// @nodoc
class __$ToolCallFunctionCopyWithImpl<$Res>
    implements _$ToolCallFunctionCopyWith<$Res> {
  __$ToolCallFunctionCopyWithImpl(this._self, this._then);

  final _ToolCallFunction _self;
  final $Res Function(_ToolCallFunction) _then;

/// Create a copy of ToolCallFunction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? arguments = null,Object? name = freezed,}) {
  return _then(_ToolCallFunction(
arguments: null == arguments ? _self.arguments : arguments // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
