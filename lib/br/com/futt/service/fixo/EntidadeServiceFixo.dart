import 'package:com/br/com/futt/model/EntidadeModel.dart';
import 'dart:convert';

class EntidadeServiceFixo {

  String retornoEntidade = '{'
        '"id": 1,'
        '"nome": "Confederação Brasilense de Futevolei",'
        '"sigla": "CBFv",'
        '"tipo": 0,'
        '"website": "cbfv.com.br",'
        '"status": "A",'
        '"disponibilidade": null,'
        '"idResponsavelEntidade": 1,'
        '"idSubresponsavel1": 0,'
        '"idSubresponsavel2": 0,'
        '"idSubresponsavel3": 0'
      '}';

  String retornoEntidades = '['
        '{'
          '"id": 1,'
          '"nome": "Confederação Brasilense de Futevolei",'
          '"sigla": "CBFv",'
          '"tipo": 0,'
          '"website": "cbfv.com.br",'
          '"status": "A",'
          '"disponibilidade": null,'
          '"idResponsavelEntidade": 1,'
          '"idSubresponsavel1": 0,'
          '"idSubresponsavel2": 0,'
          '"idSubresponsavel3": 0'
        '},'
        '{'
          '"id": 2,'
          '"nome": "Confederação Internacional de Futevolei",'
          '"sigla": "FIFv",'
          '"tipo": 1,'
          '"website": null,'
          '"status": "A",'
          '"disponibilidade": null,'
          '"idResponsavelEntidade": 2,'
          '"idSubresponsavel1": 0,'
          '"idSubresponsavel2": 0,'
          '"idSubresponsavel3": 0'
        '}'
      ']';

  String responseLista() {
    return retornoEntidades;
  }

  String responseObjeto() {
    return retornoEntidade;
  }

  Future<EntidadeModel> _buscaEntidadeFixo() async {
    var dadosJson = json.decode(retornoEntidade);
    return EntidadeModel.fromJson(dadosJson); //.converteJson
  }

  Future<List<EntidadeModel>> _listaEntidadesFixo() async {
    var dadosJson = json.decode(retornoEntidades);
    List<EntidadeModel> lista = List();
    for (var registro in dadosJson) {
      EntidadeModel entidadeModel = EntidadeModel.fromJson(registro); //.converteJson
      lista.add(entidadeModel);
    }
    return lista;
  }

  Future<List<EntidadeModel>> listaPorUsuario() async {
    return _listaEntidadesFixo();
  }

  Future<List<EntidadeModel>> listaAtivas() async {
    return _listaEntidadesFixo();
  }

}