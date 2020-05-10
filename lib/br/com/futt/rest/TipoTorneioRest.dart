import 'package:com/br/com/futt/model/TipoTorneioModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/TipoTorneioServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TipoTorneioRest extends BaseRest {

  Future<List<TipoTorneioModel>> processaHttpGetList(String url, bool fixo) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        TipoTorneioServiceFixo serviceFixo = TipoTorneioServiceFixo();
        dadosJson = serviceFixo.response();
      }
      List<TipoTorneioModel> lista = List();
      for (var registro in dadosJson) {
        TipoTorneioModel tipoTorneioModel = TipoTorneioModel.fromJson(registro); //.converteJson
        lista.add(tipoTorneioModel);
      }
      return lista;

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }

  }
}