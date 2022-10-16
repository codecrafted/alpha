import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   // return myElevateButton();
   //return myTextButton();
   return myOutlineButton();
   }

myElevateButton(){

  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          shadowColor: Colors.yellow,
          elevation: 20
      ),
      onLongPress: (){
           print("ElevatedButton onLongPress");

      },
      onPressed: /*(){}*/ save, 
      child: Text("Guardar")
    );
}
//es un tipo de boton que solo muestra texto, es un boton especifico
myTextButton(){
return TextButton(
  onPressed: (){print("TextButton");}, 
  child: Text("Guardar"));

}
//es un tipo de boton que permite personalizaciones como bordes, es un boton especifico
myOutlineButton(){

return OutlinedButton(
  style: OutlinedButton.styleFrom(
    side:BorderSide(color:Colors.yellow,width: 4)
    ,primary:Colors.white
    ,shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30))
    )
    ),
  onPressed: (){print("TextButton");}, 
  child: Text("Guardar")
  );

}


save(){
  print("ElevatedButton");
}

}