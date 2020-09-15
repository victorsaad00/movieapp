import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/src/constants.dart';
import 'package:movieapp/src/ui/objects/User.dart';
import 'package:movieapp/src/ui/views/helper/Helper.dart';
import 'package:movieapp/src/ui/widgets/Buttons.dart';
import 'package:movieapp/src/ui/widgets/Containers.dart';
import 'package:movieapp/src/ui/widgets/Labels.dart';

import '../dialog.dart';


class EditUserPage extends StatelessWidget{

  void _onPressedPass() => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Conta'),
      ) ,
      body: Column(
        children: <Widget>[
          Spacer(),
          Constants.spaceSmallHeight,
          EditUserPageForm(),
          Spacer(),
        ],
      ),
    );
  }
}

class EditUserPageForm extends StatefulWidget {
  @override
  EditUserPageFormState createState() => EditUserPageFormState();
}

class EditUserPageFormState extends State<EditUserPageForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: Constants.paddingMedium,
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}