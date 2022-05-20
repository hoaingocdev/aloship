library _forgot_password;

import 'package:aloship/module/otp/otp_public.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

import '../../res/color.p.dart';
import '../../res/style.p.dart';

part 'forgot_password_view.dart';
part 'forgot_password_model.dart';
part 'forgot_password_state.dart';

ChangeNotifierProvider<ForgotPasswordModel> createForgotPassword() {
  return ChangeNotifierProvider<ForgotPasswordModel>(
    create: (_) => ForgotPasswordModel(),
    child: const ForgotPasswordView(),
  );
}
