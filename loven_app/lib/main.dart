import 'package:flutter/material.dart';
import 'package:loven_app/pages/preferencias/PrefereciasUsuario.dart';
import 'package:loven_app/pages/src/HomePage.dart';
import 'package:loven_app/pages/src/LoginPage.dart';
import 'package:loven_app/pages/src/RegistroPage.dart';
import 'pages/ProviderBlocs/Provider.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 

  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

   runApp(MyApp());
   
}
class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
  final prefs = new PreferenciasUsuario();
    print(prefs.token);
    return Provider(
      child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LOVEN APP',
      initialRoute: 'login',
      routes: {
        'login' : (BuildContext context) => LoginPage(),
        'home'  : (BuildContext context) => HomePage(),
        'registro' : (BuildContext context) => RegistroPage(),

        },

        theme: ThemeData(
          primaryColor: Color(0xff131d47)
        ),
      ), 
    );
    
    
    
    
    
    
       
  }
}