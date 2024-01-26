import 'package:flutter/material.dart';

import '../View/main_View.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainView(),
    );
  }
}
