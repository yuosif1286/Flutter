import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(Object context) {
    return Container(
      height: 110,
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage('assets/entertaiment.avif'), fit: BoxFit.fill),
      ),
      child: const Center(
        child: Text(
          'Test title',
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
    );
  }
}
