part of departure_point;

class _DeparturePointModel extends TTChangeNotifier<_DeparturePointView> {
  final addresses = <AddressInfo>[];
  late TextEditingController controller;
  final isShowClear = ValueNotifier(false);

  _DeparturePointModel() {
    controller = TextEditingController();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onSearchChanged(String value) {
    if (value.isEmpty) {
      isShowClear.value = false;
      addresses.clear();
    } else {
      isShowClear.value = true;

      _searchAddress();
    }
    notifyListeners();
  }

  void _searchAddress() {
    final lsAddress = List.generate(10, (index) {
      return AddressInfo.from({
        'address': 'address $index',
      });
    });
    addresses.addAll(lsAddress);
  }

  void onClear() {
    controller.clear();
    isShowClear.value = false;
    notifyListeners();
  }
}
