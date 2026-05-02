import 'package:flutter/material.dart';

class CardWidgetHome extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;

  const CardWidgetHome({
    super.key,
    required this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}


