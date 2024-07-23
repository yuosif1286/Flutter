import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tune App'),
          backgroundColor: Colors.black45,
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Welcome to the Tune App!',
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
