import 'package:flutter/material.dart';
import 'package:material_button_demo/line_buttons.dart';
import 'package:material_button_demo/text_buttons.dart';

import 'levatating_buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // home: TextButtonDemo(),
      // home: LevatatingButtonDemo(),
      home: LineButtonDemo(),
    );
  }
}
