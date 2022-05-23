library notification;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'notification_view.dart';
part 'notification_model.dart';
part 'notification_state.dart';

ChangeNotifierProvider<_NotificationModel> createNotification() {
  return ChangeNotifierProvider<_NotificationModel>(
    create: (_) => _NotificationModel(),
    child: _NotificationView(),
  );
}
