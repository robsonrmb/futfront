import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/RankingEntidadeModel.dart';
import 'package:com/br/com/futt/model/RankingModel.dart';
import 'package:com/br/com/futt/rest/RankingRest.dart';

class RankingService {

  Future<List<RankingModel>> listaRanking(String ano, String idRanking, {bool fixo}) {
    String url = "${ConstantesRest.URL_RANKING}/${ano}/${idRanking}";
    RankingRest rankingRest = RankingRest();
    return rankingRest.processaHttpGetList(url, fixo);
  }

  Future<List<RankingEntidadeModel>> listaRankingEntidade({bool fixo}) {
    String url = "${ConstantesRest.URL_RANKING_ENTIDADE}/ativas";
    RankingRest rankingRest = RankingRest();
    return rankingRest.processaHttpGetListRankingEntidade(url, fixo);
  }

}