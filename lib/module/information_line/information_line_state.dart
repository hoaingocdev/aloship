part of information_line;

class _InformationLineViewState extends TTState<_InformationLineModel, _InformationLineView> {
  @override
  Widget buildWithModel(BuildContext context, _InformationLineModel model) {
    return Scaffold(
      appBar: TTAppBar.create(title: 'Thông tin đơn giao', onBackPressed: model.onBackPressed),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
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
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (_, __) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 46),
                    height: 1,
                    color: Cl.clEAEFF1,
                  );
                },
                itemCount: 3,
                itemBuilder: (_, i) {
                  bool isFirst = i == 0;
                  bool isLast = i == 3 - 1;

                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 24),
                            child: Image.asset(
                              isFirst ? Id.ic_location : Id.ic_destination,
                              width: 14,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(isFirst ? 'Điểm đi' : 'Điểm đến 1'),
                                const SizedBox(height: 1),
                                const Text('120 Nguyễn Trãi, Thanh Xuân, Hà Nội'),
                              ],
                            ),
                          )
                        ],
                      ),
                      if (!isLast)
                        Positioned(
                          top: 44,
                          left: 22,
                          width: 2,
                          height: 44,
                          child: CustomPaint(
                            size: const Size(2, 40),
                            painter: DashedLineVerticalPainter(),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Thông tin người nhận',
                style: St.body16500.copyWith(color: Cl.black),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TTextfield(
                hint: 'Tên người nhận',
                fillColor: Cl.clF3F4F8,
                hasBorder: false,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TTextfield(
                hint: 'Số điện thoại',
                textType: TextType.phone,
                fillColor: Cl.clF3F4F8,
                hasBorder: false,
                textInputType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TTextfield(
                fillColor: Cl.clF3F4F8,
                hint: 'Tiền ứng',
                textInputType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                hasBorder: false,
                suffixWidget: Padding(
                  padding: const EdgeInsets.only(right: 8, top: 14),
                  child: Text(
                    'vnđ',
                    style: St.body16400.copyWith(color: Cl.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Voucher',
                style: St.body16500.copyWith(color: Cl.black),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TTextfield(
                controller: model.controller,
                onChanged: (v) => model.validate(),
                fillColor: Cl.clF3F4F8,
                hasBorder: false,
                hint: 'Nhập mã voucher',
                suffixWidget: SizedBox(
                  height: 42,
                  width: 90,
                  child: TButton(
                    onPressed: model.enable ? model.onApplyPressed : null,
                    text: 'Áp dụng',
                    padding: 11,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Phương thức thanh toán',
                style: St.body16500.copyWith(color: Cl.black),
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: builPaymentMethos(
                name: 'Thanh toán khi nhận hàng',
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: builPaymentMethos(
                name: 'Ví Alo ship 99',
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Ghi chú',
                style: St.body16500.copyWith(color: Cl.black),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TTextfield(
                hint: 'Nhập nội dung',
                hasBorder: false,
                fillColor: Cl.clF3F4F8,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Thông tin vận chuyển',
                style: St.body16500.copyWith(color: Cl.black),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: builInformationItem(
                text1: 'Khoảng cách',
                text2: model.imformationInfo.distance,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: builInformationItem(
                text1: 'Tiến ứng',
                text2: model.imformationInfo.advanceMoney,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: builInformationItem(
                text1: 'Phí vận chuyển',
                text2: model.imformationInfo.fee,
                textcolor: Cl.red,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: builInformationItem(
                text1: 'Voucher',
                text2: model.imformationInfo.voucher,
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TButton(text: 'Tiếp tục'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget builInformationItem({
    required String text1,
    required String text2,
    Color? textcolor,
  }) {
    return Row(
      children: [
        Text(
          text1,
          style: St.body16400.copyWith(color: Cl.black),
        ),
        const Spacer(),
        Text(
          text2,
          style: St.body16400.copyWith(color: textcolor ?? Cl.black),
        ),
      ],
    );
  }

  Widget builPaymentMethos({
    required String name,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Cl.clC4C4C4,
              ),
            ),
            const SizedBox(width: 9),
            Text(
              name,
              style: St.body16400.copyWith(
                color: Cl.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
