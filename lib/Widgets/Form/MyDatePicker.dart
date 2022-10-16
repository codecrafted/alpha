import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyDatePickerState();
  }
}

class MyDatePickerState extends State<MyDatePicker> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => selectDate(), 
        child: Text(selectedDate.toString()));
  }

  selectDate()async {
    DateTime? datetime = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2021),
        lastDate: DateTime(2023));

    if (datetime != null && selectedDate != datetime) {
      setState(() {
        this.selectedDate = datetime;
      });
    }
  }
}
