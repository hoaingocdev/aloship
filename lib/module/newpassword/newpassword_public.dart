library newpassword;

import 'package:aloship/res/res.dart';
import 'package:aloship/res/style.p.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'newpassword_view.dart';
part 'newpassword_model.dart';
part 'newpassword_state.dart';

ChangeNotifierProvider<_NewpasswordModel> createNewpassword() {
  return ChangeNotifierProvider<_NewpasswordModel>(
    create: (_) => _NewpasswordModel(),
    child: _NewpasswordView(),
  );
}
