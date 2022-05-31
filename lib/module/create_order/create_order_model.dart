part of create_order;

class _CreateOrderModel extends TTChangeNotifier<_CreateOrderView> {
  final List<AddressInfo> addresses;

  _CreateOrderModel(this.addresses);

  void onBackPressed() {
    Navigator.of(context!).pop();
  }

  late ServiceInfo serviceInfo = ServiceInfo.from({
    'imageUrl': 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
    'name': 'Hoả tốc',
    'note': 'Giao & nhận trong 25 đến 50 phút'
  });

  void onFindDriver() {}
}
