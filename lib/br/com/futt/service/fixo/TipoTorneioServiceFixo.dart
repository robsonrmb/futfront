import 'package:com/br/com/futt/model/TipoTorneioModel.dart';
import 'dart:convert';

class TipoTorneioServiceFixo {

  String retorno = '['
        '{ '
          '"id": 1, '
          '"nome": "Dupla eliminatória", '
          '"descricao": null, '
          '"geracaoJogos": "S" '
        '}, '
        '{ '
          '"id": 2, '
          '"nome": "Eliminatória simples", '
          '"descricao": null, '
          '"geracaoJogos": "S" '
        '}, '
        '{ '
          '"id": 3, '
          '"nome": "Torneio de grupos", '
          '"descricao": null, '
          '"geracaoJogos": "N" '
        '}'
      ']';

  String response() {
    return retorno;
  }

  Future<List<TipoTorneioModel>> listaTodos() async {

    var dadosJson = json.decode(retorno);

    List<TipoTorneioModel> lista = List();
    for (var registro in dadosJson) {
      TipoTorneioModel tipoTorneioModel = TipoTorneioModel.fromJson(registro); //.converteJson
      lista.add(tipoTorneioModel);
    }
    return lista;

  }

}