import 'package:flutter/material.dart';
import 'package:todoey/Screens/home.dart';
import 'package:todoey/modules/taskData.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( ChangeNotifierProvider(
      create: (_)=>TaskData(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          home: HomeScreen()
    );
  }
}
