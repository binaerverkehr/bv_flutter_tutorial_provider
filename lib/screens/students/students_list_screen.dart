import 'package:bv_flutter_tutorial_provider_rec3/global_app_state.dart';
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
    final studentList = context.dependOnInheritedWidgetOfExactType<GlobalAppState>()!.students;

    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
      ),
      body: studentList.isEmpty
          ? Center(
              child: Text('No students created yet.'),
            )
          : ListView.builder(
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                final studentItem = studentList[index];
                return ListTile(
                  title: Text(studentItem.firstName + " " + studentItem.lastName),
                  // TODO: Calculate students count
                  subtitle: Text(studentItem.classModel!.title),
                  onLongPress: () {
                    setState(() {
                      studentList.remove(studentItem);
                    });
                  },
                );
              }),
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
