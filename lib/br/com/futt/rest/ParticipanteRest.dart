import 'package:com/br/com/futt/model/ParticipanteModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/ParticipanteServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ParticipanteRest extends BaseRest {

  Future<List<ParticipanteModel>> processaHttpGetList(String url, bool fixo) async {
    ParticipanteServiceFixo serviceFixo = ParticipanteServiceFixo();
    var dadosJson = json.decode(serviceFixo.responseLista());
    List<ParticipanteModel> lista = List();
    for (var registro in dadosJson) {
      ParticipanteModel participanteModel = ParticipanteModel.fromJson(
          registro); //.converteJson
      lista.add(participanteModel);
    }
    return lista;
    /*
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        ParticipanteServiceFixo serviceFixo = ParticipanteServiceFixo();
        dadosJson = json.decode(serviceFixo.responseLista());
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
     */
  }
}