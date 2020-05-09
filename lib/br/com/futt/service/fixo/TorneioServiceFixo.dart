import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/ParticipanteModel.dart';
import 'package:com/br/com/futt/model/TorneioModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TorneioServiceFixo {

  String retornoTorneio = '{ '
        '"id": 4, '
        '"nome": "TAFC 1", '
        '"status": 1, '
        '"pais": "Brasil", '
        '"estado": null, '
        '"cidade": "Rio de Janeiro", '
        '"local": "Leblon", '
        '"dataInicio": "2020-07-01", '
        '"dataFim": "2020-07-03", '
        '"ano": 0, '
        '"qtdDuplas": 8, '
        '"genero": "M", '
        '"info": null, '
        '"usuarioAdministrador": 1, '
        '"atletaCampeao1": 0, '
        '"atletaCampeao2": 0, '
        '"atletaCampeao3": 0, '
        '"atletaCampeao4": 0, '
        '"atletaCampeao5": 0, '
        '"atletaViceCampeao1": 0, '
        '"atletaViceCampeao2": 0, '
        '"atletaViceCampeao3": 0, '
        '"atletaViceCampeao4": 0, '
        '"atletaViceCampeao5": 0, '
        '"atletaTerceiroLugar1": 0, '
        '"atletaTerceiroLugar2": 0, '
        '"atletaTerceiroLugar3": 0, '
        '"atletaTerceiroLugar4": 0, '
        '"atletaTerceiroLugar5": 0, '
        '"tipo": { '
          '"id": 2, '
          '"nome": "Eliminatória simples", '
          '"descricao": null,  '
          '"geracaoJogos": "S" '
        '}, '
        '"entidade": null, '
        '"classificacao": { '
          '"id": 1, '
          '"nome": '
          '"Profissional", '
          '"descricao": "" '
        '}, '
        '"rankingEntidade": null, '
        '"idTipoTorneio": 0, '
        '"idEntidade": 0, '
        '"idClassificacao": 0, '
        '"idRankingEntidade": 0 '
      '} ';

  String retornoTorneios = '[ '
        '{ '
          '"id": 4, '
          '"nome": "TAFC 1", '
          '"status": 1, '
          '"pais": "Brasil", '
          '"estado": null, '
          '"cidade": "Rio de Janeiro", '
          '"local": "Leblon", '
          '"dataInicio": "2020-07-01", '
          '"dataFim": "2020-07-03", '
          '"ano": 0, '
          '"qtdDuplas": 8, '
          '"genero": "M", '
          '"info": null, '
          '"usuarioAdministrador": 1, '
          '"atletaCampeao1": 0, '
          '"atletaCampeao2": 0, '
          '"atletaCampeao3": 0, '
          '"atletaCampeao4": 0, '
          '"atletaCampeao5": 0, '
          '"atletaViceCampeao1": 0, '
          '"atletaViceCampeao2": 0, '
          '"atletaViceCampeao3": 0, '
          '"atletaViceCampeao4": 0, '
          '"atletaViceCampeao5": 0, '
          '"atletaTerceiroLugar1": 0, '
          '"atletaTerceiroLugar2": 0, '
          '"atletaTerceiroLugar3": 0, '
          '"atletaTerceiroLugar4": 0, '
          '"atletaTerceiroLugar5": 0, '
          '"tipo": { '
            '"id": 2, '
            '"nome": "Eliminatória simples", '
            '"descricao": null,  '
            '"geracaoJogos": "S" '
          '}, '
          '"entidade": null, '
          '"classificacao": { '
            '"id": 1, '
            '"nome": '
            '"Profissional", '
            '"descricao": "" '
          '}, '
          '"rankingEntidade": null, '
          '"idTipoTorneio": 0, '
          '"idEntidade": 0, '
          '"idClassificacao": 0, '
          '"idRankingEntidade": 0 '
        '} '
      ']';

  String retornoParticipante = '{ '
        '"idUsuario": 1, '
        '"nome": "Robson", '
        '"nomeFoto": null, '
        '"pais": "Brasil", '
        '"estado": "DF", '
        '"idTorneio": 0 '
      '} ';

  String retornoParticipantes = '[ '
        '{ '
          '"idUsuario": 1, '
          '"nome": "Robson", '
          '"nomeFoto": null, '
          '"pais": "Brasil", '
          '"estado": "DF", '
          '"idTorneio": 0 '
        '}, '
        '{ '
          '"idUsuario": 2, '
          '"nome": "Pedro", '
          '"nomeFoto": null, '
          '"pais": "Brasil", '
          '"estado": "DF", '
          '"idTorneio": 0 '
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
    return retornoTorneios;
  }

  String responseObjeto() {
    return retornoTorneio;
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

  inclui(var torneioModel) async {
    _processaFixo();
  }

  adicionaPatrocinador(var torneioPatrocinadorModel) async {
    _processaFixo();
  }

  adicionaParticipante(var participanteModel) async {
    _processaFixo();
  }

  atualiza(var torneioModel) async {
    _processaFixo();
  }

  informaCampeoes(var torneioModel) async {
    _processaFixo();
  }

  alteraStatus(String idTorneio, String status) async {
    _processaFixo();
  }

  desativaTorneio(String idTorneio) async {
    _processaFixo();
  }

  finalizaTorneio(String idTorneio) async {
    _processaFixo();
  }

  resetTorneio(String idTorneio) async {
    _processaFixo();
  }

  gravaRankingTorneio(String idTorneio) async {
    _processaFixo();
  }

  Future<List<TorneioModel>> _listaTorneiosFixo() async {
    var dadosJson = json.decode(retornoTorneios);
    List<TorneioModel> lista = List();
    for (var registro in dadosJson) {
      TorneioModel torneioModel = TorneioModel.fromJson(registro); //.converteJson
      lista.add(torneioModel);
    }
    return lista;
  }

  Future<List<ParticipanteModel>> _listaParticipantesFixo() async {
    var dadosJson = json.decode(retornoParticipantes);
    List<ParticipanteModel> lista = List();
    for (var registro in dadosJson) {
      ParticipanteModel participanteModel = ParticipanteModel.fromJson(registro); //.converteJson
      lista.add(participanteModel);
    }
    return lista;
  }

  Future<List<TorneioModel>> listaPorFiltros(var torneioModel) async {
    return _listaTorneiosFixo();
  }

  Future<List<TorneioModel>> listaPorStatus(var status) async {
    return _listaTorneiosFixo();
  }

  Future<List<TorneioModel>> listaTodos() async {
    return _listaTorneiosFixo();
  }

  Future<List<ParticipanteModel>> listaParticipantesDoTorneio(String idTorneio) async {
    return _listaParticipantesFixo();
  }

}