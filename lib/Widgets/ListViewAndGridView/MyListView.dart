import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Sound.dart';

import 'package:flutter_application_1/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class MyListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyListViewState();
  }
}

class MyListViewState extends State<MyListView> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    this.mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: ListView.builder(
        shrinkWrap: true, //se adapta el contenido
        reverse: true, //ordena la lista de ultimo a primero
        //physics: NeverScrollableScrollPhysics(),//desabilita el scroll
        //scrollDirection: Axis.horizontal,
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          Sound sound = this.mySounds[index];
          return Dismissible(
            direction: DismissDirection.endToStart,
            key: ObjectKey(sound),
            child: MyListTile(sound,index, remove),
            onDismissed: (direction) {
              setState(() {
                mySounds.remove(sound);
              });
            },
          );
        },
        //itemBuilder: (context, index) => MyListTile(sounds[index]),
        //itemBuilder: (context, index) => MyContainer(),//cuando se pone horizontal, de forma obligatoria se debe setear el ancho
      ),
    );
  }

  remove(Sound sound) {}
}
