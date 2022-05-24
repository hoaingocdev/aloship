part of departure_point;

class _DeparturePointViewState extends TTState<_DeparturePointModel, _DeparturePointView> {
  @override
  Widget buildWithModel(BuildContext context, _DeparturePointModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        title: 'Điểm đi',
        onBackPressed: model.onBackPressed,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TTextfield(
              hint: 'Nhập địa điểm của bạn',
              prefixWidget: Icon(
                Icons.search,
                color: Cl.black,
              ),
            ),
            const SizedBox(height: 10),
            const TtLocationWidget(
              title: 'Ví trí của bạn',
            ),
            const SizedBox(height: 15),
            Text(
              'Gợi ý tìm kiếm',
              style: St.body16600.copyWith(color: Cl.black),
            )
          ],
        ),
      ),
    );
  }
}
