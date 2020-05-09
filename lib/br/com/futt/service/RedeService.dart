import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/IntegranteModel.dart';
import 'package:com/br/com/futt/model/RedeModel.dart';
import 'package:com/br/com/futt/service/fixo/RedeServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RedeService {

  inclui(var redeModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.post(
          "${ConstantesRest.URL_REDE}/adiciona",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(redeModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.inclui(redeModel);
    }
  }

  atualizaPatrocinador(var redePatrocinadorModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_REDE}/adicionapatrocinador",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(redePatrocinadorModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.atualizaPatrocinador(redePatrocinadorModel);
    }
  }

  atualizaIntegrante(var integranteModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_REDE}/adicionaintegrante",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(integranteModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.atualizaIntegrante(integranteModel);
    }
  }

  atualiza(var redeModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_REDE}/atualiza",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(redeModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.atualiza(redeModel);
    }
  }

  alteraStatus(String idRede, String status, {bool teste}) async {

    if (teste == null || teste == false) {
      var redeModel;
      http.Response response = await http.put(
          "${ConstantesRest.URL_REDE}/${idRede}/alterastatus/${status}",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: {
            jsonDecode(redeModel)
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.alteraStatus(idRede, status);
    }
  }

  desativaRede(String idRede, {bool teste}) async {

    if (teste == null || teste == false) {
      var redeModel;
      http.Response response = await http.put(
          "${ConstantesRest.URL_REDE}/${idRede}/desativa",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: {
            jsonDecode(redeModel)
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.desativaRede(idRede);
    }
  }

  Future<List<RedeModel>> listaPorFiltros(var redeModel, {bool teste}) async {

    var redeModel;
    http.Response response = await http.post(
        "${ConstantesRest.URL_REDE}/filtros",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(redeModel)
        }
    );
    var dadosJson = json.decode(response.body);

    if (teste != null && teste == true) {
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      dadosJson = serviceFixo.responseRedeLista();
    }
    List<RedeModel> lista = List();
    for (var registro in dadosJson) {
      RedeModel usuarioModel = RedeModel.fromJson(registro); //.converteJson
      lista.add(usuarioModel);
    }
    return lista;
  }

  Future<List<RedeModel>> listaPorStatus(var status, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_REDE}/status?status=${status}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        RedeServiceFixo serviceFixo = RedeServiceFixo();
        dadosJson = serviceFixo.responseRedeLista();
      }
      List<RedeModel> lista = List();
      for (var registro in dadosJson) {
        RedeModel redeModel = RedeModel.fromJson(
            registro); //.converteJson
        lista.add(redeModel);
      }
      return lista;

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

  Future<List<RedeModel>> listaTodos({bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_REDE}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        RedeServiceFixo serviceFixo = RedeServiceFixo();
        dadosJson = serviceFixo.responseRedeLista();
      }
      List<RedeModel> lista = List();
      for (var registro in dadosJson) {
        RedeModel redeModel = RedeModel.fromJson(
            registro); //.converteJson
        lista.add(redeModel);
      }
      return lista;

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

  Future<List<IntegranteModel>> listaIntegrantesDaRede(String idRede, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_REDE}/integrantes/${idRede}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        RedeServiceFixo serviceFixo = RedeServiceFixo();
        dadosJson = serviceFixo.responseIntegrantesLista();
      }
      List<IntegranteModel> lista = List();
      for (var registro in dadosJson) {
        IntegranteModel integranteModel = IntegranteModel.fromJson(
            registro); //.converteJson
        lista.add(integranteModel);
      }
      return lista;

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

}