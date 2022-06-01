library personal;

import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'personal_view.dart';
part 'personal_model.dart';
part 'personal_state.dart';

ChangeNotifierProvider<_PersonalModel> createPersonal() {
  return ChangeNotifierProvider<_PersonalModel>(
    create: (_) => _PersonalModel(),
    child: _PersonalView(),
  );
}
