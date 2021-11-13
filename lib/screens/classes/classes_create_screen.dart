import 'package:bv_flutter_tutorial_provider_rec3/global_app_state.dart';
import 'package:bv_flutter_tutorial_provider_rec3/models/class_model.dart';
import 'package:flutter/material.dart';

class ClassesCreateScreen extends StatefulWidget {
  const ClassesCreateScreen({Key? key}) : super(key: key);

  @override
  State<ClassesCreateScreen> createState() => _ClassesCreateScreenState();
}

class _ClassesCreateScreenState extends State<ClassesCreateScreen> {
  TextEditingController _classTitleController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create new class'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _classTitleController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: 'Class title',
                helperText: 'Enter the class title',
                prefixIcon: Icon(Icons.group),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final newClass = ClassModel(title: _classTitleController.text);
                context.dependOnInheritedWidgetOfExactType<GlobalAppState>()!.classes.add(newClass);
                Navigator.pop(context);
              },
              child: Text('Create class'),
            ),
          ],
        ),
      ),
    );
  }
}
