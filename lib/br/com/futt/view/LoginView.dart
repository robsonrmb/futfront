import 'package:com/br/com/futt/view/CadastroView.dart';
import 'package:com/br/com/futt/view/HomeView.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  void _entrar(){
    /* */
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeView())
    );
    /**/
  }

  void _abrirCadastro() {
    Navigator.pushNamed(context, "/cadastro");
    /*
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CadastroView())
    );
     */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Login..."),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Entrar",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                      onPressed: _entrar,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Cadastre-se",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                      onPressed: _abrirCadastro,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
