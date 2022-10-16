import 'package:flutter/material.dart';
import 'package:flutter_application_1/Common/MyRouters.dart';
import 'package:flutter_application_1/Pages/PlayListPage.dart';

class FloatingActionButtonCF extends StatelessWidget {
  //VoidCallback voidCallback;
  //FloatingActionButtonCF(this.voidCallback);
 FloatingActionButtonCF();
  
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      onPressed: (){
          //Navigator.push(context,MaterialPageRoute(builder: (context) => PlayListPage(),));
       // Navigator.pop(context);
      //Navigator.popAndPushNamed(context, ROUTE_PLAY_LIST);//reemplazar por la nueva pagina
      Navigator.pushNamedAndRemoveUntil(context,ROUTE_PLAY_LIST,(Route<dynamic> route)=> false);//permite eliminar el historial de paginas y quedarse con la ultima
      },
      child: Icon(
        Icons.add,
        size: 30,
        color: Colors.white,
      ),
      backgroundColor: Colors.orangeAccent,
    );
  }
}