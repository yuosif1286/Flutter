import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton.filled(
        child: const Text('Go Page Two'),
        onPressed: () => (Navigator.of(context)
            .push(CupertinoPageRoute(builder: (BuildContext context) {
          return const PageTwo();
        }))),
      ),
    ));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('this page Two'),
      ),
    );
  }
}
