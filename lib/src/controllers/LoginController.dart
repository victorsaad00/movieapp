import 'package:flutter/cupertino.dart';
import 'package:movieapp/src/listeners/LoginFormListener.dart';

class LoginFormController extends TextEditingController{
  LoginFormController(): super();
  void buildListener(String login, String password) {
    super.addListener(() {
      LoginFormListener(login, password);
    });
  }
}