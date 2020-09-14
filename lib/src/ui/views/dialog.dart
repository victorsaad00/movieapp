import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../views/helper/Helper.dart';
import '../../constants.dart';

final mDialog = _mDialog();

class _mDialog {

  void showInfo({@required context,
        title = Constants.success,
        message = Constants.success_message,
        buttonLabel = Constants.close,
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

  void showNext({@required context,
    title = Constants.success,
    message = Constants.success_message,
    buttonLabel = Constants.next,
    cancelLabel = Constants.cancel,
    buttonPressed}) {
    var dialog = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        FlatButton(
          child: Text(cancelLabel),
          onPressed: () {
            if (buttonPressed != null) {
              _cancel(context);
            }
          },
        ),
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

  void _cancel(context){
    Helper.back(context);
  }
}