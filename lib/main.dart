import 'package:first123project/screens/Home_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Toke());
}

class Toke extends StatelessWidget {
  const Toke({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
