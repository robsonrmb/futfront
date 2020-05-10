import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AvaliacaoModel.dart';
import 'package:com/br/com/futt/rest/AvaliacaoRest.dart';
import 'package:com/br/com/futt/service/fixo/AvaliacaoServiceFixo.dart';

class AvaliacaoService {

  inclui(var avaliacaoModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_AVALIACOES}/add";
      AvaliacaoRest avaliacaoRest = AvaliacaoRest();
      avaliacaoRest.processaHttpPost(url, avaliacaoModel);

    }else{
      AvaliacaoServiceFixo serviceFixo = AvaliacaoServiceFixo();
      serviceFixo.inclui(avaliacaoModel);
    }
  }

  aceita(var avaliacaoModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_AVALIACOES}/aceita";
      AvaliacaoRest avaliacaoRest = AvaliacaoRest();
      avaliacaoRest.processaHttpPut(url, avaliacaoModel);

    }else{
      AvaliacaoServiceFixo serviceFixo = AvaliacaoServiceFixo();
      serviceFixo.aceita(AvaliacaoModel);
    }
  }

  recusa(var avaliacaoModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_AVALIACOES}/recusa";
      AvaliacaoRest avaliacaoRest = AvaliacaoRest();
      avaliacaoRest.processaHttpPut(url, avaliacaoModel);

    }else{
      AvaliacaoServiceFixo serviceFixo = AvaliacaoServiceFixo();
      serviceFixo.recusa(avaliacaoModel);
    }
  }

  Future<List<AvaliacaoModel>> listaRecebidasPendentes(String idUsuario, {bool fixo}) {
    String url = "${ConstantesRest.URL_AVALIACOES}/recebidas/pendentes?usuario=${idUsuario}";
    AvaliacaoRest avaliacaoRest = AvaliacaoRest();
    return avaliacaoRest.processaHttpGetList(url, fixo);
  }

  Future<List<AvaliacaoModel>> listaRecebidas(String idUsuario, String status, {bool fixo}) {
    String url = "${ConstantesRest.URL_AVALIACOES}/recebidas?usuario=${idUsuario}&status=${status}";
    AvaliacaoRest avaliacaoRest = AvaliacaoRest();
    return avaliacaoRest.processaHttpGetList(url, fixo);
  }

}