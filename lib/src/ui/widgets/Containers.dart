import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

Widget Container1(context, text, onPressed) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        child: Text(text),
        padding: Constants.paddingSmall,
        onPressed: onPressed,
      ),
    );
}

