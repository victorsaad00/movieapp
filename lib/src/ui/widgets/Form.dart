import 'package:flutter/material.dart';

import '../../constants.dart';

Widget TextForm(context, [isPassword = false]) {
  return TextFormField(
    keyboardType: TextInputType.text,
    decoration: const InputDecoration(labelText: 'Login*'),
    validator: (String value) {
      if (isPassword) return value.isEmpty ? 'Senha inválida.' : null;
      return value.isEmpty ? 'Login inválido.' : null;
    },
  );
}

Widget ContainerForm(context, onPressed) {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      child: Text('Esqueceu a senha?'),
      padding: Constants.paddingSmall,
      onPressed: onPressed,
    ),
  );
}

Widget LoginButton(context, onPressed) {
  return SizedBox(
    width: double.infinity,
    child: RaisedButton(
      child: Text('Login'),
      onPressed: onPressed,
    ),
  );
}

Widget RegisterButton(context, onPressed) {
  return FlatButton(
    child: Text('Cadastre-se'),
    padding: Constants.paddingSmall,
    onPressed: onPressed,
  );
}