import 'package:dart_mappable/dart_mappable.dart';

import 'person.dart';
import 'balls.dart';

/// Minimal usage demonstrating cross-file inheritance with dart_mappable.
/// - Base class: see lib/demo/person.dart
/// - Subclass:   see lib/demo/balls.dart
///
/// How it works:
/// 1) Each class is annotated with @MappableClass. The base sets a discriminatorKey,
///    and the subclass sets a discriminatorValue.
/// 2) Subclass registration is static via includeSubClasses on DemoPerson; no
///    explicit ensureInitialized() is required when both files are imported.
/// 3) Use .copyWith, .toMap, .toJson, and decode to the base type.
///
/// You can run this function from a debug entry point (e.g. a test or a small bin/
/// script) to see the prints.
void runDemoDartMappable() {
  // 1) Mappers are registered automatically via includeSubClasses when the files
  //    are imported (see DemoPerson in person.dart).

  // 2) Create a subclass instance
  final b = DemoBalls(
    wee: 'hello',
    firstName: 'Ada',
    lastName: 'Lovelace',
    age: 36,
  );

  // 3) copyWith on the subclass
  final b2 = b.copyWith(wee: 'world');

  // 4) Map/JSON encode
  final map = b2.toMap();   // contains {'type': 'balls', ...}
  final json = b2.toJson(); // JSON string with discriminator "type": "balls"

  // 5) Polymorphic decode to the base type (DemoPerson)
  final asBase = MapperContainer.globals.fromJson<DemoPerson>(json);
  assert(asBase is DemoBalls);

  // 6) Value equality works out of the box
  final eq = b2 == asBase;

  // 7) Print demo output
  // (Replace with asserts in tests if desired)
  print(map);
  print(json);
  print('equal after round-trip: $eq');
}