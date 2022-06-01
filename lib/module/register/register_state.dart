part of register;

class _RegisterViewState extends TTState<_RegisterModel, _RegisterView> {
  @override
  Widget buildWithModel(BuildContext context, _RegisterModel model) {
    return Scaffold(
      appBar: TTAppBar.create(
        context: context,
        title: 'Đăng ký',
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
                fillColor: Cl.clF3F4F8,
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
                fillColor: Cl.clF3F4F8,
              ),
              const SizedBox(height: 15),
              TTextfield(
                controller: model.passwordController,
                hint: 'Mật khẩu',
                onChanged: (v) => model.validate(),
                obscureText: true,
                isRequired: true,
                textType: TextType.password,
                fillColor: Cl.clF3F4F8,
              ),
              const SizedBox(height: 15),
              TTextfield(
                controller: model.repasswordController,
                hint: 'Nhập lại mật khẩu',
                onChanged: (v) => model.validate(),
                obscureText: true,
                isRequired: true,
                textType: TextType.password,
                fillColor: Cl.clF3F4F8,
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
