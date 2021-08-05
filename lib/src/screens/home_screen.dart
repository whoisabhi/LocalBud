import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:localbud/src/models/images.dart';
import 'package:localbud/src/models/models.dart';
import 'package:localbud/src/pages/goods_page.dart';
import '../pages/pages.dart';
import '../widgets/widgets.dart';
import '../cards/cards.dart';

const infos = const <Info>[
  Info(
    title: 'Available in 3 stores near you',
    subtitle: 'Within 200 meters',
  ),
  Info(
    title: '7+ simmilar products available',
    subtitle: 'Within 100 meters',
  ),
  Info(
    title: 'People who browsed this',
    subtitle: 'also browsed',
  ),
];

const PRODUCTS = const <Product>[
  Product(
    title: 'Lays',
    subtitle: 'India\'s Magic Masala',
    imagePath: Images.LAYS,
    infos: infos,
    type: ProductType.popular,
  ),
  Product(
    title: 'Doritos',
    subtitle: 'Sweet Chilli',
    imagePath: Images.DORITOS,
    infos: infos,
    type: ProductType.promoted,
  ),
  Product(
    title: 'Amul Gold',
    subtitle: 'Milky Milk',
    imagePath: Images.MILK,
    infos: infos,
    type: ProductType.popular,
  ),
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: LocalBudTitle(22),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(LineIcons.bars),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(LineIcons.user),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          BannerWidget(),
          const SizedBox(height: 20),
          CategoryCard(
            title: 'Browse\nGoods',
            onTap: () {
              GoodsPage.show(context);
            },
            imagePath: Images.PINEAPPLE,
          ),
          const SizedBox(height: 20),
          CategoryCard(
            title: 'Browse\nServices',
            imagePath: Images.TOOLS,
          ),
          const SizedBox(height: 20),
          for (final product in PRODUCTS) ...[
            ProductCard(
              title: product.title,
              subtitle: product.subtitle,
              imagePath: product.imagePath,
              color: product.color,
              label: product.label,
              onTap: () {
                ProductPage.show(context, product);
              },
            ),
            const SizedBox(height: 20),
          ],
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          SearchPage.show(context);
        },
      ),
    );
  }
}

extension on Product {
  Color get color {
    switch (type) {
      case ProductType.normal:
        return Colors.transparent;
      case ProductType.promoted:
        return Colors.blue;
      case ProductType.popular:
        return Colors.red;
    }
  }

  String get label {
    switch (type) {
      case ProductType.normal:
        return '';
      case ProductType.promoted:
        return 'Promoted Product';
      case ProductType.popular:
        return 'Popular in your area';
    }
  }
}

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Everything & anything that ',
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
        children: [
          TextSpan(
            text: 'you',
            style: TextStyle(color: Colors.red),
          ),
          TextSpan(text: ' need'),
        ],
      ),
    );
  }
}
