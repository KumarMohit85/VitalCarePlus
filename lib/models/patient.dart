import 'dart:convert';

class Patient {
  String name;
  int age;
  String gender;
  int bedNo;
  DateTime dateOfAdmit;
  DateTime dateOfBirth;
  double height;
  double weight;
  String address;
  String medicalHistory;
  double bodyTemperature;
  int spo2;
  int pulseRate;

  Patient({
    required this.name,
    required this.age,
    required this.gender,
    required this.bedNo,
    required this.dateOfAdmit,
    required this.dateOfBirth,
    required this.height,
    required this.weight,
    required this.address,
    required this.medicalHistory,
    required this.bodyTemperature,
    required this.spo2,
    required this.pulseRate,
  });

  // Factory constructor to create a Patient from a map (e.g., from JSON)
  factory Patient.fromMap(Map<String, dynamic> map) {
    return Patient(
      name: map['name'],
      age: map['age'],
      gender: map['gender'],
      bedNo: map['bedNo'],
      dateOfAdmit: DateTime.parse(map['dateOfAdmit']),
      dateOfBirth: DateTime.parse(map['dateOfBirth']),
      height: map['height'],
      weight: map['weight'],
      address: map['address'],
      medicalHistory: map['medicalHistory'],
      bodyTemperature: map['bodyTemperature'],
      spo2: map['spo2'],
      pulseRate: map['pulseRate'],
    );
  }

  // Method to convert Patient to a map (e.g., to JSON)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'gender': gender,
      'bedNo': bedNo,
      'dateOfAdmit': dateOfAdmit.toIso8601String(),
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'height': height,
      'weight': weight,
      'address': address,
      'medicalHistory': medicalHistory,
      'bodyTemperature': bodyTemperature,
      'spo2': spo2,
      'pulseRate': pulseRate,
    };
  }

  @override
  String toString() {
    return 'Patient{name: $name, age: $age, gender: $gender, bedNo: $bedNo, dateOfAdmit: $dateOfAdmit, dateOfBirth: $dateOfBirth, height: $height, weight: $weight, address: $address, medicalHistory: $medicalHistory, bodyTemperature: $bodyTemperature, spo2: $spo2, pulseRate: $pulseRate}';
  }
}
