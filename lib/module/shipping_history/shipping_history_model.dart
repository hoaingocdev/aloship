part of shipping_history;

class _ShippingHistoryModel extends TTChangeNotifier<_ShippingHistoryView> {
  final historys = <HistoryInfo>[];
  int tabIndex = 0;

  _ShippingHistoryModel() {
    _initData();
  }

  void _initData() {
    final lsHistory = List.generate(10, (index) {
      return HistoryInfo.from({
        'departurePoint': 'departurePoint$index',
        'destination': 'destination$index',
        'deliveryForm': 'deliveryForm$index',
        'codeOrders': 'codeOrders$index',
        'orderStatus': 'orderStatus$index',
        'code': 'code$index'
      });
    });
    historys.addAll(lsHistory);
  }

  void onHistoryPressed(int index) {}

  void onTabChanged(int index) {
    if (tabIndex != index) {
      tabIndex = index;
      notifyListeners();
    }
  }
}
