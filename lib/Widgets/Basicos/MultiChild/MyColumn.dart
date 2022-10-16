import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    
children: [
  Text("Hola",style: TextStyle(fontSize: 30)),
  Text("Holax"),
  Text("Holaxx"),

  Text("Hola"),
  

],


   ));
  }


}