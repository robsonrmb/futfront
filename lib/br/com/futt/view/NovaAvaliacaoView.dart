import 'package:flutter/material.dart';

class NovaAvaliacaoView extends StatefulWidget {
  @override
  _NovaAvaliacaoViewState createState() => _NovaAvaliacaoViewState();
}

class _NovaAvaliacaoViewState extends State<NovaAvaliacaoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Nova avaliação!!!"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Cadastro da avaliação..."),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
