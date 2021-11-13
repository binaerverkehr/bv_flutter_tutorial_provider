import 'package:bv_flutter_tutorial_provider_rec3/global_app_state.dart';
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
    final classList = context.dependOnInheritedWidgetOfExactType<GlobalAppState>()!.classes;

    return Scaffold(
      appBar: AppBar(
        title: Text('Classes'),
      ),
      body: classList.isEmpty
          ? Center(
              child: Text('No classes created yet.'),
            )
          : ListView.builder(
              itemCount: classList.length,
              itemBuilder: (context, index) {
                final classItem = classList[index];
                return ListTile(
                  title: Text(classItem.title),
                  // TODO: Calculate students count
                  subtitle: Text(
                      '${context.dependOnInheritedWidgetOfExactType<GlobalAppState>()!.getStudentsCountOfClass(classItem)}'),
                  onLongPress: () {
                    setState(() {
                      classList.remove(classItem);
                    });
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
