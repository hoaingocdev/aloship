part of drive_info;

class _CreateOrderItemModel extends TTChangeNotifier<_CreateOrderItemView> {
  final addresses = <AddressInfo>[];
  _CreateOrderItemModel() {
    _initData();
  }
  void _initData() {
    final lsAddress = List.generate(3, (index) {
      return AddressInfo.from({
        'address': 'address $index',
      });
    });
    addresses.addAll(lsAddress);
  }

  late ServiceInfo serviceInfo = ServiceInfo.from({
    'imageUrl': 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
    'name': 'Hoả tốc',
    'note': 'Giao & nhận trong 25 đến 50 phút'
  });
  void onBackPressed() {
    Navigator.of(context!).pop();
  }

  void onDriveInfo() {
    showDriveInfoDialog(context!);
  }
}
