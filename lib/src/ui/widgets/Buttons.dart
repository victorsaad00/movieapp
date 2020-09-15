import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';


Widget SelectFlatButton(context, text, function) {
  return FlatButton(
    child: Text(text),
    padding: Constants.paddingSmall,
    onPressed: function,
  );
}

Widget SelectButton(context, text, function){
  return SizedBox(
    width: double.infinity,
    child: RaisedButton(
      child: Text(text),
      color: Theme.of(context).colorScheme.surface,
      onPressed: function,
    ),
  );
}

Widget HomeButtons(context, f_avaliar, f_sugestao){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget> [
      Container(
        height: 150,
        width: 150,
        child: RaisedButton(
          color: Color(0xFF212121),
          child: Text('Avaliar'),
          onPressed: f_avaliar, //Implementar
        )
      ),
      Container(width: 50),
      Container(
          height: 150,
          width: 150,
          child: RaisedButton(
            color: Color(0xFF212121),
            child: Text('Sugestao'),
            onPressed: f_sugestao, //Implementar
          )
      ),
    ],
  );
}

