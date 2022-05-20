library newpassword;

import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

import '../login/login_public.dart';

part 'new_password_view.dart';
part 'new_password_model.dart';
part 'new_password_state.dart';

ChangeNotifierProvider<_NewPasswordModel> createNewpassword() {
  return ChangeNotifierProvider<_NewPasswordModel>(
    create: (_) => _NewPasswordModel(),
    child: _NewPasswordView(),
  );
}
