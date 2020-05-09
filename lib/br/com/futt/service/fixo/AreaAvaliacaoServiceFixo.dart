import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AreaAvaliacaoModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AreaAvaliacaoServiceFixo {

  String retornoArea = '{'
        '"id": 1, '
        '"nome": "Avaliações Técnicas", '
        '"listaTipoAvaliacaoDTO": []'
      '}';

  String retornoAreas = '['
        '{'
          '"id": 1, '
          '"nome": "Avaliações Técnicas", '
          '"listaTipoAvaliacaoDTO": []'
        '},'
        '{'
          '"id": 2, '
          '"nome": "Avaliações Táticas", '
          '"listaTipoAvaliacaoDTO": []'
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

  Future<AreaAvaliacaoModel> _buscaAreaAvaliacaoFixo() async {
    var dadosJson = json.decode(retornoArea);
    return AreaAvaliacaoModel.fromJson(dadosJson); //.converteJson
  }

  Future<List<AreaAvaliacaoModel>> _listaAreasDeAvaliacaoFixo() async {
    var dadosJson = json.decode(retornoAreas);
    List<AreaAvaliacaoModel> lista = List();
    for (var registro in dadosJson) {
      AreaAvaliacaoModel areaAvaliacaoModel = AreaAvaliacaoModel.fromJson(registro); //.converteJson
      lista.add(areaAvaliacaoModel);
    }
    return lista;
  }

  Future<List<AreaAvaliacaoModel>> listaAtivas() async {
    return _listaAreasDeAvaliacaoFixo();
  }

}