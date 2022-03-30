import 'package:flutter/material.dart';

class SecondTest extends StatefulWidget {
  const SecondTest(Widget content, {Key? key}) : super(key: key);

  @override
  State<SecondTest> createState() => _SecondTestState();
}

class _SecondTestState extends State<SecondTest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(labelText: "1"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(labelText: "2"),
            ),
          ),
        ],
      ),
    );
  }
}
