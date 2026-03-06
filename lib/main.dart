//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_app/Model/task-data.dart';
import 'Screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AbdoApp());
}

class AbdoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(home: TasksScreen()),
    );
  }
}
