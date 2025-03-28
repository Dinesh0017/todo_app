import 'package:flutter/material.dart';
import 'package:navproject/models/todo.dart';
import 'package:navproject/widgets/todoitem.dart';

import 'models/todo.dart' as todo show Todo;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 168, 154, 111),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CircleAvatar(
              backgroundImage: const AssetImage('assets/profile1.jpg'), // Corrected
              radius: 20,
            ),
          ),
        ],
      ),
      body: _body(),
    );
  }
}

Widget _body() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Stack(
      children: [
        Column(
          children: [
            _searchBar(),
            const SizedBox(height: 20),
            _todos(), // Displays ToDoItem
            //_inputs(), // Placeholder for inputs
          ],
        ),
      ],
    ),
  );
}

Widget _searchBar() {
  return TextField(
    decoration: InputDecoration(
      hintText: 'Search',
      prefixIcon: const Icon(Icons.search),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    ),
  );
}

Widget _todos() {
  return ToDoItem(
    todo.Todo(
      id: "1", 
      title: 'First Todo')); // Fixed namespace
}

Widget _inputs() {
  return const Placeholder();
}
