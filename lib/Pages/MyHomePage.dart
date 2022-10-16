
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Common/HomeArguments.dart';
import 'package:flutter_application_1/Widgets/Basicos/Actividad/AppBarCF.dart';
import 'package:flutter_application_1/Widgets/Basicos/Actividad/FloatingActionButtonCF.dart';
import 'package:flutter_application_1/Widgets/Basicos/Actividad/ImageCF.dart';


class MyHomePage extends StatefulWidget {
  
  const MyHomePage({Key? key}) : super(key: key);
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
 
      _counter++;
    });
  }

@override
Widget build(BuildContext context) {
   HomeArguments args = ModalRoute.of(context)!.settings.arguments as HomeArguments;
   
  return Scaffold(
    //floatingActionButton: FloatingActionButtonCF((){}),
    floatingActionButton: FloatingActionButtonCF(),
    floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    backgroundColor: Colors.white ,
    appBar: AppBarCF(args.title),
    body:  SafeArea(
     // top:false,
      //child: Text('Sara'),
        //child: MyText(),
    //child: MyImage(),
    //child: Center(child: ImageCF(),),
     child: Center(child: Text(args.message),)
     
     
      ),


);
      
}
 
 /*
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //wl widget scaffold es una plantilla que ya deja posicionado los elementos
      //de la vista : appbar,body,floatingActionButton
      backgroundColor: Colors.blue,
      appBar: AppBar(
      title: Text(widget.title),
      ),
      body: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

*/

  
}