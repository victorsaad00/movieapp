import 'package:flutter/material.dart';

import '../../constants.dart';

Widget TextForm1(context, hintText, [isPassword = false]) {
  return TextFormField(
    keyboardType: TextInputType.text,
    decoration: new InputDecoration(
      hintText: hintText,

    ),
    validator: (String value) {
      if (isPassword) return value.isEmpty ? Constants.invalidPassword : null;
      return value.isEmpty ? Constants.invalidLogin : null;
    },
  );
}
