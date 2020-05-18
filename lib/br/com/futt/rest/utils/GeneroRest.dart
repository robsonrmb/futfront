import 'package:com/br/com/futt/model/utils/GeneroModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/utils/GeneroServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GeneroRest extends BaseRest {

  Future<List<GeneroModel>> processaHttpGetList() async {
    GeneroServiceFixo serviceFixo = GeneroServiceFixo();
    var dadosJson = json.decode(serviceFixo.responseLista());
    return _parseListaGeneroModel(dadosJson);
  }

  List<GeneroModel> _parseListaGeneroModel(dadosJson) {
    List<GeneroModel> lista = List();
    for (var registro in dadosJson) {
      GeneroModel resultadoModel = GeneroModel.fromJson(
          registro); //.converteJson
      lista.add(resultadoModel);
    }
    return lista;
  }

}