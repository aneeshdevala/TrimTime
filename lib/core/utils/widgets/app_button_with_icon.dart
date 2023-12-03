import 'package:flutter/material.dart';
import 'package:trimtime/core/utils/app_colors.dart';

class AppButtonWithIcon extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;
  final double width;
  final Widget icon;
  final double height;

  const AppButtonWithIcon({
    Key? key,
    required this.icon,
    required this.onTap,
    this.color = AppColors.red,
    this.width = double.infinity,
    this.height = 13,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.5),
            ),
            padding: EdgeInsets.symmetric(vertical: height),
            elevation: 0,
          ),
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
            ],
          ),
        ),
      );
}
