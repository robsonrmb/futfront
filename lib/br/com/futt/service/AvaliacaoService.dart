import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AvaliacaoModel.dart';
import 'package:com/br/com/futt/service/fixo/AvaliacaoServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AvaliacaoService {

  inclui(var avaliacaoModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.post(
          "${ConstantesRest.URL_AVALIACOES}/add",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(avaliacaoModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      AvaliacaoServiceFixo serviceFixo = AvaliacaoServiceFixo();
      serviceFixo.inclui(avaliacaoModel);
    }
  }

  aceita(var avaliacaoModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_AVALIACOES}/aceita",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(avaliacaoModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      AvaliacaoServiceFixo serviceFixo = AvaliacaoServiceFixo();
      serviceFixo.aceita(AvaliacaoModel);
    }
  }

  recusa(var avaliacaoModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_AVALIACOES}/recusa",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(avaliacaoModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      AvaliacaoServiceFixo serviceFixo = AvaliacaoServiceFixo();
      serviceFixo.recusa(avaliacaoModel);
    }
  }

  Future<List<AvaliacaoModel>> listaRecebidasPendentes(String idUsuario, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_AVALIACOES}/recebidas/pendentes?usuario=${idUsuario}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        AvaliacaoServiceFixo serviceFixo = AvaliacaoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<AvaliacaoModel> lista = List();
      for (var registro in dadosJson) {
        AvaliacaoModel avaliacaoModel = AvaliacaoModel.fromJson(
            registro); //.converteJson
        lista.add(avaliacaoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<AvaliacaoModel>> listaRecebidas(String idUsuario, String status, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_AVALIACOES}/recebidas?usuario=${idUsuario}&status=${status}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        AvaliacaoServiceFixo serviceFixo = AvaliacaoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<AvaliacaoModel> lista = List();
      for (var registro in dadosJson) {
        AvaliacaoModel avaliacaoModel = AvaliacaoModel.fromJson(
            registro); //.converteJson
        lista.add(avaliacaoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}