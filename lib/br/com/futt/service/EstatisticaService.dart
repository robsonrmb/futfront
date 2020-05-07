import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/EstatisticaModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EstatisticaService {

  Future<EstatisticaModel> vitoriasDerrotas(String idUsuario, String ano, String id, String tipo) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/vitoriasederrotas/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EstatisticaModel> listaEstatisticaModel = dadosJson[""].map<EstatisticaModel>(
              (map){
            return EstatisticaModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<EstatisticaModel> tiebreaks(String idUsuario, String ano, String idTorneio) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/tiebreaksvencidoseperdidos/usuario/${idUsuario}?ano=${ano}&&id=${idTorneio}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EstatisticaModel> listaEstatisticaModel = dadosJson[""].map<EstatisticaModel>(
              (map){
            return EstatisticaModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<EstatisticaModel> pontos(String idUsuario, String ano, String id, String tipo) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/pontos/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EstatisticaModel> listaEstatisticaModel = dadosJson[""].map<EstatisticaModel>(
              (map){
            return EstatisticaModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<EstatisticaModel> jogos(String idUsuario, String ano, String id, String tipo) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/jogos/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EstatisticaModel> listaEstatisticaModel = dadosJson[""].map<EstatisticaModel>(
              (map){
            return EstatisticaModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<EstatisticaModel> avaliativa(String idUsuario, String tipo, String ano) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/avaliativa/usuario/${idUsuario}/${tipo}?ano=${ano}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EstatisticaModel> listaEstatisticaModel = dadosJson[""].map<EstatisticaModel>(
              (map){
            return EstatisticaModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<EstatisticaModel> quantitativa(String idUsuario, String tipoestatistica, String ano, String id, String tipo) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/qtd/usuario/${idUsuario}/${tipoestatistica}?ano=${ano}&&id=${id}&&tipo=${tipo}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EstatisticaModel> listaEstatisticaModel = dadosJson[""].map<EstatisticaModel>(
              (map){
            return EstatisticaModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<EstatisticaModel> qtdAceitas(String idUsuario) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/qtdavaliacoesaceitas/usuario/${idUsuario}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EstatisticaModel> listaEstatisticaModel = dadosJson[""].map<EstatisticaModel>(
              (map){
            return EstatisticaModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<EstatisticaModel> qtdRecusadas(String idUsuario) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/qtdavaliacoesrecusadas/usuario/${idUsuario}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EstatisticaModel> listaEstatisticaModel = dadosJson[""].map<EstatisticaModel>(
              (map){
            return EstatisticaModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}