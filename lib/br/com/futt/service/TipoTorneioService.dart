import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/TipoTorneioModel.dart';
import 'package:com/br/com/futt/service/fixo/TipoTorneioServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TipoTorneioService {

  Future<List<TipoTorneioModel>> listaTodos({bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_TORNEIO}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        TipoTorneioServiceFixo serviceFixo = TipoTorneioServiceFixo();
        dadosJson = serviceFixo.response();
      }
      List<TipoTorneioModel> lista = List();
      for (var registro in dadosJson) {
        TipoTorneioModel tipoTorneioModel = TipoTorneioModel.fromJson(registro); //.converteJson
        lista.add(tipoTorneioModel);
      }
      return lista;

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}