import 'package:flutter/material.dart';

class MyText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
        "Hola Mundo. El dolor es inevitable, el sufrimiento opcional.",
        style: TextStyle(
          color:Colors.white,
          fontSize: 40,
          //fontWeight: FontWeight.bold,
          letterSpacing: 5,
          wordSpacing: 20,
          backgroundColor: Colors.black26,
          fontFamily: "Montserrat",
          decoration: TextDecoration.underline

        ),
        textAlign: TextAlign.justify,//justifica el ordenamiento del texto
        softWrap: true,//si quieres indicar si se parte el texto.
        maxLines: 3,//cantidad de lineas que quiere que se muestre
        overflow: TextOverflow.ellipsis,////efecto de 3 puntos cuando el texto es amplio

    );
   }


}