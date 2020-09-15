import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/ui/views/login/movieRate.dart';
import '../../views/helper/Helper.dart';
import '../../../constants.dart';
import '../../views/dialog.dart';
import 'package:movieapp/ui/widgets/Labels.dart';
import 'package:movieapp/ui/widgets/Buttons.dart';


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

    void _ratePagePointer(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => MovieRatePage()));
    }

    void _register() {
      if (!_formKey.currentState.validate()) return;

      mDialog.showNext(
        context: context,
        message: 'Seu cadastro foi realizado com sucesso.',
        buttonPressed: () => _ratePagePointer(),
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
              TextFormFieldValidator(TextInputType.visiblePassword, false, Constants.nome, Constants.inNome),
              Constants.spaceSmallHeight,
              TextFormFieldValidator(TextInputType.visiblePassword, false, Constants.last_name, Constants.inNome),
              Constants.spaceSmallHeight,
              TextFormFieldValidator(TextInputType.emailAddress, false, Constants.E_mail, Constants.invalidPassword),
              Constants.spaceSmallHeight,
              TextFormFieldValidator(TextInputType.visiblePassword, true, Constants.pass, Constants.invalidPassword),
              Constants.spaceSmallHeight,
              TextFormFieldValidator(TextInputType.visiblePassword, true, Constants.con_pass, Constants.invalidPassword),
              Constants.spaceSmallHeight,
              TextFormFieldValidator(TextInputType.visiblePassword, false, Constants.numero_cell, Constants.inNumberCell),
              Constants.spaceSmallHeight,
              SelectButton(context, 'Registrar', _register),
              SelectFlatButton(context, 'Cancelar', _cancel),
            ],
          ),
        ),
      );
    }
}