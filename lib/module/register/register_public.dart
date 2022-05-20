library register;

import 'package:aloship/module/otp/otp_public.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'register_view.dart';
part 'register_model.dart';
part 'register_state.dart';

ChangeNotifierProvider<_RegisterModel> createRegister() {
  return ChangeNotifierProvider<_RegisterModel>(
    create: (_) => _RegisterModel(),
    child: _RegisterView(),
  );
}
