import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton.filled(
        child: Text('value = $_selectedValue'),
        onPressed: () => showCupertinoModalPopup(
          context: context,
          builder: (_) => SizedBox(
            width: double.infinity,
            height: 250,
            child: CupertinoPicker(
              itemExtent: 30,
              backgroundColor: Colors.blueAccent.withOpacity(0.5),
              scrollController: FixedExtentScrollController(initialItem: 0),
              onSelectedItemChanged: (int newValue) {
                setState(() {
                  _selectedValue = newValue;
                });
              },
              children: const [
                Text('0'),
                Text('1'),
                Text('2'),
                Text('3'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
