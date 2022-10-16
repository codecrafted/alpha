import 'package:flutter/material.dart';

class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   // return Icon(Icons.pets,color:Colors.white,size: 30,);
    return Image(
      //image: AssetImage("assets/images/agua.jpeg"),
      //image: NetworkImage("htts://thumbs.dreamstime.com/b/icono-del-fuego-28710509.jpg"),
      image: NetworkImage("https://c.tenor.com/H_loBGkJiMYAAAAd/code-daddycoolcool.gif"),
      
      width: 100,
      height: 100,
      fit:BoxFit.fill,
      //color: Colors.red, solo para png
      errorBuilder:( 
          BuildContext context,
          Object error,
          StackTrace? stackTrace){
            //return Text("Error en cargar la imagen!!");
            return Image.asset("assets/images/agua.jpeg");
          } ,
      );
   }
}