import 'package:fletch/pages/home/home_page.dart';
import 'package:fletch/pages/layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardTheme: const CardTheme(
          margin: EdgeInsets.all(0),
        ),
      ),
      home: const Scaffold(
        body: RootLayout(
          child: HomePage(),
        ),
      ),
    );
  }
}
