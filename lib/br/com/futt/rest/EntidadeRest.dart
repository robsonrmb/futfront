import 'package:com/br/com/futt/model/EntidadeModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/EntidadeServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EntidadeRest extends BaseRest {

  Future<List<EntidadeModel>> processaHttpGetList(String url, bool fixo) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        EntidadeServiceFixo serviceFixo = EntidadeServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<EntidadeModel> lista = List();
      for (var registro in dadosJson) {
        EntidadeModel entidadeModel = EntidadeModel.fromJson(
            registro); //.converteJson
        lista.add(entidadeModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}