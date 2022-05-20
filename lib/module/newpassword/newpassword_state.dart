part of newpassword;

class _NewpasswordViewState extends TTState<_NewpasswordModel, _NewpasswordView> {
  @override
  Widget buildWithModel(BuildContext context, _NewpasswordModel model) {
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
    );
  }
}
