import 'dart:async';

import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';
import 'package:state_managment/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatefulWidget {
  Function fun;
  AllTasksScreen(this.fun);

  @override
  State<AllTasksScreen> createState() => _AllTasksScreenState();
}

class _AllTasksScreenState extends State<AllTasksScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    setState(() {});

    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: TaskWidget(tasksList[index], widget.fun)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      tasksList.removeWhere(
                          (object) => object.title == tasksList[index].title);
                    });
                  },
                  icon: Icon(Icons.auto_delete_outlined))
            ],
          );
        });
  }
}
