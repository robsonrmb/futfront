import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/TipoTorneioModel.dart';
import 'package:com/br/com/futt/rest/TipoTorneioRest.dart';

class TipoTorneioService {

  Future<List<TipoTorneioModel>> listaTodos({bool fixo}) {
    String url = "${ConstantesRest.URL_TIPO_TORNEIO}";
    TipoTorneioRest tipoTorneioRest = TipoTorneioRest();
    return tipoTorneioRest.processaHttpGetList(url, fixo);
  }

}