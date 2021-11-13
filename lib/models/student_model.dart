import 'dart:convert';

import 'class_model.dart';

class StudentModel {
  final String firstName;
  final String lastName;
  final ClassModel? classModel;

  StudentModel({
    required this.firstName,
    required this.lastName,
    this.classModel,
  });

  StudentModel copyWith({
    String? firstName,
    String? lastName,
    ClassModel? classModel,
  }) {
    return StudentModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      classModel: classModel ?? this.classModel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'classModel': classModel?.toMap(),
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      firstName: map['firstName'],
      lastName: map['lastName'],
      classModel: map['classModel'] != null ? ClassModel.fromMap(map['classModel']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentModel.fromJson(String source) => StudentModel.fromMap(json.decode(source));

  @override
  String toString() => 'StudentModel(firstName: $firstName, lastName: $lastName, classModel: $classModel)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StudentModel &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.classModel == classModel;
  }

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode ^ classModel.hashCode;
}
