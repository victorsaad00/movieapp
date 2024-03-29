import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

// SugestionPage
// SugestionPageForm
// SugestionPageFormState
class SugestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pra voce'),
      ),
      body: Column(
        children: <Widget>[
          Spacer(),
          Constants.spaceSmallHeight,
          SugestionPageForm(),
          Spacer(),
        ],
      ),
    );
  }
}

class SugestionPageForm extends StatefulWidget {
  @override
  SugestionPageFormState createState() => SugestionPageFormState();
}

class SugestionPageFormState extends State<SugestionPageForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(),
    );
  }
}
