import 'package:flutter/material.dart';

class EscolinhasView extends StatefulWidget {
  @override
  _EscolinhasViewState createState() => _EscolinhasViewState();
}

class _EscolinhasViewState extends State<EscolinhasView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: Text(
          "Escolinhas",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
