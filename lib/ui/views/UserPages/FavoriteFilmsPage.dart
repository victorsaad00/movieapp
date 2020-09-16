import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../views/helper/Helper.dart';
import '../../../constants.dart';
import '../../views/dialog.dart';
import 'package:movieapp/ui/widgets/Labels.dart';
import 'package:movieapp/ui/widgets/Buttons.dart';

// FavoriteFilmsPage
// FavoriteFilmsPageForm
// FavoriteFilmsPageFormState
class FavoriteFilmsPage extends StatelessWidget {

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
          FavoriteFilmsPageForm(),
          Spacer(),
        ],
      ),
    );
  }
}

class FavoriteFilmsPageForm extends StatefulWidget {
  @override
  FavoriteFilmsPageFormState createState() => FavoriteFilmsPageFormState();
}

class FavoriteFilmsPageFormState extends State<FavoriteFilmsPageForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(),
    );
  }
}