import 'package:flutter/material.dart';
import 'package:todoey/Widgets/tasklistitems.dart';
class Tasklistview extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Tasklistitem(),
        Tasklistitem(),
        Tasklistitem(),
      ],
    );
  }
}


