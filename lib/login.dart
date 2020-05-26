import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _senha = TextEditingController();

  void _caixaDialogo() {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () => Navigator.pop(context),
    );
    AlertDialog alerta = AlertDialog(
      title: Text("Login"),
      content: Text("Login efetuado com sucesso"),
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
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
                    child: Text("Login", style: TextStyle(fontSize: 15),),
                    onPressed: _caixaDialogo,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
