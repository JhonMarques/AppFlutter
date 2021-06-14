import 'package:flutter/material.dart';
import 'package:ola_mundo/views/cadastro_page.dart';
import 'package:ola_mundo/views/home_page.dart';
import 'package:ola_mundo/views/login_page.dart';




main(){
  runApp(AppWidget());{
  
  }
}

class AppWidget extends StatelessWidget{
 
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366)
      ),
      home: LoginPage(),
    );
  }
}



