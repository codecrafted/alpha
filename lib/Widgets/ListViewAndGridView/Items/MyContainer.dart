import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget{
  @override
  Widget build(Object context) {
    return InkWell(
      onTap: (){print("hola mundo onTap");},
      onLongPress: (){print("hola mundo onLongPress");},
      
      child:Container(
      //color: Colors.pink,
      width:200,
      height: 200,
      alignment: Alignment.topCenter,
      child: Text("Hola Mundo"),
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.only(left: 60),

      decoration: BoxDecoration(
          color: Colors.green,
          //borderRadius: BorderRadius.circular(30),
          //borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
          border: Border.all(
          
            color: Colors.black,
            width: 10
          ),
        shape: BoxShape.circle,
        
        boxShadow: [

          BoxShadow(
              color: Colors.black12,
              offset: Offset(4,8)

          )

        ],
        gradient: LinearGradient(
          colors: [
              Colors.red,
              Colors.blue
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
        image: DecorationImage(

            image: AssetImage("assets/images/Cody.jpeg")

        )

      ),
    ));
  }



}