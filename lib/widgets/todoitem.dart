import 'package:flutter/material.dart';
import 'package:navproject/models/todo.dart';

class ToDoItem extends StatelessWidget {
  final Todo todo;
  const ToDoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40),
      ),
      child: ListTile(
        leading: Icon(
          todo.isDone ? Icons.check_box_outlined :
          Icons.check_box_outline_blank,
          color: Colors.white),
        title: Text(
          todo.title.toString(),
          style: TextStyle(color: Colors.white),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.red),
          onPressed: () {},
        ),
      ),
    );
  }
}
