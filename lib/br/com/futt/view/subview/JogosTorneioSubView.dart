import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/model/JogoModel.dart';
import 'package:com/br/com/futt/service/JogoService.dart';
import 'package:flutter/material.dart';

class JogosTorneioSubView extends StatefulWidget {

  int idTorneio;
  int idFase;
  JogosTorneioSubView(this.idTorneio, this.idFase);

  @override
  _JogosTorneioSubViewState createState() => _JogosTorneioSubViewState();
}

class _JogosTorneioSubViewState extends State<JogosTorneioSubView> {

  Future<List<JogoModel>> _listaJogos() async {
    JogoService jogoService = JogoService();
    return jogoService.listaPorTorneios(widget.idTorneio, widget.idFase, ConstantesConfig.SERVICO_FIXO);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<JogoModel>>(
      future: _listaJogos(),
      builder: (context, snapshot) {
        switch( snapshot.connectionState ) {
          case ConnectionState.none :
          case ConnectionState.waiting :
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active :
          case ConnectionState.done :
            if( snapshot.hasData ) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {

                  List<JogoModel> paticipantes = snapshot.data;
                  JogoModel jogo = paticipantes[index];

                  return Container(
                    margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 40, width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff093352),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "${jogo.pontuacao1}",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                          ]
                        ),
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(
                            "${jogo.nomeJogador1} e ${jogo.nomeJogador2}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Text(
                            "${jogo.nomeJogador3} e ${jogo.nomeJogador4}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height: 40, width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xff093352),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "${jogo.pontuacao2}",
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            GestureDetector(
                              child: Icon(Icons.arrow_drop_down, color: Colors.grey[300],)
                            ),
                            GestureDetector(
                              child: Icon(Icons.edit),
                              onTap: (){},
                            ),
                          ]),
                    ),
                  );
                },
              );
            }else{
              return Center(
                child: Text("Sem valores!!!"),
              );
            }
            break;
        }
      },
    );
  }
}
