import 'package:flutter/material.dart';
import 'package:shopping/pages/login.page.dart';
import 'package:shopping/pages/tabs.page.dart';
import 'package:shopping/themes/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
