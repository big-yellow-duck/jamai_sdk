import 'package:dart_mappable/dart_mappable.dart';

part 'test_enum.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum GenConfigTypes {
  @MappableValue('gen_config.llm')
  llm,
  @MappableValue('gen_config.python')
  python,
  @MappableValue('gen_config.chat')
  chat,
  @MappableValue('gen_config.embed')
  embed,
  @MappableValue('gen_config.code')
  code,
}

extension GenConfigTypesX on GenConfigTypes {
  static GenConfigTypes fromValue(String value) =>
      GenConfigTypesMapper.fromValue(value);
}

extension GenConfigTypesFromValue on GenConfigTypes {
  static GenConfigTypes fromValue(String value) =>
      GenConfigTypesMapper.fromValue(value);
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MyClass with MyClassMappable {
  final GenConfigTypes type;
  final int id;
  MyClass(this.type, this.id);
}

@MappableClass(discriminatorKey: 'animal')
class Animal with AnimalMappable {
  final String name;
  Animal(this.name);
}

void main(){
  MyClass a = MyClass(GenConfigTypes.chat, 1);

  print(a.toJson());
  // print(MyClass.)
}