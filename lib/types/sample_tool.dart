import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_tool.freezed.dart';
part 'sample_tool.g.dart';

@freezed
abstract class Subclass with _$Subclass {
  const Subclass._(this.value);
  factory Subclass({required int value}) = _SubClass;
  @override
  final int value;

}

@freezed
abstract class MyClass extends Subclass with _$MyClass {
  const MyClass._({required int value}) : super._(value);

  const factory MyClass(int value, String myNewString) = _MyClass;
}

class Niama{
  final int nombor;
  Niama(this.nombor);
}

class AnotherClass extends Niama{
  final int anotherNombor;
  AnotherClass({required int value, required this.anotherNombor}) : super(value);
}