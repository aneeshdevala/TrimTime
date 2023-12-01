import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pacelabapp/app/login/view_model/bloc/login_bloc.dart';
import 'package:pacelabapp/app/otp/view_model/otp_bloc.dart';
import 'package:pacelabapp/app/players/modelview/view_model/player_bloc.dart';
import 'package:pacelabapp/app/profie/view_model/profile_bloc.dart';
import 'package:pacelabapp/app/signup/view_model/signup_bloc.dart';
import 'package:pacelabapp/main.dart';

class BlocProviders {
  static Future<Widget> providers() async {
    // add the providee to the specific folder
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => LoginBloc()),
        BlocProvider(create: (ctx) => SignupBloc()),
        BlocProvider(create: (ctx) => OtpBloc()),
        BlocProvider(create: (ctx) => PlayerBloc()),
        BlocProvider(create: (ctx) => ProfileBloc()),
      ],
      child: const PaceLabApp(),
    );
  }
}
