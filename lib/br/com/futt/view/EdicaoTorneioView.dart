import 'package:flutter/material.dart';

class EdicaoTorneioView extends StatefulWidget {
  @override
  _EdicaoTorneioViewState createState() => _EdicaoTorneioViewState();
}

class _EdicaoTorneioViewState extends State<EdicaoTorneioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Edição de torneios"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text("Edição de torneios...")
              ],
            ),
          ),
        )
    );
  }
}
