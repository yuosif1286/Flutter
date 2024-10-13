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
      child: SizedBox(
        height: 100,
        width: 100,
        child: CupertinoContextMenu(
          actions: <CupertinoContextMenuAction>[
            CupertinoContextMenuAction(
              child: const Text("One"),
              onPressed: () {
                Navigator.pop(context); // Pop the context menu
              },
            ),
            CupertinoContextMenuAction(
              child: const Text("Two"),
              onPressed: () {
                Navigator.pop(context); // Pop the context menu
              },
            ),
          ],
          child: Image.network(
            "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          ),
        ),
      ),
    ));
  }
}
