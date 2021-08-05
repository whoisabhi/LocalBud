import 'package:flutter/material.dart';
import '../cards/cards.dart';
import '../models/models.dart';
import 'pages.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  static void show(BuildContext context, Product product) {
    showPage(context, ProductPage(product: product));
  }

  const ProductPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.75,
      builder: (context, controller) => SingleChildScrollView(
        controller: controller,
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(
              height: 160,
              child: Image.asset(product.imagePath),
            ),
            Text(
              product.title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              product.subtitle,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            for (final info in product.infos) ...[
              InfoCard(info: info),
              const SizedBox(height: 20),
            ],
          ],
        ),
      ),
    );
  }
}
