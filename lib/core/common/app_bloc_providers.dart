import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trimtime/main.dart';

class BlocProviders {
  static Future<Widget> providers() async {
    // add the providee to the specific folder
    return MultiBlocProvider(
      providers: [
       // BlocProvider(create: (ctx) => LoginBloc()),
    
      ],
      child: const TrimTime(),
    );
  }
}
