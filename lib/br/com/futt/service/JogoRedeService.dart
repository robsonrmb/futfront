import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/JogoRedeModel.dart';
import 'package:com/br/com/futt/service/fixo/JogoRedeServiceFixo.dart';
import 'package:com/br/com/futt/service/fixo/JogoServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JogoRedeService {

  inclui(var jogoRedeModel, {bool teste}) async {

    if (teste == null || teste == false) {
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
    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.inclui(jogoRedeModel);
    }
  }

  atualiza(var jogoRedeModel, {bool teste}) async {

    if (teste == null || teste == false) {
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
    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.atualiza(jogoRedeModel);
    }
  }

  atualizaPlacar(var jogoRedeModel, {bool teste}) async {

    if (teste == null || teste == false) {
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
    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.atualizaPlacar(jogoRedeModel);
    }
  }

  remove(String idJogo, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_JOGO_REDE}/remove/${idJogo}",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      JogoRedeServiceFixo serviceFixo = JogoRedeServiceFixo();
      serviceFixo.remove(idJogo);
    }
  }

  Future<List<JogoRedeModel>> listaPorRede(String idRede, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_JOGO_REDE}/rede/${idRede}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        JogoRedeServiceFixo serviceFixo = JogoRedeServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<JogoRedeModel> lista = List();
      for (var registro in dadosJson) {
        JogoRedeModel jogoRedeModel = JogoRedeModel.fromJson(
            registro); //.converteJson
        lista.add(jogoRedeModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }
}