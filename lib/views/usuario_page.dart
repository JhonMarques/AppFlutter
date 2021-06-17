import 'dart:html';

import 'package:flutter/material.dart';

class UsuarioPage extends StatefulWidget {
  @override
  _UsuarioPageState createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            'Profissionais',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              letterSpacing: 8,
            ),
          ),
        ),
        backgroundColor: Colors.verdeWhats,
      ),
      backgroundColor: Colors.lightGreen[100],
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Image.asset(
              'assets/images/Perfil.png',
              width: 150,
              height: 150,
            ),
            
            // Text(profissao)
          ]),
        ),
      ),
    );
  }
}
