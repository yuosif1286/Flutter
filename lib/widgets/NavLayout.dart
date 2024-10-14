import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton.filled(
          child: const Text('click me'),
          onPressed: () => showCupertinoModalPopup(
              context: context,
              builder: (_) => Container(
                    transformAlignment: Alignment.center,
                    color: Colors.white,
                    height: 400,
                    width: double.infinity,
                    child: Center(
                      child: CupertinoButton(
                          child: const Text('Close'),
                          onPressed: () => {Navigator.of(context).pop()}),
                    ),
                  ))),
    );
  }
}
