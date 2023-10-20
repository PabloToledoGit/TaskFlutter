import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int dificuldadeLevel;
  const Difficulty({
    required this.dificuldadeLevel,
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 20,
          color: (dificuldadeLevel >= 1)
              ? Colors.blue
              : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: (dificuldadeLevel >= 2)
              ? Colors.blue
              : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: (dificuldadeLevel >= 3)
              ? Colors.blue
              : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: (dificuldadeLevel >= 4)
              ? Colors.blue
              : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: (dificuldadeLevel >= 5)
              ? Colors.blue
              : Colors.blue[100],
        ),
      ],
    );
  }
}