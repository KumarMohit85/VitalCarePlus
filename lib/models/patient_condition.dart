import 'package:flutter/material.dart';

enum PatientCondition {
  stable,
  fair,
  serious,
  critical,
  improving,
  deteriorating,
}

extension PatientConditionExtension on PatientCondition {
  Color get color {
    switch (this) {
      case PatientCondition.stable:
        return Colors.green;
      case PatientCondition.fair:
        return Colors.yellow;
      case PatientCondition.serious:
        return Colors.orange;
      case PatientCondition.critical:
        return Colors.red;
      case PatientCondition.improving:
        return Colors.lightGreen;
      case PatientCondition.deteriorating:
        return Colors.deepOrange;
      default:
        return Colors.grey;
    }
  }

  String get displayName {
    switch (this) {
      case PatientCondition.stable:
        return 'Stable';
      case PatientCondition.fair:
        return 'Fair';
      case PatientCondition.serious:
        return 'Serious';
      case PatientCondition.critical:
        return 'Critical';
      case PatientCondition.improving:
        return 'Improving';
      case PatientCondition.deteriorating:
        return 'Deteriorating';
      default:
        return '';
    }
  }
}
