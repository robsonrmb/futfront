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
        '"idJogador10": 0, '
        '"nomeJogador1": "", '
        '"nomeJogador2": "", '
        '"nomeJogador3": "", '
        '"nomeJogador4": "", '
        '"nomeJogador5": "", '
        '"nomeJogador6": "", '
        '"nomeJogador7": "", '
        '"nomeJogador8": "", '
        '"nomeJogador9": "", '
        '"nomeJogador10": "", '
        '"apelidoJogador1": "", '
        '"apelidoJogador2": "", '
        '"apelidoJogador3": "", '
        '"apelidoJogador4": "", '
        '"apelidoJogador5": "", '
        '"apelidoJogador6": "", '
        '"apelidoJogador7": "", '
        '"apelidoJogador8": "", '
        '"apelidoJogador9": "", '
        '"apelidoJogador10": ""'
      '}';

  String retornoJogosOitavas = '[ '
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
        '}, '
        '{'
          '"id": 2, '
          '"numero": 2, '
          '"pontuacao1": 0, '
          '"pontuacao2": 0, '
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
        '}, '
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
        '},'
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
        '},'
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
        '} '
      ']';

  String retornoJogosQuartas = '[ '
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
        '}, '
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
          '} '
      ']';

  String retornoJogosSemi = '[ '
        '{'
          '"id": 1, '
          '"numero": 1, '
          '"pontuacao1": 18, '
          '"pontuacao2": 16, '
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
        '}, '
        '{'
          '"id": 2, '
          '"numero": 2, '
          '"pontuacao1": 7, '
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
        '} '
      ']';

  String retornoJogosFinal = '[ '
        '{'
          '"id": 1, '
          '"numero": 1, '
          '"pontuacao1": 18, '
          '"pontuacao2": 16, '
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
        '} '
      ']';

  String retornoJogoFinalAtualizado = '[ '
        '{'
          '"id": 1, '
          '"numero": 1, '
          '"pontuacao1": 8, '
          '"pontuacao2": 18, '
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
          '"idJogador10": 0, '
          '"nomeJogador1": "Robson", '
          '"nomeJogador2": "Pedro", '
          '"nomeJogador3": "Iuca", '
          '"nomeJogador4": "Lucas", '
          '"nomeJogador5": "", '
          '"nomeJogador6": "", '
          '"nomeJogador7": "", '
          '"nomeJogador8": "", '
          '"nomeJogador9": "", '
          '"nomeJogador10": "", '
          '"apelidoJogador1": "Robinho", '
          '"apelidoJogador2": "Pedrinho", '
          '"apelidoJogador3": "Iuquiba", '
          '"apelidoJogador4": "Luquinhas", '
          '"apelidoJogador5": "", '
          '"apelidoJogador6": "", '
          '"apelidoJogador7": "", '
          '"apelidoJogador8": "", '
          '"apelidoJogador9": "", '
          '"apelidoJogador10": ""'
        '} '
      ']';

  String responseLista(int idFase) {
    if (idFase == 10) {
      return retornoJogosOitavas;
    }else if (idFase == 11) {
      return retornoJogosQuartas;
    }else if (idFase == 12) {
      return retornoJogosSemi;
    }else{
      return retornoJogosFinal;
    }
  }

  String responseListaPlacarAtualizado(int idFase) {
    if (idFase == 10) {
      return retornoJogosOitavas;
    }else if (idFase == 11) {
      return retornoJogosQuartas;
    }else if (idFase == 12) {
      return retornoJogosSemi;
    }else{
      return retornoJogoFinalAtualizado;
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