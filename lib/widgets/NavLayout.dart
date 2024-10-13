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
        child: Text('Cupertino Action Sheet'),
        onPressed: () {
          showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                    title: const Text('Flutter Map'),
                    message: const Text('Your Message'),
                    actions: <CupertinoActionSheetAction>[
                      CupertinoActionSheetAction(
                          child: const Text('do some thing'),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      CupertinoActionSheetAction(
                          child: const Text('do some thing else'),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ],
                  ));
        },
      ),
    ));
  }
}
