import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/src/ui/widgets/Labels.dart';
import 'package:movieapp/src/ui/widgets/Buttons.dart';
import 'films.dart';
import 'package:movieapp/src/controllers/UserController.dart';


class User {

    int ID;
    String name, last_name, email, password, phone;
    var favorite_films;
    List films = <Films>[];
    // Country country;

    User({this.ID, this.name, this.last_name, this.email, this.favorite_films, this.films});

}
