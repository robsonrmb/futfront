import 'package:com/br/com/futt/model/JogoModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/JogoServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JogoRest extends BaseRest {

  Future<List<JogoModel>> processaHttpGetList(String url, bool fixo) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        JogoServiceFixo serviceFixo = JogoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<JogoModel> lista = List();
      for (var registro in dadosJson) {
        JogoModel jogoModel = JogoModel.fromJson(
            registro); //.converteJson
        lista.add(jogoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }
}