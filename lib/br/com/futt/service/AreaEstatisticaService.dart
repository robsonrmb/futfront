import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AreaEstatisticaModel.dart';
import 'package:com/br/com/futt/service/fixo/AreaEstatisticaServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AreaEstatisticaService {

  Future<List<AreaEstatisticaModel>> listaAtivas({bool teste}) async {
    http.Response response = await http.get(
        "${ConstantesRest.URL_AREA_ESTATISTICA}/ativas");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
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