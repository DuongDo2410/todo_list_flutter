import 'package:flutter/material.dart';
import 'todo_header.dart';
import 'todo_list.dart';

class TodoListContainer extends StatelessWidget {
  const TodoListContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const <Widget>[
            TodoHeader(),
            Expanded(child: TodoList()),
          ],
        ));
  }
}
