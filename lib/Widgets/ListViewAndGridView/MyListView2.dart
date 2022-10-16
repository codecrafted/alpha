import 'package:flutter/material.dart';
import 'package:flutter_application_1/Common/MyKeys.dart';
import 'package:flutter_application_1/Model/Sound.dart';
import 'package:flutter_application_1/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class MyListView2 extends StatefulWidget {
  MyListView2() : super(key: myListViewKey);
  @override
  State<StatefulWidget> createState() => MyListViewState2();
}

class MyListViewState2 extends State<MyListView2> {
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
            direction: DismissDirection.startToEnd,
            key: ObjectKey(sound),
            child: MyListTile(sound, index, remove),
            onDismissed: (direction) {
              remove(sound);
            },
          );
        },
        //itemBuilder: (context, index) => MyListTile(sounds[index]),
        //itemBuilder: (context, index) => MyContainer(),//cuando se pone horizontal, de forma obligatoria se debe setear el ancho
      ),
    );
  }

  update(Sound sound, int index) {
    setState(() {
      mySounds[index] = sound;
    });
  }

  remove(Sound sound) {
    setState(() {
      mySounds.remove(sound);
    });
  }

  add(Sound sound) {
    setState(() {
      mySounds.add(sound);
    });
  }
}
