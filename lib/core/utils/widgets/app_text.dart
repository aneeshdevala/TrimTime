import 'package:flutter/material.dart';
import 'package:pacelabapp/core/utils/app_colors.dart';

class AppText extends Text {
  AppText(
    super.data, {
    Key? key,
    TextOverflow? overflow,
    double size = 14,
    Color color = AppColors.black,
    FontWeight bold = FontWeight.w500,
    TextAlign align = TextAlign.center,
  }) : super(
          key: key,
          style: TextStyle(
            color: color,
            fontSize: size,
            wordSpacing: 1.5,
            fontWeight: bold,
            overflow: overflow,
          ),
          textAlign: align,
        );
}
