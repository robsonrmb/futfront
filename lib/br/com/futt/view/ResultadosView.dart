import 'dart:convert';

import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/model/ResultadoModel.dart';
import 'package:com/br/com/futt/service/ResultadoService.dart';
import 'package:com/br/com/futt/service/fixo/ResultadoServiceFixo.dart';
import 'package:com/br/com/futt/view/subview/ResultadoTorneioSubView.dart';
import 'package:flutter/material.dart';

class ResultadosView extends StatefulWidget {

  int idTorneio;
  ResultadosView({this.idTorneio});

  @override
  _ResultadosViewState createState() => _ResultadosViewState();
}

class _ResultadosViewState extends State<ResultadosView> {

  Future<List<ResultadoModel>> _listaResultados() async {
    ResultadoService resultadoService = ResultadoService();
    return resultadoService.listaResultadoDoTorneio(widget.idTorneio, ConstantesConfig.SERVICO_FIXO);
  }

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
          title: Text("Resultado"),
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
                        child: Text("Copa Brasil de Futevolei",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Candal'
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text("Rio de Janeiro",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text("10.08.2020",
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
              child: ResultadoTorneioSubView(),
            )
          ],
        ),
    );
  }
}
