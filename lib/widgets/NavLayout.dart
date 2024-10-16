import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  final TextEditingController _textController =
      TextEditingController(text: 'Flutter Map');
  String _text = 'Flutter Map';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.activeOrange.darkHighContrastColor,
      padding: const EdgeInsets.all(10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: CupertinoSearchTextField(
              controller: _textController,
              onChanged: (newText) {
                setState(() {
                  _text = newText;
                });
              },
            )),
            const SizedBox(
              height: 30,
            ),
            Text(_text)
          ]),
    );
  }
}
