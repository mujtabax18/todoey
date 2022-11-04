import 'package:flutter/material.dart';
import 'package:todoey/Widgets/tasklistview.dart';
import 'package:todoey/Screens/addllisttasks.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>AddListTasks());
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
            padding:const EdgeInsets.symmetric(horizontal: 50 , vertical: 100),
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
                  height: 30.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('12 tasks',
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
  }
}

