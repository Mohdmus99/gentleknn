import 'package:flutter/material.dart';

//This method will return the selected date.
Future<DateTime> dateSelect(BuildContext context) async {
  final DateTime? newDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime.now().add(
      Duration(days: 140),
    ),
    helpText: 'Select a date',
  );
  if (newDate != null) {
    return newDate;
  } else {
    return DateTime.now();
  }
}
