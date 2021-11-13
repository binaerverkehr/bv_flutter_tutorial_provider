import 'package:bv_flutter_tutorial_provider_rec3/providers/class_provider.dart';
import 'package:bv_flutter_tutorial_provider_rec3/providers/student_provider.dart';
import 'package:flutter/material.dart';

import 'classes_create_screen.dart';
import 'package:provider/provider.dart';

class ClassesListScreen extends StatefulWidget {
  const ClassesListScreen({Key? key}) : super(key: key);

  @override
  State<ClassesListScreen> createState() => _ClassesListScreenState();
}

class _ClassesListScreenState extends State<ClassesListScreen> {
  @override
  Widget build(BuildContext context) {
    final classProvider = Provider.of<ClassProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Classes'),
      ),
      body: classProvider.items.isEmpty
          ? Center(
              child: Text('No classes created yet.'),
            )
          : ListView.builder(
              itemCount: classProvider.items.length,
              itemBuilder: (context, index) {
                final classItem = classProvider.items[index];
                return ListTile(
                  title: Text(classItem.title),
                  // TODO: Calculate students count
                  subtitle: Text('${Provider.of<StudentProvider>(context).getStudentsCountOfClass(classItem)}'),
                  onLongPress: () {
                    classProvider.remove(classItem);
                  },
                );
              }),
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
