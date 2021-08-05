import 'package:flutter/material.dart';
import 'package:localbud/src/models/images.dart';
import '../cards/cards.dart';
import 'pages.dart';

class GoodsPage extends StatelessWidget {
  static void show(BuildContext context) {
    showPage(context, const GoodsPage());
  }

  const GoodsPage();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.85,
      builder: (context, controller) => SingleChildScrollView(
        controller: controller,
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            SubCategoryCard(
              title: 'Browse \nFruits & Vegetables',
              imagePath: Images.VEGETABLES,
            ),
            const SizedBox(height: 20),
            SubCategoryCard(
              title: 'Browse \nBakery & Dairy',
              imagePath: Images.COOKIES,
            ),
            const SizedBox(height: 20),
            SubCategoryCard(
              title: 'Browse \nSnacks & Packaged \nFood',
              imagePath: Images.LAYS,
            ),
          ],
        ),
      ),
    );
  }
}
