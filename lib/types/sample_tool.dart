import 'package:dart_mappable/dart_mappable.dart';
import 'package:jamai_sdk/types/common.dart';
part 'sample_tool.mapper.dart';

@MappableClass(discriminatorKey: 'vehicleType')
sealed class Vehicles with VehiclesMappable {}

@MappableClass(discriminatorKey: 'car')
class Car extends Vehicles with CarMappable {
  final String model;
  Car({required this.model});

  factory Car.fromJson(String json) => CarMapper.fromJson(json);

  @override
  String toString() => model;
}

@MappableClass(discriminatorKey: 'bike')
class Bike extends Vehicles with BikeMappable {
  final double power;
  Bike({required this.power});
}

sealed class StringOrList {
  const StringOrList();

  factory StringOrList.fromDynamic(dynamic value) {
    if (value is String) return StringValue(value);
    if (value is List<String>) return ListValue(value);
    throw ArgumentError('Value must be String or List<String>');
    
  }
}

class StringValue extends StringOrList {
  final String value;
  const StringValue(this.value);
}

class ListValue extends StringOrList {
  final List<String> value;
  const ListValue(this.value);
}


// @MappableClass()
// class StringOrList with StringOrListMappable{
//   factory StringOrList.data(int value) = Data;
// }

// class StringOrListHook extends MappingHook {
//   const StringOrListHook();

//   @override
//   dynamic beforeDecode(dynamic value) {
//     if (value is String || value is List<dynamic>) {
//       // It's a valid type, let dart_mappable handle the final conversion.
//       // List<dynamic> will be correctly cast to List<String> later.
//       return value;
//     }
//     // If it's neither, throw an error.
//     throw MapperException.unexpectedType(
//       value.runtimeType,
//       'String or List<String>',
//     );
//   }
// }

void main() {
  Vehicles wee = Car(model: 'honda');
  Vehicles kk = Bike(power: 69);

  final m = switch (wee) {
    Car() => 'this is a car',
    Bike() => 'this is a bike',
  };
  print(wee.toJson());

  print(kk);

  print(m);

  // try from json
  Vehicles jj = Car.fromJson('{"model" : "honda"}');

  print(jj);

  
}
