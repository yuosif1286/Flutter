import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(height: 150.h),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 96.w),
              child: Image.asset(
                'assets/logo.png',
                width: 300.w,
                height: 100.h,
              )),
          SizedBox(height: 35.h),
          Container(
            width: 343.w,
            height: 43.h,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8.r)),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                hintText: 'Email',
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 19.h),
          Container(
            width: 343.w,
            height: 43.h,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8.r)),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                hintText: 'Password',
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 19.h),
          Padding(
            padding: EdgeInsets.only(left: 210.w),
            child: Text(
              'Forgot password?',
              style: TextStyle(fontSize: 14.sp, color: Colors.blue),
            ),
          ),
          SizedBox(height: 30.h),
          Container(
            alignment: Alignment.center,
            width: 330.w,
            height: 45.h,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
