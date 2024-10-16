import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  double _value = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text('$_value'),
          const SizedBox(height: 50),
          CupertinoSlider(
            value: _value,
            min: 0,
            max: 10,
            divisions: 10,
            onChanged: (newValue) {
              setState(() {
                _value = newValue;
              });
            },
          )
        ],
      ),
    );
  }
}
