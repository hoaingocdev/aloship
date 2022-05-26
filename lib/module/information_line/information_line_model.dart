part of information_line;

class _InformationLineModel extends TTChangeNotifier<_InformationLineView> {
  late ShippingImformationInfo imformationInfo = ShippingImformationInfo.from({
    'distance': '0.5 km',
    'advanceMoney': '---',
    'fee': '20.000 vnđ',
    'voucher': '---',
  });
  final TextEditingController controller;
  bool enable = false;

  _InformationLineModel() : controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void validate() {
    enable = controller.text.isNotEmpty;
    notifyListeners();
  }

  void onApplyPressed() {}

  void onBackPressed() {
    Navigator.of(context!).pop();
  }
}
