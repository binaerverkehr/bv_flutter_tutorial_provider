import 'package:flutter/material.dart';

import 'classes_create_screen.dart';

class ClassesListScreen extends StatefulWidget {
  const ClassesListScreen({Key? key}) : super(key: key);

  @override
  State<ClassesListScreen> createState() => _ClassesListScreenState();
}

class _ClassesListScreenState extends State<ClassesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classes'),
      ),
      body: Center(
        child: Text('No classes created yet.'),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'add_class_btn',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ClassesCreateScreen()),
          ).then((value) => setState(() {}));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
