import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/ResultadoModel.dart';
import 'package:com/br/com/futt/rest/ResultadoRest.dart';

class ResultadoService {

  Future<List<ResultadoModel>> listaResultadoDoTorneio(int idTorneio, bool fixo) async {
    String url = "${ConstantesRest.URL_RESULTADOS}/${idTorneio}";
    ResultadoRest resultadoRest = ResultadoRest();
    Future<List<ResultadoModel>> lista = resultadoRest.processaHttpGetList(url, fixo);
    return lista;
  }

}