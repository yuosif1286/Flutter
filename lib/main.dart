import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery for getting screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      title: 'My Home Page',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 0.25, // 20% of screen width
              height: 200, // 20% of screen height
              color: Colors.red,
            ),
            Container(
              width: screenWidth * 0.25,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: screenWidth * 0.25,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: screenWidth * 0.25,
              height: 200,
              color: Colors.yellowAccent,
            ),
          ],
        ),
      ),
    );
  }
}
