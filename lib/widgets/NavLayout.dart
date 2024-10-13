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
            child: CupertinoButton(
      child: const Text('Cupertino Alert Dialog'),
      onPressed: () {
        showCupertinoDialog<void>(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('This Title Dialog'),
                    content: const Text('This is Containt Dialog ?'),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                        child: const Text('Cancel'),
                        textStyle:
                            const TextStyle(color: CupertinoColors.systemRed),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoDialogAction(
                        child: const Text('Confirm'),
                        textStyle:
                            const TextStyle(color: CupertinoColors.activeGreen),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ]));
      },
    )));
  }
}
