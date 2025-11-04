// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'test_enum.dart';

class GenConfigTypesMapper extends EnumMapper<GenConfigTypes> {
  GenConfigTypesMapper._();

  static GenConfigTypesMapper? _instance;
  static GenConfigTypesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenConfigTypesMapper._());
    }
    return _instance!;
  }

  static GenConfigTypes fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  GenConfigTypes decode(dynamic value) {
    switch (value) {
      case 'gen_config.llm':
        return GenConfigTypes.llm;
      case 'gen_config.python':
        return GenConfigTypes.python;
      case 'gen_config.chat':
        return GenConfigTypes.chat;
      case 'gen_config.embed':
        return GenConfigTypes.embed;
      case 'gen_config.code':
        return GenConfigTypes.code;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(GenConfigTypes self) {
    switch (self) {
      case GenConfigTypes.llm:
        return 'gen_config.llm';
      case GenConfigTypes.python:
        return 'gen_config.python';
      case GenConfigTypes.chat:
        return 'gen_config.chat';
      case GenConfigTypes.embed:
        return 'gen_config.embed';
      case GenConfigTypes.code:
        return 'gen_config.code';
    }
  }
}

extension GenConfigTypesMapperExtension on GenConfigTypes {
  dynamic toValue() {
    GenConfigTypesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<GenConfigTypes>(this);
  }
}

class MyClassMapper extends ClassMapperBase<MyClass> {
  MyClassMapper._();

  static MyClassMapper? _instance;
  static MyClassMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MyClassMapper._());
      GenConfigTypesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MyClass';

  static GenConfigTypes _$type(MyClass v) => v.type;
  static const Field<MyClass, GenConfigTypes> _f$type = Field('type', _$type);
  static int _$id(MyClass v) => v.id;
  static const Field<MyClass, int> _f$id = Field('id', _$id);

  @override
  final MappableFields<MyClass> fields = const {#type: _f$type, #id: _f$id};

  static MyClass _instantiate(DecodingData data) {
    return MyClass(data.dec(_f$type), data.dec(_f$id));
  }

  @override
  final Function instantiate = _instantiate;

  static MyClass fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MyClass>(map);
  }

  static MyClass fromJson(String json) {
    return ensureInitialized().decodeJson<MyClass>(json);
  }
}

mixin MyClassMappable {
  String toJson() {
    return MyClassMapper.ensureInitialized().encodeJson<MyClass>(
      this as MyClass,
    );
  }

  Map<String, dynamic> toMap() {
    return MyClassMapper.ensureInitialized().encodeMap<MyClass>(
      this as MyClass,
    );
  }

  MyClassCopyWith<MyClass, MyClass, MyClass> get copyWith =>
      _MyClassCopyWithImpl<MyClass, MyClass>(
        this as MyClass,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MyClassMapper.ensureInitialized().stringifyValue(this as MyClass);
  }

  @override
  bool operator ==(Object other) {
    return MyClassMapper.ensureInitialized().equalsValue(
      this as MyClass,
      other,
    );
  }

  @override
  int get hashCode {
    return MyClassMapper.ensureInitialized().hashValue(this as MyClass);
  }
}

extension MyClassValueCopy<$R, $Out> on ObjectCopyWith<$R, MyClass, $Out> {
  MyClassCopyWith<$R, MyClass, $Out> get $asMyClass =>
      $base.as((v, t, t2) => _MyClassCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MyClassCopyWith<$R, $In extends MyClass, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({GenConfigTypes? type, int? id});
  MyClassCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MyClassCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MyClass, $Out>
    implements MyClassCopyWith<$R, MyClass, $Out> {
  _MyClassCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MyClass> $mapper =
      MyClassMapper.ensureInitialized();
  @override
  $R call({GenConfigTypes? type, int? id}) => $apply(
    FieldCopyWithData({if (type != null) #type: type, if (id != null) #id: id}),
  );
  @override
  MyClass $make(CopyWithData data) =>
      MyClass(data.get(#type, or: $value.type), data.get(#id, or: $value.id));

  @override
  MyClassCopyWith<$R2, MyClass, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MyClassCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AnimalMapper extends ClassMapperBase<Animal> {
  AnimalMapper._();

  static AnimalMapper? _instance;
  static AnimalMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AnimalMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Animal';

  static String _$name(Animal v) => v.name;
  static const Field<Animal, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<Animal> fields = const {#name: _f$name};

  static Animal _instantiate(DecodingData data) {
    return Animal(data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static Animal fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Animal>(map);
  }

  static Animal fromJson(String json) {
    return ensureInitialized().decodeJson<Animal>(json);
  }
}

mixin AnimalMappable {
  String toJson() {
    return AnimalMapper.ensureInitialized().encodeJson<Animal>(this as Animal);
  }

  Map<String, dynamic> toMap() {
    return AnimalMapper.ensureInitialized().encodeMap<Animal>(this as Animal);
  }

  AnimalCopyWith<Animal, Animal, Animal> get copyWith =>
      _AnimalCopyWithImpl<Animal, Animal>(this as Animal, $identity, $identity);
  @override
  String toString() {
    return AnimalMapper.ensureInitialized().stringifyValue(this as Animal);
  }

  @override
  bool operator ==(Object other) {
    return AnimalMapper.ensureInitialized().equalsValue(this as Animal, other);
  }

  @override
  int get hashCode {
    return AnimalMapper.ensureInitialized().hashValue(this as Animal);
  }
}

extension AnimalValueCopy<$R, $Out> on ObjectCopyWith<$R, Animal, $Out> {
  AnimalCopyWith<$R, Animal, $Out> get $asAnimal =>
      $base.as((v, t, t2) => _AnimalCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AnimalCopyWith<$R, $In extends Animal, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name});
  AnimalCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AnimalCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Animal, $Out>
    implements AnimalCopyWith<$R, Animal, $Out> {
  _AnimalCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Animal> $mapper = AnimalMapper.ensureInitialized();
  @override
  $R call({String? name}) =>
      $apply(FieldCopyWithData({if (name != null) #name: name}));
  @override
  Animal $make(CopyWithData data) => Animal(data.get(#name, or: $value.name));

  @override
  AnimalCopyWith<$R2, Animal, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AnimalCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

