part of drive_info;

class _CreateOrderItemViewState extends TTState<_CreateOrderItemModel, _CreateOrderItemView> {
  late ServiceInfo serviceInfo;

  @override
  Widget buildWithModel(BuildContext context, _CreateOrderItemModel model) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.blue,
          height: MediaQuery.of(context).size.height - 519 + 24,
        ),
        TTButtonWidget(
          onPressed: model.onBackPressed,
          top: MediaQuery.of(context).padding.top + 36 - 15,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            // height: 519,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(29),
                topRight: Radius.circular(29),
              ),
              color: Cl.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 11),
                Center(
                  child: Text(
                    'Tạo đơn giao hàng',
                    style: St.body16600.copyWith(color: Cl.black),
                  ),
                ),
                TtOrderSpeedWidget(serviceInfo: model.serviceInfo),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TTListAddressWidget(
                    list: model.addresses,
                    hasMoreDestination: true,
                  ),
                ),
                const SizedBox(height: 31),
                Padding(
                  padding: const EdgeInsets.only(left: 26),
                  child: Row(
                    children: [
                      Image.asset(Id.ic_note),
                      const SizedBox(width: 19),
                      Text(
                        'Hàng điện tử, xin vui lòng nhẹ tay',
                        style: St.body14400.copyWith(color: Cl.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 26),
                  height: 1,
                  color: Cl.clEAEFF1,
                ),
                const SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Image.asset(Id.ic_dollar),
                      const SizedBox(width: 8),
                      Text(
                        '10.000 vnđ',
                        style: St.body16600.copyWith(color: Cl.red),
                      ),
                      const Spacer(),
                      Image.asset(Id.ic_wallet),
                      const SizedBox(width: 9),
                      Text(
                        'Ví Alo ship 99',
                        style: St.body16400.copyWith(color: Cl.black),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TButton(
                    text: 'Thông tin tài xế',
                    onPressed: model.onDriveInfo,
                  ),
                ),
                const SizedBox(height: 31),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
