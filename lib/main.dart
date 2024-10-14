import 'package:first123project/widgets/LoginPage.dart';
import 'package:first123project/widgets/NavLayout.dart';
import 'package:first123project/widgets/UserIfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 812),
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(
            brightness: Brightness.dark,
            textTheme: CupertinoTextThemeData(
              textStyle: TextStyle(fontSize: 16, color: Colors.blue),
            ),
            barBackgroundColor: Color.fromARGB(255, 55, 65, 77),
            primaryColor: CupertinoColors.activeOrange),
        home: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text('Flutter App'),
            ),
            child: NavLayout()),
      ),
    );
  }
}
