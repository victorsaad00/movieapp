import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

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
      child: Row(),
    );
  }
}
