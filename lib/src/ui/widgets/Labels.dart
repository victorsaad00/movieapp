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

// Titulo que aparece no forms, transforma o texto em hidden ( bool ), label do tipo de texto q sera recebido, mensagem de confirmacao ( string )
Widget TextFormFieldValidator(textInput, obscureTextValidator, inDecorationLabel, message){
  return TextFormField(
    keyboardType: textInput,
    obscureText: obscureTextValidator,
    decoration: InputDecoration(labelText: inDecorationLabel),
    validator: (String value) {
      return value.isEmpty ? message : null;
    },
  );
}

