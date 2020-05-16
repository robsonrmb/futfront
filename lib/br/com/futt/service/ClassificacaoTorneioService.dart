import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/ClassificacaoTorneioModel.dart';
import 'package:com/br/com/futt/rest/ClassificacaoTorneioRest.dart';

class ClassificacaoTorneioService {

  Future<List<ClassificacaoTorneioModel>> listaTodos(bool fixo) {
    String url = "${ConstantesRest.URL_TIPO_TORNEIO}";
    ClassificacaoTorneioRest tipoTorneioRest = ClassificacaoTorneioRest();
    return tipoTorneioRest.processaHttpGetList(url, fixo);
  }

}