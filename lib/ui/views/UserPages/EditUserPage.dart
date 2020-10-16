import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../views/helper/Helper.dart';
import '../../../constants.dart';
import '../../views/dialog.dart';
import 'package:movieapp/ui/widgets/Labels.dart';
import 'package:movieapp/ui/widgets/Buttons.dart';

// EditUserPage
// EditUserPageForm
// EditUserPageFormState
class EditUserPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Row(),
    ); //UserTextFormField(this.user, this.textInputType, this.labelText, this.invalidValueName, this.userNewProperty));
  }
}