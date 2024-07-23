import 'package:audioplayers/audioplayers.dart';
import 'package:first123project/Models/item_model.dart';
import 'package:flutter/material.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    super.key,
    required this.item,
    required this.color,
  });
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 15),
          Column(
            children: [
              Text(
                item.enName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decorationThickness: 3,
                    shadows: [Shadow(color: Colors.black12, blurRadius: 20)]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  item.gbName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      decorationThickness: 3,
                      shadows: [Shadow(color: Colors.black12, blurRadius: 20)]),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              if (item.sound != null) {
                final player = AudioPlayer();
                player.play(AssetSource(item.sound!));
              }
            },
            icon: const Icon(
              Icons.arrow_right,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
