import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/items/Tune_item.dart';
import 'package:music_notes_player_app_setup/models/Tune_model.dart';

class TuneView extends StatelessWidget {
  TuneView({super.key});
  final List<TuneModel> Tunes = [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.orange, sound: 'note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'note3.wav'),
    TuneModel(color: Colors.lightGreen, sound: 'note4.wav'),
    TuneModel(color: Colors.green, sound: 'note5.wav'),
    TuneModel(color: Colors.lightBlue, sound: 'note6.wav'),
    TuneModel(color: Colors.purple, sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 1, 70, 100),
        title: const Text(
          'Flutter Tune',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        children: Tunes.map((e) => TuneItem(
              Tune: e,
            )).toList(),
      ),
    );
  }
}
