import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/controllers/LoginController.dart';
import 'package:movieapp/ui/views/UserPages/UserPage.dart';
import 'package:movieapp/ui/views/login/ForgotPassword.dart';
import 'package:movieapp/ui/views/login/register.dart';
import 'package:movieapp/ui/widgets/Buttons.dart';
import 'package:movieapp/ui/widgets/Containers.dart';
import 'package:movieapp/ui/widgets/Labels.dart';
import '../../../constants.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(),
          LoginForm(),
          Spacer(),
        ],
      ),
    );
  }
}
class LoginForm extends StatefulWidget {
  LoginForm({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _controller = LoginFormController();

  @override void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _forgotPassword(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordResetPage()));
  }

  void _registerUser(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterUserPage()));
  }

  //Precisa validar o login obviamente.
  void _goToUserPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> UserPage()));
  }

  void onPressedPass() => null;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: Constants.paddingMedium,
        child: Column(
          children: <Widget>[
            TextForm1(context, Constants.login),
            TextForm1(context, Constants.password, true),
            Container1(context, Constants.forgot_password, _forgotPassword),
            Constants.spaceMediumHeight,
            SelectButton(context, Constants.login, _goToUserPage),
            SelectFlatButton(context, Constants.register, _registerUser),
          ],
        ),
      ),
    );
  }
}