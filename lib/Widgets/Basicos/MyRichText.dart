import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(text:
      TextSpan(
        text: "¿Tienes una cuenta?",
        style: TextStyle(color:Colors.yellowAccent,fontSize: 60),
        children: [
                TextSpan(text: "Inicia sesión 1 ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,fontSize: 20)),
                TextSpan(text: "Inicia sesión 2 ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,fontSize: 20)),
                TextSpan(text: "Inicia sesión 3 ",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,fontSize: 20)),
                
        ]
      ));
   }


}