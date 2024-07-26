import 'package:first123project/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const News());
}

class News extends StatelessWidget {
  const News({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
