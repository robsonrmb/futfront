import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/IntegranteModel.dart';
import 'package:com/br/com/futt/model/RedeModel.dart';
import 'package:com/br/com/futt/rest/RedeRest.dart';
import 'package:com/br/com/futt/service/fixo/RedeServiceFixo.dart';

class RedeService {

  inclui(var redeModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_REDE}/adiciona";
      RedeRest redeRest = RedeRest();
      redeRest.processaHttpPost(url, redeModel);

    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.inclui(redeModel);
    }
  }

  atualizaPatrocinador(var redePatrocinadorModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_REDE}/adicionapatrocinador";
      RedeRest redeRest = RedeRest();
      redeRest.processaHttpPut(url, redePatrocinadorModel);

    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.atualizaPatrocinador(redePatrocinadorModel);
    }
  }

  atualizaIntegrante(var integranteModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_REDE}/adicionaintegrante";
      RedeRest redeRest = RedeRest();
      redeRest.processaHttpPut(url, integranteModel);

    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.atualizaIntegrante(integranteModel);
    }
  }

  atualiza(var redeModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_REDE}/atualiza";
      RedeRest redeRest = RedeRest();
      redeRest.processaHttpPut(url, redeModel);

    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.atualiza(redeModel);
    }
  }

  alteraStatus(String idRede, String status, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_REDE}/${idRede}/alterastatus/${status}";
      RedeRest redeRest = RedeRest();
      redeRest.processaHttpPut(url, null);

    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.alteraStatus(idRede, status);
    }
  }

  desativaRede(String idRede, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_REDE}/${idRede}/desativa";
      RedeRest redeRest = RedeRest();
      redeRest.processaHttpPut(url, null);

    }else{
      RedeServiceFixo serviceFixo = RedeServiceFixo();
      serviceFixo.desativaRede(idRede);
    }
  }

  Future<List<RedeModel>> listaPorFiltros(var redeModel, {bool fixo}) {
    String url = "${ConstantesRest.URL_REDE}/filtros";
    RedeRest redeRest = RedeRest();
    return redeRest.processaHttpPostReturn(url, redeModel, fixo);
  }

  Future<List<RedeModel>> listaPorStatus(var status, {bool fixo}) {
    String url = "${ConstantesRest.URL_REDE}/status?status=${status}";
    RedeRest redeRest = RedeRest();
    return redeRest.processaHttpGetList(url, fixo);
  }

  Future<List<RedeModel>> listaTodos({bool fixo}) {
    String url = "${ConstantesRest.URL_REDE}";
    RedeRest redeRest = RedeRest();
    return redeRest.processaHttpGetList(url, fixo);
  }

  Future<List<IntegranteModel>> listaIntegrantesDaRede(String idRede, {bool fixo}) {
    String url = "${ConstantesRest.URL_REDE}/integrantes/${idRede}";
    RedeRest redeRest = RedeRest();
    return redeRest.processaHttpGetListIntegrantes(url, fixo);
  }

}