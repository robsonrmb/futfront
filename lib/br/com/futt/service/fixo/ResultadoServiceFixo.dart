import 'package:com/br/com/futt/model/ResultadoModel.dart';
import 'dart:convert';

class ResultadoServiceFixo {

  String retornoResultados = '['
        '{'
          '"idTorneio": 9,'
          '"tituloTorneio": "Copa Brasil de Futevolei",'
          '"dataTorneio": "10.08.2020",'
          '"paisTorneio": "Brasil",'
          '"cidadeTorneio": "Rio de Janeiro",'
          '"idJogador1": 1,'
          '"idJogador2": 2,'
          '"nomeJogador1": "Robson",'
          '"nomeJogador2": "Pedro",'
          '"apelidoJogador1": "Robinho",'
          '"apelidoJogador2": "Pedrinho"'
        '},'
        '{'
          '"idTorneio": 9,'
          '"tituloTorneio": "Copa Brasil de Futevolei",'
          '"dataTorneio": "10.08.2020",'
          '"paisTorneio": "Brasil",'
          '"cidadeTorneio": "Rio de Janeiro",'
          '"idJogador1": 3,'
          '"idJogador2": 4,'
          '"nomeJogador1": "Lucas",'
          '"nomeJogador2": "Iuca",'
          '"apelidoJogador1": "Luquibas",'
          '"apelidoJogador2": "Iuquiba"'
        '}'
      ']';

  String responseLista() {
    return retornoResultados;
  }

}