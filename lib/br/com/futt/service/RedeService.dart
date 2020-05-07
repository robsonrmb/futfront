import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/IntegranteModel.dart';
import 'package:com/br/com/futt/model/RedeModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RedeService {

  inclui(var redeModel) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_REDE}/adiciona",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(redeModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualizaPatrocinador(var redePatrocinadorModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_REDE}/adicionapatrocinador",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(redePatrocinadorModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualizaIntegrante(var integranteModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_REDE}/adicionaintegrante",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(integranteModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualiza(var redeModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_REDE}/atualiza",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(redeModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  alteraStatus(String idRede, String status) async {

    var redeModel;
    http.Response response = await http.put(
        "${ConstantesRest.URL_REDE}/${idRede}/alterastatus/${status}",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(redeModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  desativaRede(String idRede) async {

    var redeModel;
    http.Response response = await http.put(
        "${ConstantesRest.URL_REDE}/${idRede}/desativa",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(redeModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<RedeModel> listaPorFiltros(var redeModel) async {

    var redeModel;
    http.Response response = await http.post(
        "${ConstantesRest.URL_REDE}/filtros",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(redeModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<RedeModel> listaPorStatus(var status) async {

    http.Response response = await http.get("${ConstantesRest.URL_REDE}/status?status=${status}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<RedeModel> listaRedeModel = dadosJson[""].map<RedeModel>(
          (map){
            return RedeModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<RedeModel> listaTodos() async {

    http.Response response = await http.get("${ConstantesRest.URL_REDE}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<RedeModel> listaRedeModel = dadosJson[""].map<RedeModel>(
              (map){
            return RedeModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<IntegranteModel> listaIntegrantesDaRede(String idRede) async {

    http.Response response = await http.get("${ConstantesRest.URL_REDE}/integrantes/${idRede}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<IntegranteModel> listaIntegranteModel = dadosJson[""].map<IntegranteModel>(
              (map){
            return IntegranteModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}