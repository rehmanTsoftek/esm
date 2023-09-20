import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppDateTimePicker {
  static Future getDate(context) async {
    String selectedDate = '';

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      selectedDate = DateFormat('dd-MM-yyyy').format(picked);
    }

    return selectedDate;
  }

  static Future<String> getTime(context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    String formattedTime = '';
    if (pickedTime != null) {
      formattedTime = pickedTime.format(context);
    }
    return formattedTime;
  }
}
