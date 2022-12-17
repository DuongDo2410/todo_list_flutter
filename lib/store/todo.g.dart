// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoStore on _Todo, Store {
  Computed<List<Todo>>? _$getTodosComputed;

  @override
  List<Todo> get getTodos => (_$getTodosComputed ??=
          Computed<List<Todo>>(() => super.getTodos, name: '_Todo.getTodos'))
      .value;

  late final _$todosAtom = Atom(name: '_Todo.todos', context: context);

  @override
  List<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(List<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  late final _$_TodoActionController =
      ActionController(name: '_Todo', context: context);

  @override
  void addTodo(dynamic value) {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.addTodo');
    try {
      return super.addTodo(value);
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteTodo(dynamic id) {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.deleteTodo');
    try {
      return super.deleteTodo(id);
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos},
getTodos: ${getTodos}
    ''';
  }
}
