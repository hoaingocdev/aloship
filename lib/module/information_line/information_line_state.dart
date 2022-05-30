part of information_line;

class _InformationLineViewState extends TTState<_InformationLineModel, _InformationLineView> {
  @override
  Widget buildWithModel(BuildContext context, _InformationLineModel model) {
    return Scaffold(
      appBar: TTAppBar.create(title: 'Thông tin đơn giao', onBackPressed: model.onBackPressed),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            buildListAddress(),
            const SizedBox(height: 20),
            ...buildUserInfo(),
            const SizedBox(height: 15),
            ...buildOrderInfo(),
            const SizedBox(height: 15),
            TButton(
              text: 'Tiếp tục',
              onPressed: model.isNextEnabled ? model.onContinuePressed : null,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget buildListAddress() {
    return Container(
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
        itemCount: model.addresses.length,
        itemBuilder: (_, i) {
          bool isFirst = i == 0;
          bool isLast = i == model.addresses.length - 1;

          return Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24, left: 15),
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
                        Text(
                          isFirst ? 'Điểm đi' : 'Điểm đến $i',
                          style: St.body14400.copyWith(color: Cl.cl777777),
                        ),
                        const SizedBox(height: 1),
                        Text(
                          model.addresses[i].address,
                          style: St.body16400.copyWith(color: Cl.black),
                        ),
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
    );
  }

  List<Widget> buildOrderInfo() {
    return [
      builInformationItem(
        text1: 'Khoảng cách',
        text2: model.imformationInfo.distance,
      ),
      const SizedBox(height: 15),
      builInformationItem(
        text1: 'Tiến ứng',
        text2: model.imformationInfo.advanceMoney,
      ),
      const SizedBox(height: 15),
      builInformationItem(
        text1: 'Phí vận chuyển',
        text2: model.imformationInfo.fee,
        textcolor: Cl.red,
      ),
      const SizedBox(height: 15),
      builInformationItem(
        text1: 'Voucher',
        text2: model.imformationInfo.voucher,
      ),
    ];
  }

  List<Widget> buildUserInfo() {
    return [
      Text(
        'Thông tin người nhận',
        style: St.body16500.copyWith(color: Cl.black),
      ),
      const SizedBox(height: 15),
      TTextfield(
        onChanged: (v) => model.validate(),
        controller: model.nameController,
        hint: 'Tên người nhận',
        fillColor: Cl.clF3F4F8,
        hasBorder: false,
      ),
      const SizedBox(height: 15),
      Form(
        key: model.formKey,
        child: TTextfield(
          onChanged: (v) => model.validate(),
          controller: model.phoneController,
          hint: 'Số điện thoại',
          isRequired: true,
          textType: TextType.phone,
          fillColor: Cl.clF3F4F8,
          hasBorder: false,
          textInputType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
      ),
      const SizedBox(height: 15),
      TTextfield(
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
      const SizedBox(height: 15),
      Text(
        'Voucher',
        style: St.body16500.copyWith(color: Cl.black),
      ),
      const SizedBox(height: 15),
      TTextfield(
        controller: model.controller,
        onChanged: (v) => model.validate(),
        fillColor: Cl.clF3F4F8,
        hasBorder: false,
        hint: 'Nhập mã voucher',
        suffixWidget: SizedBox(
          height: 42,
          width: 90,
          child: TButton(
            onPressed: model.isVoucherApplyEnabled ? model.onApplyPressed : null,
            text: 'Áp dụng',
            padding: 11,
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
      builPaymentMethos(
        paymentMethod: PaymentMethod.cod,
        name: 'Thanh toán khi nhận hàng',
      ),
      // const SizedBox(height: 10),
      builPaymentMethos(
        paymentMethod: PaymentMethod.wallet,
        name: 'Ví Alo ship 99',
      ),
      const SizedBox(height: 20),
      Text(
        'Ghi chú',
        style: St.body16500.copyWith(color: Cl.black),
      ),
      const SizedBox(height: 15),
      const TTextfield(
        hint: 'Nhập nội dung',
        hasBorder: false,
        fillColor: Cl.clF3F4F8,
        maxlines: 5,
        contentPadding: EdgeInsets.only(left: 20, top: 15),
      ),
      const SizedBox(height: 15),
      Text(
        'Thông tin vận chuyển',
        style: St.body16500.copyWith(color: Cl.black),
      ),
    ];
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
    required PaymentMethod paymentMethod,
  }) {
    return Column(
      children: [
        Row(
          children: [
            ValueListenableBuilder<PaymentMethod>(
              valueListenable: model.paymentMethod,
              builder: (context, method, _) {
                return Radio(
                  activeColor: Cl.black,
                  value: paymentMethod,
                  groupValue: method,
                  onChanged: model.onPaymentMethodChanged,
                );
              },
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
