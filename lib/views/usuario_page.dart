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
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.height/4,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                      color: Colors.black26, 
                      blurRadius: 25.0,
                      spreadRadius: 0.1,)]                  
                      ),
                      child: Image.asset("assets/images/Perfil.png",), 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
