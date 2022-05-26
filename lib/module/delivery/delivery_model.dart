part of delivery;

class _DeliveryModel extends TTChangeNotifier<_DeliveryView> {
  late ServiceInfo serviceInfo = ServiceInfo.from({
    'imageUrl': 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
    'name': 'Hoả tốc',
    'note': 'Giao & nhận trong 25 đến 50 phút'
  });

  void onDeparturePoint() {
    Navigator.of(context!).push(
      MaterialPageRoute(builder: (_) => createDeparturePoint()),
    );
  }

  void onDestinationPressed() => Navigator.of(context!).push(
        MaterialPageRoute(
          builder: (_) => createDestination(),
        ),
      );

  void onServicePressed(BuildContext context) => showServiceBottomSheet(context);

  void onImformationLine() {
    Navigator.of(context!).push(
      MaterialPageRoute(builder: (_) => createInformationLine()),
    );
  }
}
