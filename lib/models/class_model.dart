import 'dart:convert';

class ClassModel {
  final String title;

  ClassModel({
    required this.title,
  });

  ClassModel copyWith({
    String? title,
  }) {
    return ClassModel(
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
    };
  }

  factory ClassModel.fromMap(Map<String, dynamic> map) {
    return ClassModel(
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassModel.fromJson(String source) => ClassModel.fromMap(json.decode(source));

  @override
  String toString() => 'ClassModel(title: $title)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ClassModel && other.title == title;
  }

  @override
  int get hashCode => title.hashCode;
}
