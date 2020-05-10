import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/JogoModel.dart';
import 'package:com/br/com/futt/rest/JogoRest.dart';
import 'package:com/br/com/futt/service/fixo/JogoServiceFixo.dart';

class JogoService {

  inclui(var jogoModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_JOGO}/adiciona";
      JogoRest jogoRest = JogoRest();
      jogoRest.processaHttpPost(url, jogoModel);

    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.inclui(jogoModel);
    }
  }

  atualiza(var jogoModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_JOGO}/atualiza";
      JogoRest jogoRest = JogoRest();
      jogoRest.processaHttpPut(url, jogoModel);

    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.atualiza(jogoModel);
    }
  }

  atualizaPlacar(var jogoModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_JOGO}/atualizaplacar";
      JogoRest jogoRest = JogoRest();
      jogoRest.processaHttpPut(url, jogoModel);

    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.atualizaPlacar(jogoModel);
    }
  }

  informaVencedor(var vencedorModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_JOGO}/informavencedor";
      JogoRest jogoRest = JogoRest();
      jogoRest.processaHttpPut(url, vencedorModel);

    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.informaVencedor(vencedorModel);
    }
  }

  remove(String idJogo, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_JOGO}/remove/${idJogo}";
      JogoRest jogoRest = JogoRest();
      jogoRest.processaHttpDelete(url);

    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.remove(idJogo);
    }
  }

  Future<List<JogoModel>> listaPorUsuario({bool fixo}) {
    String url = "${ConstantesRest.URL_JOGO}/ativasdousuariologado";
    JogoRest jogoRest = JogoRest();
    return jogoRest.processaHttpGetList(url, fixo);
  }

  Future<List<JogoModel>> listaPorTorneios(String idTorneio, {bool fixo}) async {
    String url = "${ConstantesRest.URL_JOGO}/torneios/${idTorneio}";
    JogoRest jogoRest = JogoRest();
    return jogoRest.processaHttpGetList(url, fixo);
  }

}