import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  final String label;
  final Color color;

  const LabelWidget({
    required this.label,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          top: 1,
          bottom: 2,
          left: 6,
        ),
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
      painter: LabelPainter(color),
    );
  }
}

class LabelPainter extends CustomPainter {
  final Color color;

  LabelPainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final cut = size.height / 2;
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width - cut, size.height / 2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(
        path,
        Paint()
          ..color = color
          ..style = PaintingStyle.fill);
  }

  @override
  bool shouldRepaint(LabelPainter oldDelegate) {
    return this.color == oldDelegate.color;
  }
}
