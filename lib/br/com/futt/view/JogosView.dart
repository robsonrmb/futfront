import 'package:com/br/com/futt/constantes/ConstantesFasesDeJogos.dart';
import 'package:com/br/com/futt/view/subview/JogosTorneioSubView.dart';
import 'package:flutter/material.dart';

class JogosView extends StatefulWidget {

  int idTorneio;
  int idSubView;
  JogosView({this.idTorneio, this.idSubView});

  @override
  _JogosViewState createState() => _JogosViewState();
}

class _JogosViewState extends State<JogosView> {

  int _indiceAtual = 0;
  int _indiceFase = 0;
  int _paramFase = 0;
  String _fase = "";
  List<String> _fases;
  Map<int, int> _mapaDoIdFases;

  _faseAnterior() {
    if (_indiceFase > 0) {
      setState(() {
        _indiceFase = _indiceFase - 1;
        _paramFase = _mapaDoIdFases[_indiceFase];
        _fase = _fases[_indiceFase];
        _indiceAtual = 0;
      });
    }
  }

  _proximaFase() {
    if (_indiceFase < _fases.length-1) {
      setState(() {
        _indiceFase = _indiceFase + 1;
        _paramFase = _mapaDoIdFases[_indiceFase];
        _fase = _fases[_indiceFase];
        _indiceAtual = 0;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _indiceFase = 0;
    if (widget.idSubView == 1) { //Eliminatória simples com 16 duplas
      _mapaDoIdFases = {
        0: ConstantesFasesDeJogos.OITAVAS,
        1: ConstantesFasesDeJogos.QUARTAS,
        2: ConstantesFasesDeJogos.SEMIFINAL,
        3: ConstantesFasesDeJogos.FINAL,
        4: ConstantesFasesDeJogos.TERCEIRO_LUGAR
      };
      setState(() {
        _fase = "8ª de Final";
        _fases = [
          "8ª de Final",
          "4ª de Final",
          "Semifinal",
          "Final",
          "Terceiro Lugar"
        ];
      });
    }else if (widget.idSubView == 2) { //Eliminatória simples com 8 duplas
      _mapaDoIdFases = {
        0: ConstantesFasesDeJogos.QUARTAS,
        1: ConstantesFasesDeJogos.SEMIFINAL,
        2: ConstantesFasesDeJogos.FINAL,
        3: ConstantesFasesDeJogos.TERCEIRO_LUGAR
      };
      setState(() {
        _fase = "4ª de Final";
        _fases = [
          "4ª de Final",
          "Semifinal",
          "Final",
          "Terceiro Lugar"
        ];
      });
    }else if (widget.idSubView == 3) { //Eliminatória simples com 4 duplas
      _mapaDoIdFases = {
        0: ConstantesFasesDeJogos.SEMIFINAL,
        1: ConstantesFasesDeJogos.FINAL,
        2: ConstantesFasesDeJogos.TERCEIRO_LUGAR
      };
      setState(() {
        _fase = "Semifinal";
        _fases = [
          "Semifinal",
          "Final",
          "Terceiro Lugar"
        ];
      });
    }else if (widget.idSubView == 4) { //Dupla Eliminatória
      _mapaDoIdFases = {
        0: ConstantesFasesDeJogos.PRINCIPAL,
        1: ConstantesFasesDeJogos.RESPESCAGEM,
        2: ConstantesFasesDeJogos.SEMIFINAL,
        3: ConstantesFasesDeJogos.FINAL,
        4: ConstantesFasesDeJogos.TERCEIRO_LUGAR
      };
      setState(() {
        _fase = "Principal";
        _fases = [
          "Principal",
          "Repescagem",
          "Semifinal",
          "Final",
          "Terceiro Lugar"
        ];
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> subViews = [
      JogosTorneioSubView(widget.idTorneio, _paramFase),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
          opacity: 1,
        ),
        backgroundColor: Color(0xff093352),
        textTheme: TextTheme(
            title: TextStyle(
                color: Colors.white,
                fontSize: 20
            )
        ),
        title: Text("Jogos"),
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
                      child: Text("${_indiceFase} - ${_fase}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Candal'
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Fase anterior",
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                        onPressed: _faseAnterior,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Próxima fase",
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                        onPressed: _proximaFase,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: subViews[_indiceAtual],
          )
        ],
      ),
    );
  }
}
