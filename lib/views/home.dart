import 'package:first123project/Model/tuneModel.dart';
import 'package:first123project/components/tune_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<TuneModel> items = [
    TuneModel(color: Colors.yellowAccent, sound: 'note1.wav'),
    TuneModel(color: Colors.red, sound: 'note2.wav'),
    TuneModel(color: Colors.green, sound: 'note3.wav'),
    TuneModel(color: Colors.blue, sound: 'note4.wav'),
    TuneModel(color: Colors.yellow, sound: 'note5.wav'),
    TuneModel(color: Colors.redAccent, sound: 'note6.wav'),
    TuneModel(color: Colors.cyan, sound: 'note7.wav'),
    TuneModel(color: Colors.deepOrange, sound: 'note2.wav'),
  ];
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tune App'),
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
        shadowColor: const Color.fromARGB(255, 48, 18, 144),
        elevation: 10.0,
        toolbarHeight: 80,
      ),
      // body: Column(children: getTuneItems()),
      // other way
      body: Column(
        children: items
            .map(
              (e) => TuneItem(item: e),
            )
            .toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> tuneItems = [];
  //   for (int i = 0; i < items.length; i++) {
  //     tuneItems.add(TuneItem(item: items[i]));
  //   }
  //   return tuneItems;
  // }
}
