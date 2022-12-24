import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;

  const EmoticonFace({super.key, required this.emoticonFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue[500],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        emoticonFace,
        style: const TextStyle(fontSize: 28),
      ),
    );
  }
}
