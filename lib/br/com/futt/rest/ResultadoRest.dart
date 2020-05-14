import 'package:com/br/com/futt/model/ResultadoModel.dart';
import 'package:com/br/com/futt/model/ResultadoModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/ResultadoServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ResultadoRest extends BaseRest {

  Future<List<ResultadoModel>> processaHttpGetList(String url, bool fixo) async {
    ResultadoServiceFixo serviceFixo = ResultadoServiceFixo();
    var dadosJson = json.decode(serviceFixo.responseLista());
    List<ResultadoModel> lista = List();
    for (var registro in dadosJson) {
      ResultadoModel resultadoModel = ResultadoModel.fromJson(
          registro); //.converteJson
      lista.add(resultadoModel);
    }
    return lista;
    /*
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        ResultadoServiceFixo serviceFixo = ResultadoServiceFixo();
        dadosJson = json.decode(serviceFixo.responseLista());
      }
      List<ResultadoModel> lista = List();
      for (var registro in dadosJson) {
        ResultadoModel resultadoModel = ResultadoModel.fromJson(
            registro); //.converteJson
        lista.add(resultadoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
     */
  }
}