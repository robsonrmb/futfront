import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/RankingEntidadeModel.dart';
import 'package:com/br/com/futt/rest/RankingEntidadeRest.dart';

class RankingEntidadeService {

  Future<List<RankingEntidadeModel>> listaTodos(bool fixo) {
    String url = "${ConstantesRest.URL_TIPO_TORNEIO}";
    RankingEntidadeRest tipoTorneioRest = RankingEntidadeRest();
    return tipoTorneioRest.processaHttpGetList(url, fixo);
  }

}