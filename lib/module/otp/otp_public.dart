library otp;

import 'package:aloship/module/newpassword/newpassword_public.dart';
import 'package:aloship/res/style.p.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

import '../../res/color.p.dart';

part 'otp_view.dart';
part 'otp_model.dart';
part 'otp_state.dart';

ChangeNotifierProvider<_OtpModel> createOtp() {
  return ChangeNotifierProvider<_OtpModel>(
    create: (_) => _OtpModel(),
    child: _OtpView(),
  );
}
