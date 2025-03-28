class Todo {
  String id;
  String title;
  bool isDone;

  Todo({required this.id, required this.title, required this.isDone});

  void isToggleDone() {
    isDone = !isDone;
  }

  static List<Todo> toDosList(){
    return[
    Todo(id: '1', title: 'Learn Flutter', isDone: true),
    Todo(id: '2', title: 'Learn Dart', isDone: false),
    Todo(id: '3', title: 'Learn Provider', isDone: false),
    ];
  }
}
