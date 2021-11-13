import 'package:flutter/material.dart';

class ClassesCreateScreen extends StatelessWidget {
  const ClassesCreateScreen({Key? key}) : super(key: key);

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
              onPressed: () {},
              child: Text('Create class'),
            ),
          ],
        ),
      ),
    );
  }
}
