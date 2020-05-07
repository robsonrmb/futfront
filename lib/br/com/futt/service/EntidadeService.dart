import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/model/EntidadeModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EntidadeService {

  Future<EntidadeModel> listaPorUsuario() async {

    http.Response response = await http.get("${ConstantesRest.URL_ENTIDADE}/ativasdousuariologado");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EntidadeModel> listaEntidadeModel = dadosJson[""].map<EntidadeModel>(
          (map){
            return EntidadeModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  Future<EntidadeModel> listaAtivas() async {

    http.Response response = await http.get("${ConstantesRest.URL_ENTIDADE}/ativas");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      List<EntidadeModel> listaEntidadeModel = dadosJson[""].map<EntidadeModel>(
              (map){
            return EntidadeModel.fromJson(map);
          }
      ).toList();

    }else{
      throw Exception('Failed to load Tipo Torneio!!!');
    }
  }

  inclui(var entidadeModel) async {

    http.Response response = await http.post(
        ConstantesRest.URL_ENTIDADE,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(entidadeModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualiza(var entidadeModel) async {

    http.Response response = await http.put(
        ConstantesRest.URL_ENTIDADE,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonDecode(entidadeModel)
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

  atualizaDisponiblidade(String id, String qtdDias) async {

    http.Response response = await http.put(
        "${ConstantesRest.URL_ENTIDADE}/${id}/${qtdDias}",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        }
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load!!!');
    }
  }

}