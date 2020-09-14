import 'package:flutter/material.dart';
import 'package:movieapp/src/ui/views/helper/Helper.dart';

class MovieDrawer extends Drawer {

  void _onPressedPass() => null;

  // Implementar as funcionalidades
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

  // Implementar as funcionalidades
  @override
  Widget get child => ListView(
    children: [
      _buildDrawerHeader(),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: () => _onPressedPass(),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.edit),
        title: Text('Mudar Senha'),
        onTap: () => _onPressedPass(),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.dashboard),
        title: Text('Editar Conta'),
        onTap: () => _onPressedPass(),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.exit_to_app),
        title: Text('Sair'),
        onTap: () => _onPressedPass(),
      ),
    ],
  );

}