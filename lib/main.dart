// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:skillbox_3/src/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skillbox 3',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Skillbox 3'),
    );
  }
}
