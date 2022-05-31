library found_drive;

import 'package:aloship/module/create_order_item/create_order_item_public.dart';
import 'package:aloship/module/module.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'found_drive_view.dart';
part 'found_drive_model.dart';
part 'found_drive_state.dart';

Future showFoundDriveDiaLog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return _createFoundDrive();
      });
}

ChangeNotifierProvider<_FoundDriveModel> _createFoundDrive() {
  return ChangeNotifierProvider<_FoundDriveModel>(
    create: (_) => _FoundDriveModel(),
    child: _FoundDriveView(),
  );
}
