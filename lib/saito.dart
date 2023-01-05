import 'dart:core';

import 'package:flutter/material.dart';
import 'package:hoiqoo/register/register_page.dart';

class Saito extends StatefulWidget {
  const Saito({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  State<StatefulWidget> createState() => _SaitoState();
}

class _SaitoState extends State<Saito> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.label, style: const TextStyle(fontSize: 18)),
        centerTitle: true,
        elevation: 0.5,
      ),
      // TODO: 画面の背景色をグレーにしてください
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      // （2） 実際に表示するページ(ウィジェット)を指定する
                      builder: (context) => RegisterPage()));
            },
            child: Text('登録へ')),
      ),
    );
  }
}
