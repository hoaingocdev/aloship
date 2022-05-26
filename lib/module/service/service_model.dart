part of service;

class _ServiceModel extends TTChangeNotifier<_ServiceView> {
  final services = <ServiceInfo>[];
  _ServiceModel() {
    _initData();
  }
  void _initData() {
    final lsService = List.generate(2, (index) {
      return ServiceInfo.from({
        'imageUrl': 'https://st.quantrimang.com/photos/image/2021/09/23/AVT-Chibi-10.jpg',
        'name': 'name$index',
        'note': 'note$index'
      });
    });
    services.addAll(lsService);
  }
}
