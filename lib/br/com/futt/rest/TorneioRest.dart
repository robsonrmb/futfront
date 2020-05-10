import 'package:com/br/com/futt/model/ParticipanteModel.dart';
import 'package:com/br/com/futt/model/TorneioModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/TorneioServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TorneioRest extends BaseRest {

  Future<List<TorneioModel>> processaHttpGetList(String url, bool teste) async {
    http.Response response = await http.get(url);
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

  Future<TorneioModel> processaHttpGetObject(String url, bool teste) async {
    http.Response response = await http.get(url);
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

  Future<List<TorneioModel>> processaHttpPostReturn(String url, var torneioModel, bool teste) async {
    http.Response response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(torneioModel)
        }
    );
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
  }

  Future<List<ParticipanteModel>> processaHttpGetListParticipante(String url, bool teste) async {
    http.Response response = await http.get(url);
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
}