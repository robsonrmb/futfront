import 'package:flutter/material.dart';

class ParticipantesView extends StatefulWidget {
  @override
  _ParticipantesViewState createState() => _ParticipantesViewState();
}

class _ParticipantesViewState extends State<ParticipantesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Participantes!!!"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("lista de participantes..."),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
