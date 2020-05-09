import 'package:com/br/com/futt/model/RankingEntidadeModel.dart';
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

  String retornoRankingEntidade = '[ '
        '{'
          '"id": 1, '
          '"nome": "Confederação Brasileira de Futevolei", '
          '"descricao": "CBFv" '
        '}, '
        '{'
          '"id": 2, '
          '"nome": "Federação Internacional de Futevolei", '
          '"descricao": "FIFv" '
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

  String responseRankingLista() {
    return retornoRanking;
  }

  String responseRankingEntidadeLista() {
    return retornoRankingEntidade;
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

  Future<List<RankingEntidadeModel>> _listaRankingEntidadeFixo() async {
    var dadosJson = json.decode(retornoRanking);
    List<RankingEntidadeModel> lista = List();
    for (var registro in dadosJson) {
      RankingEntidadeModel rankingEntidadeModel = RankingEntidadeModel.fromJson(registro); //.converteJson
      lista.add(rankingEntidadeModel);
    }
    return lista;
  }

  Future<List<RankingModel>> listaRanking(String ano, String idRanking) async {
    return _listaRankingFixo();
  }

  Future<List<RankingEntidadeModel>> listaRankingEntidade() async {
    return _listaRankingEntidadeFixo();
  }

}