import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/ListViewAndGridView/Items/MyCard.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
      //physics: NeverScrollableScrollPhysics(),
      itemCount: 50,
      itemBuilder: (context, index) => MyCard(),
    );

    /* 
    el gridview se ordena segun el espacio
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
      ),
      children: [
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
      ],
    );*/

    /* 
   El gridview se ordena segun la cantidad de columnas
   return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      children: [
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
      ],
    );*/
  }
}
