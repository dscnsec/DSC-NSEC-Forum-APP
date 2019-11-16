import 'package:flutter/material.dart';

class LoginState with ChangeNotifier{
  bool isLoggedin;
  LoginState(){
    isLoggedin = false;
  }
  void login(){
    isLoggedin = !isLoggedin;
    //TODO: Implement login handling here
    notifyListeners();
  }
}