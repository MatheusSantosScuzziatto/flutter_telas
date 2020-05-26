import 'package:flutter/material.dart';
import 'cadatro.dart';
import 'login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirCadastro() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Cadastro()));
  }

  void _abrirLogin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Atividade Telas", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.deepOrange,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: _abrirCadastro,
                  child: Image.asset("imagens/cadastrar.jpg"),
                ),
                GestureDetector(
                  onTap: _abrirLogin,
                  child: Image.asset("imagens/login.jpg"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
