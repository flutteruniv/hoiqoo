import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './saito.dart';
import './oden.dart';
import './takasu.dart';
import './fukushin.dart';
import 'mock/repository/mock_enterprise_repository.dart';
import 'mock/repository/mock_offer_repository.dart';
import 'mock/repository/mock_offer_tag_repository.dart';
import 'mock/repository/mock_tag_repository.dart';
import 'repository/offer/enterprise_base_repository.dart';
import 'repository/offer/offer_base_repository.dart';
import 'repository/offer/offer_tag_repository.dart';
import 'repository/offer/tag_base_repository.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        offerRepositoryProvider.overrideWith(
          (ref) {
            return MockOfferRepository();
          },
        ),
        enterpriseRepositoryProvider.overrideWith(
          (ref) {
            return MockEnterpriseRepository();
          },
        ),
        offerTagRepositoryProvider.overrideWith(
          (ref) {
            return MockOfferTagRepository();
          },
        ),
        tagRepositoryProvider.overrideWith(
          (ref) {
            return MockTagRepository();
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hoiqoo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'hoiqoo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(40),
              child:
                  const Text('hoiqoo スキルテスト', style: TextStyle(fontSize: 24)),
            ),
            const Nav(page: Saito(label: '齋藤'), label: "齋藤"),
            const Nav(page: Oden(label: 'おでん'), label: "おでん"),
            const Nav(page: Takasu(label: '高須'), label: "高須"),
            const Nav(page: Fukushin(label: 'フクシン'), label: "フクシン"),
          ],
        ),
      ),
    );
  }
}

class Nav extends StatelessWidget {
  const Nav({
    Key? key,
    required this.page,
    required this.label,
  }) : super(key: key);

  final Widget page;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return page;
        }));
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.width * 0.15,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(label, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
