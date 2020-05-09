import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/IntegranteModel.dart';
import 'package:com/br/com/futt/model/ParticipanteModel.dart';
import 'package:com/br/com/futt/model/UsuarioModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UsuarioServiceFixo {

  String retornoUsuario = '{ '
        '"id": 1, '
        '"nome": "Robson", '
        '"email": "robson@gmail.com", '
        '"apelido": null, '
        '"dataNascimento": null, '
        '"ondeJoga": null, '
        '"tipo": null, '
        '"nivel": null, '
        '"cidade": null, '
        '"estado": "DF", '
        '"pais": "Brasil", '
        '"status": "A", '
        '"sexo": "M", '
        '"nomeFoto": null, '
        '"fotografia": null, '
        '"amigo": false, '
        '"dataNascimentoFormatada": "", '
        '"desativo": false, '
        '"ativo": true '
      '}';

  String retornoUsuarios = '[ '
        '{ '
          '"id": 1, '
          '"nome": "Robson", '
          '"email": "robson@gmail.com", '
          '"apelido": null, '
          '"dataNascimento": null, '
          '"ondeJoga": null, '
          '"tipo": null, '
          '"nivel": null, '
          '"cidade": null, '
          '"estado": "DF", '
          '"pais": "Brasil", '
          '"status": "A", '
          '"sexo": "M", '
          '"nomeFoto": null, '
          '"fotografia": null, '
          '"amigo": false, '
          '"dataNascimentoFormatada": "", '
          '"desativo": false, '
          '"ativo": true '
        '} '
      ']';

  var envio = json.encode(
      {
        "userId": 200,
        "id": null,
        "title": "Título",
        "body": "Corpo da mensagem"
      }
  );

  String responseLista() {
    return retornoUsuarios;
  }

  String responseObjeto() {
    return retornoUsuarios;
  }

  _processaFixo() async {
    http.Response response = await http.post(
        "${ConstantesRest.URL_BASE_TESTE}/posts",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: envio
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  inclui(var cadastroLoginModel) async {
    _processaFixo();
  }

  incluiFoto(var usuarioModel) async {
    _processaFixo();
  }

  atualiza(var usuarioModel) async {
    _processaFixo();
  }

  desativa(String idUsuario) async {
    _processaFixo();
  }

  exclui(String idUsuario) async {
    _processaFixo();
  }

  Future<UsuarioModel> _buscaUsuarioFixo() async {
    var dadosJson = json.decode(retornoUsuario);
    return UsuarioModel.fromJson(dadosJson); //.converteJson
  }

  Future<List<UsuarioModel>> _listaUsuariosFixo() async {
    var dadosJson = json.decode(retornoUsuarios);
    List<UsuarioModel> lista = List();
    for (var registro in dadosJson) {
      UsuarioModel usuarioModel = UsuarioModel.fromJson(registro); //.converteJson
      lista.add(usuarioModel);
    }
    return lista;
  }

  Future<UsuarioModel> buscaPorId(String idUsuario) async {
    return _buscaUsuarioFixo();
  }

  Future<List<UsuarioModel>> listaTodos() async {
    return _listaUsuariosFixo();
  }

  Future<List<UsuarioModel>> listaPorFiltros(var usuarioModel) async {
    return _listaUsuariosFixo();
  }

  Future<List<UsuarioModel>> listaPorFiltroComFlagAmigoDoUsuario(String idUsuario, var usuarioModel) async {
    return _listaUsuariosFixo();
  }

  Future<List<UsuarioModel>> listaPorFiltroComFlagAmigo() async {
    return _listaUsuariosFixo();
  }

  Future<List<UsuarioModel>> listaPorEstado(String estado) async {
    return _listaUsuariosFixo();
  }

  Future<UsuarioModel> listaPorEmail(String email) async {
    return _buscaUsuarioFixo();
  }

  Future<List<UsuarioModel>> listaPorNome(String nome) async {
    return _listaUsuariosFixo();
  }

}