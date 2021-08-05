import 'package:flutter/material.dart';
import 'package:localbud/src/widgets/widgets.dart';

import 'pages.dart';

class SearchPage extends StatelessWidget {
  static void show(BuildContext context) {
    showPage(context, SearchPage());
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      expand: false,
      builder: (context, controller) => ListView(
        controller: controller,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
            child: SearchBarWidget(),
          ),
        ],
      ),
    );
  }
}
