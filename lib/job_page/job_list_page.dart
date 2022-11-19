// リスト一覧画面用Widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBarを表示し、タイトルも設定
      appBar: AppBar(
          title: const Text(
            'ジョブリスト一覧',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white60,
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.red,
            ),
          ]),
      // ListViewを使いリスト一覧を表示
      body: ListView(
        children: <Widget>[
          // *** 追加する部分 ***
          // CardとListTileを使い、簡単に整ったUIを作成
          Card(
            child: ListTile(
              title: Text('おりひめ保育園'),
              leading: Image.asset('images/orihime.jpg'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ひこぼし保育園'),
              leading: Image.asset('images/hikobosi.jpeg'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ジャガイモを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('カレールーを買う'),
            ),
          ),
        ],
      ),
    );
  }
}
