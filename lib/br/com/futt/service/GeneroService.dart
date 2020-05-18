import 'package:com/br/com/futt/model/utils/GeneroModel.dart';
import 'package:com/br/com/futt/rest/utils/GeneroRest.dart';

class GeneroService {

  Future<List<GeneroModel>> listaGeneros() async {
    GeneroRest generoRest = GeneroRest();
    return generoRest.processaHttpGetList();
  }

}