library drive_info;

import 'package:aloship/model/model.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'drive_info_view.dart';
part 'drive_info_model.dart';
part 'drive_info_state.dart';

Future showDriveInfoDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return createDriveInfo();
      });
}

ChangeNotifierProvider<_DriveInfoModel> createDriveInfo() {
  return ChangeNotifierProvider<_DriveInfoModel>(
    create: (_) => _DriveInfoModel(),
    child: _DriveInfoView(),
  );
}
