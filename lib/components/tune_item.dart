import 'package:first123project/Model/tuneModel.dart';
import 'package:flutter/material.dart';

class TuneItem extends StatelessWidget {
  final TuneModel item;
  const TuneItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => {
          item.play(),
        },
        child: Container(
          color: item.color,
        ),
      ),
    );
  }
}
