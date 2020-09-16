import 'package:flutter/material.dart';
import 'package:motoenvia/src/pages/home_page.dart';
import 'package:motoenvia/src/pages/login_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MotoEnvia',
      initialRoute: 'login',
      routes: {
        'home' : (BuildContext context) => HomePage(),
        'login' : ( BuildContext context ) => LoginPage(),
      },

      theme: ThemeData(
          //#004699
          primaryColor: Color.fromRGBO(0, 70, 153, 1.0)
        ),
    );
  }
}