import 'package:dart_mappable/dart_mappable.dart';
part 'sample_tool.mapper.dart';

@MappableClass(discriminatorKey: 'vehicleType')
sealed class Vehicles with VehiclesMappable {}

@MappableClass(discriminatorKey: 'car')
class Car extends Vehicles with CarMappable {
  final String model;
  Car({required this.model});

  factory Car.fromJson(String json) => CarMapper.fromJson(json);
}

@MappableClass(discriminatorKey: 'bike')
class Bike extends Vehicles with BikeMappable {
  final double power;
  Bike({required this.power});
}

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
  Vehicles jj = CarMapper.fromJson('{"model" : "honda"}');

  print(jj);
}
