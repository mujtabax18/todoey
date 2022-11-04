import 'package:flutter/material.dart';


class Tasklistitem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Hello this what to do'),
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}
