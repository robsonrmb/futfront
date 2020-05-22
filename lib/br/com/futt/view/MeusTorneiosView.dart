import 'package:flutter/material.dart';

class MeusTorneiosView extends StatefulWidget {
  @override
  _MeusTorneiosViewState createState() => _MeusTorneiosViewState();
}

class _MeusTorneiosViewState extends State<MeusTorneiosView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff093352),
          textTheme: TextTheme(
              title: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              )
          ),
          title: Text("Meus Torneios"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Lista ..."),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
