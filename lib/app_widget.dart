import 'package:bv_flutter_tutorial_provider_rec3/global_app_state.dart';
import 'package:flutter/material.dart';

import 'navigation_base.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalAppState(
      classes: [],
      students: [],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NavigationBase(),
      ),
    );
  }
}
