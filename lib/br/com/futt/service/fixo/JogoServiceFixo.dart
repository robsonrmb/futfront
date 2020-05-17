import 'package:com/br/com/futt/model/JogoModel.dart';
import 'dart:convert';

class JogoServiceFixo {

  String retornoJogo = '{'
        '"id": 1, '
        '"numero": 1, '
        '"pontuacao1": 18, '
        '"pontuacao2": 12, '
        '"data": null, '
        '"idFase": 1, '
        '"idTorneio": 4, '
        '"idJogador1": 1, '
        '"idJogador2": 2, '
        '"idJogador3": 3, '
        '"idJogador4": 4, '
        '"idJogador5": 0, '
        '"idJogador6": 0, '
        '"idJogador7": 0, '
        '"idJogador8": 0, '
        '"idJogador9": 0, '
        '"idJogador10": 0 '
      '}';

  String retornoJogos = '[ '
        '{'
          '"id": 1, '
          '"numero": 1, '
          '"pontuacao1": 18, '
          '"pontuacao2": 12, '
          '"data": null, '
          '"idFase": 1, '
          '"idTorneio": 4, '
          '"idJogador1": 1, '
          '"idJogador2": 2, '
          '"idJogador3": 3, '
          '"idJogador4": 4, '
          '"idJogador5": 0, '
          '"idJogador6": 0, '
          '"idJogador7": 0, '
          '"idJogador8": 0, '
          '"idJogador9": 0, '
          '"idJogador10": 0 '
        '} '
      ']';

  String responseLista() {
    return retornoJogos;
  }

  String responseObjeto() {
    return retornoJogo;
  }

  Future<JogoModel> _buscaJogoFixo() async {
    var dadosJson = json.decode(retornoJogo);
    return JogoModel.fromJson(dadosJson); //.converteJson
  }

  Future<List<JogoModel>> _listaJogosFixo() async {
    var dadosJson = json.decode(retornoJogos);
    List<JogoModel> lista = List();
    for (var registro in dadosJson) {
      JogoModel jogoModel = JogoModel.fromJson(registro); //.converteJson
      lista.add(jogoModel);
    }
    return lista;
  }

  Future<List<JogoModel>> listaPorUsuario() async {
    return _listaJogosFixo();
  }

  Future<List<JogoModel>> listaPorTorneios(String idTorneio) async {
    return _listaJogosFixo();
  }

}