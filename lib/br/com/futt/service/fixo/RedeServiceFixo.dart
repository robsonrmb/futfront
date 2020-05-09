import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/IntegranteModel.dart';
import 'package:com/br/com/futt/model/RedeModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RedeServiceFixo {

  String retornoRede = '{'
        '"id": 1, '
        '"nome": "Show do Milhão", '
        '"status": 1, '
        '"pais": "Brasil", '
        '"estado": null, '
        '"cidade": "Rio de Janeiro", '
        '"local": "Ipanema", '
        '"info": "Dados gerais da rede", '
        '"disponibilidade": "2020-06-01", '
        '"qtdIntegrantes": 50, '
        '"responsavelRede": 1, '
        '"responsavelJogos1": 0, '
        '"responsavelJogos2": 0, '
        '"responsavelJogos3": 0 '
      '} ';

  String retornoRedes = '[ '
      '{'
        '"id": 1, '
        '"nome": "Show do Milhão", '
        '"status": 1, '
        '"pais": "Brasil", '
        '"estado": null, '
        '"cidade": "Rio de Janeiro", '
        '"local": "Ipanema", '
        '"info": "Dados gerais da rede", '
        '"disponibilidade": "2020-06-01", '
        '"qtdIntegrantes": 50, '
        '"responsavelRede": 1, '
        '"responsavelJogos1": 0, '
        '"responsavelJogos2": 0, '
        '"responsavelJogos3": 0 '
      '} '
    ']';

  String retornoIntegrante = '{ '
        '"idUsuario": 1, '
        '"nome": "Robson", '
        '"nomeFoto": null, '
        '"pais": "Brasil", '
        '"estado": "DF", '
        '"idRede": 0 '
      '} ';

  String retornoIntegrantes = '[ '
        '{ '
          '"idUsuario": 1, '
          '"nome": "Robson", '
          '"nomeFoto": null, '
          '"pais": "Brasil", '
          '"estado": "DF", '
          '"idRede": 1 '
        '}, '
        '{ '
          '"idUsuario": 2, '
          '"nome": "Pedro", '
          '"nomeFoto": null, '
          '"pais": "Brasil", '
          '"estado": "DF", '
          '"idRede": 1 '
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

  String responseRedeLista() {
    return retornoRedes;
  }

  String responseRedeObjeto() {
    return retornoRedes;
  }

  String responseIntegrantesLista() {
    return retornoIntegrantes;
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

  Future<RedeModel> _buscaRedeFixo() async {
    var dadosJson = json.decode(retornoRede);
    return RedeModel.fromJson(dadosJson); //.converteJson
  }

  Future<List<RedeModel>> _listaRedesFixo() async {
    var dadosJson = json.decode(retornoRedes);
    List<RedeModel> lista = List();
    for (var registro in dadosJson) {
      RedeModel redeModel = RedeModel.fromJson(registro); //.converteJson
      lista.add(redeModel);
    }
    return lista;
  }

  Future<List<IntegranteModel>> _listaIntegrantesFixo() async {
    var dadosJson = json.decode(retornoRedes);
    List<IntegranteModel> lista = List();
    for (var registro in dadosJson) {
      IntegranteModel integranteModel = IntegranteModel.fromJson(registro); //.converteJson
      lista.add(integranteModel);
    }
    return lista;
  }

  inclui(var redeModel) async {
    _processaFixo();
  }

  atualizaPatrocinador(var redePatrocinadorModel) async {
    _processaFixo();
  }

  atualizaIntegrante(var integranteModel) async {
    _processaFixo();
  }

  atualiza(var redeModel) async {
    _processaFixo();
  }

  alteraStatus(String idRede, String status) async {
    _processaFixo();
  }

  desativaRede(String idRede) async {
    _processaFixo();
  }

  Future<List<RedeModel>> listaPorFiltros(var redeModel) async {
    _listaRedesFixo();
  }

  Future<List<RedeModel>> listaPorStatus(var status) async {
    _listaRedesFixo();
  }

  Future<List<RedeModel>> listaTodos() async {
    _listaRedesFixo();
  }

  Future<List<IntegranteModel>> listaIntegrantesDaRede(String idRede) async {
    _listaIntegrantesFixo();
  }

}