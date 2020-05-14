import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/model/ResultadoModel.dart';
import 'package:com/br/com/futt/service/ResultadoService.dart';
import 'package:flutter/material.dart';

class ResultadosView extends StatefulWidget {

  int idTorneio;
  ResultadosView({this.idTorneio});

  @override
  _ResultadosViewState createState() => _ResultadosViewState();
}

class _ResultadosViewState extends State<ResultadosView> {

  _listaResultados() {
    ResultadoService resultadoService = ResultadoService();
    Future<List<ResultadoModel>> lista = resultadoService.listaResultadoDoTorneio(widget.idTorneio, ConstantesConfig.SERVICO_FIXO);
    return lista;
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
        body: SingleChildScrollView(
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

                                        List<ResultadoModel> resultados = snapshot.data;
                                        ResultadoModel resultado = resultados[index];

                                        return Column(
                                          children: <Widget>[
                                            ListTile(
                                              title: Text("${resultado.nomeJogador1} - ${resultado.nomeJogador2}") ,
                                              subtitle: Text("${resultado.apelidoJogador1} - ${resultado.apelidoJogador2}"),
                                            )
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
    );
  }
}
