import 'info.dart';

enum ProductType {
  normal,
  promoted,
  popular,
}

class Product {
  final ProductType type;
  final String imagePath;
  final String title;
  final String subtitle;
  final List<Info> infos;

  const Product({
    required this.type,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.infos,
  });
}
