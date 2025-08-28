import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tod_app_bloc_architecture/data/models/isar_todo.dart';
import 'package:tod_app_bloc_architecture/data/repository/isar_todo_repo.dart';
import 'package:tod_app_bloc_architecture/domain/repository/todo_repo.dart';
import 'package:tod_app_bloc_architecture/presentation.dart/todo_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();

  final isar = await Isar.open([TodoIsarSchema], directory: dir.path);

  final isarRepo = IsarTodoRepo(isar);

  runApp(MyApp(todoRepo: isarRepo));
}

class MyApp extends StatelessWidget {
  final TodoRepo todoRepo;
  const MyApp({super.key, required this.todoRepo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(todoRepo: todoRepo),
    );
  }
}
