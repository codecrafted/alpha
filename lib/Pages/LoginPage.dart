import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/Form/Actividad/LoginForm.dart';
import 'package:flutter_application_1/Widgets/Form/MyForm.dart';
import 'package:flutter_application_1/Widgets/Form/MySwitch.dart';
import 'package:flutter_application_1/Widgets/Form/MyTextField.dart';

class LoginPage extends StatefulWidget {
  //la clase estado que se encarga de reconstruir el diseño cuando se requiera
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

//clase estado
class LoginPageState extends State<LoginPage> {
  //pada poder retornar nuestro widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: LoginForm(),
  //prueba de branch de pruebas
  //la naturaleza tiene cosas bellas.


      //child: MyForm(),

      //child: MyTextField(),

      //child: MySwitch(),

      //child: MyDropDownButton(),

      //child: MyDatePicker(),
      //child: MyCheckBox(),

      //child: MyRadio(),

      /*
        child: ElevatedButton(
        child: Text("MyHomePage"),
        onPressed: () => {
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()))
         // Navigator.pop(context)
          Navigator.pushNamed(context, ROUTE_HOME,arguments: HomeArguments("Inicio", "Hola Mundo"))
        },
        ),*/
    ));
  }
}
