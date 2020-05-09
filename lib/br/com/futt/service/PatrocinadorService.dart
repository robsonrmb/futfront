import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/PatrocinadorModel.dart';
import 'package:com/br/com/futt/service/fixo/PatrocinadorServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PatrocinadorService {

  inclui(var patrocinadorModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.post(
          "${ConstantesRest.URL_PATROCINADOR}/adiciona",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(patrocinadorModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      PatrocinadorServiceFixo serviceFixo = PatrocinadorServiceFixo();
      serviceFixo.inclui(patrocinadorModel);
    }
  }

  atualiza(var patrocinadorModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_PATROCINADOR}/atualiza",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(patrocinadorModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      PatrocinadorServiceFixo serviceFixo = PatrocinadorServiceFixo();
      serviceFixo.atualiza(patrocinadorModel);
    }
  }

  remove(String idPatrocinador, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_PATROCINADOR}/remove/${idPatrocinador}",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      PatrocinadorServiceFixo serviceFixo = PatrocinadorServiceFixo();
      serviceFixo.remove(idPatrocinador);
    }
  }

  Future<List<PatrocinadorModel>> listaPatrocinadores({bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_PATROCINADOR}/ativos");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        PatrocinadorServiceFixo serviceFixo = PatrocinadorServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<PatrocinadorModel> lista = List();
      for (var registro in dadosJson) {
        PatrocinadorModel patrocinadorModel = PatrocinadorModel.fromJson(
            registro); //.converteJson
        lista.add(patrocinadorModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<PatrocinadorModel>> listaPorTorneios(String idTorneio, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_PATROCINADOR}/torneio/${idTorneio}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        PatrocinadorServiceFixo serviceFixo = PatrocinadorServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<PatrocinadorModel> lista = List();
      for (var registro in dadosJson) {
        PatrocinadorModel patrocinadorModel = PatrocinadorModel.fromJson(
            registro); //.converteJson
        lista.add(patrocinadorModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}