part of newpassword;

class _NewPasswordModel extends TTChangeNotifier<_NewPasswordView> {
  final TextEditingController passwordController;
  final TextEditingController repasswordController;
  final formKey = GlobalKey<FormState>();

  bool enable = false;
  _NewPasswordModel()
      : passwordController = TextEditingController(),
        repasswordController = TextEditingController();
  @override
  void dispose() {
    passwordController.dispose();
    repasswordController.dispose();
    super.dispose();
  }

  void validate() {
    enable = passwordController.text.isNotEmpty && repasswordController.text.isNotEmpty;
    notifyListeners();
  }

  void onCompletedPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    Navigator.of(context!).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => createLogin()),
      (r) => false,
    );
  }
}
