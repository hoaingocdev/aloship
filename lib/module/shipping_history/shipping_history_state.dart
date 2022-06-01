part of shipping_history;

class _ShippingHistoryViewState extends TTState<_ShippingHistoryModel, _ShippingHistoryView> {
  @override
  Widget buildWithModel(BuildContext context, _ShippingHistoryModel model) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: TTAppBar.create(
          title: 'Lịch sử vận chuyển',
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 15, 15),
          child: Column(
            children: [
              TabBar(
                indicatorColor: Colors.transparent,
                onTap: model.onTabChanged,
                tabs: [
                  buildHistoryItem(title: 'Tất cả', isSeleted: model.tabIndex == 0),
                  buildHistoryItem(title: 'Đang thực hiện', isSeleted: model.tabIndex == 1),
                  buildHistoryItem(title: 'Hoàn thành', isSeleted: model.tabIndex == 2),
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.separated(
                      separatorBuilder: (_, i) {
                        return const SizedBox(height: 15);
                      },
                      itemCount: model.historys.length,
                      itemBuilder: (_, i) {
                        return buildlistItem(historyInfo: model.historys[i]);
                      },
                    ),
                    ListView.separated(
                      separatorBuilder: (_, i) {
                        return const SizedBox(height: 15);
                      },
                      itemCount: model.historys.length,
                      itemBuilder: (_, i) {
                        return buildlistItem(historyInfo: model.historys[i]);
                      },
                    ),
                    ListView.separated(
                      separatorBuilder: (_, i) {
                        return const SizedBox(height: 15);
                      },
                      itemCount: model.historys.length,
                      itemBuilder: (_, i) {
                        return buildlistItem(
                          historyInfo: model.historys[i],
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHistoryItem({
    required String title,
    bool isSeleted = false,
    VoidCallback? onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: 118,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSeleted ? Cl.clFF00000D.withOpacity(0.05) : Cl.black.withOpacity(0.05),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: St.body16400.copyWith(color: isSeleted ? Cl.clFF0000 : Cl.black),
          ),
        ),
      ),
    );
  }

  Widget buildlistItem({
    required HistoryInfo historyInfo,
  }) {
    return Container(
      height: 161,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Cl.clD8D9DB),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 15, 16, 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    historyInfo.departurePoint,
                    style: St.body16400.copyWith(color: Cl.black),
                    maxLines: 3,
                  ),
                ),
                const SizedBox(width: 8),
                Image.asset(
                  Id.img_distance,
                  // height: 26,
                  // width: 80,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    historyInfo.destination,
                    style: St.body16400.copyWith(color: Cl.black),
                    maxLines: 3,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Cl.clD8D9DB,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 11, 16, 10),
            child: Row(
              children: [
                Text(
                  historyInfo.deliveryForm,
                  style: St.body16600.copyWith(color: Cl.black),
                ),
                const Spacer(),
                Text(
                  historyInfo.codeOrders,
                  style: St.body14400.copyWith(color: Cl.black),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  historyInfo.orderStatus,
                  style: St.body16500.copyWith(color: Cl.cl2A9400),
                ),
                const Spacer(),
                Text(
                  historyInfo.code,
                  style: St.body16600.copyWith(color: Cl.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
