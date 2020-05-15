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
        body: ResultadoTorneioSubView(),
        /*
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            color: Color(0xfff8f8f8),
            child: Center(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Lista dos resultados do torneio - ${widget.idTorneio}"),
                        FutureBuilder<List<ResultadoModel>>(
                          future: _listaResultados(),
                          builder: (context, snapshot){
                            switch(snapshot.connectionState) {
                              case ConnectionState.none:
                              case ConnectionState.waiting:
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              case ConnectionState.active:
                              case ConnectionState.done:
                                if (snapshot.hasData) {
                                  return ListView.separated(
                                      itemBuilder: (context, index){
                                        return Column(
                                          children: <Widget>[
                                            Text("um"),
                                          ],
                                        );
                                      },
                                      separatorBuilder: (context, index) => Divider(
                                          height: 3,
                                          color: Colors.red
                                      ),
                                      itemCount: snapshot.data.length
                                  );
                                }else{
                                  return Center(
                                    child: Text("Sem valores!!!"),
                                  );
                                }
                            }
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        */
    );
  }
}
