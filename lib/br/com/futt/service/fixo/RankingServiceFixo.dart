import 'package:com/br/com/futt/model/RankingModel.dart';
import 'dart:convert';

class RankingServiceFixo {

  String retornoRanking = '[ '
        '{'
          '"id": 1, '
          '"ano": 2020, '
          '"pontuacao": 180, '
          '"idUsuario": 1, '
          '"nomeUsuario": "Robson", '
          '"apelidoUsuario": "Robinho" '
        '}, '
        '{'
          '"id": 2, '
          '"ano": 2020, '
          '"pontuacao": 160, '
          '"idUsuario": 2, '
          '"nomeUsuario": "Pedro", '
          '"apelidoUsuario": "Pedrinho" '
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
    return retornoRanking;
  }

  Future<List<RankingModel>> _listaRankingFixo() async {
    var dadosJson = json.decode(retornoRanking);
    List<RankingModel> lista = List();
    for (var registro in dadosJson) {
      RankingModel rankingModel = RankingModel.fromJson(registro); //.converteJson
      lista.add(rankingModel);
    }
    return lista;
  }

  Future<List<RankingModel>> listaRanking(String ano, String idRanking) async {
    return _listaRankingFixo();
  }

  Future<List<RankingModel>> listaRankingEntidade() async {
    return _listaRankingFixo();
  }

}