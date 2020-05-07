import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AreaAvaliacaoModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AreaAvaliacaoService {

  Future<AreaAvaliacaoModel> listaAtivas() async {

    http.Response response = await http.get("${ConstantesRest.URL_AREA_AVALIACAO}/ativas");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<AreaAvaliacaoModel> listaAreaAvaliacaoModel = dadosJson[""].map<AreaAvaliacaoModel>(
          (map){
            return AreaAvaliacaoModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}