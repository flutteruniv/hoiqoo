// リスト一覧画面用Widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Color> colorList = [Colors.cyan, Colors.deepOrange, Colors.indigo];
List<String> workplace = ['おりひめ保育園', 'ひこぼし保育園', 'ジャガイモ保育園', 'サラダこども園'];
List<String> workplacepic = [
  'images/orihime.jpg',
  'images/hikobosi.jpeg',
  'images/hikobosi.jpeg',
  'images/hikobosi.jpeg'
];

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('ListView.builder'),
      centerTitle: true,
    ),
    body: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 80,
          color: colorList[index % colorList.length],
        );
      },
    ),
  );
}

class JobListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBarを表示し、タイトルも設定
      appBar: AppBar(
        title: const Text(
          'ジョブリスト一覧',
//            style: Theme.of(context).textTheme.bodyText2,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white60,
        actions: [],
      ),
      // ListViewを使いリスト一覧を表示
      body: ListView.builder(
        itemCount: workplace.length, //
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                title: Text(workplace[index]),
                leading: Image.asset(workplacepic[index]),
              ),
              Divider()
            ],
          );
        },
      ),
    );
  }
}
