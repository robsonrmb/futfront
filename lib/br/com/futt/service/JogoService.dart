import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/JogoModel.dart';
import 'package:com/br/com/futt/service/fixo/JogoServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JogoService {

  inclui(var jogoModel, {bool teste}) async {

    if (teste == null || teste == false) {
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
    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.inclui(jogoModel);
    }
  }

  atualiza(var jogoModel, {bool teste}) async {

    if (teste == null || teste == false) {
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
    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.atualiza(jogoModel);
    }
  }

  atualizaPlacar(var jogoModel, {bool teste}) async {

    if (teste == null || teste == false) {
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
    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.atualizaPlacar(jogoModel);
    }
  }

  informaVencedor(var vencedorModel, {bool teste}) async {

    if (teste == null || teste == false) {
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
    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.informaVencedor(vencedorModel);
    }
  }

  remove(String idJogo, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_JOGO}/remove/${idJogo}",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.remove(idJogo);
    }
  }

  Future<List<JogoModel>> listaPorUsuario({bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_JOGO}/ativasdousuariologado");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        JogoServiceFixo serviceFixo = JogoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<JogoModel> lista = List();
      for (var registro in dadosJson) {
        JogoModel jogoModel = JogoModel.fromJson(
            registro); //.converteJson
        lista.add(jogoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<JogoModel>> listaPorTorneios(String idTorneio, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_JOGO}/torneios/${idTorneio}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        JogoServiceFixo serviceFixo = JogoServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<JogoModel> lista = List();
      for (var registro in dadosJson) {
        JogoModel jogoModel = JogoModel.fromJson(
            registro); //.converteJson
        lista.add(jogoModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

}