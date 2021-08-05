import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final GestureTapCallback? onTap;

  const CategoryCard({
    required this.title,
    required this.imagePath,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return FancyCard(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            // child: Container(
            //   height: 180,
            //   width: 400,
            // child: InteractiveViewer(
            //   minScale: 4,
            //   constrained: false,
            //   maxScale: 4,
            child: Image.asset(
              imagePath,
              height: 180,
            ),
            // ),
            // ),
          ),
        ],
      ),
    );
  }
}

class SubCategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const SubCategoryCard({
    required this.imagePath,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return FancyCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
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
    );
  }
}
