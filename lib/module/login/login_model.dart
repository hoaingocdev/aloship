part of login;

class _LoginModel extends TTChangeNotifier<_LoginView> {
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  bool enabled = false;
  _LoginModel()
      : phoneController = TextEditingController(),
        passwordController = TextEditingController();
  @override
  void dispose() {
    passwordController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  void validate() {
    enabled = phoneController.text.isNotEmpty && passwordController.text.isNotEmpty;
    notifyListeners();
  }

  void onLoginPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) => createHome(),
      ),
    );
  }

  void onRegisterPressed() {
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) => createRegister(),
      ),
    );
  }

  void onForgotPassword() {
    Navigator.of(context!).push(
      MaterialPageRoute(
        builder: (_) => createForgotPassword(),
      ),
    );
  }
}
