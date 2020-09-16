import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/constants.dart';
import 'package:movieapp/ui/objects/Favorites.dart';
import 'package:movieapp/ui/views/UserPages/EditUserPage.dart';
import 'package:movieapp/ui/views/helper/Helper.dart';
import 'films.dart';
import 'package:movieapp/controllers/UserController.dart';
import 'package:movieapp/ui/widgets/Labels.dart';
import 'package:movieapp/ui/widgets/Buttons.dart';

class User {

    int ID;
    String name, last_name, email, password, phone;
    var favorite_films = new FavoriteMovies(); // Lista de filmes favoritos
    List films = <Films>[];

    User({this.ID, this.name, this.last_name, this.email, this.favorite_films, this.films});

}

class MaintainUserPage extends StatelessWidget {
    Widget build(BuildContext context){
        final formKey = GlobalKey<FormState>();
        User user = Helper.getRouteArgs(context);
        if (user == null){
            user = User();
        }

        void _callEditUser(user, textInputType, labelText, invalidValueName, userNewProperty){
            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                //EditUserPageForm(user,textInputType,  labelText, invalidValueName, userNewProperty)));
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
                    /*InkWell(
                        onTap:() => _callEditUser(user, TextInputType.name, Constants.nome, 'Nome Invalido', user.name),
                        child: Container(
                          child: Text('Mudar Nome'),
                          padding: Constants.paddingSmall,
                      ),
                    ),*/
                    // tentar colocar um botao pra editar separadamente.
                    UserTextFormField(user,  TextInputType.name, Constants.nome, 'Nome invalido!', user.name),
                    UserTextFormField(user,  TextInputType.name, Constants.last_name, 'Nome invalido!', user.last_name),
                    UserTextFormField(user,  TextInputType.emailAddress, Constants.E_mail, 'Email invalido!', user.email),
                    // Tem que editar p n trocar senha assim
                    UserTextFormField(user,  TextInputType.text, Constants.new_pass, 'Senha invalida!', user.password),
                ],
            ),
        ); // user form page
    }
}

class UserFormPage extends StatefulWidget {

    final onSave;
    final Widget body;
    final hideButtons;

    UserFormPage({
        @required this.body,
        this.onSave,
        this.hideButtons = false
    });

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

    Widget _buildButtons(){
        if(widget.hideButtons) return null;

        return Column(
            children: <Widget>[
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
                FlatButton(
                    child: Text('Cancelar'),
                    padding: Constants.paddingSmall,
                    onPressed: () => Helper.back(context),
                ),
            ]
        );
    }
}
