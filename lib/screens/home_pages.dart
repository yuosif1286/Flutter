import 'package:first123project/Components/text_category.dart';
import 'package:first123project/screens/famly_members_page.dart';
import 'package:first123project/screens/numbers_pages.dart';
import 'package:first123project/screens/phreses_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6Db),
      appBar: AppBar(
        titleSpacing: 20,
        centerTitle: false,
        title: const Text('Toke'),
        titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 27,
            decorationThickness: 3,
            shadows: [Shadow(color: Colors.black12, blurRadius: 20)]),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          textCategory(
            'members',
            Colors.orange,
            onTap: () {
              print('this will coming soon');
            },
          ),
          textCategory(
            'phrases',
            Colors.deepOrange,
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PhrasesPage()))
            },
          ),
          textCategory(
            'numbers',
            Colors.green,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NumbersPages()),
              );
            },
          ),
          textCategory('familyMembers', Colors.deepOrangeAccent, onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const FamilyMembersPage()),
            );
          }),
        ],
      ),
    );
  }
}
