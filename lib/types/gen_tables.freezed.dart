// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gen_tables.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Balls {

 String get wee;
/// Create a copy of Balls
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BallsCopyWith<Balls> get copyWith => _$BallsCopyWithImpl<Balls>(this as Balls, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Balls&&(identical(other.wee, wee) || other.wee == wee));
}


@override
int get hashCode => Object.hash(runtimeType,wee);

@override
String toString() {
  return 'Balls(wee: $wee)';
}


}

/// @nodoc
abstract mixin class $BallsCopyWith<$Res>  {
  factory $BallsCopyWith(Balls value, $Res Function(Balls) _then) = _$BallsCopyWithImpl;
@useResult
$Res call({
 String wee
});




}
/// @nodoc
class _$BallsCopyWithImpl<$Res>
    implements $BallsCopyWith<$Res> {
  _$BallsCopyWithImpl(this._self, this._then);

  final Balls _self;
  final $Res Function(Balls) _then;

/// Create a copy of Balls
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wee = null,}) {
  return _then(_self.copyWith(
wee: null == wee ? _self.wee : wee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Balls].
extension BallsPatterns on Balls {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Balls value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Balls() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Balls value)  $default,){
final _that = this;
switch (_that) {
case _Balls():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Balls value)?  $default,){
final _that = this;
switch (_that) {
case _Balls() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String wee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Balls() when $default != null:
return $default(_that.wee);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String wee)  $default,) {final _that = this;
switch (_that) {
case _Balls():
return $default(_that.wee);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String wee)?  $default,) {final _that = this;
switch (_that) {
case _Balls() when $default != null:
return $default(_that.wee);case _:
  return null;

}
}

}

/// @nodoc


class _Balls extends Balls {
   _Balls({required this.wee}): super._();
  

@override final  String wee;

/// Create a copy of Balls
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BallsCopyWith<_Balls> get copyWith => __$BallsCopyWithImpl<_Balls>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Balls&&(identical(other.wee, wee) || other.wee == wee));
}


@override
int get hashCode => Object.hash(runtimeType,wee);

@override
String toString() {
  return 'Balls(wee: $wee)';
}


}

/// @nodoc
abstract mixin class _$BallsCopyWith<$Res> implements $BallsCopyWith<$Res> {
  factory _$BallsCopyWith(_Balls value, $Res Function(_Balls) _then) = __$BallsCopyWithImpl;
@override @useResult
$Res call({
 String wee
});




}
/// @nodoc
class __$BallsCopyWithImpl<$Res>
    implements _$BallsCopyWith<$Res> {
  __$BallsCopyWithImpl(this._self, this._then);

  final _Balls _self;
  final $Res Function(_Balls) _then;

/// Create a copy of Balls
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wee = null,}) {
  return _then(_Balls(
wee: null == wee ? _self.wee : wee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ColumnSchema {

 String get id; ColumnSchemaDtype get dtype; int get vlen; bool get index; dynamic get genConfig;
/// Create a copy of ColumnSchema
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColumnSchemaCopyWith<ColumnSchema> get copyWith => _$ColumnSchemaCopyWithImpl<ColumnSchema>(this as ColumnSchema, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColumnSchema&&(identical(other.id, id) || other.id == id)&&(identical(other.dtype, dtype) || other.dtype == dtype)&&(identical(other.vlen, vlen) || other.vlen == vlen)&&(identical(other.index, index) || other.index == index)&&const DeepCollectionEquality().equals(other.genConfig, genConfig));
}


@override
int get hashCode => Object.hash(runtimeType,id,dtype,vlen,index,const DeepCollectionEquality().hash(genConfig));

@override
String toString() {
  return 'ColumnSchema(id: $id, dtype: $dtype, vlen: $vlen, index: $index, genConfig: $genConfig)';
}


}

/// @nodoc
abstract mixin class $ColumnSchemaCopyWith<$Res>  {
  factory $ColumnSchemaCopyWith(ColumnSchema value, $Res Function(ColumnSchema) _then) = _$ColumnSchemaCopyWithImpl;
@useResult
$Res call({
 String id, ColumnSchemaDtype dtype, int vlen, bool index, dynamic genConfig
});




}
/// @nodoc
class _$ColumnSchemaCopyWithImpl<$Res>
    implements $ColumnSchemaCopyWith<$Res> {
  _$ColumnSchemaCopyWithImpl(this._self, this._then);

  final ColumnSchema _self;
  final $Res Function(ColumnSchema) _then;

/// Create a copy of ColumnSchema
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dtype = null,Object? vlen = null,Object? index = null,Object? genConfig = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dtype: null == dtype ? _self.dtype : dtype // ignore: cast_nullable_to_non_nullable
as ColumnSchemaDtype,vlen: null == vlen ? _self.vlen : vlen // ignore: cast_nullable_to_non_nullable
as int,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as bool,genConfig: freezed == genConfig ? _self.genConfig : genConfig // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ColumnSchema].
extension ColumnSchemaPatterns on ColumnSchema {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ColumnSchema value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ColumnSchema() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ColumnSchema value)  $default,){
final _that = this;
switch (_that) {
case _ColumnSchema():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ColumnSchema value)?  $default,){
final _that = this;
switch (_that) {
case _ColumnSchema() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  ColumnSchemaDtype dtype,  int vlen,  bool index,  dynamic genConfig)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ColumnSchema() when $default != null:
return $default(_that.id,_that.dtype,_that.vlen,_that.index,_that.genConfig);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  ColumnSchemaDtype dtype,  int vlen,  bool index,  dynamic genConfig)  $default,) {final _that = this;
switch (_that) {
case _ColumnSchema():
return $default(_that.id,_that.dtype,_that.vlen,_that.index,_that.genConfig);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  ColumnSchemaDtype dtype,  int vlen,  bool index,  dynamic genConfig)?  $default,) {final _that = this;
switch (_that) {
case _ColumnSchema() when $default != null:
return $default(_that.id,_that.dtype,_that.vlen,_that.index,_that.genConfig);case _:
  return null;

}
}

}

