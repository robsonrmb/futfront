import 'package:com/br/com/futt/constantes/ConstantesRest.dart';
import 'package:com/br/com/futt/rest/LoginRest.dart';

class LoginService {

  logar(var loginModel) {
    String url = ConstantesRest.URL_LOGIN;
    LoginRest loginRest = LoginRest();
    loginRest.processaHttpPost(url, loginModel);
  }

}