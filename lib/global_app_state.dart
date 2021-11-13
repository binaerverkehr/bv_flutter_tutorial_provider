import 'package:flutter/cupertino.dart';

import 'models/class_model.dart';
import 'models/student_model.dart';

class GlobalAppState extends InheritedWidget {
  final List<ClassModel> classes;
  final List<StudentModel> students;

  GlobalAppState({
    required this.classes,
    required this.students,
    required Widget child,
  }) : super(
          child: child,
        );

  int getStudentsCountOfClass(ClassModel classModel) {
    return students.where((element) => element.classModel == classModel).length;
  }

  @override
  bool updateShouldNotify(GlobalAppState oldWidget) {
    return (classes != oldWidget.classes) || (students != oldWidget.students);
  }
}
