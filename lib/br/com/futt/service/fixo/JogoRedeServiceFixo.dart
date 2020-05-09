import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/JogoRedeModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JogoRedeServiceFixo {

  String retornoJogo = '{'
        '"id": 1, '
        '"numero": 1, '
        '"pontuacao1": 18, '
        '"pontuacao2": 12, '
        '"data": null, '
        '"idRede": 4, '
        '"idJogador1": 1, '
        '"idJogador2": 2, '
        '"idJogador3": 3, '
        '"idJogador4": 4, '
        '"idJogador5": 0, '
        '"idJogador6": 0, '
        '"idJogador7": 0, '
        '"idJogador8": 0, '
        '"idJogador9": 0, '
        '"idJogador10": 0 '
      '}';

  String retornoJogos = '[ '
        '{'
          '"id": 1, '
          '"numero": 1, '
          '"pontuacao1": 18, '
          '"pontuacao2": 12, '
          '"data": null, '
          '"idRede": 4, '
          '"idJogador1": 1, '
          '"idJogador2": 2, '
          '"idJogador3": 3, '
          '"idJogador4": 4, '
          '"idJogador5": 0, '
          '"idJogador6": 0, '
          '"idJogador7": 0, '
          '"idJogador8": 0, '
          '"idJogador9": 0, '
          '"idJogador10": 0 '
        '} '
      ']';

  var envio = json.encode(
      {
        "userId": 200,
        "id": null,
        "title": "Título",
        "body": "Corpo da mensagem"
      }
  );

  String responseLista() {
    return retornoJogos;
  }

  String responseObjeto() {
    return retornoJogo;
  }

  _processaFixo() async {
    http.Response response = await http.post(
        "${ConstantesRest.URL_BASE_TESTE}/posts",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: envio
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<JogoRedeModel> _buscaJogoFixo() async {
    var dadosJson = json.decode(retornoJogo);
    return JogoRedeModel.fromJson(dadosJson); //.converteJson
  }

  Future<List<JogoRedeModel>> _listaJogosFixo() async {
    var dadosJson = json.decode(retornoJogos);
    List<JogoRedeModel> lista = List();
    for (var registro in dadosJson) {
      JogoRedeModel jogoRedeModel = JogoRedeModel.fromJson(registro); //.converteJson
      lista.add(jogoRedeModel);
    }
    return lista;
  }

  inclui(var jogoRedeModel) async {
    return _processaFixo();
  }

  atualiza(var jogoRedeModel) async {
    return _processaFixo();
  }

  atualizaPlacar(var jogoRedeModel) async {
    return _processaFixo();
  }

  remove(String idJogo) async {
    return _processaFixo();
  }

  Future<List<JogoRedeModel>> listaPorRede(String idRede) async {
    return _listaJogosFixo();
  }
}