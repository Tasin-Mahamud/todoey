import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todoey/TaskModel.dart';

import '../Widgets/TasksList.dart';

class Add_task_screen extends StatefulWidget {
  var Add_task_callback;
  Add_task_screen({required this.Add_task_callback});

  @override
  State<Add_task_screen> createState() => _Add_task_screenState();
}

class _Add_task_screenState extends State<Add_task_screen> {
  var TodoText;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 48.0),
              child: Text(
                "Add Task",
                style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                cursorHeight: 20,
                onChanged: (newText) {
                  TodoText = newText;
                },
                autofocus: true,
                autocorrect: true,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    widget.Add_task_callback(TodoText);
                  });
                },
                color: Colors.lightBlueAccent,
                child: Text("Add Task"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
