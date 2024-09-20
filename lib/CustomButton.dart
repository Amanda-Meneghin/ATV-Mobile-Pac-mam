// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color borderColor;
  final VoidCallback onPressed;

  const CustomButton(
      {super.key,
      required this.text,
      required this.borderColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 250,
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 3.0),
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'PressStart2P',
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
