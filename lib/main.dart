import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Чат',
      home: MyHomePage(title: 'Чат'),
    );
  }
}
