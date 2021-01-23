import 'package:flutter/material.dart';
import 'line_buttons.dart';
import 'text_buttons.dart';
import 'levatating_buttons.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() {
  // Slow down animation
  // timeDilation = 7.0;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // buttonTheme: ButtonThemeData(),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ButtonStyle(backgroundColor: backgroundcColor),
        // ),
      ),
      // home: TextButtonDemo(),
      // home: LineButtonDemo(),
      home: LevatatingButtonDemo(),
    );
  }
}

final backgroundcColor = MaterialStateProperty.resolveWith<Color>(
  (Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered))
      return Colors.blue.withOpacity(0.04);
    if (states.contains(MaterialState.focused) ||
        states.contains(MaterialState.pressed))
      return Colors.blue.withOpacity(0.12);
    return null; // Defer to the widget's default.
  },
);
