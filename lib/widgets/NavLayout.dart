import 'package:flutter/cupertino.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text('${dateTime.year}-${dateTime.month}-${dateTime.day}'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  backgroundColor: CupertinoColors.black,
                  initialDateTime: dateTime,
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() {
                      dateTime = newDate;
                    });
                  },
                  use24hFormat: true,
                  mode: CupertinoDatePickerMode.date,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
