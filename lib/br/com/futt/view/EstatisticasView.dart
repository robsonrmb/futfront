import 'package:charts_flutter/flutter.dart' as charts;
import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/constantes/ConstantesEstatisticas.dart';
import 'package:com/br/com/futt/model/RespPerformanceModel.dart';
import 'package:com/br/com/futt/model/RespostaModel.dart';
import 'package:com/br/com/futt/service/EstatisticaService.dart';
import 'package:com/br/com/futt/view/components/Estatistica.dart';
import 'package:com/br/com/futt/view/graphics/DonutAutoChart.dart';
import 'package:com/br/com/futt/view/graphics/HorizontalGroupBarChart.dart';
import 'package:flutter/material.dart';

class EstatisticasView extends StatefulWidget {
  @override
  _EstatisticasViewState createState() => _EstatisticasViewState();
}

class _EstatisticasViewState extends State<EstatisticasView> {

  var _valoresQuantitativos;
  var _valoresPerformanceTecnicas;
  var _valoresPerformanceTaticas;
  var _valoresJogosEPontos;
  var _valoresSequenciais;
  
  /*
   ESTATÍSTICAS DE PERFORMANCE - TÉCNICAS
   */
  List<charts.Series<RespPerformanceModel, String>> _createGraphicsPerformanceTecnicas() {

    final dataRuim = [
      new RespPerformanceModel.Grafico("Recepção", int.parse(_valoresPerformanceTecnicas[0])),
      new RespPerformanceModel.Grafico("Levantada", int.parse(_valoresPerformanceTecnicas[1])),
      new RespPerformanceModel.Grafico("Ataque", int.parse(_valoresPerformanceTecnicas[2])),
      new RespPerformanceModel.Grafico("Defesa", int.parse(_valoresPerformanceTecnicas[3])),
      new RespPerformanceModel.Grafico("Shark", int.parse(_valoresPerformanceTecnicas[4])),
      new RespPerformanceModel.Grafico("Pescoço", int.parse(_valoresPerformanceTecnicas[5])),
      new RespPerformanceModel.Grafico("Ombro", int.parse(_valoresPerformanceTecnicas[6])),
      new RespPerformanceModel.Grafico("Pé", int.parse(_valoresPerformanceTecnicas[7])),
    ];
    final dataRegular = [
      new RespPerformanceModel.Grafico("Recepção", int.parse(_valoresPerformanceTecnicas[8])),
      new RespPerformanceModel.Grafico("Levantada", int.parse(_valoresPerformanceTecnicas[9])),
      new RespPerformanceModel.Grafico("Ataque", int.parse(_valoresPerformanceTecnicas[10])),
      new RespPerformanceModel.Grafico("Defesa", int.parse(_valoresPerformanceTecnicas[11])),
      new RespPerformanceModel.Grafico("Shark", int.parse(_valoresPerformanceTecnicas[12])),
      new RespPerformanceModel.Grafico("Pescoço", int.parse(_valoresPerformanceTecnicas[13])),
      new RespPerformanceModel.Grafico("Ombro", int.parse(_valoresPerformanceTecnicas[14])),
      new RespPerformanceModel.Grafico("Pé", int.parse(_valoresPerformanceTecnicas[15])),
    ];
    final dataBom = [
      new RespPerformanceModel.Grafico("Recepção", int.parse(_valoresPerformanceTecnicas[16])),
      new RespPerformanceModel.Grafico("Levantada", int.parse(_valoresPerformanceTecnicas[17])),
      new RespPerformanceModel.Grafico("Ataque", int.parse(_valoresPerformanceTecnicas[18])),
      new RespPerformanceModel.Grafico("Defesa", int.parse(_valoresPerformanceTecnicas[19])),
      new RespPerformanceModel.Grafico("Shark", int.parse(_valoresPerformanceTecnicas[20])),
      new RespPerformanceModel.Grafico("Pescoço", int.parse(_valoresPerformanceTecnicas[21])),
      new RespPerformanceModel.Grafico("Ombro", int.parse(_valoresPerformanceTecnicas[22])),
      new RespPerformanceModel.Grafico("Pé", int.parse(_valoresPerformanceTecnicas[23])),
    ];
    final dataOtimo = [
      new RespPerformanceModel.Grafico("Recepção", int.parse(_valoresPerformanceTecnicas[24])),
      new RespPerformanceModel.Grafico("Levantada", int.parse(_valoresPerformanceTecnicas[25])),
      new RespPerformanceModel.Grafico("Ataque", int.parse(_valoresPerformanceTecnicas[26])),
      new RespPerformanceModel.Grafico("Defesa", int.parse(_valoresPerformanceTecnicas[27])),
      new RespPerformanceModel.Grafico("Shark", int.parse(_valoresPerformanceTecnicas[28])),
      new RespPerformanceModel.Grafico("Pescoço", int.parse(_valoresPerformanceTecnicas[29])),
      new RespPerformanceModel.Grafico("Ombro", int.parse(_valoresPerformanceTecnicas[30])),
      new RespPerformanceModel.Grafico("Pé", int.parse(_valoresPerformanceTecnicas[31])),
    ];
    return [
      new charts.Series<RespPerformanceModel, String>(
        id: 'Ruim',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        colorFn: (RespPerformanceModel resp, _) => charts.ColorUtil.fromDartColor(Color(0xfffde0d2)),
        data: dataRuim,
      ),
      new charts.Series<RespPerformanceModel, String>(
        id: 'Regular',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        colorFn: (RespPerformanceModel resp, _) => charts.ColorUtil.fromDartColor(Colors.orangeAccent),
        data: dataRegular,
      ),
      new charts.Series<RespPerformanceModel, String>(
        id: 'Bom',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        colorFn: (RespPerformanceModel resp, _) => charts.ColorUtil.fromDartColor(Color(0xff89d5ff)),
        data: dataBom,
      ),
      new charts.Series<RespPerformanceModel, String>(
        id: 'Ótimo',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        data: dataOtimo,
      ),
    ];
  }

