part of newpassword;

class _NewPasswordModel extends TTChangeNotifier<_NewPasswordView> {
  final TextEditingController passwordController;
  final TextEditingController repasswordController;
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

  void onBackPressed() {
    Navigator.of(context!).pop();
  }

  void onCompletedPressed() {
    Navigator.of(context!).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => createLogin()),
      (r) => false,
    );
  }
}
