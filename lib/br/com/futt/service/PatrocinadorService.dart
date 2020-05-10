import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/PatrocinadorModel.dart';
import 'package:com/br/com/futt/rest/PatrocinadorRest.dart';
import 'package:com/br/com/futt/service/fixo/PatrocinadorServiceFixo.dart';

class PatrocinadorService {

  inclui(var patrocinadorModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_PATROCINADOR}/adiciona";
      PatrocinadorRest patrocinadorRest = PatrocinadorRest();
      patrocinadorRest.processaHttpPost(url, patrocinadorModel);
      
    }else{
      PatrocinadorServiceFixo serviceFixo = PatrocinadorServiceFixo();
      serviceFixo.inclui(patrocinadorModel);
    }
  }

  atualiza(var patrocinadorModel, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_PATROCINADOR}/atualiza";
      PatrocinadorRest patrocinadorRest = PatrocinadorRest();
      patrocinadorRest.processaHttpPut(url, patrocinadorModel);
      
    }else{
      PatrocinadorServiceFixo serviceFixo = PatrocinadorServiceFixo();
      serviceFixo.atualiza(patrocinadorModel);
    }
  }

  remove(String idPatrocinador, {bool fixo}) {
    if (fixo == null || fixo == false) {
      String url = "${ConstantesRest.URL_PATROCINADOR}/remove/${idPatrocinador}";
      PatrocinadorRest patrocinadorRest = PatrocinadorRest();
      patrocinadorRest.processaHttpDelete(url);

    }else{
      PatrocinadorServiceFixo serviceFixo = PatrocinadorServiceFixo();
      serviceFixo.remove(idPatrocinador);
    }
  }

  Future<List<PatrocinadorModel>> listaPatrocinadores({bool fixo}) {
    String url = "${ConstantesRest.URL_PATROCINADOR}/ativos";
    PatrocinadorRest patrocinadorRest = PatrocinadorRest();
    return patrocinadorRest.processaHttpGetList(url, fixo);
  }

  Future<List<PatrocinadorModel>> listaPorTorneios(String idTorneio, {bool fixo}) {
    String url = "${ConstantesRest.URL_PATROCINADOR}/torneio/${idTorneio}";
    PatrocinadorRest patrocinadorRest = PatrocinadorRest();
    return patrocinadorRest.processaHttpGetList(url, fixo);
  }

}