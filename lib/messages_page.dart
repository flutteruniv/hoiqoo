import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// メッセージ一覧ページ
class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("メッセージ一覧", style: TextStyle(fontSize: 18)),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Column(
        children: const [
          MessagesList(), //メッセージ一覧
        ],
      ),
    );
  }
}

// メッセージのリスト
// riverpodでメッセージ一覧を取得し、メッセージのリストを作成
class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    // Messageデータを取得（本番では、riverpodで取得する）
    // 今は仮のMessageデータを作成
    final List<MockMessage> messages = <MockMessage>[
      MockMessage(
        id: 0,
        image: 'assets/images/icon.png',
        name: 'あおぞら保育園',
        content: '最寄りは初台駅で良いでしょうか',
        timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
      ),
      MockMessage(
        id: 1,
        image: 'assets/images/icon.png',
        name: 'にじいろ保育園',
        content: 'こんにちは！よろしくお願いします！',
        timestamp:
            (DateTime.now().millisecondsSinceEpoch - 86400000).toString(),
      ),
      MockMessage(
        id: 2,
        image: 'assets/images/icon.png',
        name: 'おひさま保育園',
        content: '初めまして。おひさま保育園の田中です。',
        timestamp:
            (DateTime.now().millisecondsSinceEpoch - 17280000).toString(),
      ),
      MockMessage(
        id: 3,
        image: 'assets/images/icon.png',
        name: 'ほしぞら保育園',
        content: '初めまして。よろしくお願いします。早速ですが希望のシフトの確認をさせてください。',
        timestamp:
            (DateTime.now().millisecondsSinceEpoch - 31536000000).toString(),
      ),
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          return MessageBuildItem(message: messages[index]);
        },
      ),
    );
  }
}

// メッセージ(ListTile)
// メッセージモデルを引数に取ってItemを構築する
// ListTileをタップしたら、メッセージ詳細画面に遷移したい
class MessageBuildItem extends StatelessWidget {
  const MessageBuildItem({super.key, required this.message});

  final MockMessage message;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // [TODO]:keyつけたい
      leading: Image.asset(message.image),
      title: Text(
        message.name,
      ),
      subtitle: Text(
        message.content,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        getTime(message.timestamp),
      ),
      isThreeLine: true,
    );
  }
}

// タイムスタンプをフォーマットして、
// メッセージ一覧に表示する日付の文字列を返す
// (例)
// ・24時間以内のメッセージ -> 10:24AM
// ・24時間〜48時間のメッセージ -> 昨日
// ・48時間〜１年のメッセージ -> 11月15日
// ・１年〜のメッセージ -> 2021年5月15日
String getTime(String timestamp) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
  int millisecondsFromNow = dateTime
      .difference(DateTime.now())
      .inMilliseconds
      .abs(); //ミリ秒数（現在時刻から何ミリ秒前のメッセージなのか）
  DateFormat format;

  if (millisecondsFromNow <= 86400000) {
    //24時間以内
    format = DateFormat.jm();
  } else if (millisecondsFromNow <= 172800000) {
    //48時間以内
    return '昨日';
  } else if (millisecondsFromNow <= 31536000000) {
    //1年以内
    format = DateFormat.MMMMd();
  } else {
    //1年より前
    format = DateFormat.yMd();
  }
  return format
      .format(DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp)));
}

// メッセージクラス(仮)
// メッセージ一覧に表示するメッセージに必要最低限の要素を定義
class MockMessage {
  const MockMessage({
    required this.id,
    required this.image,
    required this.name,
    required this.content,
    required this.timestamp,
  });

  final int id;
  final String image; //アイコン画像のパス
  final String name; //名前　(例)あおぞら保育園
  final String content; //メッセージ文
  final String timestamp; //時刻
}
