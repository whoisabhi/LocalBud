import 'package:flutter/material.dart';

import 'fancy_card.dart';

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FancyCard(
      child: Container(
        height: 40,
        padding: const EdgeInsets.only(right: 24),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: 'Search Goods',
            border: InputBorder.none,
            // isDense: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                Icons.search,
                size: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
