import 'package:flutter/material.dart';

import 'package:flutter_application_1/Widgets/Basicos/MultiChild/ActividadAlter/PlayingNow.dart';
import 'package:flutter_application_1/Widgets/Basicos/MultiChild/ActividadAlter/Sound.dart';


class NowPlayingPage extends StatefulWidget {
  //la clase estado que se encarga de reconstruir el diseño cuando se requiera
  @override
  State<StatefulWidget> createState() => NowPlayingPageState();
}

//clase estado
class NowPlayingPageState extends State<NowPlayingPage> {
  //pada poder retornar nuestro widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          //child: MyRow()
          //child:MyStack()
          child: PlayingNow(new Sound())
          //child: MyColumn(),
          ),
    );
    /*return Scaffold(
      body: SafeArea(child: ElevatedButton(
        child: Text("MyHomePage"),
        onPressed: () => {
          //Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()))
            Navigator.pop(context)
        },
        ),
      )
    );*/
  }
}
