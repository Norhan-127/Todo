import 'package:flutter/material.dart';
import 'package:todo/ui/home/tasks_list/calender.dart';
import 'package:todo/ui/home/tasks_list/task_widget.dart';
class TasksListTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Calender(),
       SizedBox(height: 25,),
      TaskWidget(),
    ],);
  }
}
