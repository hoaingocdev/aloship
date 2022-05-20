part of otp;

class _OtpViewState extends TTState<_OtpModel, _OtpView> {
  @override
  Widget buildWithModel(BuildContext context, _OtpModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        title: ' Xác thực tài khoản',
        onBackPressed: model.onBackPressed,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 20, right: 19),
            child: Text.rich(
              TextSpan(
                text: 'Mã xác nhận đã được gửi qua tin nhắn SMS của số điện thoại ',
                style: St.body16400.copyWith(
                  color: Cl.black,
                ),
                children: [
                  TextSpan(
                    text: '+84912345678',
                    style: St.body16400.copyWith(
                      color: Cl.cl006DE0,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TTextfield(
              hint: 'Mã xác thực',
              controller: model.otpController,
              onChanged: (v) => model.validate(),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textInputType: TextInputType.number,
            ),
          ),
          const SizedBox(height: 33),
          Text(
            'Chưa nhận được mã OTP?',
            style: St.body16400.copyWith(color: Cl.black),
          ),
          const SizedBox(height: 14),
          Text.rich(
            TextSpan(
              text: 'Gửi lại ',
              style: St.body16400.copyWith(
                color: Cl.black,
                decoration: TextDecoration.underline,
              ),
              children: [
                TextSpan(
                  text: '(01:59)',
                  style: St.body16400.copyWith(
                    color: Cl.cl006DE0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TButton(
              text: 'Hoàn tất',
              onPressed: model.enable ? model.onCompletePressed : null,
            ),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}