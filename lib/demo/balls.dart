// Minimal dart_mappable subclass in a different file (library)
// Demonstrates cross-file inheritance working with codegen

import 'package:dart_mappable/dart_mappable.dart';
import 'person.dart';

part 'balls.mapper.dart';

@MappableClass(discriminatorValue: 'balls')
class DemoBalls extends DemoPerson with DemoBallsMappable {
  final String wee;

  const DemoBalls({
    required this.wee,
    required super.firstName,
    required super.lastName,
    required super.age,
  }) : super();
}