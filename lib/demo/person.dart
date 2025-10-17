// Minimal dart_mappable base class in its own library (file)
// Demonstrates cross-file inheritance working with codegen

import 'package:dart_mappable/dart_mappable.dart';
import 'balls.dart';

part 'person.mapper.dart';

@MappableClass(discriminatorKey: 'type', includeSubClasses: [DemoBalls], discriminatorValue: 'person')
class DemoPerson with DemoPersonMappable {
  final String firstName;
  final String lastName;
  final int age;

  const DemoPerson({
    required this.firstName,
    required this.lastName,
    required this.age,
  });
}