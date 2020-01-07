import 'dart:math';

import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  var _coins = ["moeda_cara", "moeda_coroa"];

  var coin;

  ResultPage() {
    this.coin = _coins[Random().nextInt(_coins.length)];
  }

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
          padding: EdgeInsets.all(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("images/${widget.coin}.png"),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset("images/botao_voltar.png"),
                ),
              )
            ],
          ),
        ));
  }
}
