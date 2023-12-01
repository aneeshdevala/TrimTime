import 'package:flutter/material.dart';

class AppTitle extends Text {
  AppTitle(
    super.data, {
    Key? key,
    TextOverflow? overflow,
    double fontSize = 16,
    Color color = Colors.black,
    TextAlign align = TextAlign.center,
    FontWeight weight = FontWeight.bold,
  }) : super(
          key: key,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: weight,
            wordSpacing: 0.8,
            overflow: overflow,
          ),
          textAlign: align,
        );
}
