import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

Widget Button1(context, text, onPressed) {
  return SizedBox(
    width: double.infinity,
    child: RaisedButton(
      color: Theme.of(context).colorScheme.surface,
      child: Text(text),
      onPressed: onPressed,
    ),
  );
}

Widget Button2(context, text, onPressed) {
  return FlatButton(
    child: Text(text),
    padding: Constants.paddingSmall,
    onPressed: onPressed,
  );
}