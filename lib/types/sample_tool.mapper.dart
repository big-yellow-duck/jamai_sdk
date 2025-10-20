// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sample_tool.dart';

class VehiclesMapper extends ClassMapperBase<Vehicles> {
  VehiclesMapper._();

  static VehiclesMapper? _instance;
  static VehiclesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VehiclesMapper._());
      CarMapper.ensureInitialized();
      BikeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Vehicles';

  @override
  final MappableFields<Vehicles> fields = const {};

  static Vehicles _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'Vehicles',
      'vehicleType',
      '${data.value['vehicleType']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Vehicles fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Vehicles>(map);
  }

  static Vehicles fromJson(String json) {
    return ensureInitialized().decodeJson<Vehicles>(json);
  }
}

mixin VehiclesMappable {
  String toJson();
  Map<String, dynamic> toMap();
  VehiclesCopyWith<Vehicles, Vehicles, Vehicles> get copyWith;
}

abstract class VehiclesCopyWith<$R, $In extends Vehicles, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  VehiclesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class CarMapper extends SubClassMapperBase<Car> {
  CarMapper._();

  static CarMapper? _instance;
  static CarMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CarMapper._());
      VehiclesMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Car';

  static String _$model(Car v) => v.model;
  static const Field<Car, String> _f$model = Field('model', _$model);

  @override
  final MappableFields<Car> fields = const {#model: _f$model};

  @override
  final String discriminatorKey = 'vehicleType';
  @override
  final dynamic discriminatorValue = 'Car';
  @override
  late final ClassMapperBase superMapper = VehiclesMapper.ensureInitialized();

  static Car _instantiate(DecodingData data) {
    return Car(model: data.dec(_f$model));
  }

  @override
  final Function instantiate = _instantiate;

  static Car fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Car>(map);
  }

  static Car fromJson(String json) {
    return ensureInitialized().decodeJson<Car>(json);
  }
}

mixin CarMappable {
  String toJson() {
    return CarMapper.ensureInitialized().encodeJson<Car>(this as Car);
  }

  Map<String, dynamic> toMap() {
    return CarMapper.ensureInitialized().encodeMap<Car>(this as Car);
  }

  CarCopyWith<Car, Car, Car> get copyWith =>
      _CarCopyWithImpl<Car, Car>(this as Car, $identity, $identity);
  @override
  String toString() {
    return CarMapper.ensureInitialized().stringifyValue(this as Car);
  }

  @override
  bool operator ==(Object other) {
    return CarMapper.ensureInitialized().equalsValue(this as Car, other);
  }

  @override
  int get hashCode {
    return CarMapper.ensureInitialized().hashValue(this as Car);
  }
}

extension CarValueCopy<$R, $Out> on ObjectCopyWith<$R, Car, $Out> {
  CarCopyWith<$R, Car, $Out> get $asCar =>
      $base.as((v, t, t2) => _CarCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CarCopyWith<$R, $In extends Car, $Out>
    implements VehiclesCopyWith<$R, $In, $Out> {
  @override
  $R call({String? model});
  CarCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CarCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Car, $Out>
    implements CarCopyWith<$R, Car, $Out> {
  _CarCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Car> $mapper = CarMapper.ensureInitialized();
  @override
  $R call({String? model}) =>
      $apply(FieldCopyWithData({if (model != null) #model: model}));
  @override
  Car $make(CopyWithData data) =>
      Car(model: data.get(#model, or: $value.model));

  @override
  CarCopyWith<$R2, Car, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CarCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BikeMapper extends SubClassMapperBase<Bike> {
  BikeMapper._();

  static BikeMapper? _instance;
  static BikeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BikeMapper._());
      VehiclesMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Bike';

  static double _$power(Bike v) => v.power;
  static const Field<Bike, double> _f$power = Field('power', _$power);

  @override
  final MappableFields<Bike> fields = const {#power: _f$power};

  @override
  final String discriminatorKey = 'vehicleType';
  @override
  final dynamic discriminatorValue = 'Bike';
  @override
  late final ClassMapperBase superMapper = VehiclesMapper.ensureInitialized();

  static Bike _instantiate(DecodingData data) {
    return Bike(power: data.dec(_f$power));
  }

  @override
  final Function instantiate = _instantiate;

  static Bike fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Bike>(map);
  }

  static Bike fromJson(String json) {
    return ensureInitialized().decodeJson<Bike>(json);
  }
}

mixin BikeMappable {
  String toJson() {
    return BikeMapper.ensureInitialized().encodeJson<Bike>(this as Bike);
  }

  Map<String, dynamic> toMap() {
    return BikeMapper.ensureInitialized().encodeMap<Bike>(this as Bike);
  }

  BikeCopyWith<Bike, Bike, Bike> get copyWith =>
      _BikeCopyWithImpl<Bike, Bike>(this as Bike, $identity, $identity);
  @override
  String toString() {
    return BikeMapper.ensureInitialized().stringifyValue(this as Bike);
  }

  @override
  bool operator ==(Object other) {
    return BikeMapper.ensureInitialized().equalsValue(this as Bike, other);
  }

  @override
  int get hashCode {
    return BikeMapper.ensureInitialized().hashValue(this as Bike);
  }
}

extension BikeValueCopy<$R, $Out> on ObjectCopyWith<$R, Bike, $Out> {
  BikeCopyWith<$R, Bike, $Out> get $asBike =>
      $base.as((v, t, t2) => _BikeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BikeCopyWith<$R, $In extends Bike, $Out>
    implements VehiclesCopyWith<$R, $In, $Out> {
  @override
  $R call({double? power});
  BikeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BikeCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Bike, $Out>
    implements BikeCopyWith<$R, Bike, $Out> {
  _BikeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Bike> $mapper = BikeMapper.ensureInitialized();
  @override
  $R call({double? power}) =>
      $apply(FieldCopyWithData({if (power != null) #power: power}));
  @override
  Bike $make(CopyWithData data) =>
      Bike(power: data.get(#power, or: $value.power));

  @override
  BikeCopyWith<$R2, Bike, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BikeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

