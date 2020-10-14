import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

// FavoriteFilmsPage
// FavoriteFilmsPageForm
// FavoriteFilmsPageFormState
class FavoriteMoviesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes Favoritos'),
      ),
      body: Column(
        children: <Widget>[
          Spacer(),
          Constants.spaceSmallHeight,
          FavoriteMoviesPageForm(),
          Spacer(),
        ],
      ),
    );
  }
}

class FavoriteMoviesPageForm extends StatefulWidget {
  @override
  FavoriteFilmsPageFormState createState() => FavoriteFilmsPageFormState();
}

class FavoriteFilmsPageFormState extends State<FavoriteMoviesPageForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(),
    );
  }
}
