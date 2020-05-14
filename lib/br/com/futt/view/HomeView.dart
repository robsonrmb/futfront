import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/view/DashboardView.dart';
import 'package:com/br/com/futt/view/EscolinhasView.dart';
import 'package:com/br/com/futt/view/LoginView.dart';
import 'package:com/br/com/futt/view/TorneiosView.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int _indiceAtual = 1;

  @override
  Widget build(BuildContext context) {

    List<Widget> views = [
      TorneiosView(),
      DashboardView(),
      EscolinhasView()
    ];

    _abrirAvaliacoes() {
      print("Abrindo avaliações...");
      Navigator.pushNamed(context, "/avaliacoes");
      /*
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AvaliacoesView())
      );
       */
    }

    _abrirPerfil() {
      print("Abrindo perfil...");
      Navigator.pushNamed(context, "/perfil");
      /*
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PerfilView())
      );
       */
    }

    _sairApp() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(ConstantesConfig.PREFERENCES_EMAIL);
      await prefs.remove(ConstantesConfig.PREFERENCES_SENHA);

      Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginView()));
    }

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
            opacity: 1,
          ),
          backgroundColor: Color(0xff093352),
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          title: Text("Dashboard"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.videocam),
              onPressed: _abrirAvaliacoes,
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: _abrirPerfil,
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: _sairApp,
            ),
          ],
        ),
      body: views[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed, //este e o padrão
        fixedColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            title: Text("Torneios"),
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            title: Text("Dahboard"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Escolinhas"),
            icon: Icon(Icons.school),
          )
        ],
      ),
    );
  }
}
