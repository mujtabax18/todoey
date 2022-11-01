import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 50 , vertical: 100),

      color: Colors.lightBlueAccent,
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
          Container(
          color: Colors.white,

          )
        ],
      ),
    );
  }
}


