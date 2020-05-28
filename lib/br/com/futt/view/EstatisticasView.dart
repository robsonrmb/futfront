import 'package:charts_flutter/flutter.dart' as charts;
import 'package:com/br/com/futt/model/RespPerformanceModel.dart';
import 'package:com/br/com/futt/view/graphics/HorizontalGroupBarChart.dart';
import 'package:flutter/material.dart';

class EstatisticasView extends StatefulWidget {
  @override
  _EstatisticasViewState createState() => _EstatisticasViewState();
}

class _EstatisticasViewState extends State<EstatisticasView> {

  static List<charts.Series<RespPerformanceModel, String>> _createSampleData() {
    final data = [
      new RespPerformanceModel.GraficoSimples("Recepção", 10, 15, 20, 18),
      new RespPerformanceModel.GraficoSimples("Levantada", 12, 15, 20, 18),
      new RespPerformanceModel.GraficoSimples("Ataque", 10, 15, 20, 18),
      new RespPerformanceModel.GraficoSimples("Defesa", 10, 15, 20, 18),
      new RespPerformanceModel.GraficoSimples("Shark", 10, 15, 20, 18),
      new RespPerformanceModel.GraficoSimples("Pescoço", 10, 15, 20, 18),
      new RespPerformanceModel.GraficoSimples("Ombro", 10, 15, 20, 18),
      new RespPerformanceModel.GraficoSimples("Pé", 10, 15, 20, 18),
    ];
    return [
      new charts.Series<RespPerformanceModel, String>(
        id: 'Recepção',
        domainFn: (RespPerformanceModel resp, _) => resp.descricao,
        measureFn:  (RespPerformanceModel resp, _) => 10,
        data: data,
      )
    ];
  }

  static List<charts.Series<RespPerformanceModel, String>> _createGraphicsPerformanceTecnicas() {
    final dataRuim = [
      new RespPerformanceModel.Grafico("Recepção", 10),
      new RespPerformanceModel.Grafico("Levantada", 12),
      new RespPerformanceModel.Grafico("Ataque", 16),
      new RespPerformanceModel.Grafico("Defesa", 11),
      new RespPerformanceModel.Grafico("Shark", 1),
      new RespPerformanceModel.Grafico("Pescoço", 1),
      new RespPerformanceModel.Grafico("Ombro", 7),
      new RespPerformanceModel.Grafico("Pé", 11),
    ];
    final dataRegular = [
      new RespPerformanceModel.Grafico("Recepção", 5),
      new RespPerformanceModel.Grafico("Levantada", 10),
      new RespPerformanceModel.Grafico("Ataque", 10),
      new RespPerformanceModel.Grafico("Defesa", 23),
      new RespPerformanceModel.Grafico("Shark", 9),
      new RespPerformanceModel.Grafico("Pescoço", 1),
      new RespPerformanceModel.Grafico("Ombro", 16),
      new RespPerformanceModel.Grafico("Pé", 12),
    ];
    final dataBom = [
      new RespPerformanceModel.Grafico("Recepção", 10),
      new RespPerformanceModel.Grafico("Levantada", 12),
      new RespPerformanceModel.Grafico("Ataque", 16),
      new RespPerformanceModel.Grafico("Defesa", 11),
      new RespPerformanceModel.Grafico("Shark", 10),
      new RespPerformanceModel.Grafico("Pescoço", 12),
      new RespPerformanceModel.Grafico("Ombro", 11),
      new RespPerformanceModel.Grafico("Pé", 13),
    ];
    final dataOtimo = [
      new RespPerformanceModel.Grafico("Recepção", 5),
      new RespPerformanceModel.Grafico("Levantada", 10),
      new RespPerformanceModel.Grafico("Ataque", 10),
      new RespPerformanceModel.Grafico("Defesa", 21),
      new RespPerformanceModel.Grafico("Shark", 20),
      new RespPerformanceModel.Grafico("Pescoço", 21),
      new RespPerformanceModel.Grafico("Ombro", 10),
      new RespPerformanceModel.Grafico("Pé", 10),
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

  static List<charts.Series<RespPerformanceModel, String>> _createGraphicsPerformanceTaticas() {
    final dataRuim = [
      new RespPerformanceModel.Grafico("Constante", 10),
      new RespPerformanceModel.Grafico("Variação", 12),
      new RespPerformanceModel.Grafico("Inteligente", 16),
      new RespPerformanceModel.Grafico("Tático", 11),
      new RespPerformanceModel.Grafico("Competitivo", 1),
      new RespPerformanceModel.Grafico("Preparo", 1),
    ];
    final dataRegular = [
      new RespPerformanceModel.Grafico("Constante", 5),
      new RespPerformanceModel.Grafico("Variação", 10),
      new RespPerformanceModel.Grafico("Inteligente", 10),
      new RespPerformanceModel.Grafico("Tático", 23),
      new RespPerformanceModel.Grafico("Competitivo", 9),
      new RespPerformanceModel.Grafico("Preparo", 1),
    ];
    final dataBom = [
      new RespPerformanceModel.Grafico("Constante", 10),
      new RespPerformanceModel.Grafico("Variação", 12),
      new RespPerformanceModel.Grafico("Inteligente", 16),
      new RespPerformanceModel.Grafico("Tático", 11),
      new RespPerformanceModel.Grafico("Competitivo", 10),
      new RespPerformanceModel.Grafico("Preparo", 12),
    ];
    final dataOtimo = [
      new RespPerformanceModel.Grafico("Constante", 5),
      new RespPerformanceModel.Grafico("Variação", 10),
      new RespPerformanceModel.Grafico("Inteligente", 10),
      new RespPerformanceModel.Grafico("Tático", 21),
      new RespPerformanceModel.Grafico("Competitivo", 20),
      new RespPerformanceModel.Grafico("Preparo", 21),
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
