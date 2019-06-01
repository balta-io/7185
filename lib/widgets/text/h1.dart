import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String text;

  H1({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
