import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Styles/styles.dart';
import 'package:todoey/Widgets/TextBottonRectangular.dart';
import 'package:todoey/modules/taskData.dart';
class AddListTasks extends StatelessWidget {
  late  String tempData;
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (_,TaskData,child){
          return Container(
            color:const Color(0xff757575),
            child: Container(
              padding:const EdgeInsets.all(30),
              decoration: kAddListTaskBoxDecoration,
              child: Column(
                children: [
                  const  Text(
                    'Add Task',
                    style: kAddListBoxHeaderTextStyle,
                  ),
                  TextField(
                    autofocus: true,
                    textAlign: TextAlign.center,
                    onChanged: (value){
                      tempData=value;
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextButtonRectangular(
                    onPress: (){
                    TaskData.AddTask(tempData);
                    Navigator.pop(context);
                    },
                    btnText: 'Add',
                  )
                ],
              ),
            ),
          );
        },
    );
  }
}