/// @nodoc


class _ColumnSchema extends ColumnSchema {
   _ColumnSchema({required final  String id, final  ColumnSchemaDtype dtype = ColumnSchemaDtype.str, final  int vlen = 0, final  bool index = true, final  dynamic genConfig}): super._(id: id, dtype: dtype, vlen: vlen, index: index, genConfig: genConfig);
  



/// Create a copy of ColumnSchema
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColumnSchemaCopyWith<_ColumnSchema> get copyWith => __$ColumnSchemaCopyWithImpl<_ColumnSchema>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColumnSchema&&(identical(other.id, id) || other.id == id)&&(identical(other.dtype, dtype) || other.dtype == dtype)&&(identical(other.vlen, vlen) || other.vlen == vlen)&&(identical(other.index, index) || other.index == index)&&const DeepCollectionEquality().equals(other.genConfig, genConfig));
}


@override
int get hashCode => Object.hash(runtimeType,id,dtype,vlen,index,const DeepCollectionEquality().hash(genConfig));

@override
String toString() {
  return 'ColumnSchema(id: $id, dtype: $dtype, vlen: $vlen, index: $index, genConfig: $genConfig)';
}


}

/// @nodoc
abstract mixin class _$ColumnSchemaCopyWith<$Res> implements $ColumnSchemaCopyWith<$Res> {
  factory _$ColumnSchemaCopyWith(_ColumnSchema value, $Res Function(_ColumnSchema) _then) = __$ColumnSchemaCopyWithImpl;
@override @useResult
$Res call({
 String id, ColumnSchemaDtype dtype, int vlen, bool index, dynamic genConfig
});




}
/// @nodoc
class __$ColumnSchemaCopyWithImpl<$Res>
    implements _$ColumnSchemaCopyWith<$Res> {
  __$ColumnSchemaCopyWithImpl(this._self, this._then);

  final _ColumnSchema _self;
  final $Res Function(_ColumnSchema) _then;

/// Create a copy of ColumnSchema
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dtype = null,Object? vlen = null,Object? index = null,Object? genConfig = freezed,}) {
  return _then(_ColumnSchema(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dtype: null == dtype ? _self.dtype : dtype // ignore: cast_nullable_to_non_nullable
as ColumnSchemaDtype,vlen: null == vlen ? _self.vlen : vlen // ignore: cast_nullable_to_non_nullable
as int,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as bool,genConfig: freezed == genConfig ? _self.genConfig : genConfig // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
