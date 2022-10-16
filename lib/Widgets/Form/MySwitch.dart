import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySwitchState();
  }
}

class MySwitchState extends State<MySwitch> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(isSwitch?"On":"Off"),
      subtitle: Text("abc"),
      activeTrackColor: Colors.black,
      activeColor: Colors.red,
      value: isSwitch, 
      onChanged: (value) => onChange(value),
    );
  }

  onChange(value) {
    setState(() {
      this.isSwitch=value;
      //this.isCheck[index] = value as bool;
      //this.currentValue = value.toString();
    });
  }
}
