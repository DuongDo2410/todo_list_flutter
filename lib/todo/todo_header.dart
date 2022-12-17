import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_list/model/todo.dart';
import 'package:todo_list/store/todo.dart';

class TodoHeader extends StatefulWidget {
  const TodoHeader({Key? key}) : super(key: key);

  @override
  _TodoHeaderState createState() => _TodoHeaderState();
}

class _TodoHeaderState extends State<TodoHeader> {
  String content = '';
  var txtTodoController = TextEditingController();
  final _todos = TodoStore();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: TextField(
              controller: txtTodoController,
              onChanged: (text) {
                setState(() {
                  content =
                      text; //when state changed => build() rerun => reload widget
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: 'Enter your todo',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              ),
            ),
          ),
        ),
        Observer(
          builder: (context) => ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              final todo = Todo(
                  id: DateTime.now().millisecondsSinceEpoch, content: content);
              _todos.addTodo(todo);
            },
            child: const Text('ADD'),
          ),
        ),
      ],
    );
  }
}
