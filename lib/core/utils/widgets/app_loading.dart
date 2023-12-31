import 'package:flutter/material.dart';
import 'package:trimtime/core/utils/app_colors.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    Key? key,
    this.color = AppColors.red,
    this.thickness = 4.0,
  }) : super(key: key);
  final Color color;
  final double thickness;
  @override
  Widget build(BuildContext context) => Center(
        child: CircularProgressIndicator(
          color: color,
          strokeWidth: thickness,
        ),
      );
}
