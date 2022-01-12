import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: PagDado(),
      ),
    ),
  );
}

class PagDado extends StatefulWidget {
  @override
  _PagDadoState createState() => _PagDadoState();
}

class _PagDadoState extends State<PagDado> {
  int dadoEsqNum = 3;
  int dadoDirNum = 1;

  void mudarFace() {
    setState(() {
      dadoEsqNum = Random().nextInt(6) + 1;
      dadoDirNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Image.asset('images/dice$dadoEsqNum.png'),
              onPressed: mudarFace,
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Image.asset('images/dice$dadoDirNum.png'),
              onPressed: mudarFace,
            ),
          ),
        ],
      ),
    );
  }
}
