import 'package:flutter/material.dart';

import 'screens/MyWelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyWelcomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
