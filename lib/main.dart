import 'package:first123project/screens/Home_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Tuoke());
}

class Tuoke extends StatelessWidget {
  Tuoke();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
