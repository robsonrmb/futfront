import 'package:charts_flutter/flutter.dart' as charts;
import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/model/RespPerformanceModel.dart';
import 'package:com/br/com/futt/model/RespostaModel.dart';
import 'package:com/br/com/futt/service/EstatisticaService.dart';
import 'package:com/br/com/futt/view/graphics/HorizontalGroupBarChart.dart';
import 'package:flutter/material.dart';

class EstatisticasView extends StatefulWidget {
  @override
  _EstatisticasViewState createState() => _EstatisticasViewState();
}

class _EstatisticasViewState extends State<EstatisticasView> {

  List<charts.Series<RespPerformanceModel, String>> _createGraphicsPerformanceTecnicas() {

    EstatisticaService estatisticaService = EstatisticaService();
    Future<List<RespostaModel>> pTecnica = estatisticaService.getPerformanceTecnica(0, 2020, ConstantesConfig.SERVICO_FIXO);

    String valor = '10#12#15#20#18#10#12#15#20#18#10#12#15#22#18#10#12#15#24#18#10#12#15#20#18#10#12#15#20#18#8#3';
    var _valores = valor.split("#");

    final dataRuim = [
      new RespPerformanceModel.Grafico("Recepção", int.parse(_valores[0])),
      new RespPerformanceModel.Grafico("Levantada", int.parse(_valores[1])),
      new RespPerformanceModel.Grafico("Ataque", int.parse(_valores[2])),
      new RespPerformanceModel.Grafico("Defesa", int.parse(_valores[3])),
      new RespPerformanceModel.Grafico("Shark", int.parse(_valores[4])),
      new RespPerformanceModel.Grafico("Pescoço", int.parse(_valores[5])),
      new RespPerformanceModel.Grafico("Ombro", int.parse(_valores[6])),
      new RespPerformanceModel.Grafico("Pé", int.parse(_valores[7])),
    ];
    final dataRegular = [
      new RespPerformanceModel.Grafico("Recepção", int.parse(_valores[8])),
      new RespPerformanceModel.Grafico("Levantada", int.parse(_valores[9])),
      new RespPerformanceModel.Grafico("Ataque", int.parse(_valores[10])),
      new RespPerformanceModel.Grafico("Defesa", int.parse(_valores[11])),
      new RespPerformanceModel.Grafico("Shark", int.parse(_valores[12])),
      new RespPerformanceModel.Grafico("Pescoço", int.parse(_valores[13])),
      new RespPerformanceModel.Grafico("Ombro", int.parse(_valores[14])),
      new RespPerformanceModel.Grafico("Pé", int.parse(_valores[15])),
    ];
    final dataBom = [
      new RespPerformanceModel.Grafico("Recepção", int.parse(_valores[16])),
      new RespPerformanceModel.Grafico("Levantada", int.parse(_valores[17])),
      new RespPerformanceModel.Grafico("Ataque", int.parse(_valores[18])),
      new RespPerformanceModel.Grafico("Defesa", int.parse(_valores[19])),
      new RespPerformanceModel.Grafico("Shark", int.parse(_valores[20])),
      new RespPerformanceModel.Grafico("Pescoço", int.parse(_valores[21])),
      new RespPerformanceModel.Grafico("Ombro", int.parse(_valores[22])),
      new RespPerformanceModel.Grafico("Pé", int.parse(_valores[23])),
    ];
    final dataOtimo = [
      new RespPerformanceModel.Grafico("Recepção", int.parse(_valores[24])),
      new RespPerformanceModel.Grafico("Levantada", int.parse(_valores[25])),
      new RespPerformanceModel.Grafico("Ataque", int.parse(_valores[26])),
      new RespPerformanceModel.Grafico("Defesa", int.parse(_valores[27])),
      new RespPerformanceModel.Grafico("Shark", int.parse(_valores[28])),
      new RespPerformanceModel.Grafico("Pescoço", int.parse(_valores[29])),
      new RespPerformanceModel.Grafico("Ombro", int.parse(_valores[30])),
      new RespPerformanceModel.Grafico("Pé", int.parse(_valores[31])),
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

  List<charts.Series<RespPerformanceModel, String>> _createGraphicsPerformanceTaticas() {

    EstatisticaService estatisticaService = EstatisticaService();
    Future<List<RespostaModel>> pTatica = estatisticaService.getPerformanceTatica(0, 2020, ConstantesConfig.SERVICO_FIXO);

    String valor = '10#12#15#20#18#10#12#18#10#12#15#22#18#10#12#15#24#18#12#15#20#18#8#3';
    var _valores = valor.split("#");

    final dataRuim = [
      new RespPerformanceModel.Grafico("Constante", int.parse(_valores[0])),
      new RespPerformanceModel.Grafico("Variação", int.parse(_valores[1])),
      new RespPerformanceModel.Grafico("Inteligente", int.parse(_valores[2])),
      new RespPerformanceModel.Grafico("Tático", int.parse(_valores[3])),
      new RespPerformanceModel.Grafico("Competitivo", int.parse(_valores[4])),
      new RespPerformanceModel.Grafico("Preparo", int.parse(_valores[5])),
    ];
    final dataRegular = [
      new RespPerformanceModel.Grafico("Constante", int.parse(_valores[6])),
      new RespPerformanceModel.Grafico("Variação", int.parse(_valores[7])),
      new RespPerformanceModel.Grafico("Inteligente", int.parse(_valores[8])),
      new RespPerformanceModel.Grafico("Tático", int.parse(_valores[9])),
      new RespPerformanceModel.Grafico("Competitivo", int.parse(_valores[10])),
      new RespPerformanceModel.Grafico("Preparo", int.parse(_valores[11])),
    ];
    final dataBom = [
      new RespPerformanceModel.Grafico("Constante", int.parse(_valores[12])),
      new RespPerformanceModel.Grafico("Variação", int.parse(_valores[13])),
      new RespPerformanceModel.Grafico("Inteligente", int.parse(_valores[14])),
      new RespPerformanceModel.Grafico("Tático", int.parse(_valores[15])),
      new RespPerformanceModel.Grafico("Competitivo", int.parse(_valores[16])),
      new RespPerformanceModel.Grafico("Preparo", int.parse(_valores[17])),
    ];
    final dataOtimo = [
      new RespPerformanceModel.Grafico("Constante", int.parse(_valores[18])),
      new RespPerformanceModel.Grafico("Variação", int.parse(_valores[19])),
      new RespPerformanceModel.Grafico("Inteligente", int.parse(_valores[20])),
      new RespPerformanceModel.Grafico("Tático", int.parse(_valores[21])),
      new RespPerformanceModel.Grafico("Competitivo", int.parse(_valores[22])),
      new RespPerformanceModel.Grafico("Preparo", int.parse(_valores[23])),
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

  @override
  Widget build(BuildContext context) {
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
                        Text("ÚLTIMOS JOGOS",style: TextStyle(fontWeight: FontWeight.bold),),
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
