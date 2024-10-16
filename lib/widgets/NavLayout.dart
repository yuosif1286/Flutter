import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  int? _value = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CupertinoSlidingSegmentedControl(
            children: const {
          0: Text('Text 0'),
          1: Text('Text 1'),
          2: Text('Text 2')
        },
            groupValue: _value,
            onValueChanged: (newValue) => setState(() {
                  _value = newValue;
                })));
  }
}
