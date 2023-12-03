import 'package:flutter/material.dart';
import 'package:trimtime/core/common/app_routes.dart';
import 'package:trimtime/core/utils/app_colors.dart';
import 'package:trimtime/core/utils/size_extenstion.dart';
import 'package:trimtime/core/utils/widgets/app_text.dart';
import 'package:trimtime/core/utils/widgets/app_title.dart';


class AppDialogBoxes {
  static final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  // TO SHOW POPUP
  static showPopup(
    String messege, {
    Color color = AppColors.black,
    int milliSec = 2000,
    Color textColor = AppColors.white,
  }) {
    rootScaffoldMessengerKey.currentState?.hideCurrentSnackBar();
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        duration: Duration(milliseconds: milliSec),
        behavior: SnackBarBehavior.floating,
        backgroundColor: color,
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        content: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            messege,
            style: TextStyle(
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  // TO SHOW DIALOG BOX
  static Future<void> showDialogBox({
    required String title,
    required String messege,
    required VoidCallback onAllow,
    String denyText = 'No',
    String allowText = 'Yes',
    bool isTwoOption = true,
    BuildContext? paraCtx,
  }) async {
    await showDialog(
      context: paraCtx ?? AppRoute.navigatorKey.currentContext!,
      builder: (ctx) => AlertDialog(
        title: Text(
          title,
        ),
        titleTextStyle: const TextStyle(fontSize: 24, color: AppColors.black),
        content: Text(messege),
        contentTextStyle: const TextStyle(fontSize: 18, color: AppColors.black),
        actions: [
          TextButton(
            onPressed: () {
              AppRoute.pop();
            },
            child: Text(
              denyText,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          if (isTwoOption)
            TextButton(
              onPressed: onAllow,
              child: Text(
                allowText,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
        ],
      ),
    );
  }

  // TO SHOW ERROR DIALOG BOX
  static Future<void> showErrorBox(
    String messege, {
    String title = 'ERROR !!',
  }) async {
    await showDialog(
      context: AppRoute.navigatorKey.currentContext!,
      builder: (ctx) => AlertDialog(
        title: Text(title),
        titleTextStyle: const TextStyle(fontSize: 24, color: AppColors.black),
        content: Text(messege),
        contentTextStyle: const TextStyle(fontSize: 18, color: AppColors.black),
        actions: [
          TextButton(
            onPressed: () {
              AppRoute.pop();
            },
            child: const Text(
              'OK',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // TO SHOW SUCCESS POPUP
  static Future<void> showSuccessPopup({
    required String title,
    required String messege,
  }) async {
    await showDialog(
      context: AppRoute.navigatorKey.currentContext!,
      builder: (ctx) => AlertDialog(
        title: Column(
          children: [
            const Icon(
              Icons.check_circle,
              color: AppColors.green,
              size: 34.0,
            ),
            10.height,
            AppTitle(title, fontSize: 18.0),
          ],
        ),
        content: AppText(messege, color: AppColors.grey500, size: 15.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      ),
    );
  }
}
