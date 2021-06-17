import 'package:flutter/material.dart';
import 'package:ola_mundo/views/cadastro_page.dart';
import 'package:ola_mundo/views/login_page.dart';
import 'package:ola_mundo/views/pesquisa_page.dart';
import 'package:ola_mundo/views/usuario_page.dart';

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
        backgroundColor: Colors.verdeWhats,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Buscar por Serviço",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                  ),
                ),
                actions: <Widget>[
                  RaisedButton(
                      onPressed: () {},
                      child: Text('Buscar'),
                      color: Colors.verdeWhats),
                ],
                actionsPadding: EdgeInsets.symmetric(horizontal: 8.0),
              );
            },
          );
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
          CustomListTitle(Icons.work, 'Serviços', () => {}),
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
          splashColor: Colors.green,
          onTap: onTap,
          child: Container(
            height: 40,
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
                        style: TextStyle(fontSize: 18.0),
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
  String profissao = "Encanador";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFDCEDC8),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsuarioPage()));
                      },
                      splashColor: Colors.green,
                      child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/Perfil.png',
                                width: 200,
                                height: 110,
                              ),
                              Text(profissao)
                            ]),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