  /*
   ESTATÍSTICAS DE PERFORMANCE - TÁTICAS
   */
  List<charts.Series<RespPerformanceModel, String>> _createGraphicsPerformanceTaticas() {

    final dataRuim = [
      new RespPerformanceModel.Grafico("Constante", int.parse(_valoresPerformanceTaticas[0])),
      new RespPerformanceModel.Grafico("Variação", int.parse(_valoresPerformanceTaticas[1])),
      new RespPerformanceModel.Grafico("Inteligente", int.parse(_valoresPerformanceTaticas[2])),
      new RespPerformanceModel.Grafico("Tático", int.parse(_valoresPerformanceTaticas[3])),
      new RespPerformanceModel.Grafico("Competitivo", int.parse(_valoresPerformanceTaticas[4])),
      new RespPerformanceModel.Grafico("Preparo", int.parse(_valoresPerformanceTaticas[5])),
    ];
    final dataRegular = [
      new RespPerformanceModel.Grafico("Constante", int.parse(_valoresPerformanceTaticas[6])),
      new RespPerformanceModel.Grafico("Variação", int.parse(_valoresPerformanceTaticas[7])),
      new RespPerformanceModel.Grafico("Inteligente", int.parse(_valoresPerformanceTaticas[8])),
      new RespPerformanceModel.Grafico("Tático", int.parse(_valoresPerformanceTaticas[9])),
      new RespPerformanceModel.Grafico("Competitivo", int.parse(_valoresPerformanceTaticas[10])),
      new RespPerformanceModel.Grafico("Preparo", int.parse(_valoresPerformanceTaticas[11])),
    ];
    final dataBom = [
      new RespPerformanceModel.Grafico("Constante", int.parse(_valoresPerformanceTaticas[12])),
      new RespPerformanceModel.Grafico("Variação", int.parse(_valoresPerformanceTaticas[13])),
      new RespPerformanceModel.Grafico("Inteligente", int.parse(_valoresPerformanceTaticas[14])),
      new RespPerformanceModel.Grafico("Tático", int.parse(_valoresPerformanceTaticas[15])),
      new RespPerformanceModel.Grafico("Competitivo", int.parse(_valoresPerformanceTaticas[16])),
      new RespPerformanceModel.Grafico("Preparo", int.parse(_valoresPerformanceTaticas[17])),
    ];
    final dataOtimo = [
      new RespPerformanceModel.Grafico("Constante", int.parse(_valoresPerformanceTaticas[18])),
      new RespPerformanceModel.Grafico("Variação", int.parse(_valoresPerformanceTaticas[19])),
      new RespPerformanceModel.Grafico("Inteligente", int.parse(_valoresPerformanceTaticas[20])),
      new RespPerformanceModel.Grafico("Tático", int.parse(_valoresPerformanceTaticas[21])),
      new RespPerformanceModel.Grafico("Competitivo", int.parse(_valoresPerformanceTaticas[22])),
      new RespPerformanceModel.Grafico("Preparo", int.parse(_valoresPerformanceTaticas[23])),
    ];
    return [
      new charts.Series<RespPerformanceModel, String>(
        id: 'Ruim',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        colorFn: (RespPerformanceModel resp, _) => charts.ColorUtil.fromDartColor(Color(0xfffde0d2)),
        data: dataRuim,
      ),
      new charts.Series<RespPerformanceModel, String>(
        id: 'Regular',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn: (RespPerformanceModel resp, _) => resp.valor,
        colorFn: (RespPerformanceModel resp, _) => charts.ColorUtil.fromDartColor(Colors.orangeAccent),
        data: dataRegular,
      ),
      new charts.Series<RespPerformanceModel, String>(
        id: 'Bom',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        colorFn: (RespPerformanceModel resp, _) => charts.ColorUtil.fromDartColor(Color(0xff89d5ff)),
        data: dataBom,
      ),
      new charts.Series<RespPerformanceModel, String>(
        id: 'Ótimo',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        data: dataOtimo,
      ),
    ];
  }

