import 'package:flutter/material.dart';
import 'package:smart_cal/core/core.dart';

extension SmartEventExtension on SmartEvent {
  TimeOfDay get startTime => TimeOfDay.fromDateTime(start);
  TimeOfDay get endTime => TimeOfDay.fromDateTime(end);
}
