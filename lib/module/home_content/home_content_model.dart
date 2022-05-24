part of home_content;

class _HomeContentModel extends TTChangeNotifier<_HomeContentView> {
  final discounts = <DiscountInfo>[];
  _HomeContentModel() {
    _initData();
  }
  void _initData() {
    final lsDiscount = List.generate(10, (index) {
      return DiscountInfo.from({
        'imageUrl': 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
        'title': 'title$index',
        'description': 'description$index',
        'expiredDate': 'expiredDate$index'
      });
    });
    discounts.addAll(lsDiscount);
  }

  void onDeliveryPressed() {
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) {
          return createDelivery();
        },
      ),
    );
  }
}
