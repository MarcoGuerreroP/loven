import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:loven_app/pages/preferencias/PrefereciasUsuario.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';









class UsuarioProvider{

  final String _tokenFirebase = 'AIzaSyAZ5dYDt-kPlwBiHS0Np02wGXmmKcHZHm0';
  final _prefs = new PreferenciasUsuario();


  

  Future<Map<String, dynamic>> logeo (String email, String password) async {
    final authData = {

        'email' : email,
        'password' : password,
        'returnSecureToken' : true
        };

        final resp = await http.post(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$_tokenFirebase',
          body: json.encode( authData)
        );

        Map<String, dynamic> decodedResp = json.decode (resp.body);

        print(decodedResp);
  
    if ( decodedResp.containsKey('idToken')){
      _prefs.token = decodedResp['idToken'];
      return {'ok' : true, 'token': decodedResp['idToken']};

    }else{
      return {'ok' : false, 'mensaje': decodedResp['error']['message']};
    }
  
  }

  Future<Map<String, dynamic>> nuevoUsuario (String email, String password) async {


      final authData = {

        'email' : email,
        'password' : password,
        'returnSecureToken' : true
        };

        final resp = await http.post(
          'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_tokenFirebase',
          body: json.encode( authData)
        );

        Map<String, dynamic> decodedResp = json.decode (resp.body);

        print(decodedResp);
  
    if ( decodedResp.containsKey('idToken')){
      _prefs.token = decodedResp['idToken'];
      return {'ok' : true, 'token': decodedResp['idToken']};

    }else{
      return {'ok' : false, 'mensaje': decodedResp['error']['message']};
    }
  
  }

}








  
  
  