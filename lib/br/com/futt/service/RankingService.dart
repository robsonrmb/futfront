import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/RankingEntidadeModel.dart';
import 'package:com/br/com/futt/model/RankingModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RankingService {

  Future<RankingModel> listaRanking(String ano, String idRanking) async {

    http.Response response = await http.get("${ConstantesRest.URL_RANKING}/${ano}/${idRanking}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<RankingModel> listaRankingModel = dadosJson[""].map<RankingModel>(
              (map){
            return RankingModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<RankingEntidadeModel> listaRankingEntidade() async {

    http.Response response = await http.get("${ConstantesRest.URL_RANKING_ENTIDADE}/ativas");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<RankingModel> listaRankingEntidadeModel = dadosJson[""].map<RankingEntidadeModel>(
              (map){
            return RankingEntidadeModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}