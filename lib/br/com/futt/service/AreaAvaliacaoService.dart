import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AreaAvaliacaoModel.dart';
import 'package:com/br/com/futt/rest/AreaAvaliacaoRest.dart';

class AreaAvaliacaoService {

  Future<List<AreaAvaliacaoModel>> listaAtivas({bool fixo}) {
    String url = "${ConstantesRest.URL_AREA_AVALIACAO}/ativas";
    AreaAvaliacaoRest areaAvaliacaoRest = AreaAvaliacaoRest();
    return areaAvaliacaoRest.processaHttpGetList(url, fixo);
  }

}