import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AreaEstatisticaModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AreaEstatisticaServiceFixo {

  String retornoArea = '{'
      '"id": 1, '
      '"nome": "Estatísticas Técnicas", '
      '"listaTipoAvaliacaoDTO": []'
      '}';

  String retornoAreas = '['
        '{'
          '"id": 1, '
          '"nome": "Estatísticas Técnicas", '
          '"listaTipoEstatisticaDTO": []'
        '},'
        '{'
          '"id": 2, '
          '"nome": "Estatísticas Táticas", '
          '"listaTipoEstatisticaDTO": []'
        '}'
      ']';

  var envio = json.encode(
      {
        "userId": 200,
        "id": null,
        "title": "Título",
        "body": "Corpo da mensagem"
      }
  );

  String responseLista() {
    return retornoAreas;
  }

  String responseObjeto() {
    return retornoArea;
  }

  _processaFixo() async {
    http.Response response = await http.post(
        "${ConstantesRest.URL_BASE_TESTE}/posts",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: envio
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<AreaEstatisticaModel> _buscaAreaEstatisticaFixo() async {
    var dadosJson = json.decode(retornoArea);
    return AreaEstatisticaModel.fromJson(dadosJson); //.converteJson
  }

  Future<List<AreaEstatisticaModel>> _listaAreasEstatisticasFixo() async {
    var dadosJson = json.decode(retornoAreas);
    List<AreaEstatisticaModel> lista = List();
    for (var registro in dadosJson) {
      AreaEstatisticaModel areaEstatisticaModel = AreaEstatisticaModel.fromJson(registro); //.converteJson
      lista.add(areaEstatisticaModel);
    }
    return lista;
  }

  Future<List<AreaEstatisticaModel>> listaAtivas() async {
    return _listaAreasEstatisticasFixo();
  }

}