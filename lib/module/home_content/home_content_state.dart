part of home_content;

class _HomeContentViewState extends TTState<_HomeContentModel, _HomeContentView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeContentModel model) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 367,
            child: Image.asset(
              Id.ic_background_home,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildInfo(),
                const SizedBox(height: 41),
                buidWallet(),
                const SizedBox(height: 54),
                buildService(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Text(
                    'Ưu đãi dành cho bạn',
                    style: St.body22600.copyWith(color: Cl.black),
                  ),
                ),
                const SizedBox(height: 28),
                buildDiscount(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInfo() {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 19,
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Cl.white, width: 2),
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(23),
                  child: Image.network(
                    'https://bloganh.net/wp-content/uploads/2021/03/chup-anh-dep-anh-sang-min.jpg',
                    height: 46,
                    width: 46,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 2,
                right: 2,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    border: Border.all(color: Cl.white, width: 2),
                    shape: BoxShape.circle,
                    color: Cl.cl3ED700,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(19),
            child: Image.asset(Id.ic_menu_left),
          ),
        ],
      ),
    );
  }

  Widget buidWallet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: Text(
            'Ví của tôi',
            style: St.body16400.copyWith(color: Cl.white),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Container(
              height: 26,
              width: 40,
              margin: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Cl.white.withOpacity(0.5),
              ),
              child: Center(
                child: Text(
                  'Vnđ',
                  style: St.body16500.copyWith(color: Cl.white),
                ),
              ),
            ),
            const SizedBox(width: 6),
            Text(
              '240.000',
              style: St.body28600.copyWith(color: Cl.white),
            ),
            const Spacer(),
            Container(
              height: 44,
              width: 131,
              margin: const EdgeInsets.only(right: 19),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Cl.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nạp thêm',
                    style: St.body16500.copyWith(color: Cl.cl006DE0),
                  ),
                  const SizedBox(width: 11),
                  Image.asset(Id.ic_plus),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget buildService() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Tất cả dịch vụ',
            style: St.body22600.copyWith(color: Cl.white),
          ),
        ),
        const SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildServiceItem(
              text: 'Giao hàng',
              borderColor: Cl.red.withOpacity(
                0.15,
              ),
              imageAsset: Id.ic_truck_fast,
            ),
            buildServiceItem(
              text: 'Xe ôm',
              borderColor: Cl.cl26D79D00.withOpacity(0.15),
              imageAsset: Id.ic_motor_scooter,
            ),
            buildServiceItem(
              text: 'Mua hộ',
              borderColor: Cl.cl262A9400.withOpacity(0.15),
              imageAsset: Id.ic_bag,
            ),
            buildServiceItem(
              text: 'Sai vặt',
              borderColor: Cl.cl2601ADE5.withOpacity(0.15),
              imageAsset: Id.ic_vector,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildServiceItem({
    required String text,
    required Color borderColor,
    required String imageAsset,
  }) {
    return Container(
      height: 114,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Cl.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 56,
            width: 56,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: borderColor,
            ),
            child: Image.asset(imageAsset),
          ),
          const SizedBox(height: 14),
          Text(
            text,
            style: St.body14400.copyWith(color: Cl.black),
          ),
        ],
      ),
    );
  }

  Widget buildDiscount() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: model.discounts.length,
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: 15),
      itemBuilder: (_, i) {
        return buildDiscountItem(
          discountInfo: model.discounts[i],
        );
      },
    );
  }

  Widget buildDiscountItem({
    required DiscountInfo discountInfo,
  }) {
    return Container(
      height: 114,
      width: 367,
      margin: const EdgeInsets.symmetric(horizontal: 23),
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
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 113,
              width: 113,
              child: Image.network(discountInfo.imageUrl),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    discountInfo.title,
                    style: St.body14400.copyWith(
                      color: Cl.cl777777,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 7),
                  Text(
                    discountInfo.description,
                    style: St.body14400.copyWith(
                      color: Cl.cl777777,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 7),
                  Text(
                    discountInfo.expiredDate,
                    style: St.body14400.copyWith(
                      color: Cl.cl777777,
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
}
