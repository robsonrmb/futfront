import 'package:com/br/com/futt/model/RankingEntidadeModel.dart';
import 'package:com/br/com/futt/model/RankingModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/RankingServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RankingRest extends BaseRest {

  Future<List<RankingModel>> processaHttpGetList(String url, bool fixo) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        RankingServiceFixo serviceFixo = RankingServiceFixo();
        dadosJson = serviceFixo.responseRankingLista();
      }
      List<RankingModel> lista = List();
      for (var registro in dadosJson) {
        RankingModel rankingModel = RankingModel.fromJson(
            registro); //.converteJson
        lista.add(rankingModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<RankingEntidadeModel>> processaHttpGetListRankingEntidade(String url, bool fixo) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        RankingServiceFixo serviceFixo = RankingServiceFixo();
        dadosJson = serviceFixo.responseRankingEntidadeLista();
      }
      List<RankingEntidadeModel> lista = List();
      for (var registro in dadosJson) {
        RankingEntidadeModel rankingEntidadeModel = RankingEntidadeModel
            .fromJson(
            registro); //.converteJson
        lista.add(rankingEntidadeModel);
      }
      return lista;
    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }
}