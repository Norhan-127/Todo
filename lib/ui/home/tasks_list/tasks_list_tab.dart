import 'package:flutter/material.dart';
import 'package:todo/ui/home/tasks_list/calender.dart';
class TasksListTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Calender(),
    ],);
  }
}
