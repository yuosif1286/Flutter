import 'package:first123project/widgets/LoginPage.dart';
import 'package:first123project/widgets/UserIfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Userifo(
      Name: 'yoyo',
      child: ScreenUtilInit(
        designSize: Size(375, 812),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
        ),
      ),
    );
  }
}
