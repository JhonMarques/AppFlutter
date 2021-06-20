import 'package:flutter/material.dart';
import 'package:ola_mundo/views/cadastro_page.dart';
import 'package:ola_mundo/views/login_page.dart';
import 'package:ola_mundo/views/pesquisa_page.dart';
import 'package:ola_mundo/views/servicoPage.dart';
import 'package:ola_mundo/views/usuario_page.dart';

import 'pesquisa_page.dart';
import 'usuario_page.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  //String profissao = "Encanador";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              'Anúncios',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 8,
              ),
            ),
          ),
          backgroundColor: Colors.verdeWhats),
      body: Anuncios(context),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black38,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PesquisaPage()));
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.search),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.verdeWhats, Colors.greenAccent])),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Container(
                        padding: EdgeInsets.all(7.0),
                        child: Image.asset(
                          'assets/images/Perfil.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(7.0),
                        child: Text(
                          'Jhonatas',
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ))
                  ],
                ),
              )),
          CustomListTitle(
              Icons.person,
              'Cadastre-se',
              () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CadastroPage()))
                  }),
          CustomListTitle(
              Icons.search,
              'Pesquisar',
              () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PesquisaPage()))
                  }),
          CustomListTitle(
              Icons.lock,
              'Sair',
              () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()))
                  }),
        ],
      )),
    );
  }
}

class CustomListTitle extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  //Método para customizar as linhas do Drawer
  CustomListTitle(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.verdeWhats,
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Anuncios extends StatelessWidget {
  Anuncios(context);
  String profissao = "Construtor";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 0, bottom: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.white54,
                padding: EdgeInsets.only(top: 10, bottom: 60),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 8),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildList(context, index);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17.0),
        color: Colors.white,
      ),
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17.0),
                        bottomLeft: Radius.circular(17.0)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Perfil.png'),
                        fit: BoxFit.cover),
                  ),
                  child: null)),
          Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 2, 2, 0),
                      )),
                      Container(
                        width: 210,
                        height: 45,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(top: 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(17),
                                bottomLeft: Radius.circular(17)),
                            color: Colors.orangeAccent),
                        child: Text(
                          profissao,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                      child: Container(
                      width: 210,
                      height: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          "Realizo serviços de construtor, resolvo qualquer problema, preço acessível e serviço profissional",
                        ),
                      ),
                    ),
                   onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UsuarioPage()));
                    },
                  )
                ],
              )),
        ],
      ),
    );
  }
}
