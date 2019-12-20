import 'package:flutter/material.dart';
import 'lista_item.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class ListaItens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
        itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return ListaItem(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallBack: (checkboxState){
              taskData.updateTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,);
      }
    );
  }
}

