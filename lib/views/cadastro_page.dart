import 'package:flutter/material.dart';
import 'package:ola_mundo/views/servicoPage.dart';


class CadastroPage extends StatefulWidget {
  @override
  State<CadastroPage> createState() {
    return CadastroPageState();
  }
}

class CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(30),
          child: Text(
            'Cadastro',
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
                            contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                            hintText: "Nome",
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: TextField(
                        //autofocus: true,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                            hintText: "Telefone",
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: TextField(
                        //autofocus: true,

                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                            hintText: "Cidade",
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                            hintText: "Senha",
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                            hintText: "Confirme sua Senha",
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
                            "Cadastrar",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          color: Colors.yellow[800],
                          padding: EdgeInsets.fromLTRB(32, 10, 32, 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                          onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ServicoPage()));}),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
