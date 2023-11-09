import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/Tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.Tune});
  final TuneModel Tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Tune.playsound();
        },
        child: Container(
          color: Tune.color,
        ),
      ),
    );
  }
}
