import 'package:flutter/material.dart';

class AddListTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0))

        ),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
           SizedBox(
             height: 20.0,
           ),
         TextButton(
             onPressed: (){},
             child: Container(
               alignment: Alignment.center,
               height: 50.0,
               width: double.infinity,
               color: Colors.lightBlueAccent,
               child: Text(
                 'Add',
                 style: TextStyle(
                   fontSize: 20.0,
                   color: Colors.white,
                 ),
                 textAlign: TextAlign.center,
               ),
             ))
          ],
        ),
      ),
    );
  }
}
// TextButton(
// onPressed: (){},
//
// child: Container(
// width: double.infinity,
// height: 50.0,
// color: Colors.lightBlueAccent,
// child: Center(
// child: Text(
// 'ADD',
// style: TextStyle(
// color: Colors.white,
// fontSize: 30.0
//
// ),
// ),
// ),
// ),
// )