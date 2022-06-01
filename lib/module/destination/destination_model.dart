part of destination;

class _DestinationModel extends TTChangeNotifier<_DestinationView> {
  final addresses = <AddressInfo>[];
  late TextEditingController controller;
  final isShowClear = ValueNotifier(false);

  _DestinationModel() {
    controller = TextEditingController();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onSearchChange(String value) {
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

  void onCleared() {
    controller.clear();
    isShowClear.value = false;
    notifyListeners();
  }
}
