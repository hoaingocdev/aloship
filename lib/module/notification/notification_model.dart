part of notification;

class _NotificationModel extends TTChangeNotifier<_NotificationView> {
  final notifications = <NotificationInfo>[];
  int notificationIndex = -1;
  _NotificationModel() {
    _initData();
  }
  void _initData() {
    final lsNotification = List.generate(10, (index) {
      return NotificationInfo.from({
        'title': 'title$index',
        'text': 'text$index',
        'time': 'time$index',
      });
    });
    notifications.addAll(lsNotification);
  }

  void onBackPressed() {}

  void onNotificationItem(int index) {
    if (notificationIndex != index) {
      notificationIndex = index;
      notifyListeners();
    }
  }
}
