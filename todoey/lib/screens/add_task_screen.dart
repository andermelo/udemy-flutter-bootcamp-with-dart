import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0), 
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Adicionar item:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    )),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText){
                    newTaskTitle = newText;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                FlatButton(
                  textColor: Colors.lightBlueAccent,
                  color: Colors.white,
                  child: Text('Adicionar'),
                  onPressed: () {
                    Provider.of<TaskData>(context).addTask(newTaskTitle);
                    Navigator.pop(context);
                  },
                )
              ],
            ),
        ),
      ),
    );
  }
}
