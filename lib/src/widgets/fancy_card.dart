import 'package:flutter/material.dart';

class FancyCard extends StatelessWidget {
  final Widget child;
  final GestureTapCallback? onTap;

  const FancyCard({
    required this.child,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        child: child,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              offset: Offset(-2, 0),
              spreadRadius: 4,
              blurRadius: 4,
            ),
          ],
        ),
      ),
    );
  }
}
