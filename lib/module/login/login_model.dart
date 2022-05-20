part of login;

class _LoginModel extends TTChangeNotifier<_LoginView> {
  final TextEditingController phoneController;
  final TextEditingController passwordController;
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

  void onLoginPressed() {}

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
