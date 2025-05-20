import 'package:flutter/material.dart';
import 'package:recipe_app/theme.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: AppColors.bold,
      ),
    );
  }
}
