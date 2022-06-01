part of _forgot_password;

class ForgotPasswordViewState extends TTState<ForgotPasswordModel, ForgotPasswordView> {
  @override
  Widget buildWithModel(BuildContext context, ForgotPasswordModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        context: context,
        title: 'Quên mật khẩu',
      ),
      body: Form(
        key: model.formKey,
        child: Column(
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
                fillColor: Cl.clF3F4F8,
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
      ),
    );
  }
}
