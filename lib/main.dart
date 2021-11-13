import 'package:bv_flutter_tutorial_provider_rec3/providers/class_provider.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';

import 'package:provider/provider.dart';

import 'providers/student_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ClassProvider()),
        ChangeNotifierProvider(create: (context) => StudentProvider()),
      ],
      child: MyApp(),
    ),
  );
}
