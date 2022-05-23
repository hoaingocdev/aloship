part of notification;

class _NotificationViewState extends TTState<_NotificationModel, _NotificationView> {
  @override
  Widget buildWithModel(BuildContext context, _NotificationModel model) {
    return const Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
