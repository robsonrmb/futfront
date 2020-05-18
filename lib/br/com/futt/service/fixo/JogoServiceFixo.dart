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

  String retornoJogosFase1 = '[ '
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
        '}, '
        '{'
          '"id": 2, '
          '"numero": 2, '
          '"pontuacao1": 10, '
          '"pontuacao2": 18, '
          '"data": null, '
          '"idFase": 1, '
          '"idTorneio": 4, '
          '"idJogador1": 5, '
          '"idJogador2": 6, '
          '"idJogador3": 7, '
          '"idJogador4": 8, '
          '"idJogador5": 0, '
          '"idJogador6": 0, '
          '"idJogador7": 0, '
          '"idJogador8": 0, '
          '"idJogador9": 0, '
          '"idJogador10": 0 '
        '} '
      ']';

  String retornoJogosFase2 = '[ '
        '{'
          '"id": 1, '
          '"numero": 1, '
          '"pontuacao1": 18, '
          '"pontuacao2": 12, '
          '"data": null, '
          '"idFase": 2, '
          '"idTorneio": 4, '
          '"idJogador1": 1, '
          '"idJogador2": 2, '
          '"idJogador3": 7, '
          '"idJogador4": 8, '
          '"idJogador5": 0, '
          '"idJogador6": 0, '
          '"idJogador7": 0, '
          '"idJogador8": 0, '
          '"idJogador9": 0, '
          '"idJogador10": 0 '
        '}, '
        '{'
          '"id": 2, '
          '"numero": 2, '
          '"pontuacao1": 10, '
          '"pontuacao2": 18, '
          '"data": null, '
          '"idFase": 2, '
          '"idTorneio": 4, '
          '"idJogador1": 3, '
          '"idJogador2": 4, '
          '"idJogador3": 5, '
          '"idJogador4": 6, '
          '"idJogador5": 0, '
          '"idJogador6": 0, '
          '"idJogador7": 0, '
          '"idJogador8": 0, '
          '"idJogador9": 0, '
          '"idJogador10": 0 '
        '} '
      ']';

  String responseLista(int idFase) {
    if (idFase%2 == 0) {
      return retornoJogosFase1;
    }else{
      return retornoJogosFase2;
    }
  }

  String responseObjeto() {
    return retornoJogo;
  }

  Future<JogoModel> _buscaJogoFixo() async {
    var dadosJson = json.decode(retornoJogo);
    return JogoModel.fromJson(dadosJson); //.converteJson
  }

}