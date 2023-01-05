import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterModel extends ChangeNotifier {
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

  Future signUp() async{
    this.email=techController.text;
    this.password=stageController.text;


    if(email !=null && password !=null){
      //firebase authでユーザー作成
      final userCredential =await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email:email!,password:password!);
      final user=userCredential.user;

      if (user !=null){
        final uid=user.uid;

        //firestoreに追加
        final doc =FirebaseFirestore.instance.collection('users').doc(uid);
        await doc.set({
          'uid': uid,//画面上のTechをtechとして入力
          'email': email,//画面上のStageをstageとして入力
        });
      }
    }
  }
}