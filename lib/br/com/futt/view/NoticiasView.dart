import 'package:flutter/material.dart';

class NoticiasView extends StatefulWidget {
  @override
  _NoticiasViewState createState() => _NoticiasViewState();
}

class _NoticiasViewState extends State<NoticiasView> {
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
                  "Conteúdo das notícias",
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
