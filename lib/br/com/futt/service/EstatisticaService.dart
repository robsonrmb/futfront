import 'package:com/br/com/futt/constantes/ConstantesEstatisticas.dart';
import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/QuantidadeModel.dart';
import 'package:com/br/com/futt/model/RespPerformanceModel.dart';
import 'package:com/br/com/futt/model/RespQuantidadeModel.dart';
import 'package:com/br/com/futt/model/RespostaModel.dart';
import 'package:com/br/com/futt/rest/EstatisticaRest.dart';

class EstatisticaService {

  Future<List<RespQuantidadeModel>> vitoriasDerrotas(String idUsuario, String ano, String id, String tipo, bool fixo) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/vitoriasederrotas/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetListRespQuantidade(url, 1, fixo);
  }

  Future<List<RespQuantidadeModel>> tiebreaks(String idUsuario, String ano, String idTorneio, bool fixo) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/tiebreaksvencidoseperdidos/usuario/${idUsuario}?ano=${ano}&&id=${idTorneio}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetListRespQuantidade(url, 1, fixo);
  }

  Future<List<RespQuantidadeModel>> pontos(String idUsuario, String ano, String id, String tipo, bool fixo) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/pontos/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetListRespQuantidade(url, 1, fixo);
  }

  Future<List<RespQuantidadeModel>> jogos(String idUsuario, String ano, String id, String tipo, bool fixo) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/jogos/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetListRespQuantidade(url, 1, fixo);
  }

  Future<List<RespPerformanceModel>> avaliativa(String idUsuario, String tipo, String ano, bool fixo) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/avaliativa/usuario/${idUsuario}/${tipo}?ano=${ano}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetListRespPerformance(url, 0, fixo);
  }

  Future<List<QuantidadeModel>> quantitativa(String idUsuario, String tipoestatistica, String ano, String id, String tipo, bool fixo) async {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/qtd/usuario/${idUsuario}/${tipoestatistica}?ano=${ano}&&id=${id}&&tipo=${tipo}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetListQuantidade(url, 0, fixo);
  }

  Future<List<RespostaModel>> getPerformanceTecnica(int idUsuario, int ano, bool fixo) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/performancetecnica/${idUsuario}?ano=${ano}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetListResposta(url, ConstantesEstatisticas.TECNICA, fixo); //tecnicas
  }

  Future<List<RespostaModel>> getPerformanceTatica(int idUsuario, int ano, bool fixo) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/performancetatica/${idUsuario}?ano=${ano}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetListResposta(url, ConstantesEstatisticas.TATICA, fixo); //táticas
  }

}