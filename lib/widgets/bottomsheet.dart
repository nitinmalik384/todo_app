import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/modal/back_Animation.dart';
import 'package:todo_app/modal/list.dart';
import 'package:todo_app/modal/task.dart';


class BottomSheetToAddTask extends StatelessWidget {
  String newTask;

  Function returnValueToMainScreen;
  BottomSheetToAddTask(this.returnValueToMainScreen);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Color(0xff757575),
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.all(30),

        decoration: BoxDecoration(borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20)
        ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Add a Task",
              style: TextStyle(color:  Provider.of<BackAnimate>(context,listen: true).randomColor,
              fontSize: 18),
              textAlign: TextAlign.center,
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              keyboardType: TextInputType.name,
              onChanged: (value)
              {
                newTask=value;
                
              },
            ),
            MaterialButton(onPressed: (){
              
              if(newTask!=null)
                {
                  returnValueToMainScreen(newTask);
               //   tasks.add(Task(name: newTask));
                }
              
              
            },child: Text("Add",style: TextStyle(color: Colors.white),),
            color:  Provider.of<BackAnimate>(context,listen: true).randomColor ,),

          ],
        ),
      ),
    );
  }
}
