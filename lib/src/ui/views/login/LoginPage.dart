import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/src/controllers/LoginController.dart';
import 'package:movieapp/src/ui/widgets/Form.dart';
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

  void onPressedPass() => null;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: Constants.paddingMedium,
        child: Column(
          children: <Widget>[
            TextForm(context, 0),
            TextForm(context, 1),
            ContainerForm(context, onPressedPass),
            Constants.spaceMediumHeight,
            LoginButton(context, onPressedPass),
            RegisterButton(context, onPressedPass),
          ],
        ),
      ),
    );
  }
}