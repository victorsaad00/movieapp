import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/ui/views/helper/Helper.dart';
//import '../Theme.dart';

Widget ListTileFilm(context/*, film*/){
  return Dismissible(
    key: UniqueKey(),
    /*onDismissed: (direction) {
      // set favorite...
      /*setState(() {
        () => null;
        //movieController.favorite(movie);
      });*/
    },*/
    background: Container(
      alignment: Alignment.centerRight,
      color: Colors.lightGreenAccent,
      child:
      Icon(Icons.favorite, color: Colors.black,),
    ),
    child: ListTile(
      title: Text(
        'Film Title',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'Cast',
        style: TextStyle(color: Colors.grey.shade600),
      ),
      leading: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 44,
          minHeight: 44,
          maxHeight: 44,
          maxWidth: 44,
        ),
        child: Image.asset('Null'),
      ),
      onTap: () => Helper.go(context, "/MoviesPage"),
    ),
  );
}