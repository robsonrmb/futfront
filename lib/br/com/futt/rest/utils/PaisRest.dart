import 'package:com/br/com/futt/model/utils/PaisModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/utils/PaisServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PaisRest extends BaseRest {

  Future<List<PaisModel>> processaHttpGetList() async {
    PaisServiceFixo serviceFixo = PaisServiceFixo();
    var dadosJson = json.decode(serviceFixo.responseLista());
    return _parseListaPaisModel(dadosJson);
  }

  List<PaisModel> _parseListaPaisModel(dadosJson) {
    List<PaisModel> lista = List();
    for (var registro in dadosJson) {
      PaisModel resultadoModel = PaisModel.fromJson(
          registro); //.converteJson
      lista.add(resultadoModel);
    }
    return lista;
  }

}