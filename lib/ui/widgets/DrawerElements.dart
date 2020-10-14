import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../views/helper/Helper.dart';

Widget ListTileDrawer(icon, text, context, goTo, [exit = false]) {
  return ListTile(
    leading: Icon(icon),
    title: Text(text),
    onTap: () => exit ? Helper.exit(context) : Helper.go(context, goTo),
  );
}
