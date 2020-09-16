import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/ui/objects/User.dart';
import 'package:movieapp/ui/views/UserPages/rate.dart';
import 'package:movieapp/ui/views/UserPages/sugestion.dart';
import 'package:movieapp/ui/views/helper/Helper.dart';
import 'package:movieapp/ui/widgets/Buttons.dart';


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
  
  _goToRatePage(context){
      Navigator.push(context, MaterialPageRoute(builder: (context) => RatePage()));
  }

  _goToSugestionPage(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SugestionPage()));
  }
  
  Widget _homeBuildBody(context) {
    return Center(
      child: IntrinsicWidth(
          child: HomeButtons(context,
                 () =>_goToRatePage(context),
                 () => _goToSugestionPage(context)),
      ),
    );
  }
  
  AppBar _buildAppBar(context){
    void onPressedPass() => null;
    return AppBar(
      title: Text('Home'),
      actions: <Widget>[
        IconButton (
          onPressed: () => onPressedPass(), // implementar
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ]
    );
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
            onTap: () => Helper.go(context, '/Home'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.local_movies),
            title: Text('Editar Conta'),
            onTap: () => Helper.go(context, '/EditUser'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Filmes Favoritos'),
            onTap: () => Helper.go(context, '/FavoriteFilms'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => Helper.exit(context),
          ),
        ],
      ),
    );
  }
}


