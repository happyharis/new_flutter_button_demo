import 'package:flutter/material.dart';

class DemoScaffold extends StatelessWidget {
  final Widget oldButton;
  final Widget newButton;

  const DemoScaffold({Key key, this.oldButton, this.newButton})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Old', style: TextStyle(fontSize: 30)),
            SizedBox(height: 10),
            oldButton,
            SizedBox(height: 20),
            Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            Text('New', style: TextStyle(fontSize: 30)),
            SizedBox(height: 10),
            newButton,
          ],
        ),
      ),
    );
  }
}
