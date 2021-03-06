import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/UsuarioModel.dart';
import 'package:com/br/com/futt/rest/UsuarioRest.dart';
import 'package:com/br/com/futt/rest/fixo/BaseRestFixo.dart';

class UsuarioService {

  inclui(var cadastroLoginModel, bool fixo) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_USUARIOS}/adiciona";
      UsuarioRest usuarioRest = UsuarioRest();
      usuarioRest.processaHttpPost(url, cadastroLoginModel);

    }else{
      BaseRestFixo serviceFixo = BaseRestFixo();
      serviceFixo.processaHttpPostFixo();
    }
  }

  atualiza(var usuarioModel, bool fixo) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_USUARIOS}";
      UsuarioRest usuarioRest = UsuarioRest();
      usuarioRest.processaHttpPut(url, usuarioModel);

    }else{
      BaseRestFixo serviceFixo = BaseRestFixo();
      serviceFixo.processaHttpPostFixo();
    }
  }

  desativa(String idUsuario, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_USUARIOS}/desativa/${idUsuario}";
      UsuarioRest usuarioRest = UsuarioRest();
      usuarioRest.processaHttpPut(url, "");

    }else{
      BaseRestFixo serviceFixo = BaseRestFixo();
      serviceFixo.processaHttpPostFixo();
    }
  }

  exclui(String idUsuario, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_USUARIOS}/${idUsuario}";
      UsuarioRest usuarioRest = UsuarioRest();
      usuarioRest.processaHttpDelete(url);

    }else{
      BaseRestFixo serviceFixo = BaseRestFixo();
      serviceFixo.processaHttpPostFixo();
    }
  }

  Future<UsuarioModel> buscaPorId(String idUsuario, {bool fixo}) {
    String url = "${ConstantesRest.URL_USUARIOS}/${idUsuario}";
    UsuarioRest usuarioRest = UsuarioRest();
    return usuarioRest.processaHttpGetObject(url, fixo);
  }

  Future<List<UsuarioModel>> listaTodos({bool fixo}) {
    String url = "${ConstantesRest.URL_USUARIOS}";
    UsuarioRest usuarioRest = UsuarioRest();
    return usuarioRest.processaHttpGetList(url, fixo);
  }

  Future<List<UsuarioModel>> listaPorFiltros(var usuarioModel, {bool fixo}) {
    String url = "${ConstantesRest.URL_USUARIOS}/filter";
    UsuarioRest usuarioRest = UsuarioRest();
    return usuarioRest.processaHttpPostReturn(url, usuarioModel, fixo);
  }

  Future<List<UsuarioModel>> listaPorFiltroComFlagAmigoDoUsuario(String idUsuario, var usuarioModel, {bool fixo}) {
    String url = "${ConstantesRest.URL_USUARIOS}/filterComFlagAmigoDoUsuario/${idUsuario}";
    UsuarioRest usuarioRest = UsuarioRest();
    return usuarioRest.processaHttpPostReturn(url, usuarioModel, fixo);
  }

  Future<List<UsuarioModel>> listaPorFiltroComFlagAmigo(var usuarioModel, {bool fixo}) {
    String url = "${ConstantesRest.URL_USUARIOS}/filterComFlagAmigo";
    UsuarioRest usuarioRest = UsuarioRest();
    return usuarioRest.processaHttpPostReturn(url, usuarioModel, fixo);
  }

  Future<List<UsuarioModel>> listaPorEstado(String estado, {bool fixo}) {
    String url = "${ConstantesRest.URL_USUARIOS}/filterEstado/${estado}";
    UsuarioRest usuarioRest = UsuarioRest();
    return usuarioRest.processaHttpGetList(url, fixo);
  }

  Future<UsuarioModel> listaPorEmail(String email, {bool fixo}) {
    String url = "${ConstantesRest.URL_USUARIOS}/filterEmail/${email}";
    UsuarioRest usuarioRest = UsuarioRest();
    return usuarioRest.processaHttpGetObject(url, fixo);
  }

  Future<List<UsuarioModel>> listaPorNome(String nome, {bool fixo}) {
    String url = "${ConstantesRest.URL_USUARIOS}/filterNome/${nome}";
    UsuarioRest usuarioRest = UsuarioRest();
    return usuarioRest.processaHttpGetList(url, fixo);
  }

}