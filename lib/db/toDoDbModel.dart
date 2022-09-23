import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

// ref the box
  final _mybox = Hive.box("myBox");

// run () if its 1st time
  void createInitialData() {
    toDoList = [
      ["make video", false],
      ["more videos", true],
      ["sample task", false]
    ];
  }

// load the data from db
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

// updatethe data
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
