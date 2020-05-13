import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/view/LoginView.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {

  _sair() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(ConstantesConfig.PREFERENCES_EMAIL);
    await prefs.remove(ConstantesConfig.PREFERENCES_SENHA);

    Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginView()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Dashboard",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            RaisedButton(
              color: Color(0xff2c7ce7),
              textColor: Colors.white,
              padding: EdgeInsets.all(15),
              child: Text(
                "Sair",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Candal',
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              onPressed: _sair,
            ),
          ],
        ),
      ),
    );
  }
}
