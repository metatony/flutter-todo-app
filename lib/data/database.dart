import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List todoList = [];
  // reference the box
  final _myBox = Hive.box('my box');

  // run this method if this is the first time opening this app
  void createInitialData() {
  // list of todo task
    todoList = [
      ['Make tutorial', false],
      ['do exercise', false],
    ];
  }

  // load data from database
  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  //update the database
  void updateData() {
    _myBox.put('TODOLIST', todoList);
  }
}
