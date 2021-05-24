import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:todo_app/modal/back_Animation.dart';
import 'package:todo_app/modal/list.dart';
import 'package:todo_app/modal/task.dart';
import 'package:todo_app/widgets/bottomsheet.dart';
import 'package:todo_app/widgets/task_list.dart';

class TaskScreen extends StatelessWidget {


  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  FloatingActionButton(onPressed: (){
        Provider.of<BackAnimate>(context,listen: false).updateColor();
        showModalBottomSheet(context: context, builder: (build)=>BottomSheetToAddTask((newValue){

           Provider.of<TaskData>(context,listen: false).addTask(taskTitle: newValue);
           Provider.of<BackAnimate>(context,listen: false).updateColor();
           Navigator.pop(context);

        }));
      },
        child: Icon(Icons.add),
        backgroundColor:  Provider.of<BackAnimate>(context,listen: true).randomColor,
        ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top:60,
            bottom: 30.0,
            left: 30.0,
            right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    color: Provider.of<BackAnimate>(context,listen: true).randomColor,
                    size: 30,
                  ),
                ),
                SizedBox(height:10),
                Text("Todo List"
                    ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight:FontWeight.bold

                ),),
                Text("${Provider.of<TaskData>(context,listen: true).getTask().length} Tasks",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18,
                color: Colors.white),)

              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                 topRight: Radius.circular(30)),

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                child: TaskList(Provider.of<TaskData>(context,listen: true).getTask()),
              ),
            ),
          ),

        ],
      ),
      backgroundColor:Provider.of<BackAnimate>(context,listen: true).randomColor,
    );
  }
}

