import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/EstatisticaModel.dart';
import 'package:com/br/com/futt/model/QuantidadeModel.dart';
import 'package:com/br/com/futt/model/RespPerformanceModel.dart';
import 'package:com/br/com/futt/model/RespQuantidadeModel.dart';
import 'package:com/br/com/futt/service/fixo/EstatisticaServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EstatisticaService {

  Future<RespQuantidadeModel> vitoriasDerrotas(String idUsuario, String ano, String id, String tipo, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/vitoriasederrotas/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return RespQuantidadeModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<RespQuantidadeModel> tiebreaks(String idUsuario, String ano, String idTorneio, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/tiebreaksvencidoseperdidos/usuario/${idUsuario}?ano=${ano}&&id=${idTorneio}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return RespQuantidadeModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<RespQuantidadeModel> pontos(String idUsuario, String ano, String id, String tipo, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/pontos/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return RespQuantidadeModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<RespQuantidadeModel> jogos(String idUsuario, String ano, String id, String tipo, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/jogos/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return RespQuantidadeModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<RespPerformanceModel> avaliativa(String idUsuario, String tipo, String ano, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/avaliativa/usuario/${idUsuario}/${tipo}?ano=${ano}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return RespPerformanceModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<QuantidadeModel> quantitativa(String idUsuario, String tipoestatistica, String ano, String id, String tipo, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/qtd/usuario/${idUsuario}/${tipoestatistica}?ano=${ano}&&id=${id}&&tipo=${tipo}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return QuantidadeModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<RespQuantidadeModel> qtdAceitas(String idUsuario, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/qtdavaliacoesaceitas/usuario/${idUsuario}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return RespQuantidadeModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<RespQuantidadeModel> qtdRecusadas(String idUsuario, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_ESTATISTICAS}/qtdavaliacoesrecusadas/usuario/${idUsuario}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return RespQuantidadeModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}