import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/drawer.dart';
import '../../views/helper/Helper.dart';
import '../../../constants.dart';
import '../../views/dialog.dart';
import 'package:movieapp/src/ui/widgets/Labels.dart';
import 'package:movieapp/src/ui/widgets/Buttons.dart';


class HomePage extends StatelessWidget {

  void _onPressedPass() => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      drawer: MovieDrawer(),
      body: _homeBuildBody(context)
    );
  }

  Widget _homeBuildBody(context) {
    return Center(
      child: IntrinsicWidth(
        child: HomeButtons(context, _onPressedPass, _onPressedPass),
      )
    );
  }
  
  AppBar _buildAppBar(context){
    void onPressedPass() => null;
    return AppBar(
      title: Text('Home'),
      actions: [
        IconButton (
          onPressed: () => onPressedPass(),
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ]
    );
  }
}


