import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/LoginPage.dart';
import 'package:flutter_application_1/Pages/MyHomePage.dart';
import 'package:flutter_application_1/Pages/NowPlayingPage.dart';
import 'package:flutter_application_1/Pages/PlayListPage.dart';
import 'package:page_transition/page_transition.dart';

const String ROUTE_HOME = "/home";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PLAY_LIST = "/play_list";
const String ROUTE_NOW_PLAYING = "/now_playing";


class MyRouters{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
        case "/home" :
          //esta forma es la transicion de ventanas por defecto
          //return MaterialPageRoute(builder: (_)=>MyHomePage()) ;


          //para la transcion entre paginas se usa una libreria para ser personalziada
          return PageTransition(child: MyHomePage(), type: PageTransitionType.rotate,settings: settings,alignment: Alignment.center);
        case "/login" :
          return MaterialPageRoute(builder: (_)=>LoginPage()) ;
        case "/play_list" :
          return MaterialPageRoute(builder: (_)=>PlayListPage()) ;
        case "/now_playing" :
          return MaterialPageRoute(builder: (_)=>NowPlayingPage()) ;
        default :
          return MaterialPageRoute(builder: (_)=>LoginPage()) ;
    }

  }

}


