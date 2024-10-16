import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  String? _text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
          CupertinoSegmentedControl<String>(
            children: {
              'Youtube': Container(
                color: _text == 'Youtube'
                    ? Colors.greenAccent.withOpacity(0.3)
                    : Colors.white,
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'Youtube',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              'Flutter': Container(
                color: _text == 'Flutter'
                    ? Colors.greenAccent.withOpacity(0.3)
                    : Colors.white,
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'Flutter',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              'Google': Container(
                color: _text == 'Google'
                    ? Colors.greenAccent.withOpacity(0.3)
                    : Colors.white,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                height: double.infinity,
                child: const Text(
                  'Google',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            },
            onValueChanged: (newValue) {
              setState(() {
                _text = newValue;
              });
            },
          ),
          const SizedBox(height: 50),
          if (_text != null)
            Text(
              _text!,
              style: const TextStyle(fontSize: 50),
            ),
        ],
      ),
    );
  }
}
