import 'package:flutter/material.dart';

class ListaItem extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;

  ListaItem({this.isChecked,this.taskTitle,this.checkboxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      )     
    );
  }
}


