import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        centerTitle:false,
        title: Text('Ventas', style: TextStyle(color: Color(0xFF000000))),
        backgroundColor: Color(0Xfff1f1f1)
      )
      
    );
  }
}