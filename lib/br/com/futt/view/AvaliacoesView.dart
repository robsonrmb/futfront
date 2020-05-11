import 'package:com/br/com/futt/view/NovaAvaliacaoView.dart';
import 'package:flutter/material.dart';

class AvaliacoesView extends StatefulWidget {
  @override
  _AvaliacoesViewState createState() => _AvaliacoesViewState();
}

class _AvaliacoesViewState extends State<AvaliacoesView> {

  _abrirNovaAvaliacao() {
    //Navigator.pushNamed(context, "/nova_avaliacao");
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NovaAvaliacaoView())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Avaliações"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Avaliações..."),
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
                          "Nova avaliação",
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                        onPressed: _abrirNovaAvaliacao,
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
