import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/ParticipanteModel.dart';
import 'package:com/br/com/futt/model/TorneioModel.dart';
import 'package:com/br/com/futt/service/fixo/TorneioServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TorneioService {

  inclui(var torneioModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.post(
          "${ConstantesRest.URL_TORNEIOS}/adiciona",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(torneioModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.inclui(torneioModel);
    }
  }

  adicionaPatrocinador(var torneioPatrocinadorModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.post(
          "${ConstantesRest.URL_TORNEIOS}/adicionapatrocinador",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(torneioPatrocinadorModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.adicionaPatrocinador(torneioPatrocinadorModel);
    }
  }

  adicionaParticipante(var participanteModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.post(
          "${ConstantesRest.URL_TORNEIOS}/adicionaparticipante",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(participanteModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.adicionaParticipante(participanteModel);
    }
  }

  atualiza(var torneioModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_TORNEIOS}/atualiza",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(torneioModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.atualiza(torneioModel);
    }
  }

  informaCampeoes(var torneioModel, {bool teste}) async {

    if (teste == null || teste == false) {
      var torneioModel;
      http.Response response = await http.put(
          "${ConstantesRest.URL_TORNEIOS}/informacampeoes",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: {
            jsonDecode(torneioModel)
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.informaCampeoes(torneioModel);
    }
  }

  alteraStatus(String idTorneio, String status, {bool teste}) async {

    if (teste == null || teste == false) {
      var torneioModel;
      http.Response response = await http.put(
          "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/alterastatus",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: {
            jsonDecode(torneioModel)
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.alteraStatus(idTorneio, status);
    }
  }

  desativaTorneio(String idTorneio, {bool teste}) async {

    if (teste == null || teste == false) {
      var torneioModel;
      http.Response response = await http.put(
          "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/desativa",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: {
            jsonDecode(torneioModel)
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.desativaTorneio(idTorneio);
    }
  }

  finalizaTorneio(String idTorneio, {bool teste}) async {

    if (teste == null || teste == false) {
      var torneioModel;
      http.Response response = await http.put(
          "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/finaliza",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: {
            jsonDecode(torneioModel)
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.finalizaTorneio(idTorneio);
    }
  }

  resetTorneio(String idTorneio, {bool teste}) async {

    if (teste == null || teste == false) {
      var torneioModel;
      http.Response response = await http.put(
          "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/reset",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: {
            jsonDecode(torneioModel)
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.resetTorneio(idTorneio);
    }
  }

  gravaRankingTorneio(String idTorneio, {bool teste}) async {

    if (teste == null || teste == false) {
      var torneioModel;
      http.Response response = await http.put(
          "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/gravaranking",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: {
            jsonDecode(torneioModel)
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.gravaRankingTorneio(idTorneio);
    }
  }

  Future<List<TorneioModel>> listaPorFiltros(var torneioModel, {bool teste}) async {

    if (teste == null || teste == false) {
      var torneioModel;
      http.Response response = await http.post(
          "${ConstantesRest.URL_TORNEIOS}/filtros",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: {
            jsonDecode(torneioModel)
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      return serviceFixo.listaPorFiltros(torneioModel);
    }
  }

  Future<List<TorneioModel>> listaPorStatus(var status, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_TORNEIOS}/status?status=${status}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        TorneioServiceFixo serviceFixo = TorneioServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<TorneioModel> lista = List();
      for (var registro in dadosJson) {
        TorneioModel torneioModel = TorneioModel.fromJson(registro); //.converteJson
        lista.add(torneioModel);
      }
      return lista;

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<TorneioModel>> listaTodos({bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_TORNEIOS}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        TorneioServiceFixo serviceFixo = TorneioServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<TorneioModel> lista = List();
      for (var registro in dadosJson) {
        TorneioModel torneioModel = TorneioModel.fromJson(registro); //.converteJson
        lista.add(torneioModel);
      }
      return lista;

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<ParticipanteModel>> listaParticipantesDoTorneio(String idTorneio, {bool teste}) async {
    http.Response response = await http.get(
        "${ConstantesRest.URL_TORNEIOS}/participantes/${idTorneio}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        TorneioServiceFixo serviceFixo = TorneioServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<ParticipanteModel> lista = List();
      for (var registro in dadosJson) {
        ParticipanteModel participanteModel = ParticipanteModel.fromJson(
            registro); //.converteJson
        lista.add(participanteModel);
      }
      return lista;
    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<TorneioModel> getTorneio(String idTorneio, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_TORNEIOS}/${idTorneio}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        TorneioServiceFixo serviceFixo = TorneioServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return TorneioModel.fromJson(dadosJson);

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}