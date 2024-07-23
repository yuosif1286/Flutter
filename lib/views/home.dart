import 'package:first123project/Model/tuneModel.dart';
import 'package:first123project/components/tune_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: Column(children: [
        Expanded(
          child: TuneItem(
            item: TuneModel(
              color: Colors.red,
              sound: '',
            ),
          ),
        ),
        Expanded(
          child: TuneItem(
            item: TuneModel(
              color: Colors.black,
              sound: '',
            ),
          ),
        ),
        Expanded(
          child: TuneItem(
            item: TuneModel(
              color: Colors.green,
              sound: '',
            ),
          ),
        ),
        Expanded(
          child: TuneItem(
            item: TuneModel(
              color: Colors.blue,
              sound: '',
            ),
          ),
        ),
        Expanded(
          child: TuneItem(
            item: TuneModel(
              color: Colors.yellow,
              sound: '',
            ),
          ),
        ),
        Expanded(
          child: TuneItem(
            item: TuneModel(
              color: Colors.transparent,
              sound: '',
            ),
          ),
        ),
        Expanded(
          child: TuneItem(
            item: TuneModel(
              color: Colors.lightGreen,
              sound: '',
            ),
          ),
        ),
      ]),
    );
  }
}
