import 'package:flutter/material.dart';
import 'package:flutter_application_1/Common/MyKeys.dart';
import 'package:flutter_application_1/Model/Sound.dart';
import 'package:flutter_application_1/Widgets/ListViewAndGridView/Actividad/PlayListView.dart';
import 'package:flutter_application_1/Widgets/ListViewAndGridView/MyListView2.dart';

class PlayListPage extends StatefulWidget {
  //la clase estado que se encarga de reconstruir el diseño cuando se requiera
  @override
  State<StatefulWidget> createState() => PlayListPageState();
}

//clase estado
class PlayListPageState extends State<PlayListPage> {
  //pada poder retornar nuestro widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () =>myListViewKey.currentState?.add(Sound(title: "Shakira y sus amigas",author: "Los Chabelos"))
        ,child: Icon(Icons.add),),
        body: SafeArea(
          child: PlayListView(),
          //child: MyListView2()
            // child: MyGridView()
            //child: MyListTile(),
            //child:MyCard(),
            //child: MyContainer(),
            /*
        child: ElevatedButton(
        child: Text("NowPlagingPage"),
        onPressed: () => {
           // Navigator.push(context,MaterialPageRoute(builder: (context) => NowPlayingPage(),))
          Navigator.pop(context)
        },
        ),
     */

            ));
  }
}
