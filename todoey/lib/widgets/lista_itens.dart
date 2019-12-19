import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'lista_item.dart';

class ListaItens extends StatefulWidget {

  final List<Task> tasks;

  ListaItens(this.tasks);

  @override
  _ListaItensState createState() => _ListaItensState();
}

class _ListaItensState extends State<ListaItens> {
  // List<Task> tasks = [
  //   Task(name: 'comprar leite'),
  //   Task(name: 'comprar pão'),
  //   Task(name: 'comprar ovo'),
  // ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return ListaItem(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallBack: (checkboxState){
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,);
  }
}

