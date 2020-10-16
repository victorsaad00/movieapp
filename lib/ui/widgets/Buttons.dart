import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';


Widget SelectFlatButton(context, text, function) {
  return FlatButton(
    child: Text(text),
    padding: Constants.paddingSmall,
    onPressed: function,
  );
}

Widget SelectButton(context, text, function){
  return SizedBox(
    width: double.infinity,
    child: RaisedButton(
      child: Text(text),
      color: Theme.of(context).colorScheme.surface,
      onPressed: function,
    ),
  );
}
