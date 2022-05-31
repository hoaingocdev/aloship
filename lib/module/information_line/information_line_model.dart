part of information_line;

enum PaymentMethod { cod, wallet }

class _InformationLineModel extends TTChangeNotifier<_InformationLineView> {
  final addresses = <AddressInfo>[];
  final formKey = GlobalKey<FormState>();

  late ShippingImformationInfo imformationInfo = ShippingImformationInfo.from({
    'distance': '0.5 km',
    'advanceMoney': '---',
    'fee': '20.000 vnđ',
    'voucher': '---',
  });
  final paymentMethod = ValueNotifier(PaymentMethod.cod);
  final TextEditingController controller;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  bool isVoucherApplyEnabled = false;
  bool isNextEnabled = false;
  _InformationLineModel()
      : controller = TextEditingController(),
        nameController = TextEditingController(),
        phoneController = TextEditingController() {
    _initData();
  }
  void _initData() {
    final lsAddress = List.generate(3, (index) {
      return AddressInfo.from({'address': 'address $index'});
    });
    addresses.addAll(lsAddress);
  }

  @override
  void dispose() {
    controller.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  void validate() {
    isVoucherApplyEnabled = controller.text.isNotEmpty;
    isNextEnabled = nameController.text.isNotEmpty && phoneController.text.isNotEmpty;
    notifyListeners();
  }

  void onApplyPressed() {}

  void onBackPressed() {
    Navigator.of(context!).pop();
  }

  void onPaymentMethodChanged(PaymentMethod? value) {
    if (value == null) {
      return;
    }
    paymentMethod.value = value;
  }

  void onContinuePressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    Navigator.of(context!).push(
      MaterialPageRoute(builder: (_) {
        return createCreateOrder(addresses);
      }),
    );
  }
}
