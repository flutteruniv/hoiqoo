// CORE
import 'dart:core';
import 'package:flutter/material.dart';

class Fukushin extends StatefulWidget {
  const Fukushin({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  State<StatefulWidget> createState() => _FukushinState();
}

class _FukushinState extends State<Fukushin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.label, style: const TextStyle(fontSize: 18)),
          centerTitle: true,
          elevation: 0.5,
      ),
      // TODO: 画面の背景色をグレーにしてください
      body: ColoredBox(
        color: Colors.grey,
        child: Center(
          child: Column(
            // TODO: childrenに含まれる各要素を画面の上下左右中央に配置してください
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: 自分の名前を今より大きく表示してください
              const Text(
                "フクシン",
                style: TextStyle(
                  fontSize: 63,
                ),
              ),
              // TODO: 自分のslackアイコンを画面横幅の半分の大きさで表示してください
              Image.network('https://ca.slack-edge.com/T012UQWDRQC-U03738ZNU04-1cfb65560f49-512',
                width: MediaQuery.of(context).size.width / 2,
              ),
            ]
          ),
        ),
      ),

    );
  }
}
