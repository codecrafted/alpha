import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyDropDownButtonState();
  }
}

class MyDropDownButtonState extends State<MyDropDownButton> {
  String currentValue = "";
  List<String> courses = ["Flutter", "Dart", "PHP", "Android"];

  @override
  void initState() {
    currentValue = courses[0];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: currentValue,
      dropdownColor: Colors.red,
      icon: Icon(Icons.music_note),
      items: courses
          .map((String course) =>
              DropdownMenuItem(value: course, child: Text(course)))
          .toList(),
      onChanged: (String? value) {
        onChange(value);
      },
    );
  }

  onChange(value) {
    setState(() {
      if (value != null && currentValue != value) {
        this.currentValue = value;
      }
    });
  }
}
