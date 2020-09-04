import 'package:flutter/material.dart';
import 'package:movieapp/src/ui/views/login/LoginPage.dart';
import 'Theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MovieAppThemeData,
      home: LoginPage(),
    );
  }
}

