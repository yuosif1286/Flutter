import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;

  TuneModel({required this.color, required this.sound});

  void play() {
    final Player = AudioPlayer();
    Player.play(AssetSource(sound));
  }
}
