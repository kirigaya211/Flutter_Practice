import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tod_app_bloc_architecture/domain/repository/todo_repo.dart';
import 'package:tod_app_bloc_architecture/presentation.dart/todo_cubit.dart';
import 'package:tod_app_bloc_architecture/presentation.dart/todo_view.dart';

class TodoPage extends StatelessWidget {
  final TodoRepo todoRepo;

  const TodoPage({super.key, required this.todoRepo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>TodoCubit(todoRepo),
    child: TodoView(),
    );
  }
}
