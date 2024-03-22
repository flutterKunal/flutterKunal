import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'ToDolist1.dart';

class Task {
  int? taskno;
  final String task;
  final String description;
  final String date;

  Task({
    this.taskno,
    required this.task,
    required this.description,
    required this.date,
  });

  Map<String, dynamic> tasks() {
    return {'Taskno':taskno,'Task': task, 'Description': description, 'Date':date };
  }

  @override
  String toString() {
    return '{Taskno:$taskno, name: $task , Description:$description , Gate:$date }';
  }
}

dynamic database;
Future<void> insertData(Task obj) async {
  final localDB = await database;
  await localDB.insert("orderFood", obj.tasks(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<List<Task>> getOrderData() async {
  final localDB = await database;
  List<Map<String, dynamic>> data = await localDB.query('orderFood');

  return List.generate(data.length, (i) {
    return Task(
      task: data[i]['Task'],
      description: data[i]['Description'],
      date: data[i]['Date'],
    );
  });
}

Future<void> deletData(int data) async {
  final LocalDB = await database;
  await LocalDB.delete(
    "orderFood",
    where: "orderNo=?",
    whereArgs: [data],
  );
}

Future<void> updateDate(Task obj) async {
  final localDb = await database;
  await localDb.update(
    "orderFood",
    obj.tasks(),
    where: "taskno=?",
    whereArgs: [obj.taskno],
  );
}

void main() async {
  runApp(const MyApp());
  // WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(join(await getDatabasesPath(), "ToDoDB.db"),
      version: 1, onCreate: (db, version) async {
    await db.execute('''
      CREATE TABLE createTask(
        taskno INTEGER PRIMARY KEY ,
        title TEXT,
        description TEXT,
        date DOUBLE,
      )
  ''');
  });
  //Insert
  Task obj1 = Task(
      // orderNo: 1,
      task: "shri",
      description: "maratha",
      date: "12/12/2023",
    );
  await insertData(obj1);
  Task obj2 = Task(
    // orderNo: 2,
      task: "rushi",
      description: "maratha",
      date: "01/01/20240"
      );
  await insertData(obj2);
  List<Task> data = await getOrderData();
  Task obj = data[1];
    // print(await getOrderData());
    // await deletData(1);
  print(await getOrderData());
  obj = Task(
      taskno: obj.taskno,
      task: obj.task,
      description: obj.description,
      date: obj.date,
  );
  updateDate(obj);
  print(await getOrderData());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: 
      // ToDoListApp(),
      AdvanceToDoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}