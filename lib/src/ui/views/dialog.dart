import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final mDialog = _mDialog();

class _mDialog {

  void showInfo({@required context,
        title = 'Sucesso',
        message = 'Operação realizada com sucesso.',
        buttonLabel = 'Fechar',
        buttonPressed}) {
    var dialog = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        FlatButton(
          child: Text(buttonLabel),
          onPressed: () {
            if (buttonPressed != null) {
              buttonPressed();
            } else {
              Navigator.of(context).pop();
            }
          },
        ),
      ],
    );
    showDialog(context: context, child: dialog);
  }
}