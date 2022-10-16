import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
   
    return AppBar(
      title: Text("Inicio"),
      backgroundColor: Colors.pink,
      elevation: 30,
      shadowColor: Colors.white,
      centerTitle: true,
      toolbarOpacity: 0.5,
      leading: Icon(Icons.arrow_back,color:Colors.white),//iconos lado izquierdo
      actions: [
        Icon(Icons.search,color:Colors.white),
        Icon(Icons.more_vert,color:Colors.white)

      ],//iconos lado derecho
      //toolbarHeight: 100,
    );
   }
   
     @override
     //Size get preferredSize => Size.fromHeight(kToolbarHeight);//tamaño del appbar
Size get preferredSize => Size.fromHeight(100);//tamaño del appbar


}