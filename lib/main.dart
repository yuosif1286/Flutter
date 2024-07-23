import 'package:first123project/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Tune());
}

class Tune extends StatelessWidget {
  const Tune({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
