import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// チャットルーム 一覧ページ
class ChatRoomsPage extends StatelessWidget {
  const ChatRoomsPage({super.key});

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
          ChatRoomsList(), //メッセージ一覧
        ],
      ),
    );
  }
}

// チャットルームのリスト
// riverpodでチャットルーム一覧を取得し、チャットルームのリストを作成
class ChatRoomsList extends StatelessWidget {
  const ChatRoomsList({super.key});

  @override
  Widget build(BuildContext context) {
    // ChatRoomデータを取得（本番では、riverpodで取得する）
    // 今は仮のChatRoomデータを作成
    final List<MockChatRoom> chatRooms = <MockChatRoom>[
      MockChatRoom(
        id: 0,
        image: 'assets/images/icon.png',
        name: 'あおぞら保育園',
        content: '最寄りは初台駅で良いでしょうか',
        timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
      ),
      MockChatRoom(
        id: 1,
        image: 'assets/images/icon.png',
        name: 'にじいろ保育園',
        content: 'こんにちは！よろしくお願いします！',
        timestamp:
            (DateTime.now().millisecondsSinceEpoch - 86400000).toString(),
      ),
      MockChatRoom(
        id: 2,
        image: 'assets/images/icon.png',
        name: 'おひさま保育園',
        content: '初めまして。おひさま保育園の田中です。',
        timestamp:
            (DateTime.now().millisecondsSinceEpoch - 17280000).toString(),
      ),
      MockChatRoom(
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
        itemCount: chatRooms.length,
        itemBuilder: (BuildContext context, int index) {
          return ChatRoomBuildItem(chatRoom: chatRooms[index]);
        },
      ),
    );
  }
}

// チャットルーム(ListTile)
// チャットルームモデルを引数に取ってItemを構築する
// ListTileをタップしたら、チャットルーム詳細画面に遷移したい
class ChatRoomBuildItem extends StatelessWidget {
  const ChatRoomBuildItem({super.key, required this.chatRoom});

  final MockChatRoom chatRoom;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // [TODO]:keyつけたい
      leading: Image.asset(chatRoom.image),
      title: Text(
        chatRoom.name,
      ),
      subtitle: Text(
        chatRoom.content,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        formatTimestamp(chatRoom.timestamp),
      ),
      isThreeLine: true,
    );
  }
}

// タイムスタンプをフォーマットして、
// チャットルーム一覧に表示する日付の文字列を返す
// (例)
// ・24時間以内のメッセージ -> 10:24AM
// ・24時間〜48時間のメッセージ -> 昨日
// ・48時間〜１年のメッセージ -> 11月15日
// ・１年〜のメッセージ -> 2021年5月15日
String formatTimestamp(String timestamp) {
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

// チャットルームクラス(仮)
// チャットルーム一覧に表示するチャットルームに必要最低限の要素を定義
class MockChatRoom {
  const MockChatRoom({
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
