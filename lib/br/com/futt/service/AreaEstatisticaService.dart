import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AreaEstatisticaModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AreaEstatisticaService {

  Future<AreaEstatisticaModel> listaAtivas() async {

    http.Response response = await http.get("${ConstantesRest.URL_AREA_ESTATISTICA}/ativas");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<AreaEstatisticaModel> listaAreaEstatisticaModel = dadosJson[""].map<AreaEstatisticaModel>(
          (map){
            return AreaEstatisticaModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}