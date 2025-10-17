// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'balls.dart';

class DemoBallsMapper extends SubClassMapperBase<DemoBalls> {
  DemoBallsMapper._();

  static DemoBallsMapper? _instance;
  static DemoBallsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DemoBallsMapper._());
      DemoPersonMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'DemoBalls';

  static String _$wee(DemoBalls v) => v.wee;
  static const Field<DemoBalls, String> _f$wee = Field('wee', _$wee);
  static String _$firstName(DemoBalls v) => v.firstName;
  static const Field<DemoBalls, String> _f$firstName = Field(
    'firstName',
    _$firstName,
  );
  static String _$lastName(DemoBalls v) => v.lastName;
  static const Field<DemoBalls, String> _f$lastName = Field(
    'lastName',
    _$lastName,
  );
  static int _$age(DemoBalls v) => v.age;
  static const Field<DemoBalls, int> _f$age = Field('age', _$age);

  @override
  final MappableFields<DemoBalls> fields = const {
    #wee: _f$wee,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #age: _f$age,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'balls';
  @override
  late final ClassMapperBase superMapper = DemoPersonMapper.ensureInitialized();

  static DemoBalls _instantiate(DecodingData data) {
    return DemoBalls(
      wee: data.dec(_f$wee),
      firstName: data.dec(_f$firstName),
      lastName: data.dec(_f$lastName),
      age: data.dec(_f$age),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DemoBalls fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DemoBalls>(map);
  }

  static DemoBalls fromJson(String json) {
    return ensureInitialized().decodeJson<DemoBalls>(json);
  }
}

mixin DemoBallsMappable {
  String toJson() {
    return DemoBallsMapper.ensureInitialized().encodeJson<DemoBalls>(
      this as DemoBalls,
    );
  }

  Map<String, dynamic> toMap() {
    return DemoBallsMapper.ensureInitialized().encodeMap<DemoBalls>(
      this as DemoBalls,
    );
  }

  DemoBallsCopyWith<DemoBalls, DemoBalls, DemoBalls> get copyWith =>
      _DemoBallsCopyWithImpl<DemoBalls, DemoBalls>(
        this as DemoBalls,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DemoBallsMapper.ensureInitialized().stringifyValue(
      this as DemoBalls,
    );
  }

  @override
  bool operator ==(Object other) {
    return DemoBallsMapper.ensureInitialized().equalsValue(
      this as DemoBalls,
      other,
    );
  }

  @override
  int get hashCode {
    return DemoBallsMapper.ensureInitialized().hashValue(this as DemoBalls);
  }
}

extension DemoBallsValueCopy<$R, $Out> on ObjectCopyWith<$R, DemoBalls, $Out> {
  DemoBallsCopyWith<$R, DemoBalls, $Out> get $asDemoBalls =>
      $base.as((v, t, t2) => _DemoBallsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DemoBallsCopyWith<$R, $In extends DemoBalls, $Out>
    implements DemoPersonCopyWith<$R, $In, $Out> {
  @override
  $R call({String? wee, String? firstName, String? lastName, int? age});
  DemoBallsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DemoBallsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DemoBalls, $Out>
    implements DemoBallsCopyWith<$R, DemoBalls, $Out> {
  _DemoBallsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DemoBalls> $mapper =
      DemoBallsMapper.ensureInitialized();
  @override
  $R call({String? wee, String? firstName, String? lastName, int? age}) =>
      $apply(
        FieldCopyWithData({
          if (wee != null) #wee: wee,
          if (firstName != null) #firstName: firstName,
          if (lastName != null) #lastName: lastName,
          if (age != null) #age: age,
        }),
      );
  @override
  DemoBalls $make(CopyWithData data) => DemoBalls(
    wee: data.get(#wee, or: $value.wee),
    firstName: data.get(#firstName, or: $value.firstName),
    lastName: data.get(#lastName, or: $value.lastName),
    age: data.get(#age, or: $value.age),
  );

  @override
  DemoBallsCopyWith<$R2, DemoBalls, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DemoBallsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

