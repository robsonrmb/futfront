import 'package:flutter/material.dart';

class EstatisticasView extends StatefulWidget {
  @override
  _EstatisticasViewState createState() => _EstatisticasViewState();
}

class _EstatisticasViewState extends State<EstatisticasView> {
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
                Text(
                  "Conteúdo das estatísticas",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
