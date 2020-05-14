import 'package:flutter/material.dart';

class RankingView extends StatefulWidget {
  @override
  _RankingViewState createState() => _RankingViewState();
}

class _RankingViewState extends State<RankingView> {
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
                  "Conteúdo dos rankings",
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
