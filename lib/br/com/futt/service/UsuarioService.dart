import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/IntegranteModel.dart';
import 'package:com/br/com/futt/model/ParticipanteModel.dart';
import 'package:com/br/com/futt/model/UsuarioModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UsuarioService {

  inclui(var cadastroLoginModel) async {

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
  }

  incluiFoto(var usuarioModel) async {

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
  }

  atualiza(var usuarioModel) async {

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
  }

  desativa(String idUsuario) async {

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
  }

  exclui(String idUsuario) async {

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
  }

  Future<UsuarioModel> buscaPorId(String idUsuario) async {

    http.Response response = await http.get("${ConstantesRest.URL_USUARIOS}/${idUsuario}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      UsuarioModel listaUsuarioModel = dadosJson[""].map<UsuarioModel>(
              (map){
            return UsuarioModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

  Future<UsuarioModel> listaTodos() async {

    http.Response response = await http.get("${ConstantesRest.URL_USUARIOS}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      UsuarioModel listaUsuarioModel = dadosJson[""].map<UsuarioModel>(
              (map){
            return UsuarioModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

  Future<UsuarioModel> listaPorFiltros(var usuarioModel) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_USUARIOS}/filter",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(usuarioModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<UsuarioModel> listaPorFiltroComFlagAmigoDoUsuario(String idUsuario, var usuarioModel) async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_USUARIOS}/filterComFlagAmigoDoUsuario/${idUsuario}",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          jsonDecode(usuarioModel)
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<UsuarioModel> listaPorFiltroComFlagAmigo() async {

    http.Response response = await http.post(
        "${ConstantesRest.URL_USUARIOS}/filterComFlagAmigo",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  Future<UsuarioModel> listaPorEstado(String estado) async {

    http.Response response = await http.get("${ConstantesRest.URL_USUARIOS}/filterEstado/${estado}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      UsuarioModel listaUsuarioModel = dadosJson[""].map<UsuarioModel>(
              (map){
            return UsuarioModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

  Future<UsuarioModel> listaPorEmail(String email) async {

    http.Response response = await http.get("${ConstantesRest.URL_USUARIOS}/filterEmail/${email}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      UsuarioModel listaUsuarioModel = dadosJson[""].map<UsuarioModel>(
              (map){
            return UsuarioModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

  Future<UsuarioModel> listaPorNome(String nome) async {

    http.Response response = await http.get("${ConstantesRest.URL_USUARIOS}/filterNome/${nome}");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      UsuarioModel listaUsuarioModel = dadosJson[""].map<UsuarioModel>(
              (map){
            return UsuarioModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Usuario!!!');
    }
  }

}