import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   // return myElevateButton();
   //return myTextButton();
   return myFloatingActionButton();
   }

myFloatingActionButton(){
return FloatingActionButton.extended(
  onPressed: (){print("FloatingActionButtonxx");},
  //child: Icon(Icons.add,size: 40,),
  icon: Icon(Icons.add,size: 40,color: Colors.black,),
  label: Text("Agregar usuario",style: TextStyle(color:Colors.black),),
  
  backgroundColor: Colors.yellow,
  elevation: 20,
  tooltip: "Agregar usuarioxxx",
);
}


save(){
  print("ElevatedButton");
}

}