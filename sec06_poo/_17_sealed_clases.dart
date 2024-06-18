import 'dart:math';

import '../extras/tools.dart';

sealed class Vehicle {
  void sayHello() {
    print('Soy un $runtimeType');
  }
}

class Car extends Vehicle {}

class Truck extends Vehicle {}

class Bus extends Vehicle {}

class MotorBike extends Vehicle {}

class Bicycle extends Vehicle {}

Vehicle getRandomVehicle() {
  final list = [
    Car(),
    Truck(),
    Bus(),
    MotorBike(),
    Bicycle(),
  ];

  // return new vehicle
  return list[Random.secure().nextInt(list.length)];
}

void main() {
  // get vehicle
  final vehicle = getRandomVehicle();
  switch (vehicle) {
    case Car():
      vehicle.sayHello();
      break;
    case Truck():
      vehicle.sayHello();
      break;
    case Bus():
      vehicle.sayHello();
      break;
    case MotorBike():
      vehicle.sayHello();
      break;
    case Bicycle():
      vehicle.sayHello();
      break;
    default:
      break;
  }

  // end message
  systemPause();
}
