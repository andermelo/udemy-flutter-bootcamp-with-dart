import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  MyButton({this.cor,this.titulo,@required this.onPressed});

  final Color cor;
  final String titulo;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: cor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(titulo),
        ),
      ),
    );
  }
}
