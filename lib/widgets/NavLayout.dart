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
        backgroundColor: const Color.fromARGB(244, 20, 50, 47),
        navigationBar: CupertinoNavigationBar(
          automaticallyImplyLeading: true,
          backgroundColor: CupertinoColors.systemGrey.withOpacity(0.6),
          middle: const Text('My App'),
        ),
        child: Stack(
          children: [
            Image.network(
              'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ],
        ));
  }
}
