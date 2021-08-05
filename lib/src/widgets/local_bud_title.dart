import 'package:flutter/material.dart';

class LocalBudTitle extends StatelessWidget {
  final double size;
  const LocalBudTitle([this.size = 32]);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'localbud_title',
      child: Text(
        'LocalBud',
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
