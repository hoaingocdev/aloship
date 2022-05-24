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
}
