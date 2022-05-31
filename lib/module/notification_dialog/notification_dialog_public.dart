library notification_dialog;

import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'notification_dialog_view.dart';
part 'notification_dialog_model.dart';
part 'notification_dialog_state.dart';

Future showNotificationDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return _createNotificationDialog();
    },
  );
}

ChangeNotifierProvider<_NotificationDialogModel> _createNotificationDialog() {
  return ChangeNotifierProvider<_NotificationDialogModel>(
    create: (_) => _NotificationDialogModel(),
    child: _NotificationDialogView(),
  );
}
