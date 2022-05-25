part of delivery;

class _DeliveryViewState extends TTState<_DeliveryModel, _DeliveryView> {
  @override
  Widget buildWithModel(BuildContext context, _DeliveryModel model) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 409 + 24,
            color: Colors.green,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 36, left: 25),
                child: Image.asset(Id.ic_arrow_back),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 409,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Cl.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 17),
                    child: Text(
                      'Tạo đơn giao hàng',
                      style: St.body16600.copyWith(color: Cl.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TtOrderSpeedWidget(),
                  const SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Cl.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 20,
                          spreadRadius: 5,
                          color: Cl.black.withOpacity(0.05),
                        ),
                      ],
                    ),
                    child: buildLDeliveryItem(),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 1,
                    margin: const EdgeInsets.only(left: 31, right: 19),
                    color: Cl.clEAEFF1,
                  ),
                  const SizedBox(height: 23),
                  Container(
                    height: 48,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Cl.red,
                    ),
                    child: Center(
                      child: Text(
                        'Xác nhận vị trí',
                        style: St.body16500.copyWith(
                          color: Cl.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLDeliveryItem() {
    return Stack(
      children: [
        Positioned(
          top: 44,
          left: 22,
          width: 2,
          height: 26,
          child: CustomPaint(
            size: const Size(2, 26),
            painter: DashedLineVerticalPainter(),
          ),
        ),
        Positioned(
          top: 115,
          left: 22,
          width: 2,
          height: 10,
          child: CustomPaint(
            size: const Size(2, 10),
            painter: DashedLineVerticalPainter(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              InkWell(
                onTap: model.onDeparturePoint,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Image.asset(Id.ic_location),
                      const SizedBox(width: 17),
                      Text(
                        'Vị trí của bạn',
                        style: St.body14400.copyWith(color: Cl.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 19),
              Container(
                height: 1,
                margin: const EdgeInsets.only(left: 31, right: 19),
                color: Cl.clEAEFF1,
              ),
              const SizedBox(height: 19),
              InkWell(
                onTap: model.onDestinationPressed,
                child: Row(
                  children: [
                    Image.asset(Id.ic_destination),
                    const SizedBox(width: 17),
                    Text(
                      'Điểm đến',
                      style: St.body18600.copyWith(color: Cl.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 19),
              Container(
                height: 1,
                margin: const EdgeInsets.only(left: 31, right: 19),
                color: Cl.clEAEFF1,
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Image.asset(Id.ic_destinations),
                  const SizedBox(width: 17),
                  Text(
                    'Thêm điểm đến',
                    style: St.body14500.copyWith(color: Cl.red),
                  ),
                ],
              ),
              const SizedBox(height: 22),
            ],
          ),
        ),
      ],
    );
  }
}
