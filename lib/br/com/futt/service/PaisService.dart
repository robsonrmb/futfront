import 'package:com/br/com/futt/model/utils/PaisModel.dart';
import 'package:com/br/com/futt/rest/utils/PaisRest.dart';

class PaisService {

  Future<List<PaisModel>> listaPaises() async {
    PaisRest paisRest = PaisRest();
    return paisRest.processaHttpGetList();
  }

}