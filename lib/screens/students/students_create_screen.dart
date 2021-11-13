import 'package:flutter/material.dart';

class StudentsCreateScreen extends StatelessWidget {
  StudentsCreateScreen({Key? key}) : super(key: key);

  final classList = ['Class A'];

  @override
  Widget build(BuildContext context) {
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
                    value: 'Class A',
                    hint: Text('Please choose a class'),
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        child: Text('Class A'),
                        value: 'Class A',
                      ),
                      DropdownMenuItem(
                        child: Text('Class B'),
                        value: 'Class B',
                      ),
                    ],
                    onChanged: (newValue) {},
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Create student'),
                  ),
                ],
              ),
            ),
    );
  }
}
