import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/TipoTorneioModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TipoTorneioService {

  Future<TipoTorneioModel> listaTodos() async {

    http.Response response = await http.get("${ConstantesRest.URL_TIPO_TORNEIO}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<TipoTorneioModel> listaTipoTorneioModel = dadosJson[""].map<TipoTorneioModel>(
          (map){
            return TipoTorneioModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}