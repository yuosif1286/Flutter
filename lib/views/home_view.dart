import 'package:first123project/widgets/category_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('News'),
                Text(
                  'Clued',
                  style: TextStyle(
                    color: Colors.orange,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ]),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: const CategoryItem());
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Row(
            children: [
              CategoryCard(),
              SizedBox(
                width: 10,
              ),
              CategoryCard(),
              SizedBox(
                width: 10,
              ),
              CategoryCard(),
            ],
          )
        ],
      ),
    );
  }
}
