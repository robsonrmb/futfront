import 'package:com/br/com/futt/view/HomeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

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
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/fundo.jpg"),
                fit: BoxFit.fill
            )
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Image.asset("images/logo.png", height: 100, width: 75),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                      "Olá!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Candal'
                      ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    "Faça seu login para saber mais sobre os torneios.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Candal'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Informe seu e-mail.",
                        icon: new Icon(Icons.email),
                        /*
                        filled: false,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        )
                         */
                    ),
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                    ),
                    maxLength: 5,
                    maxLengthEnforced: false,
                    controller: _controllerEmail,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Informe sua senha.",
                    icon: Icon(Icons.lock),
                  ),
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                  ),
                  maxLength: 5,
                  maxLengthEnforced: true,
                  obscureText: true,
                  controller: _controllerSenha,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: RaisedButton(
                    color: Color(0xff2c7ce7),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Candal',
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    onPressed: _entrar,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: RaisedButton(
                    color: Colors.amber,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Quero me cadastrar",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Candal',
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    onPressed: _abrirCadastro,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
