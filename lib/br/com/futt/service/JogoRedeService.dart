import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/JogoRedeModel.dart';
import 'package:com/br/com/futt/rest/JogoRedeRest.dart';
import 'package:com/br/com/futt/service/fixo/JogoRedeServiceFixo.dart';
import 'package:com/br/com/futt/service/fixo/JogoServiceFixo.dart';

class JogoRedeService {

  inclui(var jogoRedeModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_JOGO_REDE}/adiciona";
      JogoRedeRest jogoRedeRest = JogoRedeRest();
      jogoRedeRest.processaHttpPost(url, jogoRedeModel);

    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.inclui(jogoRedeModel);
    }
  }

  atualiza(var jogoRedeModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_JOGO_REDE}/atualiza";
      JogoRedeRest jogoRedeRest = JogoRedeRest();
      jogoRedeRest.processaHttpPut(url, jogoRedeModel);

    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.atualiza(jogoRedeModel);
    }
  }

  atualizaPlacar(var jogoRedeModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_JOGO_REDE}/atualizaplacar";
      JogoRedeRest jogoRedeRest = JogoRedeRest();
      jogoRedeRest.processaHttpPut(url, jogoRedeModel);

    }else{
      JogoServiceFixo serviceFixo = JogoServiceFixo();
      serviceFixo.atualizaPlacar(jogoRedeModel);
    }
  }

  remove(String idJogo, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_JOGO_REDE}/remove/${idJogo}";
      JogoRedeRest jogoRedeRest = JogoRedeRest();
      jogoRedeRest.processaHttpDelete(url);

    }else{
      JogoRedeServiceFixo serviceFixo = JogoRedeServiceFixo();
      serviceFixo.remove(idJogo);
    }
  }

  Future<List<JogoRedeModel>> listaPorRede(String idRede, {bool fixo}) {
    String url = "${ConstantesRest.URL_JOGO_REDE}/rede/${idRede}";
    JogoRedeRest jogoRedeRest = JogoRedeRest();
    return jogoRedeRest.processaHttpGetList(url, fixo);
  }
}