import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final String taskName;
  // pass in array of rooms
  // pass in array of tasks in rooms or general task

  const TaskCard({super.key, required this.taskName});

  @override
  State<TaskCard> createState() => _TaskCard();
}

class _TaskCard extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return const Row(children: <Widget>[
      Column(
        children: <Widget>[Text("Task Name"), Text("Time: 3/5 Days")],
      ),
      Column(children: <Widget>[Text("Order"), Text("Hirelings")])
    ]);
  }
}
