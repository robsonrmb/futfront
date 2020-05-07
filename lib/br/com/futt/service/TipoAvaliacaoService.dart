import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/TipoAvaliacaoModel.dart';
import 'package:com/br/com/futt/model/TipoTorneioModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TipoAvaliacaoService {

  Future<TipoAvaliacaoModel> getAvaliacao(String id) async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_AVALIACOES}/${id}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      TipoAvaliacaoModel tipoAvaliacaoModel = dadosJson[""].map<TipoAvaliacaoModel>(
          (map){
            return TipoAvaliacaoModel.fromJson(map);
          }
      );

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<TipoAvaliacaoModel> listaPorNome(String nome) async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_AVALIACOES}/porNome/${nome}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<TipoAvaliacaoModel> listaTipoAvaliacaoModel = dadosJson[""].map<TipoAvaliacaoModel>(
              (map){
            return TipoAvaliacaoModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<TipoAvaliacaoModel> listaPorParteDoNome(String nome) async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_AVALIACOES}?nome=${nome}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<TipoAvaliacaoModel> listaTipoAvaliacaoModel = dadosJson[""].map<TipoAvaliacaoModel>(
              (map){
            return TipoAvaliacaoModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<TipoAvaliacaoModel> listaFind(String nome) async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_AVALIACOES}/find?nome=${nome}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<TipoAvaliacaoModel> listaTipoAvaliacaoModel = dadosJson[""].map<TipoAvaliacaoModel>(
              (map){
            return TipoAvaliacaoModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<TipoAvaliacaoModel> listaTodos() async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_AVALIACOES}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<TipoAvaliacaoModel> listaTipoAvaliacaoModel = dadosJson[""].map<TipoAvaliacaoModel>(
              (map){
            return TipoAvaliacaoModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}