part of register;

class _RegisterViewState extends TTState<_RegisterModel, _RegisterView> {
  @override
  Widget buildWithModel(BuildContext context, _RegisterModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        title: 'Đăng ký',
        onBackPressed: model.onBackPressed,
        image: Id.ic_arrow_back,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Form(
          key: model.formKey,
          child: Column(
            children: [
              TTextfield(
                controller: model.nameController,
                hint: 'Tên của bạn',
                onChanged: (v) => model.validate(),
                isRequired: true,
                textType: TextType.normal,
              ),
              const SizedBox(height: 15),
              TTextfield(
                controller: model.phoneController,
                hint: 'Số điện thoại',
                onChanged: (v) => model.validate(),
                textInputType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                isRequired: true,
                textType: TextType.phone,
              ),
              const SizedBox(height: 15),
              TTextfield(
                controller: model.passwordController,
                hint: 'Mật khẩu',
                onChanged: (v) => model.validate(),
                obscureText: true,
                isRequired: true,
                textType: TextType.password,
              ),
              const SizedBox(height: 15),
              TTextfield(
                controller: model.repasswordController,
                hint: 'Nhập lại mật khẩu',
                onChanged: (v) => model.validate(),
                obscureText: true,
                isRequired: true,
                textType: TextType.password,
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
      ),
    );
  }
}