  /*
   ESTATÍSTICAS QUANTITATIVAS - VITORIAS E DERROTAS
   */
  List<charts.Series<RespPerformanceModel, String>> _createGraphicsVD() {

    final dataVD = [
      new RespPerformanceModel.Grafico("Vitórias", int.parse(_valoresQuantitativos[0])),
      new RespPerformanceModel.Grafico("Derrotas", int.parse(_valoresQuantitativos[1])),
    ];

    return [
      new charts.Series<RespPerformanceModel, String>(
        id: 'VD',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        data: dataVD,
        //colorFn: (RespPerformanceModel resp, _) => charts.ColorUtil.fromDartColor(Colors.orangeAccent),
        labelAccessorFn: (RespPerformanceModel resp, _) => '${resp.descricao} : ${resp.valor.toString()}',
      ),
    ];
  }

  /*
   ESTATÍSTICAS QUANTITATIVAS - TIE BREAKS
   */
  List<charts.Series<RespPerformanceModel, String>> _createGraphicsTIE() {

    final dataTIE = [
      new RespPerformanceModel.Grafico("Tiebreaks vencidos", int.parse(_valoresQuantitativos[2])),
      new RespPerformanceModel.Grafico("Tiebreaks perdidos", int.parse(_valoresQuantitativos[3])),
    ];

    return [
      new charts.Series<RespPerformanceModel, String>(
        id: 'TIE',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        data: dataTIE,
        colorFn: (RespPerformanceModel resp, _) => charts.ColorUtil.fromDartColor(Colors.orangeAccent),
        labelAccessorFn: (RespPerformanceModel resp, _) => '${resp.descricao} : ${resp.valor.toString()}',
      )
    ];
  }

  /*
   ESTATÍSTICAS QUANTITATIVAS - CAPOTE
   */
  List<charts.Series<RespPerformanceModel, String>> _createGraphicsCapote() {

    final dataCapote = [
      new RespPerformanceModel.Grafico("Capotes vencidos", int.parse(_valoresQuantitativos[4])),
      new RespPerformanceModel.Grafico("Capotes perdidos", int.parse(_valoresQuantitativos[5])),
    ];

    return [
      new charts.Series<RespPerformanceModel, String>(
        id: 'Capotes',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        data: dataCapote,
        //colorFn: (RespPerformanceModel resp, _) => charts.ColorUtil.fromDartColor(Colors.orangeAccent),
        labelAccessorFn: (RespPerformanceModel resp, _) => '${resp.descricao} : ${resp.valor.toString()}',
      )
    ];
  }

  /*
   ESTATÍSTICAS QUANTITATIVAS - A2
   */
  List<charts.Series<RespPerformanceModel, String>> _createGraphicsA2() {

    final dataA2 = [
      new RespPerformanceModel.Grafico("Jogos A2 vencidos", int.parse(_valoresQuantitativos[6])),
      new RespPerformanceModel.Grafico("Jogos A2 perdidos", int.parse(_valoresQuantitativos[7])),
    ];

    return [
      new charts.Series<RespPerformanceModel, String>(
        id: 'A2',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => resp.valor,
        data: dataA2,
        colorFn: (RespPerformanceModel resp, _) => charts.ColorUtil.fromDartColor(Colors.orangeAccent),
        labelAccessorFn: (RespPerformanceModel resp, _) => '${resp.descricao} : ${resp.valor.toString()}',
      )
    ];
  }

  /*
   ESTATÍSTICAS DE PERFORMANCE TÉCNICAS
   */
  String _getValoresPerformanceTecnicos() {
    EstatisticaService estatisticaService = EstatisticaService();
    Future<List<RespostaModel>> respostas = estatisticaService.getPerformanceTecnica(0, 2020, ConstantesConfig.SERVICO_FIXO);

    return '10#12#15#20#18#10#12#15#20#18#10#12#15#22#18#10#12#15#24#18#10#12#15#20#18#10#12#15#20#18#8#3';
  }

