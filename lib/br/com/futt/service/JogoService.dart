import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/JogoModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JogoService {

  inclui(var jogoModel) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_JOGO}/adiciona",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(jogoModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualiza(var jogoModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_JOGO}/atualiza",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(jogoModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualizaPlacar(var jogoModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_JOGO}/atualizaplacar",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(jogoModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  informaVencedor(var vencedorModel ) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_JOGO}/informavencedor",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(vencedorModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  remove(String idJogo) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_JOGO}/remove/${idJogo}",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<JogoModel> listaPorUsuario() async {

    http.Response response = await http.get("${ConstantesRest.URL_JOGO}/ativasdousuariologado");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<JogoModel> listaJogoModel = dadosJson[""].map<JogoModel>(
          (map){
            return JogoModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<JogoModel> listaPorTorneios(String idTorneio) async {

    http.Response response = await http.get("${ConstantesRest.URL_JOGO}/torneios/${idTorneio}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<JogoModel> listaJogoModel = dadosJson[""].map<JogoModel>(
              (map){
            return JogoModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}