import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/constantes/ConstantesEstatisticas.dart';
import 'package:com/br/com/futt/model/RespostaModel.dart';
import 'package:com/br/com/futt/service/EstatisticaService.dart';
import 'package:com/br/com/futt/view/components/Estatistica.dart';
import 'package:flutter/material.dart';

class EstatisticasSequenciais extends StatefulWidget {
  @override
  _EstatisticasSequenciaisState createState() => _EstatisticasSequenciaisState();
}

class _EstatisticasSequenciaisState extends State<EstatisticasSequenciais> {

  var _valoresSequenciais;

  Future<List<RespostaModel>> _getValoresSequenciais() {
    EstatisticaService estatisticaService = EstatisticaService();
    Future<List<RespostaModel>> respostas = estatisticaService.getSequenciais(2020, ConstantesEstatisticas.SEQUENCIAIS, ConstantesConfig.SERVICO_FIXO);
    return respostas;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<RespostaModel>>(
      future: _getValoresSequenciais(),
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

              double _tam = 90;
              List<RespostaModel> estatisticas = snapshot.data;
              RespostaModel resultado = estatisticas[0];
              _valoresSequenciais = resultado.resposta.split("#");

              return Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text("ÚLTIMOS JOGOS",style: TextStyle(fontWeight: FontWeight.bold),),
                          Padding(padding: EdgeInsets.all(3),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Estatistica().jogo(this._valoresSequenciais[0]),
                              Padding(padding: EdgeInsets.all(3),),
                              new Estatistica().jogo(this._valoresSequenciais[1]),
                              Padding(padding: EdgeInsets.all(3),),
                              new Estatistica().jogo(this._valoresSequenciais[2]),
                              Padding(padding: EdgeInsets.all(3),),
                              new Estatistica().jogo(this._valoresSequenciais[3]),
                              Padding(padding: EdgeInsets.all(3),),
                              new Estatistica().jogo(this._valoresSequenciais[4]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(3),),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text("ÚLTIMOS TORNEIOS",style: TextStyle(fontWeight: FontWeight.bold),),
                          Padding(padding: EdgeInsets.all(3),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Estatistica().torneio(int.parse(this._valoresSequenciais[5])),
                              Padding(padding: EdgeInsets.all(3),),
                              new Estatistica().torneio(int.parse(this._valoresSequenciais[6])),
                              Padding(padding: EdgeInsets.all(3),),
                              new Estatistica().torneio(int.parse(this._valoresSequenciais[7])),
                              Padding(padding: EdgeInsets.all(3),),
                              new Estatistica().torneio(int.parse(this._valoresSequenciais[8])),
                              Padding(padding: EdgeInsets.all(3),),
                              new Estatistica().torneio(int.parse(this._valoresSequenciais[9])),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
