part of service;

class _ServiceViewState extends TTState<_ServiceModel, _ServiceView> {
  @override
  Widget buildWithModel(BuildContext context, _ServiceModel model) {
    return SizedBox(
      height: MediaQueryData.fromWindow(window).padding.bottom + 236,
      child: Column(
        children: [
          const SizedBox(height: 22),
          Text(
            'Chọn dịch vụ',
            style: St.body18600.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 22),
          Expanded(
            child: ListView.separated(
                itemCount: model.services.length,
                separatorBuilder: (_, __) => const SizedBox(height: 15),
                itemBuilder: (_, i) {
                  return TtOrderSpeedWidget(
                    serviceInfo: model.services[i],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
