// CORE
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:hoiqoo/login/login_page.dart';

class Takasu extends StatefulWidget {
  const Takasu({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  State<StatefulWidget> createState() => _TakasuState();
}

class _TakasuState extends State<Takasu> {
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
                      builder: (context) => LoginPage()));
            },
            child: Text('ログインへ')),
      ),
    );
  }
}
