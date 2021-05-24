
import 'package:flutter/foundation.dart';
import 'package:todo_app/modal/task.dart';

class TaskData extends ChangeNotifier
{
  List<Task> _tasks= [
    Task(name: "Buy Bike R15 in 2021"),
    Task(name: "Buy Car in 2021"),
    Task(name: "Buy New Luxury Home in 2021"),
    Task(name: "Start Billion dollar StartUp in 2021"),
  ];


  addTask({String taskTitle})
  {
   _tasks.add( Task(name: taskTitle));
    notifyListeners();
    print("ADDDDDDDDDDDDDDDDDa;s,fcl;sdmv.,");
  }
  getTask()
  {
    return _tasks;
  }

  deleteTask({int taskIndex})
  {
    _tasks.removeAt(taskIndex);
    notifyListeners();

  }
}
