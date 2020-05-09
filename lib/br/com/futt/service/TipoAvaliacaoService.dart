import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/TipoAvaliacaoModel.dart';
import 'package:com/br/com/futt/service/fixo/TipoAvaliacaoServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TipoAvaliacaoService {

  Future<TipoAvaliacaoModel> getAvaliacao(String id, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_AVALIACOES}/${id}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        TipoAvaliacaoServiceFixo serviceFixo = TipoAvaliacaoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      return TipoAvaliacaoModel.fromJson(dadosJson); //.converteJson

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<TipoAvaliacaoModel>> listaPorNome(String nome, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_AVALIACOES}/porNome/${nome}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        TipoAvaliacaoServiceFixo serviceFixo = TipoAvaliacaoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<TipoAvaliacaoModel> lista = List();
      for (var registro in dadosJson) {
        TipoAvaliacaoModel tipoAvaliacaoModel = TipoAvaliacaoModel.fromJson(
            registro); //.converteJson
        lista.add(tipoAvaliacaoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<TipoAvaliacaoModel>> listaPorParteDoNome(String nome, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_AVALIACOES}?nome=${nome}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        TipoAvaliacaoServiceFixo serviceFixo = TipoAvaliacaoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<TipoAvaliacaoModel> lista = List();
      for (var registro in dadosJson) {
        TipoAvaliacaoModel tipoAvaliacaoModel = TipoAvaliacaoModel.fromJson(
            registro); //.converteJson
        lista.add(tipoAvaliacaoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<TipoAvaliacaoModel>> listaFind(String nome, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_AVALIACOES}/find?nome=${nome}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        TipoAvaliacaoServiceFixo serviceFixo = TipoAvaliacaoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<TipoAvaliacaoModel> lista = List();
      for (var registro in dadosJson) {
        TipoAvaliacaoModel tipoAvaliacaoModel = TipoAvaliacaoModel.fromJson(
            registro); //.converteJson
        lista.add(tipoAvaliacaoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<TipoAvaliacaoModel>> listaTodos({bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_AVALIACOES}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        TipoAvaliacaoServiceFixo serviceFixo = TipoAvaliacaoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<TipoAvaliacaoModel> lista = List();
      for (var registro in dadosJson) {
        TipoAvaliacaoModel tipoAvaliacaoModel = TipoAvaliacaoModel.fromJson(
            registro); //.converteJson
        lista.add(tipoAvaliacaoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}