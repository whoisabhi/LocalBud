import 'package:flutter/material.dart';
export 'product_page.dart';
export 'search_page.dart';

void showPage(BuildContext context, Widget page) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    builder: (context) => page,
  );
}
