import 'package:flutter/material.dart';
import 'package:todo_app_hive/utils/dialog_box.dart';

import '../components/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List toDoList = [
  ["Make tutorial", false],
  ["Make tutorial", true],
  ["Make tutorial", false],
  ["Make tutorial", true],
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text(
            "To Do",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (BuildContext context, int index) {
            return ToDoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkboxTapped(value, index),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: createTask,
        ));
  }

  void checkboxTapped(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }
}
