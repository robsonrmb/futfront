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
    /*
    JogoService jogoService = JogoService();
    if (widget.idFase == 0) {
      Future<List<JogoModel>> listaJogos = jogoService.listaPorTorneios(widget.idTorneio, ConstantesConfig.SERVICO_FIXO);
      listaJogos = buscaJogosDaFase(widget.idFase, listaJogos);
      return listaJogos;
    }else{
      return new List<JogoModel>();
    }
    */
  }
  /*
  Future<List<JogoModel>> buscaJogosDaFase(int idFase, List<JogoModel> listaJogos) {
    List<JogoModel> novaLista = List<JogoModel>();
    for (var jogoModel in listaJogos){
      if (jogoModel.idFase == idFase) {
        novaLista.add(jogoModel);
      }
    }
    return listaJogos;
  }
   */

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
                      leading: Text(
                        "${jogo.idJogador1} e ${jogo.idJogador2}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(
                            "${jogo.pontuacao1}",
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
                            "${jogo.pontuacao2}",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "${jogo.idJogador3} e ${jogo.idJogador4}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            /*
                            GestureDetector(
                              child: Icon(Icons.flight_land),
                              onTap: (){},
                            ),
                            GestureDetector(
                              child: Icon(Icons.flight_takeoff),
                              onTap: (){
                                Navigator.pushNamed(context, "/novo_torneio");
                              },
                            ),*/
                          ]),
                    ),
                  );
                },
                /*
                separatorBuilder: (context, index) => Divider(
                  height: 3,
                  color: Colors.amber,
                ),*/
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
