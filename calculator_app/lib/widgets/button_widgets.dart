import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final List<String> values;
  final Function(String) onPressed;

  const ButtonWidget(this.values, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: values.map((value) {
          return Expanded(
            child: ElevatedButton(
              onPressed: () => onPressed(value),
              child: Text(
                value,
                style: const TextStyle(fontSize: 22),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
