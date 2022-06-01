part of departure_point;

class _DeparturePointViewState extends TTState<_DeparturePointModel, _DeparturePointView> {
  @override
  Widget buildWithModel(BuildContext context, _DeparturePointModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        context: context,
        title: 'Điểm đi',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 22),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TTextfield(
            hint: 'Nhập địa điểm của bạn',
            onChanged: model.onSearchChanged,
            controller: model.controller,
            suffixWidget: ValueListenableBuilder<bool>(
              valueListenable: model.isShowClear,
              builder: (context, isShowClear, _) {
                return isShowClear
                    ? InkWell(
                        onTap: model.onClear,
                        child: Image.asset(Id.ic_close),
                      )
                    : const SizedBox();
              },
            ),
            prefixWidget: const Icon(
              Icons.search,
              color: Cl.black,
            ),
          ),
          const SizedBox(height: 10),
          const TTLocationWidget(
            title: 'Ví trí của bạn',
            addressText: '120 Nguyễn Trãi, Thanh Xuân, Hà Nội',
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Gợi ý tìm kiếm',
              style: St.body16600.copyWith(color: Cl.black),
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, i) => const SizedBox(height: 20),
              itemCount: model.addresses.length,
              itemBuilder: (_, i) {
                return TTLocationWidget(
                  addressInfo: model.addresses[i],
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
