import 'package:flutter/material.dart';
import 'lista_item.dart';

class ListaItens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListaItem(),
        ListaItem(),
        ListaItem(),
      ],
    );
  }
}