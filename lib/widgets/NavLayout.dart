import 'package:flutter/cupertino.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
            child: Column(
      children: [
        const CupertinoButton(onPressed: null, child: Text('Add Test')),
        const SizedBox(
          height: 30,
        ),
        CupertinoButton(child: const Text('Edit Test'), onPressed: () {}),
        const SizedBox(
          height: 30,
        ),
        const CupertinoButton(onPressed: null, child: Text('Delete Test')),
      ],
    )));
  }
}
