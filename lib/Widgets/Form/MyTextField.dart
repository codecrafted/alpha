import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyTextFieldState();
  }
}

class MyTextFieldState extends State<MyTextField> {
  TextEditingController ctrlName = TextEditingController();
  TextEditingController ctrlAge = TextEditingController();

  String name = "";
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(name),
      TextField(
        focusNode: node1,
        controller: ctrlName,
        autofocus: true,
        keyboardType: TextInputType.number,
      ),
      TextField(
        focusNode: node2,
        controller: ctrlAge,
        autofocus: true,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.green),
        maxLength: 5,
        //maxLines: 3,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Edad",
          hintStyle: TextStyle(color: Colors.red),
          labelText: "Edad",
          enabled: false,

          //icon: Icon(Icons.favorite)),
          prefix: Icon(Icons.favorite),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 10),
              borderRadius: BorderRadius.circular(30)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 10)),
        ),
      ),
      ElevatedButton(onPressed: onPressed, child: Text("Guardar"))
    ]);
  }

  onPressed() {
    FocusScope.of(context).requestFocus(node2);
    setState(() {
      this.name = ctrlName.text.toString();
    });
  }
}
