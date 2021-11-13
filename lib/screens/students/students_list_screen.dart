import 'package:flutter/material.dart';

import 'students_create_screen.dart';

class StudentsListScreen extends StatefulWidget {
  const StudentsListScreen({Key? key}) : super(key: key);

  @override
  State<StudentsListScreen> createState() => _StudentsListScreenState();
}

class _StudentsListScreenState extends State<StudentsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
      ),
      body: Center(
        child: Text('No students created yet.'),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'add_student_btn',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StudentsCreateScreen()),
          ).then((value) => setState(() {}));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
