import 'package:com/br/com/futt/model/AvaliacaoModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/AvaliacaoServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AvaliacaoRest extends BaseRest {

  Future<List<AvaliacaoModel>> processaHttpGetList(String url, bool fixo) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
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