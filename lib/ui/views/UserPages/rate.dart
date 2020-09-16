import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../views/helper/Helper.dart';
import '../../../constants.dart';
import '../../views/dialog.dart';
import 'package:movieapp/ui/widgets/Labels.dart';
import 'package:movieapp/ui/widgets/Buttons.dart';


class RatePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes'),
      ),
      body: Column(
        children: <Widget>[
          Spacer(),
          Constants.spaceSmallHeight,
          RatePageForm(),
          Spacer(),
        ],
      ),
    );
  }
}

class RatePageForm extends StatefulWidget {
  @override
  RatePageFormState createState() => RatePageFormState();
}

class RatePageFormState extends State<RatePageForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(),
    );
  }
}