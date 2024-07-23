import 'package:first123project/Components/number_item.dart';
import 'package:first123project/Components/phrases_item.dart';
import 'package:first123project/Models/item_model.dart';
import 'package:flutter/material.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> numbers = const <ItemModel>[
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        gbName: 'dytw',
        enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        gbName: 'Tow',
        enName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        gbName: 'Three',
        enName: 'sister',
        sound: 'sounds/family_members/younger sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        gbName: 'Four',
        enName: 'grandfather',
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        gbName: 'five',
        enName: 'grandmother',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        gbName: 'Six',
        enName: 'doughtier',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        gbName: 'Seven',
        enName: 'nice',
        sound: 'sounds/family_members/older sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        gbName: 'Eight',
        enName: 'nephew',
        sound: 'sounds/family_members/son.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        centerTitle: false,
        title: const Text('Family Members'),
        titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 27,
            decorationThickness: 3,
            shadows: [Shadow(color: Colors.black12, blurRadius: 20)]),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return PhrasesItem(
              item: numbers[index], color: Color.fromARGB(255, 220, 115, 209));
        },
      ),
    );
  }
}
