import 'package:flutter/material.dart';

import 'package:todo_app/modal/task.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  List<Task>tasks;

  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {




  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskListTile(
          index: index,title: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checked:(bool checkboxState){
            setState(() {
              widget.tasks[index].toggleDone();
            });
          });

    },
      itemCount: widget.tasks.length,

    );

  }





}
