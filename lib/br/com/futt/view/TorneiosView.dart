import 'package:flutter/material.dart';

class TorneiosView extends StatefulWidget {
  @override
  _TorneiosViewState createState() => _TorneiosViewState();
}

class _TorneiosViewState extends State<TorneiosView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Torneios..."),
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
                    "Novo torneio",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/novo_torneio");
                  },
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
                    "Jogos",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/jogos");
                  },
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
                    "Ranking",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/resultados");
                  },
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
                    "Participantes",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/participantes");
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
