import 'package:flutter/material.dart';
import 'package:material_button_demo/demo_scaffold.dart';

class LineButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DemoScaffold(
      oldButton: OutlineButton(
        // hoverColor: Colors.blue.withOpacity(0.04),
        // splashColor: Colors.blue.withOpacity(0.12),
        // highlightColor: Colors.blue.withOpacity(0.12),
        // color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'OutlineButton',
            style: TextStyle(fontSize: 60),
          ),
        ),
        onPressed: () {},
      ),
      newButton: OutlinedButton(
        // style: ButtonStyle(
        //   overlayColor: MaterialStateProperty.resolveWith<Color>(
        //     (Set<MaterialState> states) {
        //       if (states.contains(MaterialState.hovered))
        //         return Colors.blue.withOpacity(0.04);
        //       if (states.contains(MaterialState.focused) ||
        //           states.contains(MaterialState.pressed))
        //         return Colors.blue.withOpacity(0.12);
        //       return null; // Defer to the widget's default.
        //     },
        //   ),
        // ),
        style: OutlinedButton.styleFrom(
            // shape: StadiumBorder(),
            // side: BorderSide(width: 2, color: Colors.green),
            // primary: Colors.yellow,
            ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'OutlinedButton',
            style: TextStyle(fontSize: 60),
          ),
        ),
        // onPressed: null,
        onPressed: () {},
      ),
    );
  }
}
