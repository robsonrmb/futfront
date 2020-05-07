import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/PatrocinadorModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PatrocinadorService {

  inclui(var patrocinadorModel) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_PATROCINADOR}/adiciona",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(patrocinadorModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualiza(var patrocinadorModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_PATROCINADOR}/atualiza",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(patrocinadorModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  remove(String idPatrocinador) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_PATROCINADOR}/remove/${idPatrocinador}",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<PatrocinadorModel> listaPatrocinadores() async {

    http.Response response = await http.get("${ConstantesRest.URL_PATROCINADOR}/ativos");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<PatrocinadorModel> listaPatrocinadorModel = dadosJson[""].map<PatrocinadorModel>(
          (map){
            return PatrocinadorModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<PatrocinadorModel> listaPorTorneios(String idTorneio) async {

    http.Response response = await http.get("${ConstantesRest.URL_PATROCINADOR}/torneio/${idTorneio}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<PatrocinadorModel> listaPatrocinadorModel = dadosJson[""].map<PatrocinadorModel>(
              (map){
            return PatrocinadorModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}