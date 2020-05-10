import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/QuantidadeModel.dart';
import 'package:com/br/com/futt/model/RespPerformanceModel.dart';
import 'package:com/br/com/futt/model/RespQuantidadeModel.dart';
import 'package:com/br/com/futt/rest/EstatisticaRest.dart';

class EstatisticaService {

  Future<RespQuantidadeModel> vitoriasDerrotas(String idUsuario, String ano, String id, String tipo, {bool fixo}) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/vitoriasederrotas/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetObjectRespQuantidade(url, fixo);
  }

  Future<RespQuantidadeModel> tiebreaks(String idUsuario, String ano, String idTorneio, {bool fixo}) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/tiebreaksvencidoseperdidos/usuario/${idUsuario}?ano=${ano}&&id=${idTorneio}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetObjectRespQuantidade(url, fixo);
  }

  Future<RespQuantidadeModel> pontos(String idUsuario, String ano, String id, String tipo, {bool fixo}) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/pontos/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetObjectRespQuantidade(url, fixo);
  }

  Future<RespQuantidadeModel> jogos(String idUsuario, String ano, String id, String tipo, {bool fixo}) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/jogos/usuario/${idUsuario}?ano=${ano}&&id=${id}&&tipo=${tipo}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetObjectRespQuantidade(url, fixo);
  }

  Future<RespPerformanceModel> avaliativa(String idUsuario, String tipo, String ano, {bool fixo}) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/avaliativa/usuario/${idUsuario}/${tipo}?ano=${ano}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetObjectRespPerformance(url, fixo);
  }

  Future<QuantidadeModel> quantitativa(String idUsuario, String tipoestatistica, String ano, String id, String tipo, {bool fixo}) async {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/qtd/usuario/${idUsuario}/${tipoestatistica}?ano=${ano}&&id=${id}&&tipo=${tipo}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetObjectQuantidade(url, fixo);
  }

  Future<RespQuantidadeModel> qtdAceitas(String idUsuario, {bool fixo}) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/qtdavaliacoesaceitas/usuario/${idUsuario}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetObjectRespQuantidade(url, fixo);
  }

  Future<RespQuantidadeModel> qtdRecusadas(String idUsuario, {bool fixo}) {
    String url = "${ConstantesRest.URL_ESTATISTICAS}/qtdavaliacoesrecusadas/usuario/${idUsuario}";
    EstatisticaRest estatisticaRest = EstatisticaRest();
    return estatisticaRest.processaHttpGetObjectRespQuantidade(url, fixo);
  }

}