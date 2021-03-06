import 'package:com/br/com/futt/model/ParticipanteModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/ParticipanteServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ParticipanteRest extends BaseRest {

  Future<List<ParticipanteModel>> processaHttpGetList(String url, bool fixo) async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var dadosJson = json.decode(response.body);
        return _parseListaParticipanteModel(dadosJson);

      } else {
        throw Exception('Failed to load Tipo Torneio!!!');
      }
    } on Exception catch (exception) {
      print(exception.toString());
      if (fixo != null && fixo == true) {
        ParticipanteServiceFixo serviceFixo = ParticipanteServiceFixo();
        var dadosJson = json.decode(serviceFixo.responseLista());
        return _parseListaParticipanteModel(dadosJson);

      } else {
        throw Exception('Falha ao listar participantes!!!');
      }

    } catch (error) {
      print(error.toString());
    }

  }

  List<ParticipanteModel> _parseListaParticipanteModel(dadosJson) {
    List<ParticipanteModel> lista = List();
    for (var registro in dadosJson) {
      ParticipanteModel resultadoModel = ParticipanteModel.fromJson(
          registro); //.converteJson
      lista.add(resultadoModel);
    }
    return lista;
  }
}