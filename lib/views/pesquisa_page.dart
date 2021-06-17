import 'package:flutter/material.dart';

class PesquisaPage extends StatefulWidget {
  @override
  _PesquisaPageState createState() => _PesquisaPageState();
}

class _PesquisaPageState extends State<PesquisaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Pesquisar',
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
          decoration: BoxDecoration(color: Colors.lightGreen[100]),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
                        child: Card(
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
                              contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                              labelText: "Buscar por Cidade",
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                              labelText: "Buscar por Serviço",
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: RaisedButton(
                            child: Text(
                              "Buscar",
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            color: Colors.yellow[800],
                            //padding: EdgeInsets.fromLTRB(32, 8, 32, 8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32)),
                            onPressed: () {}),
                      ),
                    ],
                  )),
            ),
          ),
        ));
  }
}
