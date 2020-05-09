import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/RankingEntidadeModel.dart';
import 'package:com/br/com/futt/model/RankingModel.dart';
import 'package:com/br/com/futt/service/fixo/RankingServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RankingService {

  Future<List<RankingModel>> listaRanking(String ano, String idRanking, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_RANKING}/${ano}/${idRanking}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
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

  Future<List<RankingEntidadeModel>> listaRankingEntidade({bool teste}) async {
    http.Response response = await http.get(
        "${ConstantesRest.URL_RANKING_ENTIDADE}/ativas");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
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