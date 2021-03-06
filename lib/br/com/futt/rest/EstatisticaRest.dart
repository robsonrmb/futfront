import 'package:com/br/com/futt/model/QuantidadeModel.dart';
import 'package:com/br/com/futt/model/RespPerformanceModel.dart';
import 'package:com/br/com/futt/model/RespQuantidadeModel.dart';
import 'package:com/br/com/futt/model/RespostaModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/EstatisticaServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EstatisticaRest extends BaseRest {

  Future<List<RespQuantidadeModel>> processaHttpGetListRespQuantidade(String url, int tipo, bool fixo) async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var dadosJson = json.decode(response.body);
        return _parseListaRespQuantidadeModel(dadosJson);

      } else {
        throw Exception('Failed to load Tipo Torneio!!!');
      }
    } on Exception catch (exception) {
      print(exception.toString());
      if (fixo != null && fixo == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        var dadosJson = json.decode(serviceFixo.responseListaQuantidade(tipo));
        return _parseListaRespQuantidadeModel(dadosJson);

      } else {
        throw Exception('Falha ao listar resultados!!!');
      }

    } catch (error) {
      print(error.toString());
    }

  }

  Future<List<RespPerformanceModel>> processaHttpGetListRespPerformance(String url, int tipo, bool fixo) async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var dadosJson = json.decode(response.body);
        return _parseListaRespPerformanceModel(dadosJson);

      } else {
        throw Exception('Failed to load Tipo Torneio!!!');
      }
    } on Exception catch (exception) {
      print(exception.toString());
      if (fixo != null && fixo == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        var dadosJson = json.decode(serviceFixo.responseListaPerformance(tipo));
        return _parseListaRespPerformanceModel(dadosJson);

      } else {
        throw Exception('Falha ao listar resultados!!!');
      }

    } catch (error) {
      print(error.toString());
    }

  }

  Future<List<QuantidadeModel>> processaHttpGetListQuantidade(String url, int tipo, bool fixo) async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var dadosJson = json.decode(response.body);
        return _parseListaQuantidadeModel(dadosJson);

      } else {
        throw Exception('Failed to load Tipo Torneio!!!');
      }
    } on Exception catch (exception) {
      print(exception.toString());
      if (fixo != null && fixo == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        var dadosJson = json.decode(serviceFixo.responseQuantidade(tipo));
        return _parseListaQuantidadeModel(dadosJson);

      } else {
        throw Exception('Falha ao listar resultados!!!');
      }

    } catch (error) {
      print(error.toString());
    }

  }

  Future<List<RespostaModel>> processaHttpGetListResposta(String url, int tipo, bool fixo) async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var dadosJson = json.decode(response.body);
        return _parseListaRespostaModel(dadosJson);

      } else {
        throw Exception('Failed to load Tipo Torneio!!!');
      }
    } on Exception catch (exception) {
      print(exception.toString());
      if (fixo != null && fixo == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        var dadosJson = json.decode(serviceFixo.responseEstatisticas(tipo));
        return _parseListaRespostaModel(dadosJson);

      } else {
        throw Exception('Falha ao listar resultados!!!');
      }

    } catch (error) {
      print(error.toString());
    }

  }

  List<RespQuantidadeModel> _parseListaRespQuantidadeModel(dadosJson) {
    List<RespQuantidadeModel> lista = List();
    for (var registro in dadosJson) {
      RespQuantidadeModel resultadoModel = RespQuantidadeModel.fromJson(
          registro); //.converteJson
      lista.add(resultadoModel);
    }
    return lista;
  }

  List<RespPerformanceModel> _parseListaRespPerformanceModel(dadosJson) {
    List<RespPerformanceModel> lista = List();
    for (var registro in dadosJson) {
      RespPerformanceModel resultadoModel = RespPerformanceModel.fromJson(
          registro); //.converteJson
      lista.add(resultadoModel);
    }
    return lista;
  }

  List<QuantidadeModel> _parseListaQuantidadeModel(dadosJson) {
    List<QuantidadeModel> lista = List();
    for (var registro in dadosJson) {
      QuantidadeModel resultadoModel = QuantidadeModel.fromJson(
          registro); //.converteJson
      lista.add(resultadoModel);
    }
    return lista;
  }

  List<RespostaModel> _parseListaRespostaModel(dadosJson) {
    List<RespostaModel> lista = List();
    for (var registro in dadosJson) {
      RespostaModel resultadoModel = RespostaModel.fromJson(
          registro); //.converteJson
      lista.add(resultadoModel);
    }
    return lista;
  }
}