import 'package:com/br/com/futt/view/DashboardView.dart';
import 'package:com/br/com/futt/view/EscolinhasView.dart';
import 'package:com/br/com/futt/view/TorneiosView.dart';
import 'package:flutter/material.dart';

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

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
            opacity: 1,
          ),
          backgroundColor: Colors.indigo,
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
