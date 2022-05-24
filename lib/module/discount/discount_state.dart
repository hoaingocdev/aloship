part of discount;

class _DiscountViewState extends TTState<_DiscountModel, _DiscountView> {
  @override
  Widget buildWithModel(BuildContext context, _DiscountModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        title: 'Ưu đãi',
        onBackPressed: model.onBackPressed,
        actions: [
          Image.asset(
            Id.ic_menu_left,
            color: Cl.black,
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 20),
        itemCount: model.discounts.length,
        itemBuilder: (_, i) {
          return Column(
            children: [
              DiscountWidget(discountInfo: model.discounts[i]),
              if (i < model.discounts.length - 1) const SizedBox(height: 15),
            ],
          );
        },
      ),
    );
  }
}
