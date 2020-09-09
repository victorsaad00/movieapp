import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../views/helper/Helper.dart';
import '../../../constants.dart';
import '../../views/dialog.dart';
import 'package:movieapp/src/ui/widgets/Labels.dart';


class RegisterUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(),
          Constants.spaceSmallHeight,
          RegisterUserForm(),
          Spacer(),
        ],
      ),
    );
  }
}

class RegisterUserForm extends StatefulWidget {
  @override
  RegisterUserFormState createState() {
    return RegisterUserFormState();
  }
}

class RegisterUserFormState extends State<RegisterUserForm> {

    final _formKey = GlobalKey<FormState>();

    void _register() {
      if (!_formKey.currentState.validate()) return;

      mDialog.showInfo(
        context: context,
        message: 'Seu cadastro foi realizado com sucesso.',
        buttonPressed: () => Helper..back(context)..back(context),
      );
    }

    void _cancel(){
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
              TextFormFieldValidator(TextInputType.visiblePassword, false, 'Nome*', 'Nome invalido'),
              Constants.spaceSmallHeight,
              TextFormFieldValidator(TextInputType.emailAddress, false, Constants.E_mail, Constants.invalidPassword),
              Constants.spaceSmallHeight,
              TextFormFieldValidator(TextInputType.visiblePassword, true, Constants.pass, Constants.invalidPassword),
              Constants.spaceSmallHeight,
              TextFormFieldValidator(TextInputType.visiblePassword, true, Constants.con_pass, Constants.invalidPassword),
              Constants.spaceSmallHeight,
              TextFormFieldValidator(TextInputType.visiblePassword, false, 'Numero', 'Numero Invalido'),
              Constants.spaceSmallHeight,
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  child: Text('Registrar'),
                  color: Theme.of(context).colorScheme.surface,
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