part of search_loading;

class _SearchLoadingModel extends TTChangeNotifier<_SearchLoadingView> {
  @override
  void onReady() {
    super.onReady();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context!).pop();
      var ran = Random.secure();
      final isFound = ran.nextBool();
      if (isFound) {
        showFoundDriveDiaLog(context!);
      } else {
        showNotificationDialog(context!);
      }
    });
  }

  void onCancelClick() {
    Navigator.of(context!).pop();
  }
}
