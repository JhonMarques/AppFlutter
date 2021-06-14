import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';
import 'package:ola_mundo/views/cadastro_page.dart';
import 'package:ola_mundo/views/login_page.dart';
import 'views/home_page.dart';



class AppWidget extends StatelessWidget{
  final String title;

  const AppWidget({Key key, this.title}): super(key: key);
  @override
  Widget build(BuildContext contexto){
        
        return AnimatedBuilder(animation: AppController.instance, builder: (context, child){
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),

            initialRoute: '/home',
            routes: {
              '/login': (BuildContext context) => LoginPage(),
              '/home': (BuildContext context) =>  HomePage(),
              '/cadastro': (BuildContext context) => CadastroPage(),
            },
          );
        },
    
        );
  }
}