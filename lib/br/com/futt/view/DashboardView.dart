import 'package:com/br/com/futt/view/EstatisticasView.dart';
import 'package:com/br/com/futt/view/NoticiasView.dart';
import 'package:com/br/com/futt/view/RankingView.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {

  int _indiceSubviewAtual = 1;

  List<Widget> subviews_dashboard = [
    NoticiasView(),
    EstatisticasView(),
    RankingView()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _indiceSubviewAtual = 0;
                    });
                  },
                  child: Text(
                    "Notícias",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _indiceSubviewAtual = 1;
                    });
                  },
                  child: Text(
                    "Estatísticas",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _indiceSubviewAtual = 2;
                    });
                  },
                  child: Text(
                    "Ranking",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: subviews_dashboard[_indiceSubviewAtual],
            )
          ],
        ),
      ),
    );
  }
}
