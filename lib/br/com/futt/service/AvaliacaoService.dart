import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AvaliacaoModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AvaliacaoService {

  inclui(var AvaliacaoModel) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_AVALIACOES}/add",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(AvaliacaoModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  aceita(var AvaliacaoModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_AVALIACOES}/aceita",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(AvaliacaoModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  recusa(var AvaliacaoModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_AVALIACOES}/recusa",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(AvaliacaoModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<AvaliacaoModel> listaRecebidasPendentes(String idUsuario) async {

    http.Response response = await http.get("${ConstantesRest.URL_AVALIACOES}/recebidas/pendentes?usuario=${idUsuario}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<AvaliacaoModel> listaAvaliacaoModel = dadosJson[""].map<AvaliacaoModel>(
          (map){
            return AvaliacaoModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<AvaliacaoModel> listaRecebidas(String idUsuario, String status) async {

    http.Response response = await http.get("${ConstantesRest.URL_AVALIACOES}/recebidas?usuario=${idUsuario}&status=${status}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<AvaliacaoModel> listaAvaliacaoModel = dadosJson[""].map<AvaliacaoModel>(
              (map){
            return AvaliacaoModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}