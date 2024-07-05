import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class textCategory extends StatelessWidget {
  String title = '';
  Color backgroundColor = Colors.red;
  VoidCallback? onTap;
  textCategory(
    this.title,
    this.backgroundColor, {
    super.key,
    this.onTap,
  });
  @override
  Widget build(Object context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: backgroundColor,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
