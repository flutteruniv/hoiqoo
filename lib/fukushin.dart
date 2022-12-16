import 'dart:core';

import 'package:flutter/material.dart';
import 'package:hoiqoo/job_page/job_tab_page.dart';

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
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      // （2） 実際に表示するページ(ウィジェット)を指定する
                      builder: (context) => JobTabPage()));
            },
            child: Text('ジョブリストへ')),
      ),
    );
  }
}
