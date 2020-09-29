import 'package:flutter/material.dart';
import 'package:loven_app/pages/src/HomePage.dart';
import 'package:loven_app/pages/src/LoginPage.dart';



void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LOVEN APP',
      initialRoute: 'login',
      routes: {
        'login' : (BuildContext context) => LoginPage(),
        'home'  : (BuildContext context) => HomePage(),

      },
    );
       
  }
}