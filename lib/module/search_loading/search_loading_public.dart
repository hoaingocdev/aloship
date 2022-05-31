library search_loading;

import 'dart:math';

import 'package:aloship/module/module.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'search_loading_view.dart';
part 'search_loading_model.dart';
part 'search_loading_state.dart';

Future showSearchLoadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return _createSearchLoading();
    },
  );
}

ChangeNotifierProvider<_SearchLoadingModel> _createSearchLoading() {
  return ChangeNotifierProvider<_SearchLoadingModel>(
    create: (_) => _SearchLoadingModel(),
    child: _SearchLoadingView(),
  );
}
