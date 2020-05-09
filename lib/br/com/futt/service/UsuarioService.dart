import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/UsuarioModel.dart';
import 'package:com/br/com/futt/service/fixo/UsuarioServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UsuarioService {

  inclui(var cadastroLoginModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.post(
          "${ConstantesRest.URL_USUARIOS}/adiciona",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(cadastroLoginModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
      serviceFixo.inclui(cadastroLoginModel);
    }
  }

  incluiFoto(var usuarioModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.post(
          "${ConstantesRest.URL_USUARIOS}/${usuarioModel.id}/foto",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(usuarioModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
      serviceFixo.incluiFoto(usuarioModel);
    }
  }

  atualiza(var usuarioModel, {bool teste}) async {

    if (teste == null || teste == false) {
      http.Response response = await http.put(
          "${ConstantesRest.URL_USUARIOS}",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonDecode(usuarioModel)
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
      serviceFixo.atualiza(usuarioModel);
    }
  }

  desativa(String idUsuario, {bool teste}) async {

    if (teste == null || teste == false) {
      var usuarioModel;
      http.Response response = await http.put(
          "${ConstantesRest.URL_USUARIOS}/desativa/${idUsuario}",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
      serviceFixo.desativa(idUsuario);
    }
  }

  exclui(String idUsuario, {bool teste}) async {

    if (teste == null || teste == false) {
      var usuarioModel;
      http.Response response = await http.delete(
          "${ConstantesRest.URL_USUARIOS}/${idUsuario}",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          }
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to load!!!');
      }
    }else{
      UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
      serviceFixo.exclui(idUsuario);
    }
  }

  Future<UsuarioModel> buscaPorId(String idUsuario, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_USUARIOS}/${idUsuario}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return UsuarioModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

  Future<List<UsuarioModel>> listaTodos({bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_USUARIOS}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<UsuarioModel> lista = List();
      for (var registro in dadosJson) {
        UsuarioModel usuarioModel = UsuarioModel.fromJson(
            registro); //.converteJson
        lista.add(usuarioModel);
      }
      return lista;

    } else {
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<List<UsuarioModel>> listaPorFiltros(var usuarioModel, {bool teste}) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_USUARIOS}/filter",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(usuarioModel)
        }
    );
    var dadosJson = json.decode(response.body);

    if (teste != null && teste == true) {
      UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
      dadosJson = serviceFixo.responseLista();
    }
    List<UsuarioModel> lista = List();
    for (var registro in dadosJson) {
      UsuarioModel usuarioModel = UsuarioModel.fromJson(registro); //.converteJson
      lista.add(usuarioModel);
    }
    return lista;
  }

  Future<List<UsuarioModel>> listaPorFiltroComFlagAmigoDoUsuario(String idUsuario, var usuarioModel, {bool teste}) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_USUARIOS}/filterComFlagAmigoDoUsuario/${idUsuario}",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(usuarioModel)
        }
    );
    var dadosJson = json.decode(response.body);

    if (teste != null && teste == true) {
      UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
      dadosJson = serviceFixo.responseLista();
    }
    List<UsuarioModel> lista = List();
    for (var registro in dadosJson) {
      UsuarioModel usuarioModel = UsuarioModel.fromJson(registro); //.converteJson
      lista.add(usuarioModel);
    }
    return lista;
  }

  Future<List<UsuarioModel>> listaPorFiltroComFlagAmigo(var usuarioModel, {bool teste}) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_USUARIOS}/filterComFlagAmigo",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(usuarioModel)
        }
    );
    var dadosJson = json.decode(response.body);

    if (teste != null && teste == true) {
      UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
      dadosJson = serviceFixo.responseLista();
    }
    List<UsuarioModel> lista = List();
    for (var registro in dadosJson) {
      UsuarioModel usuarioModel = UsuarioModel.fromJson(registro); //.converteJson
      lista.add(usuarioModel);
    }
    return lista;
  }

  Future<List<UsuarioModel>> listaPorEstado(String estado, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_USUARIOS}/filterEstado/${estado}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<UsuarioModel> lista = List();
      for (var registro in dadosJson) {
        UsuarioModel usuarioModel = UsuarioModel.fromJson(
            registro); //.converteJson
        lista.add(usuarioModel);
      }
      return lista;

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

  Future<UsuarioModel> listaPorEmail(String email, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_USUARIOS}/filterEmail/${email}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
        dadosJson = serviceFixo.responseObjeto();
      }
      return UsuarioModel.fromJson(dadosJson); //.converteJson

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

  Future<List<UsuarioModel>> listaPorNome(String nome, {bool teste}) async {

    http.Response response = await http.get("${ConstantesRest.URL_USUARIOS}/filterNome/${nome}");
    if (response.statusCode == 200 || (teste != null && teste == true)) {
      var dadosJson = json.decode(response.body);
      if (teste != null && teste == true) {
        UsuarioServiceFixo serviceFixo = UsuarioServiceFixo();
        dadosJson = serviceFixo.responseLista();
      }
      List<UsuarioModel> lista = List();
      for (var registro in dadosJson) {
        UsuarioModel usuarioModel = UsuarioModel.fromJson(
            registro); //.converteJson
        lista.add(usuarioModel);
      }
      return lista;

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

}