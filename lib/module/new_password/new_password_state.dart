part of newpassword;

class _NewPasswordViewState extends TTState<_NewPasswordModel, _NewPasswordView> {
  @override
  Widget buildWithModel(BuildContext context, _NewPasswordModel model) {
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
                'Nhập mật khẩu mới để thay đổi thông tin đăng nhập tài khoản.',
                style: St.body16400.copyWith(color: Cl.black),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TTextfield(
                hint: 'Nhập mật khẩu',
                obscureText: true,
                onChanged: (v) => model.validate(),
                controller: model.passwordController,
                isRequired: true,
                textType: TextType.password,
                fillColor: Cl.clF3F4F8,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TTextfield(
                hint: 'Nhập lại mật khẩu',
                obscureText: true,
                onChanged: (v) => model.validate(),
                controller: model.repasswordController,
                isRequired: true,
                textType: TextType.password,
                fillColor: Cl.clF3F4F8,
              ),
            ),
            const SizedBox(height: 64),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TButton(
                text: 'Hoàn tất',
                onPressed: model.enable ? model.onCompletedPressed : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
