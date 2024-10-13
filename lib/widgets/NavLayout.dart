import 'package:flutter/cupertino.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        child: Center(
            child: CupertinoActivityIndicator(
      color: CupertinoColors.activeOrange,
      radius: 50,
      
    )));
  }
}
