import 'package:com/br/com/futt/view/subview/ParticipantesTorneioSubView.dart';
import 'package:flutter/material.dart';

class ParticipantesView extends StatefulWidget {

  int idTorneio;
  String nomeTorneio;
  String paisTorneio;
  String cidadeTorneio;
  String dataTorneio;
  ParticipantesView({this.idTorneio, this.nomeTorneio, this.paisTorneio, this.cidadeTorneio, this.dataTorneio});

  @override
  _ParticipantesViewState createState() => _ParticipantesViewState();
}

class _ParticipantesViewState extends State<ParticipantesView> {
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
        title: Text("Participantes"),
      ),
      body: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/torneios.png", height: 46, width: 46,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text("${widget.nomeTorneio}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Candal'
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text("${widget.paisTorneio} - ${widget.cidadeTorneio}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text("${widget.dataTorneio}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ParticipantesTorneioSubView(widget.idTorneio),
          )
        ],
      ),
    );
  }
}
