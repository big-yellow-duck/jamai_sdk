// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person.dart';

class DemoPersonMapper extends ClassMapperBase<DemoPerson> {
  DemoPersonMapper._();

  static DemoPersonMapper? _instance;
  static DemoPersonMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DemoPersonMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DemoPerson';

  static String _$firstName(DemoPerson v) => v.firstName;
  static const Field<DemoPerson, String> _f$firstName = Field(
    'firstName',
    _$firstName,
  );
  static String _$lastName(DemoPerson v) => v.lastName;
  static const Field<DemoPerson, String> _f$lastName = Field(
    'lastName',
    _$lastName,
  );
  static int _$age(DemoPerson v) => v.age;
  static const Field<DemoPerson, int> _f$age = Field('age', _$age);

  @override
  final MappableFields<DemoPerson> fields = const {
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #age: _f$age,
  };

  static DemoPerson _instantiate(DecodingData data) {
    return DemoPerson(
      firstName: data.dec(_f$firstName),
      lastName: data.dec(_f$lastName),
      age: data.dec(_f$age),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DemoPerson fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DemoPerson>(map);
  }

  static DemoPerson fromJson(String json) {
    return ensureInitialized().decodeJson<DemoPerson>(json);
  }
}

mixin DemoPersonMappable {
  String toJson() {
    return DemoPersonMapper.ensureInitialized().encodeJson<DemoPerson>(
      this as DemoPerson,
    );
  }

  Map<String, dynamic> toMap() {
    return DemoPersonMapper.ensureInitialized().encodeMap<DemoPerson>(
      this as DemoPerson,
    );
  }

  DemoPersonCopyWith<DemoPerson, DemoPerson, DemoPerson> get copyWith =>
      _DemoPersonCopyWithImpl<DemoPerson, DemoPerson>(
        this as DemoPerson,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DemoPersonMapper.ensureInitialized().stringifyValue(
      this as DemoPerson,
    );
  }

  @override
  bool operator ==(Object other) {
    return DemoPersonMapper.ensureInitialized().equalsValue(
      this as DemoPerson,
      other,
    );
  }

  @override
  int get hashCode {
    return DemoPersonMapper.ensureInitialized().hashValue(this as DemoPerson);
  }
}

extension DemoPersonValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DemoPerson, $Out> {
  DemoPersonCopyWith<$R, DemoPerson, $Out> get $asDemoPerson =>
      $base.as((v, t, t2) => _DemoPersonCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DemoPersonCopyWith<$R, $In extends DemoPerson, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? firstName, String? lastName, int? age});
  DemoPersonCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DemoPersonCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DemoPerson, $Out>
    implements DemoPersonCopyWith<$R, DemoPerson, $Out> {
  _DemoPersonCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DemoPerson> $mapper =
      DemoPersonMapper.ensureInitialized();
  @override
  $R call({String? firstName, String? lastName, int? age}) => $apply(
    FieldCopyWithData({
      if (firstName != null) #firstName: firstName,
      if (lastName != null) #lastName: lastName,
      if (age != null) #age: age,
    }),
  );
  @override
  DemoPerson $make(CopyWithData data) => DemoPerson(
    firstName: data.get(#firstName, or: $value.firstName),
    lastName: data.get(#lastName, or: $value.lastName),
    age: data.get(#age, or: $value.age),
  );

  @override
  DemoPersonCopyWith<$R2, DemoPerson, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DemoPersonCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

