import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class ProductCard extends StatelessWidget {
  final String label;
  final Color color;
  final String title;
  final String subtitle;
  final String imagePath;
  final GestureTapCallback? onTap;

  const ProductCard({
    required this.label,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return FancyCard(
      onTap: onTap,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: LabelWidget(
              label: label,
              color: color,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                child: SizedBox(
                  height: 160,
                  child: Image.asset(imagePath),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductCard1 extends StatelessWidget {
  final String label;
  final Color color;
  final String title;

  const ProductCard1({
    required this.label,
    required this.color,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return FancyCard(
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: LabelWidget(
              label: label,
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 42, left: 16),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
