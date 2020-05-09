import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AvaliacaoModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AvaliacaoServiceFixo {

  String retornoAvaliacao = '{'
      '"id: 1,'
      '"idUsuario": 1,'
      '"idAvaliado": 1,'
      '"data": null,'
      '"status": "1",'
      '"respostaPe": "1",'
      '"respostaLevantada": "1",'
      '"respostaRecepcao": "1",'
      '"respostaAtaque": "1",'
      '"respostaDefesa": "1",'
      '"respostaShark": "1",'
      '"respostaFintaPescoco": "1",'
      '"respostaFintaOmbro": "1",'
      '"respostaConstante": "1",'
      '"respostaVariacao": "1",'
      '"respostaInteligente": "1",'
      '"respostaTatico": "1",'
      '"respostaCompetitivo": "1",'
      '"respostaPreparo": "1",'
      '"nomeUsuario": "Robson",'
      '"nomeAvaliado": "LEVANTADA",'
    '}';

  String retornoAvaliacoes = '['
      '{'
        '"id: 1,'
        '"idUsuario": 1,'
        '"idAvaliado": 1,'
        '"data": null,'
        '"status": "1",'
        '"respostaPe": "1",'
        '"respostaLevantada": "1",'
        '"respostaRecepcao": "1",'
        '"respostaAtaque": "1",'
        '"respostaDefesa": "1",'
        '"respostaShark": "1",'
        '"respostaFintaPescoco": "1",'
        '"respostaFintaOmbro": "1",'
        '"respostaConstante": "1",'
        '"respostaVariacao": "1",'
        '"respostaInteligente": "1",'
        '"respostaTatico": "1",'
        '"respostaCompetitivo": "1",'
        '"respostaPreparo": "1",'
        '"nomeUsuario": "Robson",'
        '"nomeAvaliado": "LEVANTADA"'
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
    return retornoAvaliacoes;
  }

  String responseObjeto() {
    return retornoAvaliacao;
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

  Future<AvaliacaoModel> _buscaAreaAvaliacaoFixo() async {
    var dadosJson = json.decode(retornoAvaliacao);
    return AvaliacaoModel.fromJson(dadosJson); //.converteJson
  }

  Future<List<AvaliacaoModel>> _listaAvaliacoesFixo() async {
    var dadosJson = json.decode(retornoAvaliacoes);
    List<AvaliacaoModel> lista = List();
    for (var registro in dadosJson) {
      AvaliacaoModel avaliacaoModel = AvaliacaoModel.fromJson(registro); //.converteJson
      lista.add(avaliacaoModel);
    }
    return lista;
  }

  inclui(var AvaliacaoModel) async {
    _processaFixo();
  }

  aceita(var AvaliacaoModel) async {
    _processaFixo();
  }

  recusa(var AvaliacaoModel) async {
    _processaFixo();
  }

  Future<List<AvaliacaoModel>> listaRecebidasPendentes(String idUsuario) async {
    return _listaAvaliacoesFixo();
  }

  Future<List<AvaliacaoModel>> listaRecebidas(String idUsuario, String status) async {
    return _listaAvaliacoesFixo();
  }

}