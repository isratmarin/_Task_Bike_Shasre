import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isSelected;
  final String text;

  const CustomTextButton({
    required this.onPressed,
    required this.isSelected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 22,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
      child: Text(text),
    );
  }
}