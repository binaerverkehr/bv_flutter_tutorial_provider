import 'dart:collection';

import 'package:bv_flutter_tutorial_provider_rec3/models/class_model.dart';
import 'package:flutter/cupertino.dart';

class ClassProvider extends ChangeNotifier {
  final List<ClassModel> _items = [];

  UnmodifiableListView<ClassModel> get items => UnmodifiableListView(_items);

  void add(ClassModel newClass) {
    _items.add(newClass);
    notifyListeners();
  }

  void remove(ClassModel removeClass) {
    _items.remove(removeClass);
    notifyListeners();
  }
}
