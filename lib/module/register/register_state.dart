part of register;

class _RegisterViewState extends TTState<_RegisterModel, _RegisterView> {
  @override
  Widget buildWithModel(BuildContext context, _RegisterModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        title: 'Đăng ký',
        onBackPressed: model.onBackPressed,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            TTextfield(
              controller: model.nameController,
              hint: 'Tên của bạn',
              onChanged: (v) => model.validate(),
            ),
            const SizedBox(height: 15),
            TTextfield(
              controller: model.phoneController,
              hint: 'Số điện thoại',
              onChanged: (v) => model.validate(),
              textInputType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 15),
            TTextfield(
              controller: model.passwordController,
              hint: 'Mật khẩu',
              onChanged: (v) => model.validate(),
              obscureText: true,
            ),
            const SizedBox(height: 15),
            TTextfield(
              controller: model.repasswordController,
              hint: 'Nhập lại mật khẩu',
              onChanged: (v) => model.validate(),
              obscureText: true,
            ),
            const Spacer(),
            TButton(
              text: 'Đăng ký',
              onPressed: model.enabled ? model.onRegisterPressed : null,
            ),
            const SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
