part of login;

class _LoginViewState extends TTState<_LoginModel, _LoginView> {
  @override
  Widget buildWithModel(BuildContext context, _LoginModel model) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Image.asset(
                Id.img_background,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 152,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(Id.img_logo),
                    const SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 53),
                      child: Text(
                        'Vui lòng nhập số điện thoại đã đăng ký để sử dụng dịch vụ',
                        style: St.body16400.copyWith(
                          color: Cl.black,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 49),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TTextfield(
                        controller: model.phoneController,
                        onChanged: (v) => model.validate(),
                        hint: 'Số điện thoại',
                        textInputType: TextInputType.phone,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TTextfield(
                        controller: model.passwordController,
                        hint: 'Nhập mật khẩu',
                        obscureText: true,
                        onChanged: (v) => model.validate(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: MaterialButton(
                          onPressed: model.onForgotPassword,
                          child: Text(
                            'Quên mật khẩu',
                            style: St.body16400.copyWith(color: Cl.cl006DE0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TButton(
                        text: 'Đăng nhập',
                        onPressed: model.enabled ? model.onLoginPressed : null,
                      ),
                    ),
                    const SizedBox(height: 24),
                    MaterialButton(
                      onPressed: model.onRegisterPressed,
                      child: Text.rich(
                        TextSpan(
                          text: 'Chưa có tài khoản?',
                          style: St.body16500.copyWith(color: Cl.black),
                          children: [
                            TextSpan(
                              text: 'Đăng ký',
                              style: St.body16500.copyWith(
                                color: Cl.cl006DE0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 21),
                    Text(
                      'Alo Ship',
                      style: St.body16500.copyWith(color: Cl.black),
                    ),
                    Text(
                      'Version: 1.0.0',
                      style: St.body14400.copyWith(color: Cl.black),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
