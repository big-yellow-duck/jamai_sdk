// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_tool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Subclass {

 int get value;
/// Create a copy of Subclass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubclassCopyWith<Subclass> get copyWith => _$SubclassCopyWithImpl<Subclass>(this as Subclass, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subclass&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'Subclass(value: $value)';
}


}

/// @nodoc
abstract mixin class $SubclassCopyWith<$Res>  {
  factory $SubclassCopyWith(Subclass value, $Res Function(Subclass) _then) = _$SubclassCopyWithImpl;
@useResult
$Res call({
 int value
});




}
/// @nodoc
class _$SubclassCopyWithImpl<$Res>
    implements $SubclassCopyWith<$Res> {
  _$SubclassCopyWithImpl(this._self, this._then);

  final Subclass _self;
  final $Res Function(Subclass) _then;

/// Create a copy of Subclass
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Subclass].
extension SubclassPatterns on Subclass {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubClass value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubClass() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubClass value)  $default,){
final _that = this;
switch (_that) {
case _SubClass():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubClass value)?  $default,){
final _that = this;
switch (_that) {
case _SubClass() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubClass() when $default != null:
return $default(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int value)  $default,) {final _that = this;
switch (_that) {
case _SubClass():
return $default(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int value)?  $default,) {final _that = this;
switch (_that) {
case _SubClass() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _SubClass extends Subclass {
   _SubClass({required super.value}): super._();
  



/// Create a copy of Subclass
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubClassCopyWith<_SubClass> get copyWith => __$SubClassCopyWithImpl<_SubClass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubClass&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'Subclass(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SubClassCopyWith<$Res> implements $SubclassCopyWith<$Res> {
  factory _$SubClassCopyWith(_SubClass value, $Res Function(_SubClass) _then) = __$SubClassCopyWithImpl;
@override @useResult
$Res call({
 int value
});




}
/// @nodoc
class __$SubClassCopyWithImpl<$Res>
    implements _$SubClassCopyWith<$Res> {
  __$SubClassCopyWithImpl(this._self, this._then);

  final _SubClass _self;
  final $Res Function(_SubClass) _then;

/// Create a copy of Subclass
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_SubClass(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MyClass {

 int get value; String get myNewString;
/// Create a copy of MyClass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyClassCopyWith<MyClass> get copyWith => _$MyClassCopyWithImpl<MyClass>(this as MyClass, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyClass&&(identical(other.value, value) || other.value == value)&&(identical(other.myNewString, myNewString) || other.myNewString == myNewString));
}


@override
int get hashCode => Object.hash(runtimeType,value,myNewString);

@override
String toString() {
  return 'MyClass(value: $value, myNewString: $myNewString)';
}


}

/// @nodoc
abstract mixin class $MyClassCopyWith<$Res> implements $SubclassCopyWith<$Res> {
  factory $MyClassCopyWith(MyClass value, $Res Function(MyClass) _then) = _$MyClassCopyWithImpl;
@useResult
$Res call({
 int value, String myNewString
});




}
/// @nodoc
class _$MyClassCopyWithImpl<$Res>
    implements $MyClassCopyWith<$Res> {
  _$MyClassCopyWithImpl(this._self, this._then);

  final MyClass _self;
  final $Res Function(MyClass) _then;

/// Create a copy of MyClass
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? myNewString = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,myNewString: null == myNewString ? _self.myNewString : myNewString // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MyClass].
extension MyClassPatterns on MyClass {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyClass value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyClass() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyClass value)  $default,){
final _that = this;
switch (_that) {
case _MyClass():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyClass value)?  $default,){
final _that = this;
switch (_that) {
case _MyClass() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int value,  String myNewString)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyClass() when $default != null:
return $default(_that.value,_that.myNewString);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int value,  String myNewString)  $default,) {final _that = this;
switch (_that) {
case _MyClass():
return $default(_that.value,_that.myNewString);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int value,  String myNewString)?  $default,) {final _that = this;
switch (_that) {
case _MyClass() when $default != null:
return $default(_that.value,_that.myNewString);case _:
  return null;

}
}

}

/// @nodoc


class _MyClass extends MyClass {
  const _MyClass(final  int value, this.myNewString): super._(value: value);
  

@override final  String myNewString;

/// Create a copy of MyClass
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyClassCopyWith<_MyClass> get copyWith => __$MyClassCopyWithImpl<_MyClass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyClass&&(identical(other.value, value) || other.value == value)&&(identical(other.myNewString, myNewString) || other.myNewString == myNewString));
}


@override
int get hashCode => Object.hash(runtimeType,value,myNewString);

@override
String toString() {
  return 'MyClass(value: $value, myNewString: $myNewString)';
}


}

/// @nodoc
abstract mixin class _$MyClassCopyWith<$Res> implements $MyClassCopyWith<$Res> {
  factory _$MyClassCopyWith(_MyClass value, $Res Function(_MyClass) _then) = __$MyClassCopyWithImpl;
@override @useResult
$Res call({
 int value, String myNewString
});




}
/// @nodoc
class __$MyClassCopyWithImpl<$Res>
    implements _$MyClassCopyWith<$Res> {
  __$MyClassCopyWithImpl(this._self, this._then);

  final _MyClass _self;
  final $Res Function(_MyClass) _then;

/// Create a copy of MyClass
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? myNewString = null,}) {
  return _then(_MyClass(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,null == myNewString ? _self.myNewString : myNewString // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
