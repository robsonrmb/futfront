import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/IntegranteModel.dart';
import 'package:com/br/com/futt/model/ParticipanteModel.dart';
import 'package:com/br/com/futt/model/TorneioModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TorneioService {

  inclui(var torneioModel) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_TORNEIOS}/adiciona",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(torneioModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  adicionaPatrocinador(var torneioPatrocinadorModel) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_TORNEIOS}/adicionapatrocinador",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(torneioPatrocinadorModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  adicionaParticipante(var participanteModel) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_TORNEIOS}/adicionaparticipante",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(participanteModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualiza(var torneioModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_TORNEIOS}/atualiza",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(torneioModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  informaCampeoes(var torneioModel) async {

    var torneioModel;
    http.Response response = await http.put(
        "${ConstantesRest.URL_TORNEIOS}/informacampeoes",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(torneioModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  alteraStatus(String idTorneio, String status) async {

    var torneioModel;
    http.Response response = await http.put(
        "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/alterastatus",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(torneioModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  desativaTorneio(String idTorneio) async {

    var torneioModel;
    http.Response response = await http.put(
        "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/desativa",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(torneioModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  finalizaTorneio(String idTorneio) async {

    var torneioModel;
    http.Response response = await http.put(
        "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/finaliza",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(torneioModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  resetTorneio(String idTorneio) async {

    var torneioModel;
    http.Response response = await http.put(
        "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/reset",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(torneioModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  gravaRankingTorneio(String idTorneio) async {

    var torneioModel;
    http.Response response = await http.put(
        "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/gravaranking",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(torneioModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<TorneioModel> listaPorFiltros(var torneioModel) async {

    var torneioModel;
    http.Response response = await http.post(
        "${ConstantesRest.URL_TORNEIOS}/filtros",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(torneioModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<TorneioModel> listaPorStatus(var status) async {

    http.Response response = await http.get("${ConstantesRest.URL_TORNEIOS}/status?status=${status}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<TorneioModel> listaTorneioModel = dadosJson[""].map<TorneioModel>(
          (map){
            return TorneioModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<TorneioModel> listaTodos() async {

    http.Response response = await http.get("${ConstantesRest.URL_TORNEIOS}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<TorneioModel> listaTorneioModel = dadosJson[""].map<TorneioModel>(
              (map){
            return TorneioModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<ParticipanteModel> listaParticipantesDoTorneio(String idTorneio) async {

    http.Response response = await http.get("${ConstantesRest.URL_TORNEIOS}/participantes/${idTorneio}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<ParticipanteModel> listaParticipanteModel = dadosJson[""].map<ParticipanteModel>(
              (map){
            return ParticipanteModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}