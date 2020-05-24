import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/model/JogoModel.dart';
import 'package:com/br/com/futt/service/JogoService.dart';
import 'package:flutter/material.dart';

class JogosTorneioSubView extends StatefulWidget {

  int idTorneio;
  int idFase;
  bool editaPlacar;
  JogosTorneioSubView(this.idTorneio, this.idFase, this.editaPlacar);

  @override
  _JogosTorneioSubViewState createState() => _JogosTorneioSubViewState();
}

class _JogosTorneioSubViewState extends State<JogosTorneioSubView> {

  TextEditingController _controllerPontuacao1 = TextEditingController();
  TextEditingController _controllerPontuacao2 = TextEditingController();
  bool _atualizaJogos = false;
  String _mensagem = "";

  Future<List<JogoModel>> _listaJogos(_atualizaJogos) async {
    JogoService jogoService = JogoService();
    return jogoService.listaPorTorneios(widget.idTorneio, widget.idFase, _atualizaJogos, ConstantesConfig.SERVICO_FIXO);
  }

  _atualizaPlacar(int idJogo, int idNumeroJogo) {
    Navigator.pop(context);
    _listaJogos(true);
    setState(() {
      _atualizaJogos = true;
    });

    _mensagem = "Placar atualizado com sucesso!!!";
    final snackbar = SnackBar(
      backgroundColor: Colors.orangeAccent,
      content: Text("${_mensagem}",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      duration: Duration(seconds: 3),
      action: SnackBarAction(
        label: "",
        onPressed: () {
          // Codigo para desfazer alteração
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<JogoModel>>(
      future: _listaJogos(_atualizaJogos),
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

                  List<JogoModel> paticipantes = snapshot.data;
                  JogoModel jogo = paticipantes[index];

                  return Container(
                    margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 40, width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff093352),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "${jogo.pontuacao1}",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                          ]
                        ),
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(
                            "${jogo.nomeJogador1} e ${jogo.nomeJogador2}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Text(
                            "${jogo.nomeJogador3} e ${jogo.nomeJogador4}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height: 40, width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xff093352),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "${jogo.pontuacao2}",
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            widget.editaPlacar == true ? new GestureDetector(
                              child: Icon(Icons.arrow_drop_down, color: Colors.grey[300],)
                            ) : new Padding(
                              padding: EdgeInsets.all(1),
                            ),
                            widget.editaPlacar == true ? new GestureDetector(
                              child: Icon(Icons.edit),
                              onTap: (){
                                showDialog(context: context, builder: (context){
                                  return AlertDialog(
                                    title: Text("Informe o placar"),
                                    content: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              labelText: "Pontuação (${jogo.nomeJogador1}/${jogo.nomeJogador2})",
                                            ),
                                            maxLength: 2,
                                            controller: _controllerPontuacao1,
                                          ),
                                          TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              labelText: "Pontuação (${jogo.nomeJogador3}/${jogo.nomeJogador4})",
                                            ),
                                            maxLength: 2,
                                            controller: _controllerPontuacao2,
                                          ),
                                          RaisedButton(
                                            color: Color(0xff086ba4),
                                            textColor: Colors.white,
                                            padding: EdgeInsets.all(15),
                                            child: Text(
                                              "Atualiza placar",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Candal',
                                              ),
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                            onPressed: () {
                                              _atualizaPlacar(jogo.id, jogo.numero);
                                            },
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
