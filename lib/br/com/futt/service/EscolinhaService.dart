import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/EscolinhaModel.dart';
import 'package:com/br/com/futt/rest/EscolinhaRest.dart';

class EscolinhaService {

  Future<List<EscolinhaModel>> listaEscolinhas(String pais, String cidade, bool fixo) {
    String url = "${ConstantesRest.URL_ESCOLINHA}/filtro";
    EscolinhaRest escolinhaRest = EscolinhaRest();
    bool _filtro = true;
    if (pais == "") {
      _filtro = false;
    }
    return escolinhaRest.processaHttpGetList(url, _filtro, fixo);
  }

}