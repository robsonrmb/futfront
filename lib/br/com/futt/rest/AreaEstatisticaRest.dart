import 'package:com/br/com/futt/model/AreaAvaliacaoModel.dart';
import 'package:com/br/com/futt/model/AreaEstatisticaModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/AreaAvaliacaoServiceFixo.dart';
import 'package:com/br/com/futt/service/fixo/AreaEstatisticaServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AreaEstatisticaRest extends BaseRest {

  Future<List<AreaEstatisticaModel>> processaHttpGetList(String url, bool fixo) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        AreaEstatisticaServiceFixo serviceFixo = AreaEstatisticaServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<AreaEstatisticaModel> lista = List();
      for (var registro in dadosJson) {
        AreaEstatisticaModel areaEstatisticaModel = AreaEstatisticaModel
            .fromJson(
            registro); //.converteJson
        lista.add(areaEstatisticaModel);
      }
      return lista;
    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}