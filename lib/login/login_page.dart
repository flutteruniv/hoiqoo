import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hoiqoo/job_page/job_tab_page.dart';
import 'package:provider/provider.dart';

import '../register/register_page.dart';
import 'login_model.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp(); // new
    return ChangeNotifierProvider<LoginModel>(
      create: (_) => LoginModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('ログイン'),
        ),
        body: Center(
          child: Consumer<LoginModel>(builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: model
                        .techController, // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'Eメール',
                    ),
                    onChanged: (text) {
                      model.setEmail(text);
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: model.stageController,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'パスワード',
                    ),
                    onChanged: (text) {
                      model.setPassword(text);
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      model.startLoading();

                      //更新の処理
                      try {
                        await model.signup();

                        //Navigator.pop(context);//画面遷移
                        Navigator.of(context).push(MaterialPageRoute(
                            // （2） 実際に表示するページ(ウィジェット)を指定する
                            builder: (context) => JobTabPage()));
                      } catch (e) {
                        final snackBar = SnackBar(
                          backgroundColor: Colors.yellow,
                          content: Text(e.toString()),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } finally {
                        model.endLoading();
                      }
                    },
                    child: Text('ログイン'),
                  ),
                  TextButton(
                    onPressed: () async {
                      //画面遷移
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                    child: Text('新規登録の方はこちら'),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
