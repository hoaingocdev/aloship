part of notification;

class _NotificationModel extends TTChangeNotifier<_NotificationView> {
  final notifications = <NotificationInfo>[];
  _NotificationModel() {
    _initData();
  }
  void _initData() {
    final lsNotification = List.generate(10, (index) {
      return NotificationInfo.from({
        'title': 'title$index',
        'text': 'text$index',
        'time': 'time$index',
        'isRead': false,
      });
    });
    notifications.addAll(lsNotification);
  }

  void onBackPressed() {}

  void onNotificationItem(int index) {
    notifications[index].read();
    notifyListeners();
  }
}
