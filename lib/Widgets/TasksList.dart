import 'package:flutter/material.dart';
import 'package:todoey/TaskModel.dart.dart';
import 'TaskTile.dart';
import 'package:todoey/Screens/add_tasks_screen.dart';
import 'package:todoey/Screens/task.dart';

class TasksList extends StatefulWidget {
  final List Taskslst;
  TasksList(this.Taskslst);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          tasktitle: widget.Taskslst[index].name.toString(),
          isChecked: widget.Taskslst[index].isDone,
          checkBoxCallBack: (bool? checkBoxState) {
            setState(() {
              widget.Taskslst[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.Taskslst.length,
    );
  }
}
