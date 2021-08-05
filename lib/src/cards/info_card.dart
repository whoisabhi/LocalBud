import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class InfoCard extends StatelessWidget {
  final Info info;

  const InfoCard({required this.info});
  @override
  Widget build(BuildContext context) {
    return FancyCard(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              info.title,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              info.subtitle,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
