part of notification_dialog;

class _NotificationDialogModel extends TTChangeNotifier<_NotificationDialogView> {
  void onApplyPressed() {
    Navigator.of(context!).pop();
  }
}
