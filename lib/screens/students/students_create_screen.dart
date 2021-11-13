import 'package:bv_flutter_tutorial_provider_rec3/global_app_state.dart';
import 'package:bv_flutter_tutorial_provider_rec3/models/class_model.dart';
import 'package:bv_flutter_tutorial_provider_rec3/models/student_model.dart';
import 'package:flutter/material.dart';

class StudentsCreateScreen extends StatefulWidget {
  StudentsCreateScreen({Key? key}) : super(key: key);

  @override
  State<StudentsCreateScreen> createState() => _StudentsCreateScreenState();
}

class _StudentsCreateScreenState extends State<StudentsCreateScreen> {
  ClassModel? _selectedClass;

  TextEditingController _firstNameController = TextEditingController(text: '');
  TextEditingController _lastNameController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final classList = context.dependOnInheritedWidgetOfExactType<GlobalAppState>()!.classes;

    return Scaffold(
      appBar: AppBar(
        title: Text('Create new student'),
      ),
      body: classList.isEmpty
          ? Center(
              child: Text('Please create a class before creating a student!'),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _firstNameController,
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: 'First name',
                      helperText: 'Enter the students first name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _lastNameController,
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: 'Last name',
                      helperText: 'Enter the students last name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  DropdownButton(
                    value: _selectedClass,
                    hint: Text('Please choose a class'),
                    items: classList.map<DropdownMenuItem<ClassModel>>((classModel) {
                      return DropdownMenuItem<ClassModel>(
                        child: Text(classModel.title),
                        value: classModel,
                      );
                    }).toList(),
                    onChanged: (ClassModel? newValue) {
                      setState(() {
                        _selectedClass = newValue;
                      });
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final newStudent = StudentModel(
                          firstName: _firstNameController.text,
                          lastName: _lastNameController.text,
                          classModel: _selectedClass);
                      context.dependOnInheritedWidgetOfExactType<GlobalAppState>()!.students.add(newStudent);
                      Navigator.pop(context);
                    },
                    child: Text('Create student'),
                  ),
                ],
              ),
            ),
    );
  }
}
