import 'package:flutter/material.dart';

class AddTaskSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: Column(
        children: [
          Text(
            'Add new task',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Form(
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
              const Text(
                '12/7/2002 ',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(onPressed: (){}, child: Text("Add",style: Theme.of(context).textTheme.displayLarge,))
            ],
          ))
        ],
      ),
    );
  }
}
