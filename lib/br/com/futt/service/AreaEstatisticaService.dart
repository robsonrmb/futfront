import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/AreaEstatisticaModel.dart';
import 'package:com/br/com/futt/rest/AreaEstatisticaRest.dart';

class AreaEstatisticaService {

  Future<List<AreaEstatisticaModel>> listaAtivas({bool fixo}) {
    String url = "${ConstantesRest.URL_AREA_ESTATISTICA}/ativas";
    AreaEstatisticaRest areaEstatisticaRest = AreaEstatisticaRest();
    return areaEstatisticaRest.processaHttpGetList(url, fixo);
  }

}