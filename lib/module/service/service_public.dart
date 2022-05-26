library service;

import 'dart:ui';

import 'package:aloship/model/model.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'service_view.dart';
part 'service_model.dart';
part 'service_state.dart';

Future showServiceBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Cl.white,
    clipBehavior: Clip.hardEdge,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
      ),
    ),
    builder: (_) => _createService(),
  );
}

ChangeNotifierProvider<_ServiceModel> _createService() {
  return ChangeNotifierProvider<_ServiceModel>(
    create: (_) => _ServiceModel(),
    child: _ServiceView(),
  );
}
