import 'package:com/br/com/futt/model/EntidadeModel.dart';
import 'package:com/br/com/futt/rest/BaseRest.dart';
import 'package:com/br/com/futt/service/fixo/EntidadeServiceFixo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EntidadeRest extends BaseRest {

  Future<List<EntidadeModel>> processaHttpGetList(String url, bool fixo) async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var dadosJson = json.decode(response.body);
        return _parseListaEntidadeModel(dadosJson);

      } else {
        throw Exception('Failed to load Tipo Torneio!!!');
      }
    } on Exception catch (exception) {
      print(exception.toString());
      if (fixo != null && fixo == true) {
        EntidadeServiceFixo serviceFixo = EntidadeServiceFixo();
        var dadosJson = json.decode(serviceFixo.responseLista());
        return _parseListaEntidadeModel(dadosJson);

      } else {
        throw Exception('Falha ao listar resultados!!!');
      }

    } catch (error) {
      print(error.toString());
    }

  }

  List<EntidadeModel> _parseListaEntidadeModel(dadosJson) {
    List<EntidadeModel> lista = List();
    for (var registro in dadosJson) {
      EntidadeModel resultadoModel = EntidadeModel.fromJson(
          registro); //.converteJson
      lista.add(resultadoModel);
    }
    return lista;
  }

}