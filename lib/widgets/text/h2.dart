import 'package:flutter/material.dart';

class H2 extends StatelessWidget {
  final String text;

  H2({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
