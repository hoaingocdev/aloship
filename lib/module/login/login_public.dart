library login;

import 'package:aloship/module/home/home_public.dart';
import 'package:aloship/module/register/register_public.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

import '../forgot_password/forgot_password_public.dart';

part 'login_view.dart';
part 'login_model.dart';
part 'login_state.dart';

ChangeNotifierProvider<_LoginModel> createLogin() {
  return ChangeNotifierProvider<_LoginModel>(
    create: (_) => _LoginModel(),
    child: _LoginView(),
  );
}
