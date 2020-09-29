import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Stack(
        children:<Widget>[
          _crearLogo( context ),
          _inicioForm( context )
        ]
      )
    );
  }

  Widget _inicioForm(BuildContext context){

    final size = MediaQuery.of( context ).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          SafeArea(
            child: Container(
              height: 250.0,
              ) ,
          ),





//esta parte es para para el front de inicio de sesion
         Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 1.0),
            padding: EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                color: Colors.black26,
                blurRadius: 4.0,
                offset:  Offset(0.0, 5.0),
                spreadRadius:3.0
                 )
                ]
               ),
            child :Column(
              children: <Widget>[
                Text('Iniciar Sesion', style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 40.0),
                _crearEmail(),
                SizedBox(height: 20.0),
                _crearPass(),
                SizedBox(height: 20.0),
                _crearBoton()
                
            ],
            ),

          ),
          SizedBox(height: 15.0),
          Text('¿Se olvido de su contraseña?')
          
        ],
      )
    );
  }

  Widget _crearEmail(){

    return Container(

      padding:EdgeInsets.symmetric(horizontal: 20.0),

      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.alternate_email, color: Colors.deepPurple),
          hintText:'ejemplo@gmail.com',
          labelText: 'Correo electronico'


          
        ),
      )

    );

  }

   Widget _crearPass(){

    return Container(

      padding:EdgeInsets.symmetric(horizontal: 20.0),

      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          icon: Icon(Icons.lock_outline, color: Colors.deepPurple),
          hintText:'ingresa contraseña',
          labelText: 'Contraseña'
          

          
        ),
      )

    );

  }


  Widget _crearBoton(){

    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        child: Text('Ingresar'),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
        ),
        elevation:0.0 ,
        color: Color(0xff131d47),
        textColor: Colors.white,
        onPressed: (){},
      );
      
    

  }




  Widget _crearLogo (BuildContext context ){

    final size = MediaQuery.of(context).size;
    final fondoDegradado = Container(

      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xff131d47),
            Color(0xff131d45)
            

          ]
        )

      ),



    );

    
    
    final imagelogo = Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
      
      
      child:  Column(
            children: <Widget>[
              new Image.asset('images/lovenlogo.png',
            alignment:Alignment(2.0 , 3.0),
            height: 200.0,
            width: 200.0,
            ),
        ],
      ),    
    );






          final circulo = Container (
            width :100.0,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: Color.fromRGBO(255, 255, 255, 0.05)
            ),
          );
      
          return Stack(
            children: <Widget>[
              fondoDegradado,
              imagelogo,
              Positioned(child: circulo, top: -20, left: 110.0),
              Positioned(child: circulo, bottom: -50, right: -10.0),
              Positioned(child: circulo, top: 250, left: 10.0),
              Positioned(child: circulo, top: 50, right: -60.0),
              Positioned(child: circulo, top: 30, left: -60.0),
              // Positioned(child: imagelogo, top: 80.0, left : 100.0),
      
            ]  
          );
      
        }
      
        
      
      
      
      
      }
      
      
