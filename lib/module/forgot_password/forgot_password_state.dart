part of _forgot_password;

class ForgotPasswordViewState extends TTState<ForgotPasswordModel, ForgotPasswordView> {
  @override
  Widget buildWithModel(BuildContext context, ForgotPasswordModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        title: 'Quên mật khẩu',
        onBackPressed: model.onBackPressed,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 20, right: 19),
            child: Text(
              'Vui lòng nhập số điện thoại đăng ký để chúng tôi xác nhận thông tin tài khoản của bạn.',
              style: St.body16400.copyWith(
                color: Cl.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TTextfield(
              hint: 'Số điện thoại',
              onChanged: (v) => model.validate(),
              controller: model.phoneController,
              textInputType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          const SizedBox(height: 131),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TButton(
              text: 'Tiếp theo',
              onPressed: model.enable ? model.onContinuePressed : null,
            ),
          ),
        ],
      ),
    );
  }
}