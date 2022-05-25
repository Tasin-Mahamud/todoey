import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todoey/Screens/task.dart';
import 'package:todoey/Widgets/TasksList.dart';
import 'package:todoey/Screens/add_tasks_screen.dart';
import 'package:todoey/TaskModel.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> Taskslst = [
    Task(name: 'Go to the GYM'),
    Task(name: 'Play BasketBall'),
    Task(name: 'eat fruits'),
    Task(name: 'buy groceries'),
    Task(name: 'clean the room'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Add_task_screen(
                  Add_task_callback: (TodoText) {
                    setState(() {
                      Taskslst.add(Task(name: TodoText.toString()));
                    });
                    Navigator.pop(context);
                  },
                ),
              );
            },
            backgroundColor: Colors.lightBlueAccent,
            child: Icon(Icons.add),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 30, top: 80, right: 30, bottom: 30),
              child: CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.list,
                  size: 30,
                  color: Colors.lightBlueAccent,
                ),
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'TODOEY',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "${Taskslst.length.toString()} tasks",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: TasksList(Taskslst),
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
