import 'package:flutter/material.dart';

class ServicoPage extends StatefulWidget{
  @override
  _ServicoPageState createState() => _ServicoPageState();
  
}

class _ServicoPageState extends State<ServicoPage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
            appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(30),
          child: Text(
            'Serviços',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              letterSpacing: 8,
            ),
          ),
        ),
        backgroundColor: Colors.verdeWhats,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Cadastro.png'),
                fit: BoxFit.cover),
          ),
          padding: const EdgeInsets.fromLTRB(12, 35, 12, 0),
          child: SingleChildScrollView(
            child: Center(
              child: Card(
                color: Colors.white54,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 8),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 8),
                            hintText: "Qual serviço você realiza?",
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32))),
                      ),
                    ),
                  
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: TextFormField(                 
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            
                            contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                            hintText: "Serviços Cadastrados",
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(32, 8, 32, 8),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 20, 20),
                      child: RaisedButton(
                          child: Text(
                            "Finalizar",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          color: Colors.yellow[800],
                          padding: EdgeInsets.fromLTRB(32, 10, 32, 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
            ),
          )),    
  );         
  }
}