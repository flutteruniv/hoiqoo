import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier {
  final techController = TextEditingController();
  final stageController = TextEditingController();

  String? email;
  String? password;

  bool isLoading=false;

  void startLoading() {
    isLoading = true;
    notifyListeners();
  }

  void endLoading() {
    isLoading = false;
    notifyListeners();
  }

  void setEmail(String email){
    this.email = email;//画面上のTechをTechとして認識
    notifyListeners();
  }

  void setPassword(String password){
    this.password = password;//画面上のStageをStageとして認識
    notifyListeners();
  }

  Future signup() async{
    this.email=techController.text;
    this.password=stageController.text;

    if (email !=null && password !=null) {
      //ログイン
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
    }
  }
}