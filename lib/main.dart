import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trimtime/app/main.dart';
import 'package:trimtime/core/common/app_bloc_providers.dart';
import 'package:trimtime/core/common/app_routes.dart';
import 'package:trimtime/core/utils/widgets/app_dialogs.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(await BlocProviders.providers());
}

class TrimTime extends StatefulWidget {
  const TrimTime({
    super.key,
  });

  @override
  State<TrimTime> createState() => _PaceLabAppState();
}

class _PaceLabAppState extends State<TrimTime> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MainScreen(),
      navigatorKey: AppRoute.navigatorKey,
      scaffoldMessengerKey: AppDialogBoxes.rootScaffoldMessengerKey,
    );
  }
}
