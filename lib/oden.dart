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
      body: ColoredBox(
        color: Colors.grey,
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Column(
                    // TODO: 各要素を画面の上下左右中央に配置してください
                    children: [
                      const Center(
                        child: Text('上'),
                      ),
                      // TODO: 自分の名前を今より大きく表示してください
                      const Text(
                        "おでん",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      // TODO: 自分のslackアイコンを画面横幅の半分の大きさで表示してください
                      Image.asset("assets/images/icon.png"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('左'),
                          Text('中央'),
                          Text('右'),
                        ],
                      ),
                    ]),
              ),
              const Center(
                child: Text('下'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
