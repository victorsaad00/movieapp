import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/User.dart';
import 'package:movieapp/ui/views/UserPages/MoviesPage.dart';
import 'package:movieapp/ui/views/helper/Helper.dart';
import 'package:movieapp/ui/widgets/Buttons.dart';
import 'package:movieapp/ui/widgets/ListTileFilms.dart';

import '../../../constants.dart';
import '../../../controllers/UserController.dart';
import '../../widgets/Buttons.dart';
import '../../widgets/Labels.dart';
import '../../widgets/Drawer.dart';

void onPressedPass() => null;

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  var user = new User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      drawer: drawer(context),
      // Mostra todos os filmes
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 10, // movie.length - > Precisa ser do tamanho da qtd de filmes desejados na pagina home
        itemBuilder: (context, index){
            // vai ainda passar os argumentos dos filmes.
            return ListTileFilm(context);
          },

      )
    );
  }

  AppBar _buildAppBar(context) {
    return AppBar(title: Text('Home'), actions: <Widget>[
      IconButton(
        onPressed: () => onPressedPass(),
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    ]);
  }
}

class MaintainUserPage extends StatelessWidget {
  Widget build(BuildContext context) {
    User user = Helper.getRouteArgs(context);
    if (user == null) {
      user = User();
    }

    return UserFormPage(
      onSave: () {
        userController.save(user);
        Helper.go(context, 'Home');
      },
      body: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: Constants.spaceSmallHeight.height,
        children: <Widget>[
          // tentar colocar um botao pra editar separadamente.
          UserTextFormField(user, TextInputType.name, Constants.nome,
              Constants.inNome, user.name),
          UserTextFormField(user, TextInputType.name, Constants.last_name,
              Constants.inNome, user.last_name),
          UserTextFormField(user, TextInputType.emailAddress, Constants.E_mail,
              Constants.inNome, user.email),
          UserTextFormField(user, TextInputType.text, Constants.pass,
              Constants.invalidPassword, user.password),
          UserTextFormField(user, TextInputType.text, Constants.new_pass,
              Constants.invalidPassword, user.password),
        ],
      ),
    ); // user form page
  }
}

class UserFormPage extends StatefulWidget {
  final onSave;
  final Widget body;
  final hideButtons;

  UserFormPage({@required this.body, this.onSave, this.hideButtons = false});

  @override
  UserFormPageState createState() => UserFormPageState();
}

class UserFormPageState<T> extends State<UserFormPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Conta'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: Constants.paddingMedium,
            child: Column(
              children: <Widget>[
                Constants.spaceMediumHeight,
                widget.body,
                Constants.spaceMediumHeight,
                _buildButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtons() {
    if (widget.hideButtons) return null;

    return Column(children: <Widget>[
      SizedBox(
        width: double.infinity,
        child: SelectButton(context, 'Salvar', () {
          if (!formKey.currentState.validate()) return;
          setState(() {
            formKey.currentState.save();
          });
          widget.onSave.call();
        }),
      ),
      SelectFlatButton(context, 'Cancelar', () => {Helper.back(context)})
    ]);
  }
}
