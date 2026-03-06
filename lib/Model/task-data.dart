import 'package:flutter/material.dart';
import 'package:my_todo_app/Model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go shopping'),
    Task(name: 'go '),
    Task(name: ' shopping'),
  ];
  void addTask(String newTasktitle) {
    tasks.add(Task(name: newTasktitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
