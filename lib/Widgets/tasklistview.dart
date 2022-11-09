import 'package:flutter/material.dart';
import 'package:todoey/Widgets/tasklistitems.dart';
import 'package:todoey/modules/taskData.dart';
import 'package:provider/provider.dart';
class Tasklistview extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return  Consumer<TaskData>(
      builder: (_,TaskData, child){

        return ListView.builder(itemBuilder: (context, index){
          final task=TaskData.tasks[index];
          return  Tasklistitem(
            todoListItemText: task.name,
            isChecked: task.state,
            checkBoxChanged: (value){
              TaskData.UpdateTask(task);
            },
            OnLongPress: (){
              TaskData.DeleteTask(task);
            },

          );
        },itemCount: TaskData.TasksLength,
        );
      },
    );
  }
}


