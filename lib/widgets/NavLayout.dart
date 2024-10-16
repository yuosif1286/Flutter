import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  String _value = '';
  final TextEditingController _textController =
      new TextEditingController(text: 'Test');
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone), label: 'Phone'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.star), label: 'Favorites'),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Icon(
                      index == 0
                          ? CupertinoIcons.home
                          : index == 1
                              ? CupertinoIcons.phone
                              : CupertinoIcons.star,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CupertinoTextField(
                      controller: _textController,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(_value)
                  ],
                ),
              );
            },
          );
        });
  }
}
