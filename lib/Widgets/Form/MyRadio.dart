import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyRadioState();
  }
}

class MyRadioState extends State<MyRadio> {
  String currentValue = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
            value: "Radio1",
            title: Text("Soltero"),
            groupValue: currentValue,
            onChanged: (value) {
              onChange(value);
            }),
        RadioListTile(
            value: "Radio2",
            title: Text("Casado"),
            groupValue: currentValue,
            onChanged: (value) {
              onChange(value);
            }),
        Text(currentValue)
      ],
    );
  }

  onChange(value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }
}
