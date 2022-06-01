part of home;

class _HomeModel extends TTChangeNotifier<_HomeView> {
  int pageIndex = 0;

  void onPagePressed(int index) {
    if (index == 3) {
      showContactDialog(context!);
      return;
    }
    if (pageIndex != index) {
      pageIndex = index;
      notifyListeners();
    }
  }

  void onLogoutPressed() {}

  void onClosePressed() {
    Navigator.of(context!).pop();
  }

  void onHistoryPressed() {
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) {
          return createShippingHistory();
        },
      ),
    );
  }

  void onPersonalPressed() {
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) {
          return createPersonal();
        },
      ),
    );
  }
}
