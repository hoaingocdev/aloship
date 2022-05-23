part of discount;

class _DiscountViewState extends TTState<_DiscountModel, _DiscountView> {
  @override
  Widget buildWithModel(BuildContext context, _DiscountModel model) {
    return const Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}
