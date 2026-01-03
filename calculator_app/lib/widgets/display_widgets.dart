import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  final String display;

  const DisplayWidget({super.key, required this.display});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.all(20),
      child: Text(
        display,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
