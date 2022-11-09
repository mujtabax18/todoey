import 'package:flutter/foundation.dart';
import 'package:todoey/modules/tasklistbrain.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier {
  List<TaskListBrain> _tasks=[];

  UnmodifiableListView<TaskListBrain> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void AddTask(String data){
    _tasks.add(TaskListBrain(name: data));
    notifyListeners();
  }
     int get TasksLength{
    return _tasks.length;
    }
    void UpdateTask(TaskListBrain task)
    {
      task.toggleTaskState();
      notifyListeners();
    }

    void DeleteTask(TaskListBrain task){
    _tasks.remove(task);
    notifyListeners();
    }

    void EditTask(int index,String newData){
    _tasks[index]=TaskListBrain(name: newData);
    notifyListeners();
    }


}