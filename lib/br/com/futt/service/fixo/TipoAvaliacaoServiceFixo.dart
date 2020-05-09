import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/TipoAvaliacaoModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TipoAvaliacaoServiceFixo {

  String retornoTipo = '{'
        '"id": 1, '
        '"nome": "LEVANTADA", '
        '"descricao": "LEVANTADA", '
        '"listaTipoRespostasAvaliacaoDTO": []'
      '}';

  String retornoTipos = '['
        '{'
          '"id": 1, '
          '"nome": "LEVANTADA", '
          '"descricao": "LEVANTADA", '
          '"listaTipoRespostasAvaliacaoDTO": []'
        '},'
          '{"id": 2, '
          '"nome": "RECEPCAO", '
          '"descricao": "RECEPÇÃO", '
          '"listaTipoRespostasAvaliacaoDTO": [] '
        '} '
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
    return retornoTipos;
  }

  String responseObjeto() {
    return retornoTipo;
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

  Future<TipoAvaliacaoModel> _buscaTipoAvaliacaoFixo() async {
    var dadosJson = json.decode(retornoTipo);
    return TipoAvaliacaoModel.fromJson(dadosJson); //.converteJson
  }

  Future<List<TipoAvaliacaoModel>> _listaTiposDeAvaliacaoFixo() async {
    var dadosJson = json.decode(retornoTipos);
    List<TipoAvaliacaoModel> lista = List();
    for (var registro in dadosJson) {
      TipoAvaliacaoModel tipoAvaliacaoModel = TipoAvaliacaoModel.fromJson(registro); //.converteJson
      lista.add(tipoAvaliacaoModel);
    }
    return lista;
  }

  Future<TipoAvaliacaoModel> getAvaliacao(String id) async {
    return _buscaTipoAvaliacaoFixo();
  }

  Future<List<TipoAvaliacaoModel>> listaPorNome(String nome) async {
    return _listaTiposDeAvaliacaoFixo();
  }

  Future<List<TipoAvaliacaoModel>> listaPorParteDoNome(String nome) async {
    return _listaTiposDeAvaliacaoFixo();
  }

  Future<List<TipoAvaliacaoModel>> listaFind(String nome) async {
    return _listaTiposDeAvaliacaoFixo();
  }

  Future<List<TipoAvaliacaoModel>> listaTodos() async {
    return _listaTiposDeAvaliacaoFixo();
  }

}