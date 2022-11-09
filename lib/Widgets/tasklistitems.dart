import 'package:flutter/material.dart';


class Tasklistitem extends StatelessWidget {
  Tasklistitem({required this.checkBoxChanged,required this.isChecked,
    required this.todoListItemText,required this.OnLongPress});
  final String todoListItemText;
  final bool isChecked;
  final VoidCallback OnLongPress;
  final Function(bool?) checkBoxChanged;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: OnLongPress,
      title: Text(todoListItemText,
      style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough: null,
      ),

      ),
      trailing: Checkbox(value: isChecked, onChanged: checkBoxChanged),
    );
  }
}
