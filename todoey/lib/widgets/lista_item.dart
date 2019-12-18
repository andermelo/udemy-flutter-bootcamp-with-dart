import 'package:flutter/material.dart';

class ListaItem extends StatelessWidget {
  bool selecionado = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('esse é um item'),
      trailing: TaskCheckbox(true),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;

  TaskCheckbox(this.checkboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (newValue){
        
      },
    );
  }
}