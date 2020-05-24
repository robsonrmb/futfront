import 'package:flutter/material.dart';

class CadastroCampeoesView extends StatefulWidget {
  @override
  _CadastroCampeoesViewState createState() => _CadastroCampeoesViewState();
}

class _CadastroCampeoesViewState extends State<CadastroCampeoesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Cadastro de Campeões"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Cadastro de campeões..."),
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
                          "Cadastrar",
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                        onPressed: () {},
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
