import 'package:flutter/material.dart';

class MyStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
  return Stack(
    
    alignment: Alignment.centerRight,
    fit: StackFit.expand,//solo hace efecto a los componentes que no fueron posicionados
    children: [
      Image.asset("assets/images/agua.jpeg"),
      Positioned(
        right: 10,
        child:Icon(Icons.close,color:Colors.red,size:40)
      
      
      )
    ],

  );
  }


}