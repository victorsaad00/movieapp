import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../views/helper/Helper.dart';
import '../../../constants.dart';
import '../../views/dialog.dart';
import 'package:movieapp/src/ui/widgets/Labels.dart';
//import 'package:movieapp/src/ui/Theme.dart';


class ForgetPasswordResetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(),
          Constants.spaceSmallHeight,
          ResetPasswordForm(),
          Spacer(),
        ],
      ),
    );
  }
}

class ResetPasswordForm extends StatefulWidget {
  @override
  ResetPasswordFormState createState() {
    return ResetPasswordFormState();
  }
}

class ResetPasswordFormState extends State<ResetPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  void _register() {
    if (!_formKey.currentState.validate()) return;

    mDialog.showInfo(
      context: context,
      message: 'Seu cadastro foi realizado com sucesso.',
      buttonPressed: () => Helper..back(context)..back(context),
    );
  }

  void _cancel() {
    Helper.back(context);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: Constants.paddingMedium,
        child: Column(
          children: <Widget>[
            TextFormFieldValidator(TextInputType.emailAddress, false, 'Confirme seu E-mail*', 'Email inválido.'),
            Constants.spaceSmallHeight,
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).colorScheme.surface,
                child: Text('Enviar'),
                onPressed: _register,
              ),
            ),
            FlatButton(
              child: Text('Cancelar'),
              padding: Constants.paddingSmall,
              onPressed: _cancel,
            ),
          ],
        ),
      ),
    );
  }
}