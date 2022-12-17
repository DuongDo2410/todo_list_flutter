import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_list/store/todo.dart';

var _todos = TodoStore();

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (context) => ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: _todos.getTodos.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Observer(
                    builder: (_) => Text(
                          _todos.getTodos[index].content,
                          style: const TextStyle(fontSize: 20),
                        )),
                trailing: GestureDetector(
                  onTap: () {
                    _todos.deleteTodo(_todos.getTodos[index].id);
                  },
                  child: Icon(Icons.delete, color: Colors.red[400]),
                ),
              );
            }));
  }
}
