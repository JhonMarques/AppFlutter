import 'package:flutter/material.dart';
import 'package:ola_mundo/views/cadastro_page.dart';
import 'package:ola_mundo/views/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'ANÚNCIOS',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 8,
              ),
            ),
          ),
          backgroundColor: Colors.verdeWhats),
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
                      child: Padding(
                        padding: EdgeInsets.all(7.0),
                        child: Image.asset(
                          'assets/images/Login.png',
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
          CustomListTitle(Icons.search, 'Pesquisar', () => {}),
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
                        style: TextStyle(fontSize: 16.0),
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
