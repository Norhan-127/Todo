import 'package:flutter/material.dart';
import 'package:todo/ui/home/tasks_list/calender.dart';
import 'package:todo/ui/home/tasks_list/task_widget.dart';
class TasksListTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children:  [
      const Calender(),
       const SizedBox(height: 25,),
      Expanded(
        child: ListView.builder(itemBuilder: (_, int index) {  
          return TaskWidget();
        },itemCount: 12,),
      ),
    ],);
  }
}
