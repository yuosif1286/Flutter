import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key}); // Add a key for best practices

  @override
  _LoginPageState createState() => _LoginPageState(); // Return the State object
}

class _LoginPageState extends State<LoginPage> {
  int count = 0; // Move the count variable into the state class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 40.w,
              height: 20.h,
              color: Colors.brown.shade100,
              child: Text(count.toString()), // Display count
            ),
            SizedBox(height: 10.h),
            Container(
              alignment: Alignment.center,
              width: 70.w,
              height: 30.h,
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.focused)) return Colors.red;
                    return null; // Defer to the default color
                  }),
                ),
                onPressed: () {
                  setState(() {
                    count +=
                        1; // Update count inside setState to trigger a rebuild
                  });
                },
                child: const Text('Count ++'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
