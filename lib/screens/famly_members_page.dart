import 'package:first123project/Components/number_item.dart';
import 'package:first123project/Models/number.dart';
import 'package:flutter/material.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<Number> numbers = const <Number>[
    Number(
        image: 'assets/images/family_members/family_father.png',
        gbName: 'dytw',
        enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    Number(
        image: 'assets/images/family_members/family_daughter.png',
        gbName: 'Tow',
        enName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    Number(
        image: 'assets/images/family_members/family_daughter.png',
        gbName: 'Three',
        enName: 'sister',
        sound: 'sounds/family_members/younger sister.wav'),
    Number(
        image: 'assets/images/family_members/family_grandfather.png',
        gbName: 'Four',
        enName: 'grandfather',
        sound: 'sounds/family_members/grand father.wav'),
    Number(
        image: 'assets/images/family_members/family_grandmother.png',
        gbName: 'five',
        enName: 'grandmother',
        sound: 'sounds/family_members/grand mother.wav'),
    Number(
        image: 'assets/images/family_members/family_younger_brother.png',
        gbName: 'Six',
        enName: 'doughtier',
        sound: 'sounds/family_members/daughter.wav'),
    Number(
        image: 'assets/images/family_members/family_younger_sister.png',
        gbName: 'Seven',
        enName: 'nice',
        sound: 'sounds/family_members/older sister.wav'),
    Number(
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
          return NumberItem(item: numbers[index], color: Colors.green);
        },
      ),
    );
  }
}
