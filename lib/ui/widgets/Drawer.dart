import 'package:flutter/material.dart';
import 'DrawerElements.dart';
import '../views/helper/Helper.dart';

DrawerHeader _buildDrawerHeader() {
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
          Spacer(
            flex: 1,
          ),
        ],
      ));
}

Drawer drawer(context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        _buildDrawerHeader(),
        ListTileDrawer(Icons.movie_creation, 'Home', context, '/Home'),
        Divider(),
        ListTileDrawer(
            Icons.local_movies, 'Editar conta', context, '/EditUser'),
        Divider(),
        ListTileDrawer(
            Icons.star_border, 'Filmes favoritos', context, '/FavoriteMovies'),
        Divider(),
        ListTileDrawer(Icons.exit_to_app, 'Sair', context, '/', true)
      ],
    ),
  );
}
