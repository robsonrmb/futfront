import 'package:flutter/material.dart';

class NovoTorneioView extends StatefulWidget {
  @override
  _NovoTorneioViewState createState() => _NovoTorneioViewState();
}

class _NovoTorneioViewState extends State<NovoTorneioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Novo torneio!!!"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Cadastro de torneio..."),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
