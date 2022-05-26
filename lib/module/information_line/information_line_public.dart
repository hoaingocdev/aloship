library information_line;

import 'package:aloship/model/model.dart';
import 'package:aloship/module/module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

import '../../res/res.dart';

part 'information_line_view.dart';
part 'information_line_model.dart';
part 'information_line_state.dart';

ChangeNotifierProvider<_InformationLineModel> createInformationLine() {
  return ChangeNotifierProvider<_InformationLineModel>(
    create: (_) => _InformationLineModel(),
    child: _InformationLineView(),
  );
}
