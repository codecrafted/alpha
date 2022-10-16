import 'package:flutter/material.dart';
import 'package:flutter_application_1/Common/MyKeys.dart';
import '../../../Model/Sound.dart';

typedef VoidCallbackParam(Sound sound);

class MyListTile extends StatelessWidget {
  Sound sound;
  int index;
  VoidCallbackParam voidCallbackParam;

  //MyListTile(this.sound);

  MyListTile(this.sound, this.index, this.voidCallbackParam);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        sound.title,
        style: TextStyle(fontSize: 40),
      ),
      subtitle: Text(sound.author),
      trailing: InkWell(
          //onTap: () => voidCallbackParam(sound), child: Icon(Icons.close)
          //onTap: () => myListViewKey.currentState?.remove(sound),
          onTap: () => myListViewKey.currentState?.remove(sound),
          child: Icon(Icons.close)),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: () {
        myListViewKey.currentState?.update(sound..title="tururururu", index);
        // print("ListTile onTap");
      },
      onLongPress: () {
        print("ListTile onLongPress");
      },
    );
  }
}
