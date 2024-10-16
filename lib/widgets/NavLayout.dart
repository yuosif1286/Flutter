import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CupertinoSwitch(
              value: _value,
              onChanged: (value) => setState(() {
                    _value = value;
                  })),
          const SizedBox(
            height: 50,
          ),
          // Switch.adaptive(
          //     value: _value,
          //     onChanged: (value) => setState(() {
          //           _value = value;
          //         }))
        ],
      ),
    );
  }
}
