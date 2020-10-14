import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../views/helper/Helper.dart';
import '../../../constants.dart';
import '../../views/dialog.dart';

class MovieRatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(),
          Constants.spaceSmallHeight,
          MovieRatePageForm(),
          Spacer(),
        ],
      ),
    );
  }
}

class MovieRatePageForm extends StatefulWidget {
  @override
  MovieRatePageFormState createState() {
    return MovieRatePageFormState();
  }
}

class MovieRatePageFormState extends State<MovieRatePageForm> {
  final _formKey = GlobalKey<FormState>();

  void _rateMovieValidation() {
    if (!_formKey.currentState.validate()) return;

    mDialog.showInfo(
      context: context,
      message: 'Sua Avaliacao foi realizada com sucesso.',
      buttonPressed: () => Helper
        ..back(context)
        ..back(context), // Tem que ir pro 'home/pagina inicial'
    );
  }

  void _cancel() {
    Helper.back(context);
  }

  //Fazer a avaliacao de pelo menos 5 filmes.
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: Constants.paddingMedium,
        ));
  }
}
