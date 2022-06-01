part of information_line;

class _InformationLineViewState extends TTState<_InformationLineModel, _InformationLineView> {
  @override
  Widget buildWithModel(BuildContext context, _InformationLineModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        context: context,
        title: 'Thông tin đơn giao',
      ),
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
    return TTListAddressWidget(list: model.addresses);
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
