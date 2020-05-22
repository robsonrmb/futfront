import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/model/ParticipanteModel.dart';
import 'package:com/br/com/futt/service/TorneioService.dart';
import 'package:com/br/com/futt/view/subview/ParticipantesTorneioSubView.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ParticipantesView extends StatefulWidget {

  int idTorneio;
  String nomeTorneio;
  String paisTorneio;
  String cidadeTorneio;
  String dataTorneio;
  int statusTorneio;
  ParticipantesView({this.idTorneio, this.nomeTorneio, this.paisTorneio, this.cidadeTorneio, this.dataTorneio, this.statusTorneio});

  @override
  _ParticipantesViewState createState() => _ParticipantesViewState();
}

class _ParticipantesViewState extends State<ParticipantesView> {

  String _mensagem = "";
  int _idTorneio;
  TextEditingController _controllerEmail = TextEditingController();

  _inserirParticipante(id) async {

    String _msg = "";
    if (_controllerEmail.text == "") {
      _msg = "Informe o email.";

    }else {
      try {
        ParticipanteModel participanteModel = ParticipanteModel.Novo(
            id, _controllerEmail.text);
        //TorneioService torneioService = TorneioService();
        //torneioService.adicionaParticipante(participanteModel, ConstantesConfig.SERVICO_FIXO);

        http.Response response = await http.post(
            "https://jsonplaceholder.typicode.com/posts",
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: json.encode({
              "userId": 200,
              "id": null,
              "title": "Título",
              "body": "Corpo da mensagem"
            })
        );
        if (response.statusCode >= 200 && response.statusCode < 300) {
          _msg = "Participante inserido com sucesso!!!";
          setState(() {
            _idTorneio = id;
          });

        } else {
          _msg = "Falha durante o processamento!!!";
        }

      } on Exception catch (exception) {
        print(exception.toString());
        setState(() {
          _msg = "Falha durante o processamento!!!";
        });
      } catch (error) {
        setState(() {
          _msg = "Falha durante o processamento!!!";
        });
      }
    }
    setState(() {
      _mensagem = _msg;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    _idTorneio = widget.idTorneio;

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
        title: Text("Participantes"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
            child: Text("${widget.nomeTorneio}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Candal'
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(1),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/torneios.png", height: 46, width: 46,),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text("${widget.paisTorneio} - ${widget.cidadeTorneio}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text("${widget.dataTorneio}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                widget.statusTorneio < 4 ? new Padding(
                  padding: EdgeInsets.fromLTRB(0, 2, 10, 0),
                  child: RaisedButton(
                    color: Color(0xff086ba4),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Novo participante",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Candal',
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                    onPressed: () {
                      setState(() {
                        _mensagem = "";
                      });
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          titleTextStyle: TextStyle(
                            color: Color(0xff086ba4),
                            fontSize: 20,
                            fontFamily: "Candal",
                          ),
                          title: Text("Atleta"),
                          content: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    //labelText: "Informe o e-mail",
                                    filled: false,
                                    fillColor: Colors.white,
                                    prefixIcon: Icon(Icons.email),
                                    hintText: "Informe o email",
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black
                                    ),
                                  ),
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black
                                  ),
                                  controller: _controllerEmail,
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
                                  "Inserir",
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
                                _inserirParticipante(widget.idTorneio);

                              },
                            ),
                          ],
                        );
                      });
                    },
                  ),
                ) : new Padding(
                  padding: EdgeInsets.fromLTRB(0, 2, 10, 0),
                ),
              ],
            ),
          ),
          _mensagem == "" ? new Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 10, 0),
          ) : new Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 10, 0),
            child: Center(
              child: Text("${_mensagem}",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ParticipantesTorneioSubView(_idTorneio),
          )
        ],
      ),
    );
  }
}
