import 'package:vital_plus/models/patient.dart';

final List<Patient> patients = [
  Patient(
    name: "John Doe",
    age: 45,
    gender: "Male",
    bedNo: 12,
    dateOfAdmit: DateTime.parse("2024-06-15T00:00:00.000"),
    dateOfBirth: DateTime.parse("1979-03-22T00:00:00.000"),
    height: 180.0,
    weight: 85.0,
    address: "789 Pine St, Cityville, USA",
    medicalHistory: "Diabetes, Hypertension",
    bodyTemperature: 98.6,
    spo2: 97,
    pulseRate: 72,
  ),
  Patient(
    name: "Emily Smith",
    age: 32,
    gender: "Female",
    bedNo: 8,
    dateOfAdmit: DateTime.parse("2024-07-03T00:00:00.000"),
    dateOfBirth: DateTime.parse("1992-11-10T00:00:00.000"),
    height: 170.0,
    weight: 68.0,
    address: "123 Oak St, Villagetown, USA",
    medicalHistory: "No significant medical history",
    bodyTemperature: 98.7,
    spo2: 98,
    pulseRate: 75,
  ),
  Patient(
    name: "Michael Johnson",
    age: 50,
    gender: "Male",
    bedNo: 14,
    dateOfAdmit: DateTime.parse("2024-06-20T00:00:00.000"),
    dateOfBirth: DateTime.parse("1974-02-28T00:00:00.000"),
    height: 175.0,
    weight: 90.0,
    address: "456 Birch St, Hamlet, USA",
    medicalHistory: "Previous heart surgery, Asthma",
    bodyTemperature: 99.1,
    spo2: 95,
    pulseRate: 78,
  ),
  Patient(
    name: "Sarah Brown",
    age: 38,
    gender: "Female",
    bedNo: 5,
    dateOfAdmit: DateTime.parse("2024-07-02T00:00:00.000"),
    dateOfBirth: DateTime.parse("1986-09-14T00:00:00.000"),
    height: 160.0,
    weight: 55.0,
    address: "321 Maple St, Township, USA",
    medicalHistory: "Allergies, Migraine",
    bodyTemperature: 98.4,
    spo2: 99,
    pulseRate: 70,
  ),
  Patient(
    name: "David Wilson",
    age: 60,
    gender: "Male",
    bedNo: 20,
    dateOfAdmit: DateTime.parse("2024-06-25T00:00:00.000"),
    dateOfBirth: DateTime.parse("1964-01-15T00:00:00.000"),
    height: 178.0,
    weight: 75.0,
    address: "654 Cedar St, Borough, USA",
    medicalHistory: "Chronic kidney disease",
    bodyTemperature: 98.8,
    spo2: 96,
    pulseRate: 74,
  ),
];
