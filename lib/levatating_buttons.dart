import 'package:flutter/material.dart';
import 'package:material_button_demo/demo_scaffold.dart';

class LevatatingButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DemoScaffold(
      oldButton: RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        disabledColor: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'RaisedButton',
            style: TextStyle(fontSize: 60),
          ),
        ),
        onPressed: null,
        // onPressed: () {},
      ),
      newButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          onPrimary: Colors.white,
          onSurface: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'ElevatedButton',
            style: TextStyle(fontSize: 60),
          ),
        ),
        onPressed: null,
        // onPressed: () {},
      ),
    );
  }
}
