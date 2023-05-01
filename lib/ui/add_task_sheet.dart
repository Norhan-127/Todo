import 'package:flutter/material.dart';
import 'package:todo/fire_base_utils.dart';

import '../model/task.dart';

class AddTaskSheet extends StatefulWidget {
  @override
  State<AddTaskSheet> createState() => _AddTaskSheetState();
}

class _AddTaskSheetState extends State<AddTaskSheet> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  String title = '';

  String description = '';

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        child: Column(
          children: [
            Text(
              'Add new task',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Form(
                key: key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        border: const UnderlineInputBorder(),
                        label: Text(
                          'enter your task',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.grey),
                        ),
                      ),
                      onChanged: (text) {
                        title = text;
                      },
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return "Please enter the task";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      maxLines: 4,
                      minLines: 4,
                      decoration: InputDecoration(
                        label: Text(
                          'description',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.grey),
                        ),
                      ),
                      onChanged: (text) {
                        description = text;
                      },
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return "Please enter the description";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Task date',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {
                        chooseDate();
                      },
                      child: Text(
                        '${selectedDate.year}/${selectedDate.month}/${selectedDate.day}',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Add",
                          style: Theme.of(context).textTheme.displayLarge,
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }

  void chooseDate() async {
    var chosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365)));
    if (chosenDate != null) {
      selectedDate = chosenDate;
      setState(() {});
    }
  }

  void addTask() {
    if (key.currentState?.validate() == true) {
      Task task = Task(
          title: title,
          description: description,
          date: selectedDate.microsecondsSinceEpoch);
      addTaskToFireStore(task);
    }
  }
}
