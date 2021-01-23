import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_button_demo/demo_scaffold.dart';

class TextButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DemoScaffold(
      oldButton: FlatButton(
        focusColor: Colors.red,
        hoverColor: Colors.green,
        splashColor: Colors.blue,
        // color: Colors.blue,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'FlatButton',
            style: TextStyle(fontSize: 60),
          ),
        ),
        // onPressed: null,
        onPressed: () {},
      ),
      newButton: TextButton(
        style: ButtonStyle(
          // foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.focused)) {
              return Colors.red;
            }
            if (states.contains(MaterialState.hovered)) {
              return Colors.green;
            }
            if (states.contains(MaterialState.pressed)) {
              return Colors.blue.shade100;
            }
            return null; // Defer to the widget's default.
          }),
        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'TextButton',
            style: TextStyle(fontSize: 60),
          ),
        ),
        // onPressed: null,
        onPressed: () {},
      ),
    );
  }
}
