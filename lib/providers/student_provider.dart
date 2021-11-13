import 'dart:collection';

import 'package:bv_flutter_tutorial_provider_rec3/models/class_model.dart';
import 'package:bv_flutter_tutorial_provider_rec3/models/student_model.dart';
import 'package:flutter/cupertino.dart';

class StudentProvider extends ChangeNotifier {
  final List<StudentModel> _items = [];

  UnmodifiableListView<StudentModel> get items => UnmodifiableListView(_items);

  int getStudentsCountOfClass(ClassModel countClass) {
    return _items.where((element) => element.classModel == countClass).length;
  }

  void add(StudentModel newStudent) {
    _items.add(newStudent);
    notifyListeners();
  }

  void remove(StudentModel removeStudent) {
    _items.remove(removeStudent);
    notifyListeners();
  }
}