  /*
   ESTATÍSTICAS DE PERFORMANCE TÁTICAS
   */
  String _getValoresPerformanceTaticas() {
    EstatisticaService estatisticaService = EstatisticaService();
    Future<List<RespostaModel>> respostas = estatisticaService.getPerformanceTatica(0, 2020, ConstantesConfig.SERVICO_FIXO);

    return '10#12#15#20#18#10#12#18#10#12#15#22#18#10#12#15#24#18#12#15#20#18#8#3';
  }

  /*
   ESTATÍSTICAS QUANTITATIVAS
   */
  String _getValoresQuantitativos() {
    EstatisticaService estatisticaService = EstatisticaService();
    Future<List<RespostaModel>> respostas = estatisticaService.getQuantitativas(2020, ConstantesEstatisticas.QUANTITATIVOS, ConstantesConfig.SERVICO_FIXO);

     return '24#13#18#8#3#6#13#9';
  }

  /*
   ESTATÍSTICAS JOGOS E PONTOS
   */
  String _getValoresJogosEPontos() {
    EstatisticaService estatisticaService = EstatisticaService();
    Future<List<RespostaModel>> respostas = estatisticaService.getJogosEPontos(2020, ConstantesEstatisticas.JOGOSEPONTOS, ConstantesConfig.SERVICO_FIXO);

    return '2020#79#2019#65#2018#41#220#350#2019#259#2018#288';
  }

  /*
   ESTATÍSTICAS SEQUENCIAIS
   */
  String _getValoresSequenciais() {
    EstatisticaService estatisticaService = EstatisticaService();
    Future<List<RespostaModel>> respostas = estatisticaService.getSequenciais(2020, ConstantesEstatisticas.SEQUENCIAIS, ConstantesConfig.SERVICO_FIXO);

    return 'V#D#D#V#D#1#4#2#10#8';
  }

  @override
  void initState() {
    _valoresPerformanceTecnicas = _getValoresPerformanceTecnicos().split("#");
    _valoresPerformanceTaticas = _getValoresPerformanceTaticas().split("#");
    _valoresQuantitativos = _getValoresQuantitativos().split("#");
    _valoresJogosEPontos = _getValoresJogosEPontos().split("#");
    _valoresSequenciais = _getValoresSequenciais().split("#");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double _tam = 90;

    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.grey[300],
      child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Confire suas estatísticas",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Candal'
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg'),
                  radius: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                  child: Text(
                    "Anderson Águia",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Veja as estatísticas de outros atletas",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Candal'
                    ),
                  ),
                ),
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
                Padding(padding: EdgeInsets.all(3),),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text("JOGOS",style: TextStyle(fontWeight: FontWeight.bold),),
                        Padding(padding: EdgeInsets.all(3),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Estatistica().jogos(int.parse(_valoresJogosEPontos[0]), int.parse(_valoresJogosEPontos[1])),
                            Padding(padding: EdgeInsets.all(3),),
                            new Estatistica().jogos(int.parse(_valoresJogosEPontos[2]), int.parse(_valoresJogosEPontos[3])),
                            Padding(padding: EdgeInsets.all(3),),
                            new Estatistica().jogos(int.parse(_valoresJogosEPontos[4]), int.parse(_valoresJogosEPontos[5])),
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
                        Text("PONTOS",style: TextStyle(fontWeight: FontWeight.bold),),
                        Padding(padding: EdgeInsets.all(3),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Estatistica().pontos(int.parse(_valoresJogosEPontos[6]), int.parse(_valoresJogosEPontos[7])),
                            Padding(padding: EdgeInsets.all(3),),
                            new Estatistica().pontos(int.parse(_valoresJogosEPontos[8]), int.parse(_valoresJogosEPontos[9])),
                            Padding(padding: EdgeInsets.all(3),),
                            new Estatistica().pontos(int.parse(_valoresJogosEPontos[10]), int.parse(_valoresJogosEPontos[11])),
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
                        Text("AVALIAÇÕES TÉCNICAS",style: TextStyle(fontWeight: FontWeight.bold),),
                        Container(
                          height: 300,
                          child: HorizontalGroupBarChart(_createGraphicsPerformanceTecnicas(), true),
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
                        Text("AVALIAÇÕES TÁTICAS",style: TextStyle(fontWeight: FontWeight.bold),),
                        Container(
                          height: 230,
                          child: HorizontalGroupBarChart(_createGraphicsPerformanceTaticas(), true),
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
                        Text("QUANTITATIVAS",style: TextStyle(fontWeight: FontWeight.bold),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: _tam,
                              child: DonutAutoChart(_createGraphicsVD(), true),
                            ),
                            Container(
                              height: _tam,
                              child: DonutAutoChart(_createGraphicsTIE(), true),
                            ),
                            Container(
                              height: _tam,
                              child: DonutAutoChart(_createGraphicsCapote(), true),
                            ),
                            Container(
                              height: _tam,
                              child: DonutAutoChart(_createGraphicsA2(), true),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
