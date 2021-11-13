import 'package:bv_flutter_tutorial_provider_rec3/providers/student_provider.dart';
import 'package:flutter/material.dart';

import 'students_create_screen.dart';

import 'package:provider/provider.dart';

class StudentsListScreen extends StatefulWidget {
  const StudentsListScreen({Key? key}) : super(key: key);

  @override
  State<StudentsListScreen> createState() => _StudentsListScreenState();
}

class _StudentsListScreenState extends State<StudentsListScreen> {
  @override
  Widget build(BuildContext context) {
    final studentProvider = Provider.of<StudentProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
      ),
      body: studentProvider.items.isEmpty
          ? Center(
              child: Text('No students created yet.'),
            )
          : ListView.builder(
              itemCount: studentProvider.items.length,
              itemBuilder: (context, index) {
                final studentItem = studentProvider.items[index];
                return ListTile(
                  title: Text(studentItem.firstName + " " + studentItem.lastName),
                  // TODO: Calculate students count
                  subtitle: Text(studentItem.classModel!.title),
                  onLongPress: () {
                    setState(() {
                      studentProvider.remove(studentItem);
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
