import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/RankingEntidadeModel.dart';
import 'package:com/br/com/futt/model/RankingModel.dart';
import 'package:com/br/com/futt/rest/RankingRest.dart';

class RankingService {

  Future<List<RankingModel>> listaRanking(int ano, int idRanking, bool fixo) {
    String url = "${ConstantesRest.URL_RANKING}/${ano}/${idRanking}";
    RankingRest rankingRest = RankingRest();
    bool _filtro = true;
    if (ano%2 == 0) {
      _filtro = false;
    }
    return rankingRest.processaHttpGetList(url, _filtro, fixo);
  }

}