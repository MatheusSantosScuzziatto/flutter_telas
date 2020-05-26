import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController _email = TextEditingController();
  TextEditingController _senha = TextEditingController();
  TextEditingController _senharepetir = TextEditingController();
  TextEditingController _nome = TextEditingController();
  TextEditingController _idade = TextEditingController();

  void _caixaDialogo() {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () => Navigator.pop(context),
    );
    AlertDialog alerta = AlertDialog(
      title: Text("Cadastro"),
      content: Text("Cadastro efetuado com sucesso"),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  void _limpar() {
    _email.text = "";
    _senha.text = "";
    _senharepetir.text = "";
    _nome.text = "";
    _idade.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cadastro", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Nome Completo"),
                style: TextStyle(fontSize: 15),
                controller: _nome,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Idade"),
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 15),
                controller: _idade,
              ),
              TextField(
                decoration: InputDecoration(labelText: "E-Mail"),
                style: TextStyle(fontSize: 15),
                controller: _email,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Senha"),
                style: TextStyle(fontSize: 15),
                obscureText: true,
                controller: _senha,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Repetir a Senha"),
                style: TextStyle(fontSize: 15),
                obscureText: true,
                controller: _senharepetir,
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(child: RaisedButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(15),
                      child: Text("Cancelar", style: TextStyle(fontSize: 15),),
                      onPressed: _limpar,
                    )),
                    Expanded(child: RaisedButton(
                      color: Colors.green,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(15),
                      child: Text("Cadastrar", style: TextStyle(fontSize: 15),),
                      onPressed: _caixaDialogo,
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
