import 'package:com/br/com/futt/model/QuantidadeModel.dart';
import 'package:com/br/com/futt/model/RespPerformanceModel.dart';
import 'package:com/br/com/futt/model/RespQuantidadeModel.dart';
import 'dart:convert';

class EstatisticaServiceFixo {

  String retornoEstatistica = '{'
        '"valor1": 10, '
        '"valor2": 5, '
        '"valor3": 0, '
        '"valor4": 0, '
      '} ';

  String retornoPerformance = '{'
      '"ruim": 10, '
      '"regular": 5, '
      '"bom": 15, '
      '"otimo": 12, '
      '} ';

  String retornoQuantidade = '{'
      '"quantidade": 60 '
      '} ';

  String responseObjeto() {
    return retornoEstatistica;
  }

  Future<RespQuantidadeModel> _buscaEstatisticaFixo() async {
    var dadosJson = json.decode(retornoEstatistica);
    return RespQuantidadeModel.fromJson(dadosJson); //.converteJson
  }

  Future<QuantidadeModel> _buscaQuantidadeFixo() async {
    var dadosJson = json.decode(retornoEstatistica);
    return QuantidadeModel.fromJson(dadosJson); //.converteJson
  }

  Future<RespPerformanceModel> _buscaAvaliativaFixo() async {
    var dadosJson = json.decode(retornoEstatistica);
    return RespPerformanceModel.fromJson(dadosJson); //.converteJson
  }

  Future<RespQuantidadeModel> vitoriasDerrotas(String idUsuario, String ano, String id, String tipo) async {
    return _buscaEstatisticaFixo();
  }

  Future<RespQuantidadeModel> tiebreaks(String idUsuario, String ano, String idTorneio) async {
    return _buscaEstatisticaFixo();
  }

  Future<RespQuantidadeModel> pontos(String idUsuario, String ano, String id, String tipo) async {
    return _buscaEstatisticaFixo();
  }

  Future<RespQuantidadeModel> jogos(String idUsuario, String ano, String id, String tipo) async {
    return _buscaEstatisticaFixo();
  }

  Future<RespPerformanceModel> avaliativa(String idUsuario, String tipo, String ano) async {
    return _buscaAvaliativaFixo();
  }

  Future<QuantidadeModel> quantitativa(String idUsuario, String tipoestatistica, String ano, String id, String tipo) async {
    return _buscaQuantidadeFixo();
  }

  Future<RespQuantidadeModel> qtdAceitas(String idUsuario) async {
    return _buscaEstatisticaFixo();
  }

  Future<RespQuantidadeModel> qtdRecusadas(String idUsuario) async {
    return _buscaEstatisticaFixo();
  }

}