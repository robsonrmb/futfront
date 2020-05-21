import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/model/EscolinhaModel.dart';
import 'package:com/br/com/futt/service/EscolinhaService.dart';
import 'package:flutter/material.dart';

class EscolinhaSubView extends StatefulWidget {

  String pais;
  String cidade;
  String paisDefault;
  String cidadeDefault;
  EscolinhaSubView(this.pais, this.cidade, this.paisDefault, this.cidadeDefault);

  @override
  _EscolinhaSubViewState createState() => _EscolinhaSubViewState();
}

class _EscolinhaSubViewState extends State<EscolinhaSubView> {

  Future<List<EscolinhaModel>> _listaEscolinha() async {
    if (widget.pais == "" && widget.cidade == "") {
      EscolinhaService escolinhaService = EscolinhaService();
      return escolinhaService.listaEscolinhas(
          widget.paisDefault, widget.cidadeDefault,
          ConstantesConfig.SERVICO_FIXO);
    }else{
      EscolinhaService escolinhaService = EscolinhaService();
      return escolinhaService.listaEscolinhas(
          widget.pais, widget.cidade,
          ConstantesConfig.SERVICO_FIXO);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EscolinhaModel>>(
      future: _listaEscolinha(),
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

                  List<EscolinhaModel> escolinha = snapshot.data;
                  EscolinhaModel resultado = escolinha[index];

                  return Container(
                    margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('${resultado.fotoResponsavel}'),
                        radius: 30.0,
                      ),
                      title: Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              " ${resultado.nomeResponsavel}",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              " ${resultado.nomeProfessor1}",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "  ${resultado.telefone}",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
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
