import 'package:flutter/material.dart';
import 'package:movieapp/ui/views/UserPages/UserPage.dart';
import 'package:movieapp/ui/views/login/ForgotPassword.dart';
import 'package:movieapp/ui/views/login/LoginPage.dart';
import 'package:movieapp/ui/views/login/movieRate.dart';
import 'package:movieapp/ui/views/login/register.dart';
import 'Theme.dart';
import 'objects/User.dart';
import 'objects/films.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MovieAppThemeData,
      home: LoginPage(),
      initialRoute: '/',
      routes: _buildRoutes(context),
    );
  }

  _buildRoutes(context){
    return{
      //'/': (context) => LoginPage(),
      '/Home': (context) => UserPage(),
      '/EditUser': (context) => MaintainUserPage(),
      '/LoginPage': (context) => LoginPage(),
      '/MovieRate': (context) => MovieRatePage(),
      '/Register': (context) => RegisterUserPage(),
      '/ForgottenPass': (context) => ForgetPasswordResetPage(),
      '/User': (context) => MaintainUserPage(),
      '/Films': (context) => MaintainFilms(),
    };
  }
}

