import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/model/TorneioModel.dart';
import 'package:com/br/com/futt/service/TorneioService.dart';
import 'package:com/br/com/futt/view/JogosView.dart';
import 'package:flutter/material.dart';

class MeusTorneiosSubView extends StatefulWidget {
  @override
  _MeusTorneiosSubViewState createState() => _MeusTorneiosSubViewState();
}

class _MeusTorneiosSubViewState extends State<MeusTorneiosSubView> {

  int _getIdSubView() {
    return 1;
  }

  Future<List<TorneioModel>> _listaMeusTorneios() async {
    TorneioService torneioService = TorneioService();
    return torneioService.listaMeusTorneios(ConstantesConfig.SERVICO_FIXO);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TorneioModel>>(
      future: _listaMeusTorneios(),
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

                  List<TorneioModel> torneios = snapshot.data;
                  TorneioModel torneio = torneios[index];

                  return Container(
                    margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                      child:
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('${torneio.logoTorneio}'),
                          radius: 20.0,
                        ),
                        title: Row(
                          children: <Widget>[
                            Flexible(
                              child: Text(
                                "${torneio.nome}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(
                          "${torneio.getStatusFormatado()}",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              torneio.status != 70 && torneio.status != 99 ? new GestureDetector(
                                child: Icon(Icons.edit,
                                  //color: Colors.black
                                ),
                                onTap: (){
                                  showDialog(context: context, builder: (context){
                                    return AlertDialog(
                                      title: Text("${torneio.nome}"),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            torneio.status < 40 ? new Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: RaisedButton(
                                                color: Color(0xff086ba4),
                                                textColor: Colors.white,
                                                padding: EdgeInsets.all(15),
                                                child: Text(
                                                  "Alterar status",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Candal',
                                                  ),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(2),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ) : new Padding(
                                              padding: EdgeInsets.only(top: 1),
                                            ),
                                            torneio.status == 40 ? new Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: RaisedButton(
                                                color: Color(0xff086ba4),
                                                textColor: Colors.white,
                                                padding: EdgeInsets.all(15),
                                                child: Text(
                                                  "Resetar",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Candal',
                                                  ),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(2),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ) : new Padding(
                                                padding: EdgeInsets.only(top: 1),
                                            ),
                                            torneio.status == 40 ? new Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: RaisedButton(
                                                color: Color(0xff086ba4),
                                                textColor: Colors.white,
                                                padding: EdgeInsets.all(15),
                                                child: Text(
                                                  "Finalizar jogos",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Candal',
                                                  ),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(2),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ) : new Padding(
                                              padding: EdgeInsets.only(top: 1),
                                            ),
                                            torneio.getStatusJogosFinalizadosComTorneiosAutomaticos() == 51 ? new Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: RaisedButton(
                                                color: Color(0xff086ba4),
                                                textColor: Colors.white,
                                                padding: EdgeInsets.all(15),
                                                child: Text(
                                                  "Gravar ranking",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Candal',
                                                  ),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(2),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ) : new Padding(
                                              padding: EdgeInsets.only(top: 1),
                                            ),
                                            torneio.getStatusJogosFinalizadosComTorneiosAutomaticos() == 52 ? new Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: RaisedButton(
                                                color: Color(0xff086ba4),
                                                textColor: Colors.white,
                                                padding: EdgeInsets.all(15),
                                                child: Text(
                                                  "Finalizar torneio",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Candal',
                                                  ),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(2),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ) : new Padding(
                                              padding: EdgeInsets.only(top: 1),
                                            ),
                                            torneio.status < 60 ? new Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: RaisedButton(
                                                color: Color(0xff086ba4),
                                                textColor: Colors.white,
                                                padding: EdgeInsets.all(15),
                                                child: Text(
                                                  "Desativar",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Candal',
                                                  ),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(2),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ) : new Padding(
                                              padding: EdgeInsets.only(top: 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        FlatButton(
                                          child: RaisedButton(
                                            color: Color(0xff086ba4),
                                            textColor: Colors.white,
                                            padding: EdgeInsets.all(15),
                                            child: Text(
                                              "Fechar",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Candal',
                                              ),
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                  });
                                },
                              ) : new Padding(
                                padding: EdgeInsets.all(1),
                              ),
                              torneio.status != 70 && torneio.status != 99 ? new GestureDetector(
                                child: Text("..",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                onTap: (){},
                              ) : new Padding(
                                padding: EdgeInsets.all(1),
                              ),
                              torneio.status != 70 && torneio.status != 99 ? new GestureDetector(
                                child: Icon(Icons.people,
                                  //color: Colors.black
                                ),
                                onTap: (){
                                  showDialog(context: context, builder: (context){
                                    return AlertDialog(
                                      title: Text("${torneio.nome}"),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: RaisedButton(
                                                color: Color(0xff086ba4),
                                                textColor: Colors.white,
                                                padding: EdgeInsets.all(15),
                                                child: Text(
                                                  "Informar campeões",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Candal',
                                                  ),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(2),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        FlatButton(
                                          child: RaisedButton(
                                            color: Color(0xff086ba4),
                                            textColor: Colors.white,
                                            padding: EdgeInsets.all(15),
                                            child: Text(
                                              "Fechar",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Candal',
                                              ),
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                  });
                                },
                              ) : new Padding(
                                padding: EdgeInsets.all(1),
                              ),
                            ]
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => JogosView(idTorneio: torneio.id, nomeTorneio: torneio.nome, statusTorneio: torneio.status, idSubView: _getIdSubView(), editaPlacar: true),
                        ));
                      },
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
