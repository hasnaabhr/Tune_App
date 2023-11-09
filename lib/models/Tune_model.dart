import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;
  final AudioPlayer player = AudioPlayer();

  TuneModel({required this.color, required this.sound});

  playsound() {
    player.play(AssetSource(sound));
  }
}
