import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCheckBoxState();
  }
}

class MyCheckBoxState extends State<MyCheckBox> {
  String currentValue = "";
  List<String> courses = ["Flutter", "Dart", "PHP", "Android"];
  List<bool> isCheck = [];

  @override
  void initState() {
    isCheck = List<bool>.filled(courses.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(isCheck.toString()),
        ListView.builder(
          shrinkWrap: true,
          itemCount: courses.length,
          itemBuilder: ((context, index) {
            return CheckboxListTile(
              title: Text(courses[index]),
              value: isCheck[index],
              onChanged: (value) {
                onChange(value, index);
              },
            );
          }),
        )
      ],
    );
  }

  onChange(value, index) {
    setState(() {
      this.isCheck[index] = value as bool;
      //this.currentValue = value.toString();
    });
  }
}
