import 'package:first123project/Components/number_item.dart';
import 'package:first123project/Models/item_model.dart';
import 'package:flutter/material.dart';

class NumbersPages extends StatelessWidget {
  const NumbersPages({super.key});

  final List<ItemModel> numbers = const <ItemModel>[
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        gbName: 'One',
        enName: 'test',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        gbName: 'Tow',
        enName: 'test',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        gbName: 'Three',
        enName: 'test',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        gbName: 'Four',
        enName: 'test',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        gbName: 'five',
        enName: 'test',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        gbName: 'Six',
        enName: 'test',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        gbName: 'Seven',
        enName: 'test',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        gbName: 'Eight',
        enName: 'test',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        gbName: 'Nine',
        enName: 'test',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        gbName: 'Ten',
        enName: 'test',
        sound: 'sounds/numbers/number_ten_sound.mp3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        centerTitle: false,
        title: const Text('Numbers'),
        titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 27,
            decorationThickness: 3,
            shadows: [Shadow(color: Colors.black12, blurRadius: 20)]),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumberItem(item: numbers[index], color: Colors.orange);
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> list = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     list.add(NumberItem(item: numbers[i]));
  //   }
  //   return list;
  // }
}
