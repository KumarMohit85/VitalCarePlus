import 'package:flutter/material.dart';

enum Info { temperature, spo2, pulserate }

extension InfoExtension on Info {
  String get toStringValue {
    switch (this) {
      case Info.temperature:
        return 'Temperature';
      case Info.spo2:
        return 'SpO2';
      case Info.pulserate:
        return 'PulseRate';
      default:
        return '';
    }
  }

  static Info fromStringValue(String value) {
    switch (value) {
      case 'Temperature':
        return Info.temperature;
      case 'SpO2':
        return Info.spo2;
      case 'PulseRate':
        return Info.pulserate;
      default:
        throw ArgumentError('Unknown enum value: $value');
    }
  }

  bool isDanger(double value) {
    switch (this) {
      case Info.temperature:
        return value < 89.6 || value > 103;
      case Info.spo2:
        return value < 92;
      case Info.pulserate:
        return value < 60 || value > 120;
      default:
        throw ArgumentError('Unknown enum value: $this');
    }
  }

  List<Color> getGradientColors() {
    switch (this) {
      case Info.temperature:
        return [
          Color.fromARGB(255, 227, 206, 17),
          const Color.fromARGB(255, 196, 17, 4)
        ];
      case Info.spo2:
        return [Colors.white, Colors.blue];
      case Info.pulserate:
        return [Colors.yellow, const Color.fromARGB(255, 42, 168, 46)];
    }
  }
}
