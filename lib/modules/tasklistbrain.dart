class TaskListBrain{
  TaskListBrain({required this.name});
  final String name;
  bool state=false;

  void toggleTaskState(){
    state=!state;
  }
}