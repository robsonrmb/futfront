import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AreaAvaliacaoModel.dart';
import 'package:com/br/com/futt/service/fixo/AreaAvaliacaoServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AreaAvaliacaoService {

  Future<List<AreaAvaliacaoModel>> listaAtivas({bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_AREA_AVALIACAO}/ativas");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        AreaAvaliacaoServiceFixo serviceFixo = AreaAvaliacaoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<AreaAvaliacaoModel> lista = List();
      for (var registro in dadosJson) {
        AreaAvaliacaoModel areaAvaliacaoModel = AreaAvaliacaoModel.fromJson(
            registro); //.converteJson
        lista.add(areaAvaliacaoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}