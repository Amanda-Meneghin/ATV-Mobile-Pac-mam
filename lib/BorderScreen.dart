// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BorderScreen extends StatelessWidget {
  final Widget child;
  final double borderWidth;

  const BorderScreen({super.key, required this.child, this.borderWidth = 8.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple, width: borderWidth),
      ),
      child: child,
    );
  }
}
