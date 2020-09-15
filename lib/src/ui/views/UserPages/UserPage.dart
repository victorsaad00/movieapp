import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/src/ui/objects/User.dart';
import 'package:movieapp/src/ui/views/UserPages/EditUser.dart';
import '../../views/helper/Helper.dart';
import '../../../constants.dart';
import '../../views/dialog.dart';
import 'package:movieapp/src/ui/widgets/Labels.dart';
import 'package:movieapp/src/ui/widgets/Buttons.dart';


class UserPage extends StatelessWidget {
  var user = new User();

  void _onPressedPass() => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      drawer: drawer(context),
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
      actions: <Widget>[
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

  void _editUserPageRouter(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => EditUserPage()));
  }

  DrawerHeader _buildDrawerHeader(){
    return DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('Rate Movie App'),
            ),
            Spacer(flex: 1,),
          ],
        )
    );
  }

  Drawer drawer (context){
    return Drawer(
      child: ListView(
        children: <Widget>[
          _buildDrawerHeader(),
          ListTile(
            leading: Icon(Icons.movie_creation),
            title: Text('Home'),
            onTap: () => _onPressedPass(),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.local_movies),
            title: Text('Editar Conta'),
            onTap: () => _editUserPageRouter(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Filmes Favoritos'),
            onTap: () => _onPressedPass(),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => _onPressedPass(),
          ),
        ],
      ),
    );
  }
}


