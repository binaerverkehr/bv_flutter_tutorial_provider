import 'package:bv_flutter_tutorial_provider_rec3/screens/classes/classes_list_screen.dart';
import 'package:bv_flutter_tutorial_provider_rec3/screens/students/students_list_screen.dart';
import 'package:flutter/material.dart';

class NavigationBase extends StatefulWidget {
  const NavigationBase({Key? key}) : super(key: key);

  @override
  _NavigationBaseState createState() => _NavigationBaseState();
}

class _NavigationBaseState extends State<NavigationBase> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ClassesListScreen(),
          StudentsListScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Classes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Students'),
        ],
        onTap: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
