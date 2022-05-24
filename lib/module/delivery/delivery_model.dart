part of delivery;

class _DeliveryModel extends TTChangeNotifier<_DeliveryView> {
  void onDeparturePoint() {
    Navigator.of(context!).push(
      MaterialPageRoute(builder: (_) {
        return createDeparturePoint();
      }),
    );
  }
}
