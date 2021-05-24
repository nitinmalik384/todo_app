import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/modal/back_Animation.dart';
import 'package:todo_app/modal/list.dart';

class TaskListTile extends StatelessWidget {
  final bool isChecked;

  final String title;
  final int index;
  Function checked;

  TaskListTile({this.title,this.isChecked, this.checked,this.index });

  checkBoxState(bool a)
  {
    if(a) {
      return TextStyle(
        decoration: TextDecoration.lineThrough,

      );
    }
    else{
      return TextStyle(
        decoration: TextDecoration.none,
      );
    }
  }
  
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        Provider.of<TaskData>(context,listen: false).deleteTask(taskIndex: index);
        Provider.of<BackAnimate>(context,listen: false).updateColor();
        print("Index of tile : $index");
      },
        title: Text(title,
          style: checkBoxState(isChecked),),

        trailing: Checkbox(
    value: isChecked,
    activeColor:  Provider.of<BackAnimate>(context,listen: true).randomColor,

    onChanged: checked
    ));
  }
}


