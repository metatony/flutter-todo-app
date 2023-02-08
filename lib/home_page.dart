import 'package:flutter/material.dart';
import 'package:flutter_todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of todo task
  List todoList = [
    ['Make tutorial', false],
    ['do exercise', false],
    ['do exercise', false]
  ];
// checkbox was tapped
  checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  // create new task
  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff37474f),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff102027),
        centerTitle: true,
        title: const Text('TO DO'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff102027),
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TOdoTile(
            taskName: todoList[index][0],
            taskCompleted: todoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
