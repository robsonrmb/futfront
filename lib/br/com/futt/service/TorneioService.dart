import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/ParticipanteModel.dart';
import 'package:com/br/com/futt/model/TorneioModel.dart';
import 'package:com/br/com/futt/rest/TorneioRest.dart';
import 'package:com/br/com/futt/service/fixo/TorneioServiceFixo.dart';

class TorneioService {

  inclui(var torneioModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_TORNEIOS}/adiciona";
      TorneioRest torneioRest = TorneioRest();
      torneioRest.processaHttpPost(url, torneioModel);

    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.inclui(torneioModel);
    }
  }

  adicionaPatrocinador(var torneioPatrocinadorModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_TORNEIOS}/adicionapatrocinador";
      TorneioRest torneioRest = TorneioRest();
      torneioRest.processaHttpPost(url, torneioPatrocinadorModel);

    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.adicionaPatrocinador(torneioPatrocinadorModel);
    }
  }

  adicionaParticipante(var participanteModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_TORNEIOS}/adicionapatrocinador";
      TorneioRest torneioRest = TorneioRest();
      torneioRest.processaHttpPost(url, participanteModel);

    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.adicionaParticipante(participanteModel);
    }
  }

  atualiza(var torneioModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_TORNEIOS}/atualiza";
      TorneioRest torneioRest = TorneioRest();
      torneioRest.processaHttpPut(url, torneioModel);

    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.atualiza(torneioModel);
    }
  }

  informaCampeoes(var torneioModel, {bool fixo}) {

    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_TORNEIOS}/informacampeoes";
      TorneioRest torneioRest = TorneioRest();
      torneioRest.processaHttpPut(url, torneioModel);

    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.informaCampeoes(torneioModel);
    }
  }

  alteraStatus(String idTorneio, String status, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/alterastatus";
      TorneioRest torneioRest = TorneioRest();
      torneioRest.processaHttpPut(url, null);

    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.alteraStatus(idTorneio, status);
    }
  }

  desativaTorneio(String idTorneio, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/desativa";
      TorneioRest torneioRest = TorneioRest();
      torneioRest.processaHttpPut(url, null);

    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.desativaTorneio(idTorneio);
    }
  }

  finalizaTorneio(String idTorneio, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/finaliza";
      TorneioRest torneioRest = TorneioRest();
      torneioRest.processaHttpPut(url, null);

    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.finalizaTorneio(idTorneio);
    }
  }

  resetTorneio(String idTorneio, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/reset";
      TorneioRest torneioRest = TorneioRest();
      torneioRest.processaHttpPut(url, null);

    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.resetTorneio(idTorneio);
    }
  }

  gravaRankingTorneio(String idTorneio, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_TORNEIOS}/${idTorneio}/gravaranking";
      TorneioRest torneioRest = TorneioRest();
      torneioRest.processaHttpPut(url, null);

    }else{
      TorneioServiceFixo serviceFixo = TorneioServiceFixo();
      serviceFixo.gravaRankingTorneio(idTorneio);
    }
  }

  Future<List<TorneioModel>> listaPorFiltros(var torneioModel, {bool fixo}) {
    String url = "${ConstantesRest.URL_TORNEIOS}/filtros";
    TorneioRest torneioRest = TorneioRest();
    return torneioRest.processaHttpPostReturn(url, torneioModel, fixo);
  }

  Future<List<TorneioModel>> listaPorStatus(var status, {bool fixo}) {
    String url = "${ConstantesRest.URL_TORNEIOS}/status?status=${status}";
    TorneioRest torneioRest = TorneioRest();
    return torneioRest.processaHttpGetList(url, fixo);
  }

  Future<List<TorneioModel>> listaTodos({bool fixo}) {
    String url = "${ConstantesRest.URL_TORNEIOS}";
    TorneioRest torneioRest = TorneioRest();
    return torneioRest.processaHttpGetList(url, fixo);
  }

  Future<List<ParticipanteModel>> listaParticipantesDoTorneio(String idTorneio, {bool fixo}) {
    String url = "${ConstantesRest.URL_TORNEIOS}/participantes/${idTorneio}";
    TorneioRest torneioRest = TorneioRest();
    return torneioRest.processaHttpGetListParticipante(url, fixo);
  }

  Future<TorneioModel> getTorneio(String idTorneio, {bool fixo}) {
    String url = "${ConstantesRest.URL_TORNEIOS}/${idTorneio}";
    TorneioRest torneioRest = TorneioRest();
    return torneioRest.processaHttpGetObject(url, fixo);
  }

}