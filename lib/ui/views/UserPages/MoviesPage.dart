import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

// FavoriteFilmsPage
// FavoriteFilmsPageForm
// FavoriteFilmsPageFormState
class MoviesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Film Title'),
      ),
      body: Column(
        children: <Widget>[
          Spacer(),
          Constants.spaceSmallHeight,
          MoviesPageForm(),
          Spacer(),
        ],
      ),
    );
  }
}

class MoviesPageForm extends StatefulWidget {
  @override
  FilmsPageFormState createState() => FilmsPageFormState();
}

class FilmsPageFormState extends State<MoviesPageForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(),
    );
  }
}
