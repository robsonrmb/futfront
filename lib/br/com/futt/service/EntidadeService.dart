import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/EntidadeModel.dart';
import 'package:com/br/com/futt/service/fixo/EntidadeServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EntidadeService {

  Future<List<EntidadeModel>> listaPorUsuario({bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_ENTIDADE}/ativasdousuariologado");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        EntidadeServiceFixo serviceFixo = EntidadeServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<EntidadeModel> lista = List();
      for (var registro in dadosJson) {
        EntidadeModel entidadeModel = EntidadeModel.fromJson(
            registro); //.converteJson
        lista.add(entidadeModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<EntidadeModel>> listaAtivas({bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_ENTIDADE}/ativas");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        EntidadeServiceFixo serviceFixo = EntidadeServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<EntidadeModel> lista = List();
      for (var registro in dadosJson) {
        EntidadeModel entidadeModel = EntidadeModel.fromJson(
            registro); //.converteJson
        lista.add(entidadeModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  inclui(var entidadeModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.post(
          ConstantesRest.URL_ENTIDADE,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(entidadeModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      EntidadeServiceFixo serviceFixo = EntidadeServiceFixo();
      serviceFixo.inclui(entidadeModel);
    }
  }

  atualiza(var entidadeModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          ConstantesRest.URL_ENTIDADE,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(entidadeModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      EntidadeServiceFixo serviceFixo = EntidadeServiceFixo();
      serviceFixo.atualiza(entidadeModel);
    }
  }

  atualizaDisponiblidade(String id, String qtdDias, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_ENTIDADE}/${id}/${qtdDias}",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      EntidadeServiceFixo serviceFixo = EntidadeServiceFixo();
      serviceFixo.atualizaDisponiblidade(id, qtdDias);
    }
  }

}