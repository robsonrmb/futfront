import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/PatrocinadorModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PatrocinadorServiceFixo {

  String retornoPatrocinador = '{'
      '"id": 1, '
      '"nome": "Show do Milhão", '
      '"website": showdomilhao.com '
      '} ';

  String retornoPatrocinadores = '[ '
        '{'
          '"id": 1, '
          '"nome": "Show do Milhão", '
          '"website": showdomilhao.com '
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
    return retornoPatrocinadores;
  }

  String responseObjeto() {
    return retornoPatrocinadores;
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

  Future<PatrocinadorModel> _buscaPatrocinadorFixo() async {
    var dadosJson = json.decode(retornoPatrocinador);
    return PatrocinadorModel.fromJson(dadosJson); //.converteJson
  }

  Future<List<PatrocinadorModel>> _listaPatrocinadoresFixo() async {
    var dadosJson = json.decode(retornoPatrocinadores);
    List<PatrocinadorModel> lista = List();
    for (var registro in dadosJson) {
      PatrocinadorModel patrocinadorModel = PatrocinadorModel.fromJson(registro); //.converteJson
      lista.add(patrocinadorModel);
    }
    return lista;
  }

  inclui(var patrocinadorModel) async {
    _processaFixo();
  }

  atualiza(var patrocinadorModel) async {
    _processaFixo();
  }

  remove(String idPatrocinador) async {
    _processaFixo();
  }

  Future<List<PatrocinadorModel>> listaPatrocinadores() async {
    _listaPatrocinadoresFixo();
  }

  Future<List<PatrocinadorModel>> listaPorTorneios(String idTorneio) async {
    _listaPatrocinadoresFixo();
  }

}