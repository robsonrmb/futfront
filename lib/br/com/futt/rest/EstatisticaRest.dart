import 'package:com/br/com/futt/model/QuantidadeModel.dart';
import 'package:com/br/com/futt/model/RespPerformanceModel.dart';
import 'package:com/br/com/futt/model/RespQuantidadeModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/EstatisticaServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EstatisticaRest extends BaseRest {

  Future<RespQuantidadeModel> processaHttpGetObjectRespQuantidade(String url, bool fixo) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return RespQuantidadeModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<RespPerformanceModel> processaHttpGetObjectRespPerformance(String url, bool fixo) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return RespPerformanceModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<QuantidadeModel> processaHttpGetObjectQuantidade(String url, bool fixo) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || (fixo != null && fixo == true)) {
      var dadosJson = json.decode(response.body);
      if (fixo != null && fixo == true) {
        EstatisticaServiceFixo serviceFixo = EstatisticaServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return QuantidadeModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }
}