// CORE
import 'dart:core';
import 'package:flutter/material.dart';

class Oden extends StatefulWidget {
  const Oden({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  State<StatefulWidget> createState() => _OdenState();
}

class _OdenState extends State<Oden> {
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
        child: Column(
          // TODO: 各要素を画面の上下左右中央に配置してください
            children: [
              // TODO: 自分の名前を今より大きく表示してください
              const Text("テスト"),
              // TODO: 自分のslackアイコンを画面横幅の半分の大きさで表示してください
              Image.asset("assets/images/icon.png"),
            ]
        ),
      ),
    );
  }
}