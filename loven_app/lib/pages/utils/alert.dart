

import 'package:flutter/material.dart';

void mostrarAlerta(BuildContext context, String mensaje){

  showDialog(
    context: context,
    builder: ( context ){
      return AlertDialog(
        title: Text('Se proceso un advetencia'),
        content: Text(mensaje),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    }
    );




}