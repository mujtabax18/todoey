import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/tasklistview.dart';
import 'package:todoey/Screens/addllisttasks.dart';
import 'package:todoey/modules/taskData.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return  Consumer<TaskData>(
        builder: (_,TaskData,child){
      return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context)=>AddListTasks()
            );
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add,
              color: Colors.white,
              size: 40),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:  mediaQuery.height/3,
              padding: EdgeInsets.only(
                top: (mediaQuery.height/11).toDouble() ,
              left: 50, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                        size: 30.0,
                        color: Colors.lightBlueAccent,
                        Icons.list
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                  TaskData.TasksLength.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50 , ),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0))
                ),
                child: Tasklistview(),
              ),
            ),
          ],
        ),
      );
    });
  }
}

