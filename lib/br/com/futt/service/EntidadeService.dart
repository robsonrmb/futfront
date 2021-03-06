import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/EntidadeModel.dart';
import 'package:com/br/com/futt/rest/EntidadeRest.dart';
import 'package:com/br/com/futt/rest/fixo/BaseRestFixo.dart';
import 'package:com/br/com/futt/service/fixo/EntidadeServiceFixo.dart';

class EntidadeService {

  Future<List<EntidadeModel>> listaPorUsuario(bool fixo) async {
    String url = "${ConstantesRest.URL_ENTIDADE}/ativasdousuariologado";
    EntidadeRest entidadeRest = EntidadeRest();
    return entidadeRest.processaHttpGetList(url, fixo);
  }

  Future<List<EntidadeModel>> listaAtivas(bool fixo) async {
    String url = "${ConstantesRest.URL_ENTIDADE}/ativas";
    EntidadeRest entidadeRest = EntidadeRest();
    return entidadeRest.processaHttpGetList(url, fixo);
  }

  inclui(var entidadeModel, bool fixo) {
    if (fixo == null || fixo == false) {
      String url = ConstantesRest.URL_ENTIDADE;
      EntidadeRest entidadeRest = EntidadeRest();
      entidadeRest.processaHttpPost(url, entidadeModel);

    }else{
      BaseRestFixo serviceFixo = BaseRestFixo();
      serviceFixo.processaHttpPostFixo();
    }
  }

  atualiza(var entidadeModel, bool fixo) {
    if (fixo == null || fixo == false) {
      String url = ConstantesRest.URL_ENTIDADE;
      EntidadeRest entidadeRest = EntidadeRest();
      entidadeRest.processaHttpPut(url, entidadeModel);

    }else{
      BaseRestFixo serviceFixo = BaseRestFixo();
      serviceFixo.processaHttpPostFixo();
    }
  }

  atualizaDisponiblidade(String id, String qtdDias, bool fixo) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_ENTIDADE}/${id}/${qtdDias}";
      EntidadeRest entidadeRest = EntidadeRest();
      entidadeRest.processaHttpPut(url, null);

    }else{
      BaseRestFixo serviceFixo = BaseRestFixo();
      serviceFixo.processaHttpPostFixo();
    }
  }

}