import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/JogoRedeModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JogoRedeService {

  inclui(var jogoRedeModel) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_JOGO_REDE}/adiciona",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(jogoRedeModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualiza(var jogoRedeModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_JOGO_REDE}/atualiza",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(jogoRedeModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualizaPlacar(var jogoRedeModel) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_JOGO_REDE}/atualizaplacar",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(jogoRedeModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  remove(String idJogo) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_JOGO_REDE}/remove/${idJogo}",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<JogoRedeModel> listaPorRede(String idRede) async {

    http.Response response = await http.get("${ConstantesRest.URL_JOGO_REDE}/rede/${idRede}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<JogoRedeModel> listaJogoRedeModel = dadosJson[""].map<JogoRedeModel>(
          (map){
            return JogoRedeModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }
}