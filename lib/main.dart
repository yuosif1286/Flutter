import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BirthDateCard());
}

class BirthDateCard extends StatelessWidget {
  BirthDateCard();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Image(
          image: AssetImage('images/abod.png'),
        ),
      ),
    );
  }
}
