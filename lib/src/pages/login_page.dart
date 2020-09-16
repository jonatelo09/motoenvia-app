import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _logo( context ),
          _loginForm( context ),
        ],
      ),
    );
  }

  Widget _logo(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final fondoLogo = Container(
      height: screenSize.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color> [
            Color.fromRGBO(211, 234, 250, 1.0),
            Color.fromRGBO(245, 251, 255, 1.0),
            
          ]
        )
      ),  
    );

    return Stack(
      children: [
        fondoLogo,
        Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              //Text('MotoEnvia mensajeria express', style: TextStyle(color: Color.fromRGBO(66, 81, 84, 1.0), fontSize: 25.0, fontWeight: FontWeight.w300),),
              SizedBox(height: 10.0, width: double.infinity,),
              Container(width: screenSize.width , height: screenSize.height * 0.2, child: Image(image: AssetImage('assets/LOGO-MOTOENVIA_1.png'),fit: BoxFit.contain,)),
            ],
          ),
        )
      ],
    );
  }

  Widget _loginForm(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Container(
              height: 180.0,
            )
          ),
          Container(
            width: screenSize.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 40.0),
            padding: EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: <BoxShadow> [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0
                )
              ]
            ),

            child: Column(
              children: <Widget>[
                Text('Ingreso', style: TextStyle(fontSize: 20.0),),
                SizedBox(height: 30.0),
                _crearEmail( ),
                SizedBox(height: 30.0,),
                _crearPassword( ),
                SizedBox(height: 30.0,),
                _crearBoton()
              ],
            ),
          )
        ],
      ),
    );

  }

  _crearEmail() {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
              icon: Icon(Icons.alternate_email),
              hintText: 'tu-correo@correo.com',
              labelText: 'Correo electronico',
            ),
      ),
    );
  }

  _crearPassword() {

    return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock ),
              labelText: 'Contraseña',
            ),
          ),
        );
  }

  _crearBoton() {

    return RaisedButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 10.0),
            child: Text('INGRESAR'),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0)
          ),
          elevation: 0.1,
          onPressed: () {}
        );
  }
}