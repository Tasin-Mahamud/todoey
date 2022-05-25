import 'dart:ui';
import 'package:flutter/material.dart';
import '../task_model.dart';

class TasksTile extends StatelessWidget {
  bool? isChecked;
  final String tasktitle;
  var checkBoxCallBack;

  TasksTile(
      {required this.tasktitle,
      required this.isChecked,
      required this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          tasktitle,
          style: TextStyle(
              decoration:
                  isChecked == true ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallBack,
          // onChanged: toggleCheckBoxState,
        ));
  }
}
