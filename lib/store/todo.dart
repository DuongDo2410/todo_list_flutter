import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:todo_list/model/todo.dart';

// Include generated file
part 'todo.g.dart';

// This is the class used by rest of your codebase
class TodoStore = _Todo with _$TodoStore;

// The store-class
abstract class _Todo with Store {
  @observable
  List<Todo> todos = [
    const Todo(id: 1, content: 'to do 1'),
    const Todo(id: 2, content: 'to do 2'),
    const Todo(id: 3, content: 'to do 3'),
  ];
  @computed
  List<Todo> get getTodos {
    return todos;
  }

  @action
  void addTodo(value) {
    todos.add(value);
  }

  @action
  void deleteTodo(id) {
    todos = todos.where((todo) => todo.id != id).toList();
  }
}
